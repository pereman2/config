# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
[[ $TERM == "dumb" ]] && unsetopt zle PS1='$ ' && return
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

export ZSH="/home/peristocles/.oh-my-zsh"
source ~/.config/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen theme edvardm
antigen bundle agkozak/zsh-z
antigen bundle Aloxaf/fzf-tab
antigen apply

export ZSH_THEME=edvardm

source $ZSH/oh-my-zsh.sh
# source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
export EDITOR='nvim'
alias vim=nvim
if [ "$TMUX" = "" ]; then tmux; fi
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export FZF_BASE=$HOME/.fzf
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH="/usr/local/opt/bison/bin:$PATH"
export PATH="$HOME/binaries/bpftrace/tools:$PATH"
export PATH="$HOME/binaries/FlameGraph:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/Cellar/grpc-tools/0.2.6/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/binaries:$PATH"
export PATH="$HOME/.emacs.d/bin/:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/binaries/lua-language-server/bin/:$PATH"
export JSONNET_PATH="$HOME/binaries/grafonnet-lib/grafonnet:$JSONNET_PATH"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=2'

# ======================= ALIAS ================================
alias python=python3
alias peak="ssh -X -p 3322 pediabo@peak8.gap.upv.es"
alias dc=docker-compose
alias pc=podman-compose
alias ff='vim $(fzf)'
alias fd='cd $(find . -type d | fzf)'
alias zc='vim $HOME/.zshrc'
alias vc='vim $HOME/.config/nvim/init.vim'
alias notes='cd ~/Dropbox/notes'
alias cdceph='cd ~/redhat/ceph'
alias cdcephtest='cd ~/redhat/cephtest'
alias cdcephdev='cd ~/redhat/ceph-dev'
alias dashboard='cd ~/redhat/ceph/src/pybind/mgr/dashboard'
alias worktime='~/Dropbox/notes/scripts/time.sh'
alias compr='g++ test.cpp && ./a.out'
alias rundoom='doom run --daemon && emacsclient -c'
alias branches='python3 ~/binaries/my-setup/bin/show_branches.py'

# git aliases
alias gl='git log --color --graph'
alias gsn='git status --untracked-file=no'

alias grep='grep --color -nHi --null -e'
alias killdiscord="kill -9 \$(ps aux | grep discord | awk '{ print \$3 }')"
alias setmonitor="xrandr --output DP-3 --left-of eDP-1 --primary"

# clangd needs compile_commands.json to know where to find files
# add_compile_commands() {
# 	echo "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)" >> CMakeLists.txt
# 	echo "run cmake and the compile_commands.json will be generated"
# }


# $1 means sudo in podman
podman_ps_fzf() {
	echo $($1 podman ps --noheading | fzf | awk '{ print $1 }')
}

seed_id() {
	echo $($1 podman ps --noheading | /usr/bin/grep seed | awk '{ print $1 }')
}

box_seed() {
	$1 podman exec -it $(seed_id $1) bash
}

podman_exec() {
	$1 podman exec -it $(podman_ps_fzf sudo) bash
}

alias pe=podman_exec
alias spe=podman_exec
alias seed=box_seed sudo

process_number() {
	echo $(ps aux | fzf | awk '{ print $2 }')
}

process_fzf_kill() {
	kill -9 $(pn)
}


alias pk=process_fzf_kill
alias pn=process_number
# alias add_compile_commands=add_compile_commands
# ===================================

docker-ips() {   docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}} %tab% {{.Name}}' $(docker ps -aq) | sed 's#%tab%#\t#g' | sed 's#/##g' | sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n }

# kcli

# alias kcli='docker run --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir quay.io/karmab/kcli'

#alias kcli='podman --runtime /usr/bin/crun run --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir -v /var/tmp:/ignitiondir quay.io/karmab/kcli:2543a61'

# alias kcli='podman run --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir -v /var/tmp:/ignitiondir quay.io/karmab/kcli'
# alias kcli='podman run --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir -v /var/tmp:/ignitiondir docker.io/jolmomar/kcli'
# alias kclishell='podman --runtime /usr/bin/crun run --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir -v /var/tmp:/ignitiondir --entrypoint=/bin/sh quay.io/karmab/kcli:2543a61'

# alias kweb='podman --runtime /usr/bin/crun run -p 9000:9000 --net host -it --rm --security-opt label=disable -v $HOME/.ssh:/root/.ssh -v $HOME/.kcli:/root/.kcli -v /var/lib/libvirt/images:/var/lib/libvirt/images -v /var/run/libvirt:/var/run/libvirt -v $PWD:/workdir -v /var/tmp:/ignitiondir --entrypoint=/usr/bin/kweb quay.io/karmab/kcli:2543a61'

# zsh coloring man pages workaround
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;47;34m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;32m'
# export LESS=-r
# ----

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


bindkey '^I' fzf-tab-complete
zstyle ':fzf-tab:*' fzf-bindings 'tab:accept'

alias luamake=/home/peristocles/binaries/lua-language-server/3rd/luamake/luamake

