# PDDL planning automation
## To Run:
Ensure you have all the required modules by running `pip install -r requirements.txt`
Type: `run_planner.py -h` for help.
### Options
- `-d`: which domain to run. You can use the name of the directory (eg: blocks) or its relative path (./domains/blocks). **NOTE: DO NOT LEAVE A TRAILING FORWARD SLASH (./domains/blocks/)** Type `*` for all domains. Default: `*`
- `t`: which heuristic to run (`add` or `cg`). `*` for both. Default: `*`

## Output
The output will be in the form of a csv file in the output directory. Similarly, the stdout of each run will be found in the logs directory.

