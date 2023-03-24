## Alias
alias np='hugo new post/$(date "+%Y%m%d%H%M%S").md'
alias rm="rm -i"
alias ls="ls -G"
alias g="git"

# replace using rg, sd
alias rgr='(){rg $1 -r $2 --files-with-matches $3 | xargs -I{} sd $1 $2 $3 {} }'

if [ `uname -s` = 'Darwin' ]; then
    alias ls='ls -G'
    alias ll='ls -lhaG'
else
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -lha'
fi

