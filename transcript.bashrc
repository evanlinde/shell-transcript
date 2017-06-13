
# Set the environment for the instructor's bash shell.
#

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
elif [ -f /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
elif [ -f /etc/bashrc ]; then
    source /etc/bashrc
fi

case "$(uname -s)" in
  Darwin)
    alias ls='ls -G'
    ;;
  *)
    alias ls='ls --color=auto'
    ;;
esac

# Get the path of the directory that contains this script.
REPO_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Set HISTFILESIZE to a negative number so the HISTFILE won't be truncated.
HISTFILESIZE=-1

# Write command history to a custom history file.
HISTFILE="${REPO_PATH}/commands.txt"

# The PROMPT_COMMAND is executed by bash every time before displaying your prompt.
# This causes the history file to be written after each command completes
# instead of waiting until the shell exits.
PROMPT_COMMAND="history -a"

