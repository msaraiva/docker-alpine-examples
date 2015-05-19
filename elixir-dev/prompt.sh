source ~/.git-prompt.sh
source /usr/share/bash-completion/completions/git

PS1='\[\e[1;31m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;39m\]\n$ '
