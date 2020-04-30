# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Exports
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#remove duplicate entries from history
export HISTCONTROL=ignoreboth

# Aliases
# Free Memory
alias freememo="sudo free && sync && echo 3 > /proc/sys/vm/drop_caches && free"

# list all dirctories
alias la='ls -A --group-directories-first --color=auto '

# do ls with group-directories-first
alias ls='ls --group-directories-first --color=auto '

#How many times have you needed to unpack a .tar file and couldn't remember the exact arguments needed? Aliases to the rescue! Just add the following to your .bash_profile file and then use untar FileName to unpack any .tar file.
alias untar='tar -zxvf '

#Want to download something but be able to resume if something goes wrong?
alias wget='wget -c '

#Need to generate a random, 20-character password for a new online account? No problem.
alias getpass="openssl rand -base64 20"

#Downloaded a file and need to test the checksum? We've got that covered too.
alias sha='shasum -a 256 '

#A normal ping will go on forever. We don't want that. Instead, let's limit that to just five pings.
alias ping='ping -c 5'

#Start a web server in any folder you'd like.
alias www='python -m SimpleHTTPServer 8000'

#Want to know how fast your network is? Just download Speedtest-cli and use this alias. You can choose a server closer to your location by using the speedtest-cli --list command.
alias speed='speedtest-cli --server 2406 --simple'

#How many times have you needed to know your external IP address and had no idea how to get that info? Yeah, me too.
alias ipe='curl ipinfo.io/ip'

#Need to know your local IP address?
alias ipi='ipconfig getifaddr en0'

#clear the screen.
alias c='clear'

#PS1
# Show current git branch in prompt.
GITBranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[1m\e[90m\]\[\e[39\e[35m\]\u\[\e[90m\e[1m\]@\h \[\e[90m\]...\W\[\e[36m\]\$(GITBranch)\[\e[1m\e[90m\]>\[\e[35m\]>\[\e[39m>\]\[\e[39m\e[22m\] "

# Load virtualenvwrapper
source virtualenvwrapper.sh &> /dev/null

