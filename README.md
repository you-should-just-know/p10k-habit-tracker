# p10k-habit-tracker

## Description

This project provides an ambient habit tracker for the PowerLevel10K zsh theme.

### Current integrations

- GitHub Activity Graph

### Planned integrations

- What are these 'plans' of which you speak?

## Usage

### env.zsh

Modify the environment variables in this file to your liking, and `source` it within your `.zshrc` file **above** the line that contains `source ~/.p10k.zsh`.

### get-github-activity.zsh

Source this file in your `.zshrc` immediately after `env.zsh`.

### .p10k-habit-tracker.zsh

1. Append this file to `~/.p10k.zsh`.
2. Insert `github_activity_graph` into either the `POWERLEVEL9K_LEFT_PROMPT_ELEMENTS` or `POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS` segment definition in ~/.p10k.zsh.
3. Be active on GitHub to fill up your bar.