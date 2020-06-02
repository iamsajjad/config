# .bash_aliases

# Aliases
# Reloads the bashrc file
alias bashreload="source ~/.bashrc && echo Bash config reloaded"

# alias to show the date
alias da='date "+%Y-%m-%d %A %T %Z"'

# download something but be able to resume if something goes wrong.
alias wget='wget -c'

# get external IP address.
alias eip='curl ipinfo.io/ip'

# test file checksum.
alias sha='shasum -a 256'

# generate a random, 20-character password.
alias passphrase="openssl rand -base64 20"

# Alias's to modified commands
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -iv'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias c="clear"
alias cl="clear;ls;pwd"
alias dnf='sudo dnf'
alias multitail='multitail --no-repeat -c'
alias freshclam='sudo freshclam'
alias vi='vim'
alias svi='sudo vi'
alias vis='vim "+set si"'

# Change directory aliases
alias home='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# cd into the old directory
alias bd='cd "$OLDPWD"'

# Remove a directory and all files
alias rmd='/bin/rm  --recursive --force --verbose '

# Alias's for multiple directory listing commands
alias ls='ls -a --g --color=always'                         # add colors and file type extensions
alias la='ls -Alh --g --color=always'                       # show hidden files
alias lx='ls -lXBh'                                         # sort by extension
alias lk='ls -lSrh'                                         # sort by size
alias lc='ls -lcrh'                                         # sort by change time
alias lu='ls -lurh'                                         # sort by access time
alias lr='ls -lRh'                                          # recursive ls
alias lt='ls -ltrh'                                         # sort by date
alias lm='ls -alh |more'                                    # pipe through 'more'
alias lw='ls -xAh'                                          # wide listing format
alias ll='ls -Fls'                                          # long listing format
alias labc='ls -lap'                                        # alphabetical sort
alias lf="ls -l | egrep -v '^d'"                            # files only
alias ldir="ls -l | egrep '^d'"                             # directories only
alias left='ls -t -1'                                       # Sort by modification time
alias count='find . -type f | wc -l'                        # count files

# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Alias's to show disk space and space used in a folder
alias diskspace="du -S | sort -n -r |more"
alias folders='du -h --max-depth=1'
alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'
alias tree='tree -CAhF --dirsfirst'
alias treed='tree -CAFd'
alias mountedinfo='df -hT'
alias mnt='mount | grep -E ^/dev | column -t'               # view only mounted drives
alias d="du -sh"                                            # prints disk usage in human readable form

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# GREP Motifications
alias grep="grep --color"
alias grepp="grep -P --color"

#Git aliases
alias ga='git add --all'
alias gs='git status'
alias cg='cd `git rev-parse --show-toplevel`'               #takes you to the top of your Git project directory

#Python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'
alias www='python -m http.server 8000 --bind 127.0.0.1'     # start a web server in any folder.
alias json='python -m json.tool'                            # Json tools (pipe unformatted to these to nicely format the JSON)
alias rpyc='find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf'

# SSH helper
alias sshclear="rm ~/.ssh/multiplex/* -f && echo SSH connection cache cleared;"
alias sshlist="echo Currently open ssh connections && echo && l ~/.ssh/multiplex/"

