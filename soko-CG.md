# Problem 1

## Initialisation
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /src/fd/builds/release/bin/translate/translate.py ./current/sokobanDomain.pddl ./current/sokobanProblem.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.003s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.001s wall-clock]
Normalizing Datalog program...
Normalizing Datalog program: [0.010s CPU, 0.004s wall-clock]
Preparing model... [0.000s CPU, 0.001s wall-clock]
Generated 14 rules.
Computing model... [0.010s CPU, 0.009s wall-clock]
249 relevant atoms
375 auxiliary atoms
624 final queue length
708 total queue pushes
Completing instantiation... [0.000s CPU, 0.006s wall-clock]
Instantiating: [0.020s CPU, 0.022s wall-clock]
Computing fact groups...
Finding invariants...
4 initial candidates
Finding invariants: [0.010s CPU, 0.002s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
19 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.010s CPU, 0.003s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.007s wall-clock]
32 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
1 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.003s wall-clock]
Reordering and filtering variables...
20 of 20 variables necessary.
0 of 1 mutex groups necessary.
86 of 86 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.003s wall-clock]
Translator variables: 20
Translator derived variables: 0
Translator facts: 57
Translator goal facts: 3
Translator mutex groups: 0
Translator total mutex groups size: 0
Translator operators: 86
Translator axioms: 0
Translator task size: 520
Translator peak memory: 39476 KB
Writing output... [0.010s CPU, 0.002s wall-clock]
Done! [0.050s CPU, 0.047s wall-clock]
translate exit code: 0

## Search
INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /src/fd/builds/release/bin/downward --search 'astar(cg())' --internal-plan-file plan.txt < output.sas
[t=7.2692e-05s, 55864 KB] reading input...
[t=0.00081153s, 55864 KB] done reading input!
[t=0.00262819s, 56128 KB] Initializing causal graph heuristic...
[t=0.00276739s, 56128 KB] Initializing heuristic cache... building causal graph...done! [t=0.000322084s]
[t=0.003244s, 56128 KB] done!
[t=0.00360008s, 56128 KB] Building successor generator...done!
[t=0.00393398s, 56128 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00403151s, 56128 KB] time for successor generation creation: 0.000109812s
[t=0.00409349s, 56128 KB] Variables: 20
[t=0.00420343s, 56128 KB] FactPairs: 57
[t=0.00429139s, 56128 KB] Bytes per state: 4
[t=0.00453076s, 56128 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.00472371s, 56128 KB] New best heuristic value for cg: 12
[t=0.00477254s, 56128 KB] g=0, 1 evaluated, 0 expanded
[t=0.0049084s, 56128 KB] f = 12, 1 evaluated, 0 expanded
[t=0.00505682s, 56128 KB] Initial heuristic value for cg: 12
[t=0.00515853s, 56128 KB] pruning method: none
[t=0.00529358s, 56128 KB] New best heuristic value for cg: 11
[t=0.00536251s, 56128 KB] g=1, 2 evaluated, 1 expanded
[t=0.00545639s, 56128 KB] New best heuristic value for cg: 9
[t=0.0055087s, 56128 KB] g=1, 3 evaluated, 1 expanded
[t=0.0057692s, 56128 KB] New best heuristic value for cg: 8
[t=0.00591281s, 56128 KB] g=3, 10 evaluated, 4 expanded
[t=0.00619211s, 56128 KB] f = 13, 17 evaluated, 9 expanded
[t=0.00632068s, 56128 KB] New best heuristic value for cg: 7
[t=0.00638838s, 56128 KB] g=6, 19 evaluated, 11 expanded
[t=0.00652937s, 56128 KB] New best heuristic value for cg: 5
[t=0.00660861s, 56128 KB] g=7, 20 evaluated, 12 expanded
[t=0.00703799s, 56128 KB] f = 14, 38 evaluated, 21 expanded
[t=0.00747347s, 56128 KB] f = 15, 52 evaluated, 29 expanded
[t=0.00811524s, 56128 KB] f = 16, 93 evaluated, 54 expanded
[t=0.00850211s, 56128 KB] New best heuristic value for cg: 4
[t=0.00857838s, 56128 KB] g=8, 122 evaluated, 71 expanded
[t=0.00936311s, 56128 KB] New best heuristic value for cg: 3
[t=0.00944454s, 56128 KB] g=13, 183 evaluated, 100 expanded
[t=0.00973432s, 56128 KB] f = 17, 212 evaluated, 113 expanded
[t=0.00981964s, 56128 KB] New best heuristic value for cg: 2
[t=0.00989786s, 56128 KB] g=15, 213 evaluated, 114 expanded
[t=0.0106804s, 56128 KB] f = 18, 271 evaluated, 168 expanded
[t=0.0112935s, 56128 KB] f = 19, 349 evaluated, 220 expanded
[t=0.0127141s, 56128 KB] f = 20, 510 evaluated, 328 expanded
[t=0.0130878s, 56264 KB] New best heuristic value for cg: 1
[t=0.0131737s, 56264 KB] g=19, 513 evaluated, 331 expanded
[t=0.0140763s, 56264 KB] f = 21, 630 evaluated, 415 expanded
[t=0.016402s, 56264 KB] f = 22, 901 evaluated, 598 expanded, 11 reopened
[t=0.0178385s, 56264 KB] f = 23, 1084 evaluated, 741 expanded, 11 reopened
[t=0.0202838s, 56264 KB] f = 24, 1453 evaluated, 1015 expanded, 13 reopened
[t=0.0228891s, 56264 KB] f = 25, 1850 evaluated, 1299 expanded, 15 reopened
[t=0.0259442s, 56264 KB] f = 26, 2271 evaluated, 1661 expanded, 32 reopened
[t=0.0286612s, 56264 KB] f = 27, 2662 evaluated, 1992 expanded, 38 reopened
[t=0.0321399s, 56264 KB] f = 28, 3156 evaluated, 2426 expanded, 53 reopened
[t=0.0351482s, 56264 KB] f = 29, 3571 evaluated, 2821 expanded, 58 reopened
[t=0.0384134s, 56416 KB] f = 30, 3997 evaluated, 3256 expanded, 59 reopened
[t=0.041877s, 56416 KB] f = 31, 4425 evaluated, 3684 expanded, 63 reopened
[t=0.0460029s, 56416 KB] f = 32, 4885 evaluated, 4141 expanded, 65 reopened
[t=0.0500772s, 56416 KB] f = 33, 5349 evaluated, 4588 expanded, 67 reopened
[t=0.0534675s, 56416 KB] f = 34, 5771 evaluated, 5036 expanded, 72 reopened
[t=0.0568255s, 56416 KB] f = 35, 6160 evaluated, 5488 expanded, 77 reopened
[t=0.0606674s, 56416 KB] f = 36, 6565 evaluated, 5907 expanded, 86 reopened
[t=0.0632202s, 56416 KB] f = 37, 6845 evaluated, 6281 expanded, 86 reopened
[t=0.0660015s, 56416 KB] f = 38, 7204 evaluated, 6645 expanded, 92 reopened
[t=0.0693862s, 56548 KB] f = 39, 7531 evaluated, 7013 expanded, 92 reopened
[t=0.0722568s, 56548 KB] f = 40, 7867 evaluated, 7375 expanded, 107 reopened
[t=0.0743591s, 56548 KB] f = 41, 8077 evaluated, 7702 expanded, 121 reopened
[t=0.0764789s, 56548 KB] f = 42, 8298 evaluated, 7995 expanded, 132 reopened
[t=0.0778325s, 56548 KB] f = 43, 8408 evaluated, 8204 expanded, 133 reopened
[t=0.0796971s, 56548 KB] f = 44, 8577 evaluated, 8426 expanded, 139 reopened
[t=0.081061s, 56548 KB] f = 45, 8719 evaluated, 8610 expanded, 140 reopened
[t=0.0821325s, 56548 KB] f = 46, 8818 evaluated, 8764 expanded, 147 reopened
[t=0.0834051s, 56548 KB] f = 47, 8950 evaluated, 8909 expanded, 147 reopened
[t=0.0841411s, 56548 KB] f = 48, 9003 evaluated, 9001 expanded, 147 reopened
[t=0.0855689s, 56548 KB] f = 49, 9163 evaluated, 9135 expanded, 150 reopened
[t=0.0863452s, 56548 KB] f = 50, 9221 evaluated, 9220 expanded, 150 reopened
[t=0.0872107s, 56548 KB] f = 51, 9297 evaluated, 9303 expanded, 151 reopened
[t=0.0880718s, 56548 KB] f = 52, 9396 evaluated, 9391 expanded, 151 reopened
[t=0.0892818s, 56548 KB] f = 53, 9516 evaluated, 9495 expanded, 153 reopened
[t=0.090483s, 56548 KB] f = 54, 9643 evaluated, 9606 expanded, 153 reopened
[t=0.0914979s, 56548 KB] f = 55, 9760 evaluated, 9702 expanded, 153 reopened
[t=0.0932085s, 56548 KB] f = 56, 9951 evaluated, 9847 expanded, 153 reopened
[t=0.0949335s, 56548 KB] f = 57, 10161 evaluated, 9996 expanded, 155 reopened
[t=0.0970315s, 56548 KB] f = 58, 10360 evaluated, 10199 expanded, 163 reopened
[t=0.0987036s, 56548 KB] f = 59, 10576 evaluated, 10371 expanded, 163 reopened
[t=0.10058s, 56548 KB] f = 60, 10791 evaluated, 10579 expanded, 165 reopened
[t=0.102499s, 56548 KB] f = 61, 11013 evaluated, 10796 expanded, 167 reopened
[t=0.104605s, 56548 KB] f = 62, 11260 evaluated, 11030 expanded, 172 reopened
[t=0.106675s, 56548 KB] f = 63, 11507 evaluated, 11260 expanded, 174 reopened
[t=0.109327s, 56548 KB] f = 64, 11815 evaluated, 11573 expanded, 185 reopened
[t=0.111568s, 56548 KB] f = 65, 12093 evaluated, 11813 expanded, 185 reopened
[t=0.114026s, 56680 KB] f = 66, 12371 evaluated, 12102 expanded, 188 reopened
[t=0.115816s, 56680 KB] f = 67, 12574 evaluated, 12332 expanded, 188 reopened
[t=0.118168s, 56680 KB] f = 68, 12842 evaluated, 12617 expanded, 194 reopened
[t=0.120036s, 56680 KB] f = 69, 13035 evaluated, 12850 expanded, 196 reopened
[t=0.122668s, 56680 KB] f = 70, 13341 evaluated, 13159 expanded, 209 reopened
[t=0.12421s, 56680 KB] f = 71, 13515 evaluated, 13351 expanded, 211 reopened
[t=0.127094s, 56940 KB] f = 72, 13734 evaluated, 13603 expanded, 215 reopened
[t=0.128678s, 56940 KB] f = 73, 13893 evaluated, 13817 expanded, 215 reopened
[t=0.130252s, 56940 KB] f = 74, 14017 evaluated, 14005 expanded, 221 reopened
[t=0.131488s, 56940 KB] f = 75, 14137 evaluated, 14156 expanded, 224 reopened
[t=0.132779s, 56940 KB] f = 76, 14253 evaluated, 14292 expanded, 225 reopened
[t=0.133782s, 56940 KB] f = 77, 14349 evaluated, 14414 expanded, 225 reopened
[t=0.133935s, 56940 KB] New best heuristic value for cg: 0
[t=0.134005s, 56940 KB] g=76, 14354 evaluated, 14420 expanded, 225 reopened
[t=0.134129s, 56940 KB] Solution found!
[t=0.134221s, 56940 KB] Actual search time: 0.129041s

## Plan
move-player s_3_5 s_3_4 (1)
move-player s_3_4 s_3_3 (1)
move-player s_3_3 s_4_3 (1)
move-player s_4_3 s_4_2 (1)
move-player s_4_2 s_4_1 (1)
move-player s_4_1 s_3_1 (1)
push-box s_3_1 s_3_2 s_3_3 (1)
push-box s_3_2 s_3_3 s_3_4 (1)
move-player s_3_3 s_4_3 (1)
move-player s_4_3 s_5_3 (1)
move-player s_5_3 s_6_3 (1)
move-player s_6_3 s_6_2 (1)
push-box s_6_2 s_5_2 s_4_2 (1)
move-player s_5_2 s_5_3 (1)
move-player s_5_3 s_4_3 (1)
move-player s_4_3 s_3_3 (1)
move-player s_3_3 s_3_2 (1)
move-player s_3_2 s_3_1 (1)
move-player s_3_1 s_4_1 (1)
push-box s_4_1 s_4_2 s_4_3 (1)
move-player s_4_2 s_5_2 (1)
move-player s_5_2 s_5_3 (1)
move-player s_5_3 s_5_4 (1)
move-player s_5_4 s_4_4 (1)
move-player s_4_4 s_4_5 (1)
move-player s_4_5 s_3_5 (1)
push-box s_3_5 s_3_4 s_3_3 (1)
push-box s_3_4 s_3_3 s_3_2 (1)
move-player s_3_3 s_3_4 (1)
move-player s_3_4 s_4_4 (1)
move-player s_4_4 s_5_4 (1)
move-player s_5_4 s_5_3 (1)
move-player s_5_3 s_5_2 (1)
move-player s_5_2 s_4_2 (1)
push-box s_4_2 s_4_3 s_4_4 (1)
move-player s_4_3 s_3_3 (1)
move-player s_3_3 s_3_4 (1)
move-player s_3_4 s_2_4 (1)
move-player s_2_4 s_1_4 (1)
move-player s_1_4 s_1_3 (1)
push-box s_1_3 s_2_3 s_3_3 (1)
push-box s_2_3 s_3_3 s_4_3 (1)
push-box s_3_3 s_4_3 s_5_3 (1)
move-player s_4_3 s_4_2 (1)
move-player s_4_2 s_4_1 (1)
move-player s_4_1 s_3_1 (1)
push-box s_3_1 s_3_2 s_3_3 (1)
move-player s_3_2 s_4_2 (1)
move-player s_4_2 s_4_3 (1)
push-box s_4_3 s_3_3 s_2_3 (1)
move-player s_3_3 s_3_4 (1)
move-player s_3_4 s_3_5 (1)
move-player s_3_5 s_4_5 (1)
push-box s_4_5 s_4_4 s_4_3 (1)
move-player s_4_4 s_5_4 (1)
push-box s_5_4 s_5_3 s_5_2 (1)
move-player s_5_3 s_5_4 (1)
move-player s_5_4 s_4_4 (1)
move-player s_4_4 s_3_4 (1)
move-player s_3_4 s_3_3 (1)
move-player s_3_3 s_3_2 (1)
move-player s_3_2 s_4_2 (1)
push-box s_4_2 s_4_3 s_4_4 (1)
move-player s_4_3 s_5_3 (1)
move-player s_5_3 s_6_3 (1)
move-player s_6_3 s_6_2 (1)
push-box s_6_2 s_5_2 s_4_2 (1)
move-player s_5_2 s_5_3 (1)
move-player s_5_3 s_4_3 (1)
move-player s_4_3 s_3_3 (1)
move-player s_3_3 s_3_4 (1)
move-player s_3_4 s_2_4 (1)
move-player s_2_4 s_1_4 (1)
move-player s_1_4 s_1_3 (1)
push-box s_1_3 s_2_3 s_3_3 (1)
push-box s_2_3 s_3_3 s_4_3 (1)

## Details
[t=0.134313s, 56940 KB] Plan length: 76 step(s).
[t=0.134313s, 56940 KB] Plan cost: 76
[t=0.134313s, 56940 KB] Expanded 14421 state(s).
[t=0.134313s, 56940 KB] Reopened 225 state(s).
[t=0.134313s, 56940 KB] Evaluated 14354 state(s).
[t=0.134313s, 56940 KB] Evaluations: 14354
[t=0.134313s, 56940 KB] Generated 38449 state(s).
[t=0.134313s, 56940 KB] Dead ends: 0 state(s).
[t=0.134313s, 56940 KB] Expanded until last jump: 14414 state(s).
[t=0.134313s, 56940 KB] Reopened until last jump: 225 state(s).
[t=0.134313s, 56940 KB] Evaluated until last jump: 14349 state(s).
[t=0.134313s, 56940 KB] Generated until last jump: 38436 state(s).
[t=0.134313s, 56940 KB] Number of registered states: 14354
[t=0.134313s, 56940 KB] Int hash set load factor: 14354/32768 = 0.438049
[t=0.134313s, 56940 KB] Int hash set resizes: 15
[t=0.134313s, 56940 KB] Search time: 0.129784s
[t=0.134313s, 56940 KB] Total time: 0.134313s
Solution found.
Peak memory: 56940 KB
Remove intermediate file output.sas
search exit code: 0


# Problem 2

## Initialisation
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /src/fd/builds/release/bin/translate/translate.py ./current/sokobanDomain.pddl ./current/sokobanProblem2.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.001s wall-clock]
Normalizing Datalog program...
Normalizing Datalog program: [0.000s CPU, 0.004s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 14 rules.
Computing model... [0.010s CPU, 0.010s wall-clock]
298 relevant atoms
420 auxiliary atoms
718 final queue length
785 total queue pushes
Completing instantiation... [0.010s CPU, 0.005s wall-clock]
Instantiating: [0.020s CPU, 0.023s wall-clock]
Computing fact groups...
Finding invariants...
4 initial candidates
Finding invariants: [0.000s CPU, 0.002s wall-clock]
Checking invariant weight... [0.000s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
14 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.000s CPU, 0.003s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.006s wall-clock]
22 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
1 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.003s wall-clock]
Reordering and filtering variables...
15 of 15 variables necessary.
0 of 1 mutex groups necessary.
82 of 82 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.001s wall-clock]
Translator variables: 15
Translator derived variables: 0
Translator facts: 55
Translator goal facts: 3
Translator mutex groups: 0
Translator total mutex groups size: 0
Translator operators: 82
Translator axioms: 0
Translator task size: 439
Translator peak memory: 39476 KB
Writing output... [0.010s CPU, 0.002s wall-clock]
Done! [0.060s CPU, 0.043s wall-clock]
translate exit code: 0

## Search
INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /src/fd/builds/release/bin/downward --search 'astar(cg())' --internal-plan-file plan.txt < output.sas
[t=3.4332e-05s, 55864 KB] reading input...
[t=0.000852936s, 55864 KB] done reading input!
[t=0.00248568s, 56128 KB] Initializing causal graph heuristic...
[t=0.00260943s, 56128 KB] Initializing heuristic cache... building causal graph...done! [t=0.000165613s]
[t=0.0029771s, 56128 KB] done!
[t=0.00329905s, 56128 KB] Building successor generator...done!
[t=0.00358901s, 56260 KB] peak memory difference for successor generator creation: 132 KB
[t=0.0036614s, 56260 KB] time for successor generation creation: 7.8143e-05s
[t=0.00380257s, 56260 KB] Variables: 15
[t=0.00389125s, 56260 KB] FactPairs: 55
[t=0.00397343s, 56260 KB] Bytes per state: 4
[t=0.00413663s, 56260 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.00431604s, 56260 KB] New best heuristic value for cg: 29
[t=0.00441267s, 56260 KB] g=0, 1 evaluated, 0 expanded
[t=0.00449315s, 56260 KB] f = 29, 1 evaluated, 0 expanded
[t=0.00462963s, 56260 KB] Initial heuristic value for cg: 29
[t=0.00472733s, 56260 KB] pruning method: none
[t=0.00488345s, 56260 KB] New best heuristic value for cg: 25
[t=0.00496534s, 56260 KB] g=1, 3 evaluated, 1 expanded
[t=0.00510685s, 56260 KB] f = 31, 6 evaluated, 3 expanded
[t=0.00525908s, 56260 KB] f = 32, 7 evaluated, 4 expanded
[t=0.00543497s, 56260 KB] New best heuristic value for cg: 21
[t=0.00549094s, 56260 KB] g=5, 12 evaluated, 7 expanded
[t=0.00560611s, 56260 KB] New best heuristic value for cg: 17
[t=0.00568321s, 56260 KB] g=6, 14 evaluated, 8 expanded
[t=0.00578457s, 56260 KB] New best heuristic value for cg: 13
[t=0.00582758s, 56260 KB] g=7, 15 evaluated, 9 expanded
[t=0.00591669s, 56260 KB] New best heuristic value for cg: 9
[t=0.00599302s, 56260 KB] g=8, 16 evaluated, 10 expanded
[t=0.00682767s, 56260 KB] New best heuristic value for cg: 7
[t=0.00690936s, 56260 KB] g=14, 73 evaluated, 56 expanded
[t=0.00700793s, 56260 KB] New best heuristic value for cg: 3
[t=0.00708238s, 56260 KB] g=15, 74 evaluated, 57 expanded
[t=0.00885699s, 56260 KB] f = 33, 251 evaluated, 192 expanded, 3 reopened
[t=0.00963851s, 56260 KB] f = 34, 303 evaluated, 264 expanded, 29 reopened
[t=0.0110413s, 56260 KB] f = 35, 401 evaluated, 341 expanded, 30 reopened
[t=0.0122062s, 56260 KB] f = 36, 462 evaluated, 429 expanded, 56 reopened
[t=0.0132211s, 56260 KB] f = 37, 534 evaluated, 486 expanded, 57 reopened
[t=0.0142403s, 56260 KB] f = 38, 587 evaluated, 535 expanded, 58 reopened
[t=0.0165042s, 56260 KB] f = 39, 685 evaluated, 606 expanded, 60 reopened
[t=0.0182113s, 56260 KB] f = 40, 834 evaluated, 775 expanded, 100 reopened
[t=0.0190034s, 56260 KB] f = 41, 898 evaluated, 839 expanded, 105 reopened
[t=0.0193078s, 56260 KB] New best heuristic value for cg: 2
[t=0.019406s, 56260 KB] g=35, 909 evaluated, 852 expanded, 105 reopened
[t=0.0210004s, 56260 KB] f = 42, 1026 evaluated, 957 expanded, 106 reopened
[t=0.0221375s, 56260 KB] f = 43, 1101 evaluated, 1036 expanded, 113 reopened
[t=0.0241258s, 56260 KB] f = 44, 1247 evaluated, 1228 expanded, 160 reopened
[t=0.0253354s, 56260 KB] f = 45, 1328 evaluated, 1323 expanded, 174 reopened
[t=0.0263054s, 56260 KB] f = 46, 1409 evaluated, 1409 expanded, 175 reopened
[t=0.0273619s, 56260 KB] f = 47, 1465 evaluated, 1470 expanded, 180 reopened
[t=0.0293732s, 56260 KB] f = 48, 1597 evaluated, 1592 expanded, 180 reopened
[t=0.0304157s, 56260 KB] New best heuristic value for cg: 1
[t=0.0305235s, 56260 KB] g=37, 1671 evaluated, 1666 expanded, 186 reopened
[t=0.0328876s, 56260 KB] f = 49, 1762 evaluated, 1742 expanded, 189 reopened
[t=0.0344751s, 56260 KB] f = 50, 1893 evaluated, 1898 expanded, 218 reopened
[t=0.0361849s, 56260 KB] f = 51, 1991 evaluated, 2002 expanded, 228 reopened
[t=0.037733s, 56260 KB] f = 52, 2110 evaluated, 2123 expanded, 228 reopened
[t=0.0392251s, 56260 KB] f = 53, 2206 evaluated, 2222 expanded, 232 reopened
[t=0.0406126s, 56260 KB] f = 54, 2273 evaluated, 2305 expanded, 233 reopened
[t=0.041812s, 56260 KB] f = 55, 2377 evaluated, 2408 expanded, 238 reopened
[t=0.0426282s, 56260 KB] f = 56, 2458 evaluated, 2500 expanded, 238 reopened
[t=0.0435244s, 56260 KB] f = 57, 2561 evaluated, 2600 expanded, 242 reopened
[t=0.0440879s, 56260 KB] f = 58, 2603 evaluated, 2663 expanded, 242 reopened
[t=0.0455365s, 56260 KB] f = 59, 2711 evaluated, 2803 expanded, 275 reopened
[t=0.046029s, 56260 KB] f = 60, 2756 evaluated, 2871 expanded, 277 reopened
[t=0.0477285s, 56260 KB] f = 61, 2871 evaluated, 3035 expanded, 326 reopened
[t=0.0488246s, 56260 KB] f = 62, 2937 evaluated, 3117 expanded, 329 reopened
[t=0.0509332s, 56260 KB] f = 63, 3093 evaluated, 3363 expanded, 427 reopened
[t=0.0514151s, 56260 KB] f = 64, 3134 evaluated, 3420 expanded, 429 reopened
[t=0.052537s, 56260 KB] f = 65, 3219 evaluated, 3550 expanded, 474 reopened
[t=0.0530276s, 56260 KB] f = 66, 3264 evaluated, 3604 expanded, 475 reopened
[t=0.0541498s, 56260 KB] f = 67, 3348 evaluated, 3735 expanded, 522 reopened
[t=0.0546541s, 56260 KB] f = 68, 3390 evaluated, 3786 expanded, 523 reopened
[t=0.0555812s, 56260 KB] f = 69, 3466 evaluated, 3853 expanded, 526 reopened
[t=0.05628s, 56260 KB] f = 70, 3518 evaluated, 3916 expanded, 527 reopened
[t=0.0571766s, 56260 KB] f = 71, 3571 evaluated, 3968 expanded, 530 reopened
[t=0.0589626s, 56260 KB] f = 72, 3731 evaluated, 4219 expanded, 623 reopened
[t=0.0594807s, 56260 KB] f = 73, 3790 evaluated, 4281 expanded, 628 reopened
[t=0.0616518s, 56428 KB] f = 74, 3950 evaluated, 4536 expanded, 721 reopened
[t=0.0620773s, 56428 KB] f = 75, 3993 evaluated, 4579 expanded, 721 reopened
[t=0.0624607s, 56428 KB] f = 76, 4032 evaluated, 4635 expanded, 721 reopened
[t=0.0638628s, 56428 KB] f = 77, 4199 evaluated, 4774 expanded, 727 reopened
[t=0.0644295s, 56428 KB] f = 78, 4233 evaluated, 4827 expanded, 728 reopened
[t=0.0664009s, 56428 KB] f = 79, 4369 evaluated, 4961 expanded, 742 reopened
[t=0.067238s, 56428 KB] f = 80, 4395 evaluated, 5000 expanded, 742 reopened
[t=0.068614s, 56428 KB] f = 81, 4517 evaluated, 5109 expanded, 745 reopened
[t=0.0692585s, 56428 KB] f = 82, 4570 evaluated, 5177 expanded, 747 reopened
[t=0.070646s, 56428 KB] f = 83, 4738 evaluated, 5318 expanded, 751 reopened
[t=0.07125s, 56428 KB] f = 84, 4801 evaluated, 5398 expanded, 755 reopened
[t=0.0723131s, 56428 KB] f = 85, 4892 evaluated, 5504 expanded, 768 reopened
[t=0.0729932s, 56428 KB] f = 86, 4954 evaluated, 5589 expanded, 769 reopened
[t=0.0740468s, 56428 KB] f = 87, 5034 evaluated, 5678 expanded, 779 reopened
[t=0.0752456s, 56428 KB] f = 88, 5128 evaluated, 5881 expanded, 866 reopened
[t=0.0760319s, 56428 KB] f = 89, 5211 evaluated, 5966 expanded, 866 reopened
[t=0.0761676s, 56428 KB] New best heuristic value for cg: 0
[t=0.0762342s, 56428 KB] g=89, 5218 evaluated, 5974 expanded, 866 reopened
[t=0.0763205s, 56428 KB] Solution found!
[t=0.0764029s, 56428 KB] Actual search time: 0.0716534s

## Plan
move-player s_4_2 s_4_3 (1)
move-player s_4_3 s_5_3 (1)
move-player s_5_3 s_6_3 (1)
move-player s_6_3 s_6_4 (1)
move-player s_6_4 s_6_5 (1)
move-player s_6_5 s_5_5 (1)
move-player s_5_5 s_4_5 (1)
push-box s_4_5 s_4_4 s_4_3 (1)
push-box s_4_4 s_4_3 s_4_2 (1)
move-player s_4_3 s_4_4 (1)
move-player s_4_4 s_4_5 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
move-player s_6_5 s_6_6 (1)
move-player s_6_6 s_6_7 (1)
move-player s_6_7 s_5_7 (1)
move-player s_5_7 s_4_7 (1)
move-player s_4_7 s_3_7 (1)
move-player s_3_7 s_2_7 (1)
move-player s_2_7 s_1_7 (1)
move-player s_1_7 s_1_8 (1)
move-player s_1_8 s_1_9 (1)
move-player s_1_9 s_2_9 (1)
move-player s_2_9 s_3_9 (1)
move-player s_3_9 s_4_9 (1)
push-box s_4_9 s_4_8 s_4_7 (1)
move-player s_4_8 s_4_9 (1)
move-player s_4_9 s_3_9 (1)
move-player s_3_9 s_2_9 (1)
move-player s_2_9 s_1_9 (1)
move-player s_1_9 s_1_8 (1)
move-player s_1_8 s_1_7 (1)
move-player s_1_7 s_2_7 (1)
move-player s_2_7 s_3_7 (1)
push-box s_3_7 s_4_7 s_5_7 (1)
push-box s_4_7 s_4_6 s_4_5 (1)
push-box s_4_6 s_4_5 s_4_4 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
move-player s_6_5 s_6_6 (1)
move-player s_6_6 s_6_7 (1)
push-box s_6_7 s_5_7 s_4_7 (1)
push-box s_5_7 s_4_7 s_3_7 (1)
push-box s_4_7 s_3_7 s_2_7 (1)
push-box s_3_7 s_2_7 s_1_7 (1)
move-player s_2_7 s_3_7 (1)
move-player s_3_7 s_4_7 (1)
move-player s_4_7 s_5_7 (1)
move-player s_5_7 s_6_7 (1)
move-player s_6_7 s_6_6 (1)
move-player s_6_6 s_6_5 (1)
move-player s_6_5 s_6_4 (1)
move-player s_6_4 s_6_3 (1)
move-player s_6_3 s_5_3 (1)
move-player s_5_3 s_4_3 (1)
push-box s_4_3 s_4_4 s_4_5 (1)
push-box s_4_4 s_4_5 s_4_6 (1)
push-box s_4_5 s_4_6 s_4_7 (1)
move-player s_4_6 s_4_5 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
move-player s_6_5 s_6_6 (1)
move-player s_6_6 s_6_7 (1)
move-player s_6_7 s_5_7 (1)
push-box s_5_7 s_4_7 s_3_7 (1)
push-box s_4_7 s_3_7 s_2_7 (1)
move-player s_3_7 s_4_7 (1)
move-player s_4_7 s_5_7 (1)
move-player s_5_7 s_6_7 (1)
move-player s_6_7 s_6_6 (1)
move-player s_6_6 s_6_5 (1)
move-player s_6_5 s_6_4 (1)
move-player s_6_4 s_6_3 (1)
move-player s_6_3 s_6_2 (1)
move-player s_6_2 s_6_1 (1)
move-player s_6_1 s_5_1 (1)
move-player s_5_1 s_4_1 (1)
push-box s_4_1 s_4_2 s_4_3 (1)
push-box s_4_2 s_4_3 s_4_4 (1)
push-box s_4_3 s_4_4 s_4_5 (1)
push-box s_4_4 s_4_5 s_4_6 (1)
push-box s_4_5 s_4_6 s_4_7 (1)
move-player s_4_6 s_4_5 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
move-player s_6_5 s_6_6 (1)
move-player s_6_6 s_6_7 (1)
move-player s_6_7 s_5_7 (1)
push-box s_5_7 s_4_7 s_3_7 (1)

## Details
[t=0.0765007s, 56428 KB] Plan length: 89 step(s).
[t=0.0765007s, 56428 KB] Plan cost: 89
[t=0.0765007s, 56428 KB] Expanded 5975 state(s).
[t=0.0765007s, 56428 KB] Reopened 866 state(s).
[t=0.0765007s, 56428 KB] Evaluated 5218 state(s).
[t=0.0765007s, 56428 KB] Evaluations: 5218
[t=0.0765007s, 56428 KB] Generated 12839 state(s).
[t=0.0765007s, 56428 KB] Dead ends: 0 state(s).
[t=0.0765007s, 56428 KB] Expanded until last jump: 5966 state(s).
[t=0.0765007s, 56428 KB] Reopened until last jump: 866 state(s).
[t=0.0765007s, 56428 KB] Evaluated until last jump: 5211 state(s).
[t=0.0765007s, 56428 KB] Generated until last jump: 12824 state(s).
[t=0.0765007s, 56428 KB] Number of registered states: 5218
[t=0.0765007s, 56428 KB] Int hash set load factor: 5218/8192 = 0.636963
[t=0.0765007s, 56428 KB] Int hash set resizes: 13
[t=0.0765007s, 56428 KB] Search time: 0.0723652s
[t=0.0765007s, 56428 KB] Total time: 0.0765007s
Solution found.
Peak memory: 56428 KB
Remove intermediate file output.sas
search exit code: 0

# Problem 3

## Initialisation

## Search

## Plan

## Details