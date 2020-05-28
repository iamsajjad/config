# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Bash aliases file
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

#----------------------------------------------------------------------------------------------------------------Exports

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#exports
export PATH

#editor
export VISUAL=vim
export EDITOR="$VISUAL"

#remove duplicate entries from history
export HISTCONTROL=ignoreboth

#add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#------------------------------------------------------------------------------------------------------------------PSone

# Show current git branch in prompt.
GITBranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[1m\e[35m\]\u\[\e[90m\]@\h ...\W\[\e[36m\]\$(GITBranch)>\[\e[35m\]>\[\e[39m\]>\[\e[22m\] "

# Load virtualenvwrapper
source virtualenvwrapper.sh &> /dev/null

