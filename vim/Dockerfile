FROM jfenske89/zsh:latest

COPY files/profile.vimrc /root/.vimrc 

RUN apk add --no-cache ctags vim vimdiff && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    vim +PlugInstall +qall && \
    echo "alias vi=/usr/bin/vim" >> /root/.zshrc && \


ENTRYPOINT ["/bin/zsh"]
