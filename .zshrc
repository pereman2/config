# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export TERM=xterm-256color
export ZSH="/home/peristocles/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    dnf
    zsh-autosuggestions
    tmux
    fzf
    colored-man-pages
    vi-mode
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
export EDITOR='nvim'
alias vim=nvim
if [ "$TMUX" = "" ]; then tmux; fi
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#export PROMPT='pericles %F{red}:: %F{green}%~ %f'$'\n'

export FZF_BASE=$HOME/.fzf
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

alias python=python3
alias peak="ssh -X -p 3322 pediabo@peak8.gap.upv.es"
alias dc=docker-compose
alias ff='vim $(fzf)'
alias zc='vim $HOME/.zshrc'
alias vc='vim $HOME/.config/nvim/init.vim'
alias notes='cd ~/Dropbox/notes'
alias dashboard='cd ~/redhat/ceph/src/pybind/mgr/dashboard'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
