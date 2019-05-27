FROM jfenske89/vim:ubuntu

COPY files/profile.vimrc /root/.vimrc 

RUN apt update && apt install -q -y software-properties-common && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
    apt update && \
    apt install -q -y npm python3 yarn && \ 
    vim +PlugInstall +qall && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

ENTRYPOINT ["/bin/zsh"]
