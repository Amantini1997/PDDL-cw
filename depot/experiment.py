from shutil import copyfile
import subprocess

#Basic script for running multiple problem files over a domain
#Requires a student.Dockerfile.add and student.Dockerfile.csg for additive and causal graph.

copyfile("student.Dockerfile.add", "student.Dockerfile")

#Run Additive heuristic over 22 problem files
for i in range(1,23):
    problem = "instance-%d.pddl" % i
    copyfile(problem, "problem.pddl")
    subprocess.call([r'build.bat'])
    subprocess.call("run.bat > instance-%d-30m-2G-add.txt 2>&1" % i, shell=True)
    print("Instance %d complete for Additive" % i)

#Switch to running Causal Graph search
copyfile("student.Dockerfile.csg", "student.Dockerfile")

for i in range(1,23):
    problem = "instance-%d.pddl" % i
    copyfile(problem, "problem.pddl")
    subprocess.call([r'build.bat'])
    subprocess.call("run.bat > instance-%d-30m-2G-csg.txt 2>&1" % i, shell=True)
    print("Instance %d complete for Causal Graph" % i)
