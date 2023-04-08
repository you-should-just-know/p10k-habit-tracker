#!/usr/bin/zsh

# Set up variables
api_endpoint="https://api.github.com/users/$GITHUB_USERNAME/events"
output=""
activities=()

# Get GitHub events
response=$(curl -s -H "Authorization: token $GITHUB_TOKEN" "${api_endpoint}")

# Parse response and count activities
for event in ${(f)response}; do
  if [[ "${event}" == *'"type": "PushEvent"'* ]]; then
    activities[1]=$((${activities[1]:-0} + 1))
  elif [[ "${event}" == *'"type": "CreateEvent"'* ]]; then
    activities[2]=$((${activities[2]:-0} + 1))
  elif [[ "${event}" == *'"type": "IssuesEvent"'* ]]; then
    activities[3]=$((${activities[3]:-0} + 1))
  elif [[ "${event}" == *'"type": "PullRequestEvent"'* ]]; then
    activities[4]=$((${activities[4]:-0} + 1))
  fi
done

# Generate output string
for i in {1..$P10K_HABIT_TRACKER_GITHUB_ACTIVITY_MAX_DAYS}; do
  case ${activities[${i}]:-0} in
    0) output+="\u2591";;  # no activity
    $P10K_HABIT_TRACKER_GITHUB_ACTIVITY_LOW_ACTIVITY_RANGE) output+="\u2592";;  # low activity
    $P10K_HABIT_TRACKER_GITHUB_ACTIVITY_MED_ACTIVITY_RANGE) output+="\u2593";;  # medium activity
    *) output+="\u2588";;  # high activity
  esac
done

# Export output as environment variable
export P10K_HABIT_TRACKER_GITHUB_ACTIVITY="$(echo -e ${output})"
