# fino-time.zsh-theme

# Vatsal: heavily editing the theme to what I like. 

# Use with a dark background and 256-color terminal!
# Meant for people with RVM and git. Tested only on OS X 10.7.

# You can set your computer name in the ~/.box-name file if you want.

# Borrowing shamelessly from these oh-my-zsh themes:
#   bira
#   robbyrussell
#
# Also borrowing from http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

#function prompt_char {
#    git branch >/dev/null 2>/dev/null && echo '⠠⠵' && return
#    echo '○'
#}

#function box_name {
#  local box="${SHORT_HOST:-$HOST}"
#  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
#  echo "${box:gs/%/%%}"
#}


function virtualenv_info {
    [ $CONDA_DEFAULT_ENV ] && echo "($CONDA_DEFAULT_ENV) "
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo -e "\e[1m\e[38;5;208m⠠⠵\e[0m" && return
    echo -e "\e[1m\e[38;5;208m○\e[0m"
}

function box_name {
  local box="Vatsals-MacBook-Pro"
  echo "${box:gs/%/%%}"
}

PROMPT="╭─%{$terminfo[bold]$FG[002]%}%n%{$reset_color%}%{$FG[239]%}@%{$reset_color%}%{$terminfo[bold]$FG[040]%}$(box_name)%{$reset_color%}%{$FG[239]%}:%{$reset_color%}%{$terminfo[bold]$FG[018]%}%~%{$reset_color%}\$(git_prompt_info) %{\$FG[226]%}%D - %*%{$reset_color%}
╰─\$(virtualenv_info)\$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[239]%}on%{$reset_color%} %{$fg[255]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[160]%}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[040]%}✔"

