import logging
import os
from typing import List, Optional

from strips_hgn.planning import STRIPSProblem

# Use LMCut as it is quicker
_DEFAULT_OPTS = None # We no longer use the planner
_SAS_PLAN_FNAME = "sas_plan"

_log = logging.getLogger(__name__)


def get_optimal_actions_using_fd(
    problem: STRIPSProblem
) -> Optional[List[str]]:
    """
    Use Fast-Downward to get the optimal actions for the planning problem

    Parameters
    ----------
    problem: STRIPSProblem

    Returns
    -------
    Optional[List[str]], sequential list of actions (i.e. the plan),
    or None if we could not find it
    """
    exit_code = None # We no longer use the planner

    if exit_code == 12:
        _log.error(
            f"Search incomplete for {problem.domain_pddl}, "
            f"{problem.problem_pddl} within {MAX_FD_SEARCH_TIME}s"
        )
        return None
    elif exit_code != 0:
        raise RuntimeError(
            f"Something went wrong, exit code {exit_code} from Fast Downward "
            "(http://www.fast-downward.org/ExitCodes)"
        )

    # Read the plan to get actions, remove \n and ignore final cost line
    plan = open(_SAS_PLAN_FNAME, "r").readlines()
    plan = [
        line[:-1]
        for line in plan
        if line.startswith("(") and line.endswith(")\n")
    ]

    # Remove the plan from disk
    os.remove(_SAS_PLAN_FNAME)
    return plan
