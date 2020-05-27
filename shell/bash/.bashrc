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
# Free Memory.
alias freememo="sudo free && sync && echo 3 > /proc/sys/vm/drop_caches && free"

#List all dirctories.
alias la='ls -A --group-directories-first --color=auto '

#Do ls with group-directories-first.
alias ls='ls --group-directories-first --color=auto '

#Unpack a .tar file.
alias untar='tar -zxvf '

#Download something but be able to resume if something goes wrong.
alias wget='wget -c '

#Generate a random, 20-character password.
alias getpass="openssl rand -base64 20"

#Test file checksum.
alias sha='shasum -a 256 '

#Limit that to just five pings.
alias ping='ping -c 5'

#Start a web server in any folder.
alias www='python -m SimpleHTTPServer 8000'

#Get your network spped download Speedtest-cli and use this alias. You can choose a server closer to your location by using the speedtest-cli --list command.
alias speed='speedtest-cli --server 2406 --simple'

#Get external IP address.
alias ipe='curl ipinfo.io/ip'

#Get local IP address.
alias ipi='ipconfig getifaddr en0'

#clear the screen.
alias c='clear'

#Git aliases
alias ga='git add --all'
alias gs='git status'

#PS1
# Show current git branch in prompt.
GITBranch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1="\[\e[1m\e[35m\]\u\[\e[90m\]@\h ...\W\[\e[36m\]\$(GITBranch)>\[\e[35m\]>\[\e[39m\]>\[\e[22m\] "

# Load virtualenvwrapper
source virtualenvwrapper.sh &> /dev/null

