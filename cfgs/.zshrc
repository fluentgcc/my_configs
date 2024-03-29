# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-antigen/antigen.zsh

# export HISTFILE=~/.zsh_history
# export HISTFILESIZE=1000000000
# export HISTSIZE=1000000000
# setopt HIST_FIND_NO_DUPS
# setopt INC_APPEND_HISTORY
# # export HISTTIMEFORMAT="[%F %T] "


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle command-not-found
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-history-substring-search
# antigen bundle zsh-users/zsh-completions


# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# ZSH_AUTOSUGGEST_STRATEGY=history

export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

export FORCE_CUDA="1"
# export TORCH_CUDA_ARCH_LIST="3.7+PTX;5.0;6.0;6.1;7.0;7.5;8.0;8.6"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/herman/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/herman/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/herman/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/herman/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

conda activate dev

# # 用于远程渲染
# export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0.0
# export LIBGL_ALWAYS_INDIRECT=1
