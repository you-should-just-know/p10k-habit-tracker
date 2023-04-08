 #
 # P10K Habit Tracker custom prompt: GitHub Activity Graph
 #
 # Usage:
 #
 # 1. Append this file to ~/.p10k.zsh
 #
 # 2. Insert `github_activity_graph` into either the
 # POWERLEVEL9K_LEFT_PROMPT_ELEMENTS
 # or
 # POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS
 # segment definition in ~/.p10k.zsh
 #
 function prompt_github_activity_graph() {
    p10k segment -f $P10K_HABIT_TRACKER_GITHUB_ACTIVITY_FG_COLOR -i $P10K_HABIT_TRACKER_GITHUB_ACTIVITY_ICON -t "$(echo -e $P10K_HABIT_TRACKER_GITHUB_ACTIVITY)"
  }