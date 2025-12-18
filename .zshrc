
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ls="eza -l -h --no-permissions --no-filesize --no-user --icons -s=Name"
alias lg="lazygit"
alias nv="nvim"
alias y="yazi"
bindkey -e
#echo "$(sudo yabai --load-sa)"
autoload -Uz compinit
compinit

echo "
⣿⣿⣿⣿⣿⡿⠛⠋⠁⠀⠀⠀⠀⠙⠛⠿⠟⠋⠉⠁⠀⠈⠙⠻
⣿⣿⣿⡿⠋⠀⠸⠄⢀⣀⠠⠤⠤⣀⡀⠐⡄⠀⠀⠀⠀⠀⠾⠂⠈⠻
⣿⣿⡟⠀⠀⠀⠠⠋⠁⠀⠀⠀⠀⠀⠉⠙⠻⠒⠚⠛⠛⠛⠛⠒⠒⠦⠘⢿
⣿⠟⠀⠀⡆⠀⠀⠀⠀⢀⣤⣴⣶⣶⣶⣶⣶⣧⣄⢀⣠⣤⣤⣶⣶⣶⣤⣤⣙
⠁⢸⠀⠸⠅⠀⠀⣴⣾⣿⣿⣿⣿⣿⡏⡉⠙⣿⣿⣼⣿⣿⣿⣿⣿⢋⡉⢻⣿⡆
⣀⠀⠀⠀⠀⠀⠀⠀⢉⠛⠿⢿⣿⣿⣷⣧⣶⡿⠟⠸⠿⠿⣿⡿⠿⠶⠬⠾⠿⢃
⠓⠀⠀⠀⠀⠀⠀⠀⠈⠙⠒⠤⠤⠬⠭⠁⣤⠤⠖⠁⠀⠀⠀⠀⠀⠀⠀⠀⣠
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠔⠊⠁⠀⠀⠀⠑⠢⡄⠒⠒⠂⠰
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘
⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡈
⠀⠀⠀⠀⠀⠀⣼⣿⣧⣭⣭⣍⣛⣛⣛⡶⠶⠶⢦⣤⣤⣤⣤⣤⣴⣶
⠀⠀⠀⠀⠰⢄⠈⠉⠉⠉⠉⠉⠉⠙⠛⠛⠿⠿⠿⠷⠶⠶⣶

   When you want to give up
   Think about why you started
   - Steve Harvey
"
alias jukit_kitty="kitty --listen-on=unix:@"$(date +%s%N)" -o allow_remote_control=yes"

export EDITOR="nvim"
export VISUAL="nvim"

#PS1='%~: '

