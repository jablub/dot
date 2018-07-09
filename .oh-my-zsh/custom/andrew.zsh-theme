local ret_status="%(?:%{$fg_bold[green]%}ᗧ···%{$fg_bold[red]%}🍒:%{$fg_bold[red]%}ᗣ %s)"

function git_path_to_root() {
    local PTR
    PTR=$(command git rev-parse --show-prefix 2> /dev/null)
    local ret=$?
    if [[ $ret != 0 ]]; then
        echo "%~ "
    else 
        echo " /$PTR "
    fi
}

function git_repo_name() {
    local PROJ
    PROJ=$(command git rev-parse --show-toplevel 2> /dev/null)
    if [[ $? == 0 ]]; then
        echo "%{$fg_bold[blue]%}[%{$fg[red]%}$(command basename $PROJ)%{$fg_bold[blue]%}]%{$reset_color%}"
    fi
}

PROMPT='${ret_status}%{$fg[cyan]%}$(git_path_to_root)%{$reset_color%}'

function zle-line-init zle-keymap-select {
    VIM_PROMPT_NORM="%{$fg_bold[yellow]%}[NORMAL]%{$reset_color%}"
    VIM_PROMPT_INS="%{$fg_bold[green]%}[INSERT]%{$reset_color%}"
    RPS1="$(git_repo_name) ${${KEYMAP/vicmd/$VIM_PROMPT_NORM}/(main|viins)/$VIM_PROMPT_INS} $EPS1"
    zle reset-prompt
}


zle -N zle-line-init
zle -N zle-keymap-select
