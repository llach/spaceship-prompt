# ROS SpaceShip Promt Extension

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------
SPACESHIP_ROS_COLOR="${SPACESHIP_ROS_COLOR="white"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_ros_master() {
  # return if SHOW is set to false
  [[ $SPACESHIP_ROS_SHOW == false ]] && return

  # Show section only if ROS was sourced
  [[ ! -z "$ROS_MASTER_URI" ]] || return

  mas=`echo $ROS_MASTER_URI | sed "s/http:\/\///g" | sed "s/tiago-//g" | sed "s/:11311//g"`

  [[ $mas == localhost ]] mas=LOC

  # Display ROS section
  spaceship::section \
    "$SPACESHIP_ROS_COLOR" \
    "|$mas" \
    "$SPACESHIP_ROS_SUFFIX"
}
