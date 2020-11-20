# Problem 1

## Initialisation
INFO     Running translator.
INFO     translator stdin: None
INFO     translator time limit: None
INFO     translator memory limit: None
INFO     translator command line string: /usr/bin/python3 /src/fd/builds/release/bin/translate/translate.py ./current/sokobanDomain.pddl ./current/sokobanProblem.pddl --sas-file output.sas
Parsing...
Parsing: [0.000s CPU, 0.002s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.001s wall-clock]
Normalizing Datalog program...
Normalizing Datalog program: [0.010s CPU, 0.004s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 14 rules.
Computing model... [0.010s CPU, 0.008s wall-clock]
249 relevant atoms
375 auxiliary atoms
624 final queue length
708 total queue pushes
Completing instantiation... [0.000s CPU, 0.005s wall-clock]
Instantiating: [0.020s CPU, 0.021s wall-clock]
Computing fact groups...
Finding invariants...
4 initial candidates
Finding invariants: [0.000s CPU, 0.002s wall-clock]
Checking invariant weight... [0.010s CPU, 0.000s wall-clock]
Instantiating groups... [0.000s CPU, 0.000s wall-clock]
Collecting mutex groups... [0.000s CPU, 0.000s wall-clock]
Choosing groups...
19 uncovered facts
Choosing groups: [0.000s CPU, 0.000s wall-clock]
Building translation key... [0.000s CPU, 0.000s wall-clock]
Computing fact groups: [0.010s CPU, 0.004s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.001s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.008s wall-clock]
32 effect conditions simplified
0 implied preconditions added
Detecting unreachable propositions...
0 operators removed
0 axioms removed
1 propositions removed
Detecting unreachable propositions: [0.000s CPU, 0.005s wall-clock]
Reordering and filtering variables...
20 of 20 variables necessary.
0 of 1 mutex groups necessary.
86 of 86 operators necessary.
0 of 0 axiom rules necessary.
Reordering and filtering variables: [0.000s CPU, 0.002s wall-clock]
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
Writing output... [0.010s CPU, 0.003s wall-clock]
Done! [0.050s CPU, 0.047s wall-clock]
translate exit code: 0

## Search
INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /src/fd/builds/release/bin/downward --search 'astar(add())' --internal-plan-file plan.txt < output.sas
[t=3.0772e-05s, 55864 KB] reading input...
[t=0.00066072s, 55864 KB] done reading input!
[t=0.00255387s, 56128 KB] Simplifying 150 unary operators... done! [150 unary operators]
[t=0.00296805s, 56128 KB] time to simplify: 0.000514447s
[t=0.00315109s, 56128 KB] Initializing additive heuristic...
[t=0.00328814s, 56128 KB] Building successor generator...done!
[t=0.00359798s, 56128 KB] peak memory difference for successor generator creation: 0 KB
[t=0.00367025s, 56128 KB] time for successor generation creation: 0.000117785s
[t=0.00376011s, 56128 KB] Variables: 20
[t=0.00383774s, 56128 KB] FactPairs: 57
[t=0.00391896s, 56128 KB] Bytes per state: 4
[t=0.00410789s, 56128 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.00427011s, 56128 KB] New best heuristic value for add: 28
[t=0.00435302s, 56128 KB] g=0, 1 evaluated, 0 expanded
[t=0.00446447s, 56128 KB] f = 28, 1 evaluated, 0 expanded
[t=0.00454414s, 56128 KB] Initial heuristic value for add: 28
[t=0.00462229s, 56128 KB] pruning method: none
[t=0.00475453s, 56128 KB] New best heuristic value for add: 22
[t=0.00483997s, 56128 KB] g=1, 3 evaluated, 1 expanded
[t=0.00495166s, 56128 KB] New best heuristic value for add: 18
[t=0.00503418s, 56128 KB] g=2, 5 evaluated, 2 expanded
[t=0.00529562s, 56128 KB] New best heuristic value for add: 14
[t=0.00537691s, 56128 KB] g=4, 16 evaluated, 6 expanded
[t=0.00560598s, 56128 KB] New best heuristic value for add: 12
[t=0.00572139s, 56128 KB] g=7, 27 evaluated, 13 expanded
[t=0.00599498s, 56128 KB] New best heuristic value for add: 8
[t=0.00607838s, 56128 KB] g=11, 41 evaluated, 18 expanded
[t=0.00618581s, 56128 KB] New best heuristic value for add: 7
[t=0.00627826s, 56128 KB] g=12, 42 evaluated, 19 expanded
[t=0.006391s, 56128 KB] New best heuristic value for add: 4
[t=0.0064542s, 56128 KB] g=13, 46 evaluated, 20 expanded
[t=0.00685076s, 56128 KB] New best heuristic value for add: 3
[t=0.00693114s, 56128 KB] g=17, 72 evaluated, 33 expanded
[t=0.00718887s, 56128 KB] New best heuristic value for add: 2
[t=0.00724565s, 56128 KB] g=19, 86 evaluated, 42 expanded
[t=0.00758089s, 56128 KB] New best heuristic value for add: 1
[t=0.00766541s, 56128 KB] g=23, 109 evaluated, 53 expanded
[t=0.0138654s, 56128 KB] f = 29, 822 evaluated, 556 expanded, 28 reopened
[t=0.0160619s, 56128 KB] f = 30, 1055 evaluated, 741 expanded, 49 reopened
[t=0.0177545s, 56128 KB] f = 31, 1191 evaluated, 844 expanded, 68 reopened
[t=0.0197046s, 56128 KB] f = 32, 1442 evaluated, 1053 expanded, 78 reopened
[t=0.0215922s, 56128 KB] f = 33, 1677 evaluated, 1226 expanded, 97 reopened
[t=0.02543s, 56280 KB] f = 34, 2177 evaluated, 1641 expanded, 142 reopened
[t=0.0287683s, 56280 KB] f = 35, 2451 evaluated, 1880 expanded, 186 reopened
[t=0.0326718s, 56280 KB] f = 36, 2844 evaluated, 2308 expanded, 271 reopened
[t=0.0357009s, 56280 KB] f = 37, 3087 evaluated, 2516 expanded, 305 reopened
[t=0.0385202s, 56280 KB] f = 38, 3365 evaluated, 2806 expanded, 315 reopened
[t=0.0418931s, 56280 KB] f = 39, 3674 evaluated, 3250 expanded, 518 reopened
[t=0.0450782s, 56280 KB] f = 40, 3953 evaluated, 3554 expanded, 545 reopened
[t=0.0474671s, 56280 KB] f = 41, 4210 evaluated, 3783 expanded, 558 reopened
[t=0.050321s, 56280 KB] f = 42, 4451 evaluated, 4112 expanded, 618 reopened
[t=0.0536192s, 56280 KB] f = 43, 4736 evaluated, 4352 expanded, 642 reopened
[t=0.0570342s, 56280 KB] f = 44, 4970 evaluated, 4703 expanded, 735 reopened
[t=0.060793s, 56280 KB] f = 45, 5301 evaluated, 5072 expanded, 826 reopened
[t=0.0625965s, 56280 KB] f = 46, 5441 evaluated, 5271 expanded, 849 reopened
[t=0.0650976s, 56416 KB] f = 47, 5685 evaluated, 5544 expanded, 891 reopened
[t=0.0665411s, 56416 KB] f = 48, 5804 evaluated, 5716 expanded, 921 reopened
[t=0.068923s, 56416 KB] f = 49, 5997 evaluated, 5946 expanded, 950 reopened
[t=0.0705691s, 56416 KB] f = 50, 6181 evaluated, 6146 expanded, 966 reopened
[t=0.0728505s, 56416 KB] f = 51, 6363 evaluated, 6365 expanded, 994 reopened
[t=0.0743922s, 56416 KB] f = 52, 6520 evaluated, 6530 expanded, 1010 reopened
[t=0.0762275s, 56416 KB] f = 53, 6691 evaluated, 6763 expanded, 1043 reopened
[t=0.0777758s, 56416 KB] f = 54, 6861 evaluated, 6938 expanded, 1059 reopened
[t=0.079586s, 56416 KB] f = 55, 7034 evaluated, 7236 expanded, 1124 reopened
[t=0.0806294s, 56416 KB] f = 56, 7137 evaluated, 7377 expanded, 1149 reopened
[t=0.0822458s, 56416 KB] f = 57, 7303 evaluated, 7599 expanded, 1182 reopened
[t=0.0845875s, 56416 KB] f = 58, 7500 evaluated, 7832 expanded, 1244 reopened
[t=0.0871426s, 56540 KB] f = 59, 7669 evaluated, 8015 expanded, 1254 reopened
[t=0.089488s, 56540 KB] f = 60, 7895 evaluated, 8243 expanded, 1291 reopened
[t=0.0913902s, 56540 KB] f = 61, 8017 evaluated, 8433 expanded, 1324 reopened
[t=0.0935663s, 56540 KB] f = 62, 8179 evaluated, 8606 expanded, 1341 reopened
[t=0.09562s, 56540 KB] f = 63, 8335 evaluated, 8769 expanded, 1341 reopened
[t=0.0983528s, 56540 KB] f = 64, 8644 evaluated, 9105 expanded, 1417 reopened
[t=0.100524s, 56540 KB] f = 65, 8862 evaluated, 9362 expanded, 1455 reopened
[t=0.103353s, 56540 KB] f = 66, 9134 evaluated, 9636 expanded, 1487 reopened
[t=0.105455s, 56540 KB] f = 67, 9363 evaluated, 9878 expanded, 1500 reopened
[t=0.107798s, 56540 KB] f = 68, 9590 evaluated, 10102 expanded, 1501 reopened
[t=0.110031s, 56540 KB] f = 69, 9810 evaluated, 10335 expanded, 1527 reopened
[t=0.112631s, 56540 KB] f = 70, 10088 evaluated, 10702 expanded, 1624 reopened
[t=0.114008s, 56540 KB] f = 71, 10242 evaluated, 10891 expanded, 1640 reopened
[t=0.115757s, 56540 KB] f = 72, 10428 evaluated, 11093 expanded, 1647 reopened
[t=0.117794s, 56540 KB] f = 73, 10637 evaluated, 11309 expanded, 1661 reopened
[t=0.120948s, 56540 KB] f = 74, 10860 evaluated, 11571 expanded, 1700 reopened
[t=0.123168s, 56540 KB] f = 75, 11079 evaluated, 11817 expanded, 1728 reopened
[t=0.126263s, 56540 KB] f = 76, 11315 evaluated, 12202 expanded, 1845 reopened
[t=0.127363s, 56540 KB] f = 77, 11420 evaluated, 12334 expanded, 1846 reopened
[t=0.128826s, 56540 KB] f = 78, 11552 evaluated, 12522 expanded, 1859 reopened
[t=0.128948s, 56540 KB] New best heuristic value for add: 0
[t=0.129008s, 56540 KB] g=76, 11557 evaluated, 12525 expanded, 1859 reopened
[t=0.129046s, 56540 KB] Solution found!
[t=0.129107s, 56540 KB] Actual search time: 0.124423s

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
[t=0.129201s, 56540 KB] Plan length: 76 step(s).
[t=0.129201s, 56540 KB] Plan cost: 76
[t=0.129201s, 56540 KB] Expanded 12526 state(s).
[t=0.129201s, 56540 KB] Reopened 1859 state(s).
[t=0.129201s, 56540 KB] Evaluated 11557 state(s).
[t=0.129201s, 56540 KB] Evaluations: 11557
[t=0.129201s, 56540 KB] Generated 34046 state(s).
[t=0.129201s, 56540 KB] Dead ends: 341 state(s).
[t=0.129201s, 56540 KB] Expanded until last jump: 12522 state(s).
[t=0.129201s, 56540 KB] Reopened until last jump: 1859 state(s).
[t=0.129201s, 56540 KB] Evaluated until last jump: 11552 state(s).
[t=0.129201s, 56540 KB] Generated until last jump: 34039 state(s).
[t=0.129201s, 56540 KB] Number of registered states: 11557
[t=0.129201s, 56540 KB] Int hash set load factor: 11557/16384 = 0.705383
[t=0.129201s, 56540 KB] Int hash set resizes: 14
[t=0.129201s, 56540 KB] Search time: 0.12508s
[t=0.129201s, 56540 KB] Total time: 0.129201s
Solution found.
Peak memory: 56540 KB
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
Parsing: [0.000s CPU, 0.003s wall-clock]
Normalizing task... [0.000s CPU, 0.000s wall-clock]
Instantiating...
Generating Datalog program... [0.000s CPU, 0.001s wall-clock]
Normalizing Datalog program...
Normalizing Datalog program: [0.020s CPU, 0.003s wall-clock]
Preparing model... [0.000s CPU, 0.002s wall-clock]
Generated 14 rules.
Computing model... [0.010s CPU, 0.012s wall-clock]
298 relevant atoms
420 auxiliary atoms
718 final queue length
785 total queue pushes
Completing instantiation... [0.010s CPU, 0.005s wall-clock]
Instantiating: [0.040s CPU, 0.024s wall-clock]
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
Computing fact groups: [0.000s CPU, 0.004s wall-clock]
Building STRIPS to SAS dictionary... [0.000s CPU, 0.000s wall-clock]
Building dictionary for full mutex groups... [0.000s CPU, 0.000s wall-clock]
Building mutex information...
Building mutex information: [0.000s CPU, 0.000s wall-clock]
Translating task...
Processing axioms...
Simplifying axioms... [0.000s CPU, 0.000s wall-clock]
Processing axioms: [0.000s CPU, 0.001s wall-clock]
Translating task: [0.010s CPU, 0.005s wall-clock]
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
Writing output... [0.000s CPU, 0.002s wall-clock]
Done! [0.050s CPU, 0.044s wall-clock]
translate exit code: 0

## Search
INFO     Running search (release).
INFO     search stdin: output.sas
INFO     search time limit: None
INFO     search memory limit: None
INFO     search command line string: /src/fd/builds/release/bin/downward --search 'astar(add())' --internal-plan-file plan.txt < output.sas
[t=3.5772e-05s, 55864 KB] reading input...
[t=0.00659959s, 55864 KB] done reading input!
[t=0.00957134s, 56128 KB] Simplifying 126 unary operators... done! [126 unary operators]
[t=0.0100601s, 56128 KB] time to simplify: 0.00056193s
[t=0.0101962s, 56128 KB] Initializing additive heuristic...
[t=0.0103288s, 56128 KB] Building successor generator...done!
[t=0.0106544s, 56128 KB] peak memory difference for successor generator creation: 0 KB
[t=0.0107351s, 56128 KB] time for successor generation creation: 0.000102736s
[t=0.0108014s, 56128 KB] Variables: 15
[t=0.0108626s, 56128 KB] FactPairs: 55
[t=0.0109156s, 56128 KB] Bytes per state: 4
[t=0.0111379s, 56128 KB] Conducting best first search with reopening closed nodes, (real) bound = 2147483647
[t=0.0112968s, 56128 KB] New best heuristic value for add: 52
[t=0.0114019s, 56128 KB] g=0, 1 evaluated, 0 expanded
[t=0.0114775s, 56128 KB] f = 52, 1 evaluated, 0 expanded
[t=0.011567s, 56128 KB] Initial heuristic value for add: 52
[t=0.0116522s, 56128 KB] pruning method: none
[t=0.0117787s, 56128 KB] New best heuristic value for add: 43
[t=0.0118639s, 56128 KB] g=1, 3 evaluated, 1 expanded
[t=0.0119801s, 56128 KB] f = 54, 5 evaluated, 2 expanded
[t=0.0120886s, 56128 KB] f = 58, 6 evaluated, 3 expanded
[t=0.0122258s, 56128 KB] New best heuristic value for add: 37
[t=0.0123151s, 56128 KB] g=5, 9 evaluated, 5 expanded
[t=0.0124329s, 56128 KB] New best heuristic value for add: 34
[t=0.0125176s, 56128 KB] g=6, 10 evaluated, 6 expanded
[t=0.0126281s, 56128 KB] New best heuristic value for add: 25
[t=0.0127074s, 56128 KB] g=7, 12 evaluated, 7 expanded
[t=0.012856s, 56128 KB] New best heuristic value for add: 22
[t=0.0129396s, 56128 KB] g=8, 16 evaluated, 10 expanded
[t=0.0130988s, 56128 KB] New best heuristic value for add: 19
[t=0.0131881s, 56128 KB] g=9, 17 evaluated, 11 expanded
[t=0.0140435s, 56128 KB] New best heuristic value for add: 16
[t=0.0141697s, 56128 KB] g=18, 78 evaluated, 52 expanded
[t=0.0143977s, 56128 KB] New best heuristic value for add: 10
[t=0.0144843s, 56128 KB] g=24, 92 evaluated, 61 expanded
[t=0.0145826s, 56128 KB] New best heuristic value for add: 4
[t=0.0146674s, 56128 KB] g=25, 93 evaluated, 62 expanded
[t=0.026769s, 56128 KB] f = 59, 845 evaluated, 1062 expanded, 318 reopened
[t=0.0269541s, 56128 KB] f = 60, 847 evaluated, 1069 expanded, 318 reopened
[t=0.0272797s, 56128 KB] New best heuristic value for add: 1
[t=0.0273803s, 56128 KB] g=51, 864 evaluated, 1081 expanded, 318 reopened
[t=0.0277925s, 56128 KB] f = 61, 891 evaluated, 1115 expanded, 324 reopened
[t=0.0279837s, 56128 KB] f = 62, 896 evaluated, 1122 expanded, 324 reopened
[t=0.029937s, 56128 KB] f = 63, 1066 evaluated, 1327 expanded, 382 reopened
[t=0.0301563s, 56128 KB] f = 64, 1076 evaluated, 1341 expanded, 386 reopened
[t=0.0304722s, 56128 KB] f = 65, 1107 evaluated, 1369 expanded, 387 reopened
[t=0.030674s, 56128 KB] f = 66, 1118 evaluated, 1380 expanded, 388 reopened
[t=0.0312449s, 56128 KB] f = 67, 1162 evaluated, 1431 expanded, 392 reopened
[t=0.031958s, 56128 KB] f = 68, 1199 evaluated, 1553 expanded, 479 reopened
[t=0.032417s, 56128 KB] f = 69, 1238 evaluated, 1593 expanded, 482 reopened
[t=0.0326529s, 56128 KB] f = 70, 1259 evaluated, 1614 expanded, 483 reopened
[t=0.0332696s, 56128 KB] f = 71, 1295 evaluated, 1678 expanded, 513 reopened
[t=0.033391s, 56128 KB] f = 72, 1300 evaluated, 1682 expanded, 514 reopened
[t=0.0338762s, 56128 KB] f = 73, 1345 evaluated, 1733 expanded, 521 reopened
[t=0.0339669s, 56128 KB] f = 74, 1352 evaluated, 1738 expanded, 521 reopened
[t=0.0351072s, 56128 KB] f = 75, 1489 evaluated, 1875 expanded, 530 reopened
[t=0.0352604s, 56128 KB] f = 76, 1501 evaluated, 1885 expanded, 530 reopened
[t=0.037803s, 56128 KB] f = 77, 1872 evaluated, 2223 expanded, 569 reopened
[t=0.0382803s, 56128 KB] f = 78, 1927 evaluated, 2282 expanded, 576 reopened
[t=0.0407006s, 56272 KB] f = 79, 2181 evaluated, 2632 expanded, 690 reopened
[t=0.0410791s, 56272 KB] f = 80, 2222 evaluated, 2683 expanded, 695 reopened
[t=0.0419435s, 56272 KB] f = 81, 2304 evaluated, 2773 expanded, 709 reopened
[t=0.0423049s, 56272 KB] f = 82, 2338 evaluated, 2813 expanded, 713 reopened
[t=0.042883s, 56272 KB] f = 83, 2399 evaluated, 2881 expanded, 717 reopened
[t=0.0435148s, 56272 KB] f = 84, 2429 evaluated, 2916 expanded, 720 reopened
[t=0.0442917s, 56272 KB] f = 85, 2486 evaluated, 2967 expanded, 723 reopened
[t=0.0450782s, 56272 KB] f = 86, 2539 evaluated, 3024 expanded, 730 reopened
[t=0.0460166s, 56272 KB] f = 87, 2617 evaluated, 3159 expanded, 791 reopened
[t=0.0473416s, 56272 KB] f = 88, 2772 evaluated, 3364 expanded, 864 reopened
[t=0.0498269s, 56272 KB] f = 89, 2965 evaluated, 3984 expanded, 1297 reopened
[t=0.0512833s, 56272 KB] f = 90, 3061 evaluated, 4180 expanded, 1404 reopened
[t=0.0527319s, 56272 KB] f = 91, 3153 evaluated, 4406 expanded, 1544 reopened
[t=0.0532124s, 56272 KB] f = 92, 3188 evaluated, 4460 expanded, 1554 reopened
[t=0.0542911s, 56272 KB] f = 93, 3264 evaluated, 4548 expanded, 1566 reopened
[t=0.0545844s, 56272 KB] f = 94, 3280 evaluated, 4587 expanded, 1581 reopened
[t=0.0555581s, 56272 KB] f = 95, 3372 evaluated, 4691 expanded, 1590 reopened
[t=0.0559289s, 56272 KB] f = 96, 3405 evaluated, 4748 expanded, 1600 reopened
[t=0.0577745s, 56272 KB] New best heuristic value for add: 0
[t=0.0578403s, 56272 KB] g=93, 3546 evaluated, 5105 expanded, 1831 reopened
[t=0.0578984s, 56272 KB] Solution found!
[t=0.0579852s, 56272 KB] Actual search time: 0.0462856s

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
move-player s_4_7 s_4_6 (1)
move-player s_4_6 s_4_5 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
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
move-player s_6_5 s_5_5 (1)
move-player s_5_5 s_4_5 (1)
push-box s_4_5 s_4_6 s_4_7 (1)
move-player s_4_6 s_4_5 (1)
move-player s_4_5 s_5_5 (1)
move-player s_5_5 s_6_5 (1)
move-player s_6_5 s_6_6 (1)
move-player s_6_6 s_6_7 (1)
move-player s_6_7 s_5_7 (1)
push-box s_5_7 s_4_7 s_3_7 (1)

## Details
[t=0.0580525s, 56272 KB] Plan length: 93 step(s).
[t=0.0580525s, 56272 KB] Plan cost: 93
[t=0.0580525s, 56272 KB] Expanded 5106 state(s).
[t=0.0580525s, 56272 KB] Reopened 1831 state(s).
[t=0.0580525s, 56272 KB] Evaluated 3546 state(s).
[t=0.0580525s, 56272 KB] Evaluations: 3546
[t=0.0580525s, 56272 KB] Generated 11257 state(s).
[t=0.0580525s, 56272 KB] Dead ends: 58 state(s).
[t=0.0580525s, 56272 KB] Expanded until last jump: 4748 state(s).
[t=0.0580525s, 56272 KB] Reopened until last jump: 1600 state(s).
[t=0.0580525s, 56272 KB] Evaluated until last jump: 3405 state(s).
[t=0.0580525s, 56272 KB] Generated until last jump: 10462 state(s).
[t=0.0580525s, 56272 KB] Number of registered states: 3546
[t=0.0580525s, 56272 KB] Int hash set load factor: 3546/4096 = 0.865723
[t=0.0580525s, 56272 KB] Int hash set resizes: 12
[t=0.0580525s, 56272 KB] Search time: 0.0469176s
[t=0.0580525s, 56272 KB] Total time: 0.0580525s
Solution found.
Peak memory: 56272 KB
Remove intermediate file output.sas
search exit code: 0

# Problem 3

## Initialisation

## Search

## Plan

## Details