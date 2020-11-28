# Inital Analysis
Graphs and data pulled from 24/11 google doc sheet

## Movie domain not fit for comparison
Consistant performance from CG and ADD throughout. Likely due to simple domain

![movie states_generated vs peak_memory](images/movie-states_generate-vs-peak_memory.png)

Time difference too small to draw any conclusions

![movie states_generated vs peak_memory](images/movie-instance-vs-total_time.png)

## CG on Depot consistantly performs the same or better
![](images/depot-instance-vs-plan_length.png)

CG Takes longer to reach these better plans though (To be expected)

![](images/depot-instance-vs-total_time.png)

## CG Consistantly expands more states
![](images/driverlog-instance-vs-states_expanded.png)
![](images/depot-instance-vs-states_expanded.png)
![](images/rovers-instance-vs-states_expanded.png)

## Pathways domain not suitable as no solution was found in any problem for both heuristics

![](images/pathways-instance-vs-plan_length.png)

## Blocks is an interesting domain, CG often beats ADD, but CG fails on some

![](images/blocks-instance-vs-plan_length.png)

## Freecell another interesting domain, maybe need further testing/analysis

![](images/freecell-instance-vs-plan_length.png)
![](images/freecell-dead_ends-vs-total_time.png)
![](images/freecell-plan_length-vs-dead_ends.png)

## We have different results to the Helmert 2004 paper

This is likely due to a number of factors. We have tested less problem files and we have a greater time limit. Not to mention computing capacity and memory

![](images/unsolved-domain-comparison-table.png)
![](images/helmert-2004-domain-comparison-table.png)

## Summary of Analysis

Data used: *results-30-mins-temp*

### Key findings:
* For the instances which are solved by both Add and CG, CG is able to find solutions quicker in most domains (exception: depot).
* CG is consistently able to produce shorter plan lengths
* CG has higher peak memory values - high instantaneous memory usage, does not indicate overall memory usage
* Number of unsolved instances, dead ends and evaluations remain domain specific

![](images/Summary.png)
