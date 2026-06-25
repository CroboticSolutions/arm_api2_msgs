# Result of the latest plan/execute attempt for a pose or trajectory command.
# Published by arm_api2 every time a plan is attempted, regardless of outcome.
# The GUI uses this to surface failures (e.g. GOAL_STATE_INVALID) to the user.

std_msgs/Header header

# True when the plan was found AND execution started/completed successfully.
bool success

# Short machine-readable code (e.g. "SUCCESS", "GOAL_STATE_INVALID",
# "INVALID_MOTION_PLAN", "PLAN_NOT_FOUND", "EXECUTE_FAILED",
# "BUSY_TRAJECTORY_EXECUTING", "EMPTY_TRAJECTORY").
string error_code

# Human-readable explanation; safe to display verbatim.
string reason

# Echo of the pose that was attempted (in PLANNING_FRAME).
geometry_msgs/PoseStamped requested_pose

# How long planning took, end-to-end, in seconds.
float64 plan_time_sec

# Mode that produced this status: "JOINT_TRAJ_CTL", "CART_TRAJ_CTL", "OTHER".
string mode
