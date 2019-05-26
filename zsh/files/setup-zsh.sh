#!/bin/sh

cp /root/.oh-my-zsh/templates/zshrc.zsh-template /root/.zshrc

sed 's/ZSH_THEME="dieter"/ZSH_THEME="avit"/g' /root/.zshrc > /tmp/.zshrc
mv /tmp/.zshrc /root/

sed 's/zsh-syntax-highlighting/gitfast/' /root/.zshrc > /tmp/.zshrc
mv /tmp/.zshrc /root/
