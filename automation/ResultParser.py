# ResultParser.py
# Version 1.0
# 11/21/2020

# USAGE:
# Change directory_path to point to directory containing result data
#
# File names are expected to follow the format:
# instance-<instance_number>-<time_cap>-<memory_cap>-<heuristic>.txt
# Eg: instance-1-30m-2G-add.txt
#
# The output CSV (results.csv) will be created in the directory specified

import pandas as pd
import re
from os import listdir
from os.path import isfile, join
import os

directory_path = os.path.join(os.path.dirname(__file__), "logs", "driverlog")

df = pd.DataFrame(columns=['Instance', 'Heuristic', 'Plan Length', 'Plan Cost', 'States Expanded', 'States Reopened', 'States Evaluated', 'Evaluations', 'States Generated', 'Dead Ends', 'States Expanded ULJ',
                           'States Reopened ULJ', 'States Evaluated ULJ', 'States Generated ULJ', 'Registered States', 'Hash Set Load Factor', 'Hash Set Resizes', 'Search Time (s)', 'Total Time (s)', 'Peak Memory (KB)'])

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


files = [f for f in listdir(directory_path) if isfile(join(directory_path, f))]

for file in files:
    results = open(r"{}\{}".format(directory_path, file), 'r')

    # Creating variables for the data
    instance, heuristic, plan_length, plan_cost, states_expanded, states_reopened, states_evaluated, evaluations, states_generated, dead_ends, states_expanded_ulj, states_reopened_ulj, states_evaluated_ulj, states_generated_ulj, registered_states, hash_set_load_factor, hash_set_resizes, search_time, total_time, peak_memory = ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '

    instance = re.split('-|\.', file)[1]
    heuristic = "Additive" if instance == "add" else "Causal Graph"

    for line in results:
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

    df.loc[len(df)] = [instance, heuristic, plan_length, plan_cost, states_expanded, states_reopened, states_evaluated, evaluations, states_generated, dead_ends, states_expanded_ulj,
                       states_reopened_ulj, states_evaluated_ulj, states_generated_ulj, registered_states, hash_set_load_factor, hash_set_resizes, search_time, total_time, peak_memory]

df.to_csv(r"{}\results.csv".format(directory_path), index=False)
