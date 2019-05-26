FROM jfenske89/zsh:ubuntu

COPY files/profile.vimrc /root/.vimrc 

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -q -y exuberant-ctags vim-nox && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    vim +PlugInstall +qall && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

ENTRYPOINT ["/bin/zsh"]
