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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/peristocles/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/peristocles/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/peristocles/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/peristocles/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [ -e /Users/peristocles/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/peristocles/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export EDITOR='vim'
export PROMPT='pericles %F{red}:: %F{green}%~ %f'$'\n'
