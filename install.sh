#!/bin/bash

function install_oh_my_zsh() {
    # ohmyzsh
    sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # powerlevel 10k
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
    # auto suggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
}
function install_fuzzy() {
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
}

function move_dotfiles() {
    cp .zshrc ~/.zhsrc
    cp .tmux.conf ~/.tmux.conf
}

function install_alacritty_themes() {
  git clone https://github.com/eendroroy/alacritty-theme.git ~/.alacritty-colorscheme
}

install_fuzzy
install_alacritty_themes
