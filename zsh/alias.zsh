## Alias
alias np='hugo new post/$(date "+%Y%m%d%H%M%S").md'
alias rm="rm -i"
alias ls="ls -G"
if [ `uname -s` = 'Darwin' ]; then
    alias ls='ls -G'
    alias ll='ls -lhaG'
else
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -lha'
fi

