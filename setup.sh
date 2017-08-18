#!/bin/bash

brew update
brew install zsh zsh-completions tmux
brew install vim --override-system-vi
brew install reattach-to-user-namespace

zsh setup
sudo sh -c "echo '/usr/local/bin/zsh' >> /etc/shells"
chsh -s /usr/local/bin/zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

cp ./zsh/setting.zsh ~/.oh-my-zsh/custom/setting.zsh
cp ./zsh/tmux.zsh ~/.oh-my-zsh/custom/tmux.zsh
cp ./zsh/prompt.zsh-theme ~/.oh-my-zsh/themes/prompt.zsh-theme
cp ./tmux/tmux.conf ~/.tmux.conf
cp ./vim/vimrc ~/.vimrc



