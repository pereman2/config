export EDITOR='nvim'
alias vim=nvim
if [ "$TMUX" = "" ]; then tmux; fi
export PATH=/Users/peristocles/contributions/depot_tools:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="/usr/local/opt/bison/bin:$PATH"

export PROMPT='pericles %F{red}:: %F{green}%~ %f'$'\n'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
ctags=/usr/local/Cellar/ctags/5.8_1/bin/ctags
alias python=python3
alias vim=/usr/local/Cellar/vim/8.2.2150/bin/vim
alias peak="ssh -X -p 3322 pediabo@peak8.gap.upv.es"
