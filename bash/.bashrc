# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1="\[\033[0;35m\]➜ \[\033[0;32m\]\D{$(date +%F)} \t\[\033[0;35m\]| \[\033[0;33m\]\u\[\033[0;35m\]@\[\033[0;33m\]\h\[\033[0;35m\]::\[\033[1;34m\]\W\[\033[1;31m\]\$(parse_git_branch) \n\[\033[1;35m\]➜ \[\033[00m\]"

parse_git_branch() {
    __git_ps1 '\033[1;34m git:(\033[1;31m%s\033[1;34m)'
}

export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"
alias ls='ls $LS_OPTIONS'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/stefanhg/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/stefanhg/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/stefanhg/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/stefanhg/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source /Users/stefanh/.git-prompt.sh

PATH=$HOME/.local/bin/gh_2.5.2_linux_amd64/bin/:$PATH


ls_fl_count () {
    max_len=-1
    for key in *; do
        len=${#key}
        ((len > max_len)) && max_len=$len
    done

    pad=$((max_len + 5))
    # fmt="%-${pad}s %s\n"
    fmt="%-10s %-${pad}s\n"

    for i in *; do
        # printf "$fmt" "$i" "$(find "$i" | wc -l)";
        printf "$fmt" "$(find "$i" | wc -l)" "$i";
    done
}

alias ls-fcount=ls_fl_count
