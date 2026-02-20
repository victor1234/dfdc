# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoredups:ignorespace:erasedups

# Ignore some commands in history
HISTIGNORE='ls:la:ls -l:ls -la:cd:pwd:clear:exit'

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=2000

# After each command, save and reload history
__history_sync() {
	builtin history -a
	builtin history -n
}
PROMPT_COMMAND="__history_sync${PROMPT_COMMAND:+;$PROMPT_COMMAND}"

# Save multi-line commands
shopt -s cmdhist
shopt -s lithist
