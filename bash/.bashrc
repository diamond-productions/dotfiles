# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc


# aliases 
open() {
    xdg-open "${1:-.}"
}

alias cat=bat
alias tree="tree -a -I '.git' "
export DOTFILES="$HOME/.dotfiles"
alias lg=lazygit
alias cg="conda activate"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/wizard/mambaforge/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/wizard/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/wizard/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/wizard/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/home/wizard/mambaforge/etc/profile.d/mamba.sh" ]; then
    . "/home/wizard/mambaforge/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# initialize fzf (fuzzy finder) 
eval "$(fzf --bash)"


if [ -f "$HOME/.cargo/env" ]; then
    # Source the Rust environment setup if rustup is installed
    . "$HOME/.cargo/env"
fi

