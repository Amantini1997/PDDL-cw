import os
from os import remove
import jinja2
from shutil import copyfile
import docker
import argparse
from tqdm import tqdm
import pandas as pd
import re
heuristic = domains = ""
client = docker.from_env()

docker_dir = os.path.join(os.path.dirname(__file__), "docker")
logs_dir = os.path.join(os.path.dirname(__file__), "logs")
results_dir = os.path.join(os.path.dirname(__file__), "output")
out_file = os.path.join(results_dir, "results.csv")
csv_headers = ["instance", "domain", "heuristic", "plan_length", "plan_cost", "states_expanded", "states_reopened", "states_evaluated", "evaluations", "states_generated", "dead_ends", "states_expanded_ulj",
               "states_reopened_ulj", "states_evaluated_ulj", "states_generated_ulj", "registered_states", "hash_set_load_factor", "hash_set_resizes", "search_time", "total_time", "peak_memory"]
# Helper functions


def is_float(s):
    try:
        float(s)
        return True
    except ValueError:
        return False


def getValueFromLine(line):
    return [int(s) if s.isdigit() else float(s) for s in line.split() if (s.isdigit() or is_float(s))][-1]


def getTimeFromLine(line):
    return float([s for s in line.split()][-1][:-1])


def getPeakMemory(line):
    return [int(s) for s in line.split() if s.isdigit()][0]


def copy_to_docker(in_file, out_name):
    file_out = os.path.join(docker_dir, out_name)
    copyfile(in_file, file_out)


def copy_problem(problem):
    copy_to_docker(problem, "problem.pddl")


def copy_domain(domain):
    copy_to_docker(domain, "domain.pddl")


def render_template(heuristic):
    template_file = os.path.join(docker_dir, "student.Dockerfile.jinja")
    output_file = os.path.join(docker_dir, "student.Dockerfile")
    content = ""
    with open(template_file, "r") as file:
        content = file.read()
    template = jinja2.Template(content)
    content = template.render(heuristic=heuristic)
    with open(output_file, "w+") as file:
        file.write(content)


def build_container():
    output = client.images.build(path=docker_dir, tag="aip:0.1",
                                 dockerfile="student.Dockerfile")
    print("Container Built:", output)


def run_container():
    for container in client.containers.list():
        if container.name == "aipdocker":
            print("AIP Docker Container exists, deleting...")
            container.kill()
            container.remove()
    output = client.containers.run(
        "aip:0.1", remove=True).decode("utf-8")
    lines = output.splitlines()
    for i in range(len(lines)):
        line = lines[i]
        if "Plan length:" in line:
            return "\n".join(lines[i:])


# build_container()


def main():
    global heuristic, domains
    domains_directory = os.path.join(os.path.dirname(__file__), "domains")
    heuristic, domains = parse_args()
    with open(out_file, "w+") as file:
        file.write(",".join(csv_headers)+"\n")
    if heuristic == "*":
        heuristic = ["add", "cg"]
    else:
        heuristic = list(heuristic)
    if domains != "*":
        for domain in domains.split(","):
            domain_target = os.path.join(domains_directory,
                                         os.path.basename(domain))
            plan(heuristic, domain_target)
    else:
        for domain in tqdm(os.listdir(domains_directory)):
            domain_target = os.path.join(domains_directory,
                                         os.path.basename(domain))
            plan(heuristic, domain_target)


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--heuristic", "-t",
                        help="Heuristic to run. Use * for ALL", default="*")
    parser.add_argument(
        "--domains", '-d', help="Domains to run, separated by commas. Use * for ALL.", default="*")
    args = parser.parse_args()
    return args.heuristic, args.domains


def plan(heuristics, domain_directory):
    domain_name = os.path.basename(domain_directory)
    domain_log_folder = os.path.join(
        logs_dir, domain_name)
    if not os.path.exists(domain_log_folder):
        os.mkdir(domain_log_folder)
    for file in tqdm(os.listdir(domain_directory)):
        abs_file = os.path.join(domain_directory, file)
        if "domain" in file:
            copy_domain(abs_file)
        else:
            copy_problem(abs_file)
            for heuristic in heuristics:
                render_template(heuristic)
                build_container()
                try:
                    print(
                        f"Running problem: {os.path.basename(abs_file)} with heuristic: {heuristic}")
                    output = run_container()
                    parse_output(domain_name, heuristic,
                                 os.path.basename(abs_file), output)
                    with open(os.path.join(domain_log_folder, f"{os.path.splitext(os.path.basename(abs_file))[0]}-{heuristic}.txt"), "w+") as file:
                        file.write(output+"\n")
                    print(
                        f"Problem: {abs_file} ran with heuristic: {heuristic} ran successfully")
                except Exception as e:
                    with open(out_file, "a") as file:
                        file.write(
                            ",".join([f"{domain_name} - {os.path.basename(abs_file)}", domain_name, heuristic]+["DNF" for _ in range(len(csv_headers)-3)])+"\n")
                    print("DNF")
                    pass


def parse_output(domain, heuristic, problem, results):

    # Creating variables for the data
    instance, plan_length, plan_cost, states_expanded, states_reopened, states_evaluated, evaluations, states_generated, dead_ends, states_expanded_ulj, states_reopened_ulj, states_evaluated_ulj, states_generated_ulj, registered_states, hash_set_load_factor, hash_set_resizes, search_time, total_time, peak_memory = ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',  ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '

    instance = f"{domain} - {problem}"

    for line in results.split("\n"):
        if (' Plan length: ' in line):
            plan_length = getValueFromLine(line)
            peak_memory = getPeakMemory(line)
        elif (' Plan cost: ' in line):
            plan_cost = getValueFromLine(line)
        elif (re.compile(' Expanded \d* state.').search(line)):
            states_expanded = getValueFromLine(line)
        elif (re.compile(' Reopened \d* state.').search(line)):
            states_reopened = getValueFromLine(line)
        elif (re.compile(' Evaluated \d* state.').search(line)):
            states_evaluated = getValueFromLine(line)
        elif (' Evaluations: ' in line):
            evaluations = getValueFromLine(line)
        elif (re.compile(' Generated \d* state.').search(line)):
            states_generated = getValueFromLine(line)
        elif (re.compile(' Dead ends: \d* state').search(line)):
            dead_ends = getValueFromLine(line)
        elif('Expanded until last jump: ' in line):
            states_expanded_ulj = getValueFromLine(line)
        elif('Reopened until last jump: ' in line):
            states_reopened_ulj = getValueFromLine(line)
        elif('Evaluated until last jump: ' in line):
            states_evaluated_ulj = getValueFromLine(line)
        elif('Generated until last jump: ' in line):
            states_generated_ulj = getValueFromLine(line)
        elif('Number of registered states: ' in line):
            registered_states = getValueFromLine(line)
        elif('Int hash set load factor: ' in line):
            hash_set_load_factor = getValueFromLine(line)  # todo
        elif('Int hash set resizes: ' in line):
            hash_set_resizes = getValueFromLine(line)
        elif (re.compile(' Search time: \d*').search(line)):
            search_time = getTimeFromLine(line)
        elif (re.compile(' Total time: \d*').search(line)):
            total_time = getTimeFromLine(line)
    with open(out_file, 'a') as file:
        file.write(",".join([str(v) for v in [instance, domain, heuristic, plan_length, plan_cost, states_expanded, states_reopened, states_evaluated, evaluations, states_generated, dead_ends, states_expanded_ulj,
                                              states_reopened_ulj, states_evaluated_ulj, states_generated_ulj, registered_states, hash_set_load_factor, hash_set_resizes, search_time, total_time, peak_memory]])+"\n")


if __name__ == "__main__":
    main()
