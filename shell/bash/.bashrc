# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash aliases file
if [ -e $HOME/.config/bash/aliases.sh ]; then
    source $HOME/.config/bash/aliases.sh
fi

# Bash export file
if [ -e $HOME/.config/bash/export.sh ]; then
    source $HOME/.config/bash/export.sh
fi

# Bash prompt file
if [ -e $HOME/.config/bash/prompt.sh ]; then
    source $HOME/.config/bash/prompt.sh
fi

