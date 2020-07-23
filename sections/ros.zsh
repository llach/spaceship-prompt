# ROS SpaceShip Promt Extension

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_ROS_SHOW="${SPACESHIP_ROS_SHOW=true}"
SPACESHIP_ROS_PREFIX="${SPACESHIP_ROS_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_ROS_SUFFIX="${SPACESHIP_ROS_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_ROS_SYMBOL="${SPACESHIP_ROS_SYMBOL="🍷 "}"
SPACESHIP_ROS_COLOR="${SPACESHIP_ROS_COLOR="white"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_ros() {
  # return if SHOW is set to false
  [[ $SPACESHIP_ROS_SHOW == false ]] && return

  # Show section only if ROS was sourced
  [[ ! -z "$ROS_WS" ]] || return

  # Display ROS section
  spaceship::section \
    "$SPACESHIP_ROS_COLOR" \
    "$SPACESHIP_ROS_PREFIX" \
    "$SPACESHIP_ROS_SYMBOL$ROS_WS" \
    "$SPACESHIP_ROS_SUFFIX"
}
