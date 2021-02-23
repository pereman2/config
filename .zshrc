if [ "$TMUX" = "" ]; then tmux; fi
export PATH=/Users/peristocles/contributions/depot_tools:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="/usr/local/opt/bison/bin:$PATH"


# ATNLR
export CLASSPATH=".:/usr/local/lib/antlr.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

export EDITOR='vim'
export PROMPT='pericles %F{red}:: %F{green}%~ %f'$'\n'

ctags=/usr/local/Cellar/ctags/5.8_1/bin/ctags
alias python=python3
alias vim=/usr/local/Cellar/vim/8.2.2150/bin/vim
