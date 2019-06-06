FROM jfenske89/vim:ubuntu

COPY files/profile.vimrc /root/.vimrc 

RUN apt update && \
    apt install -q -y chromium-browser python3 && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    vim +PlugInstall +qall && \
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 10.16.0
ENV CHROME_BIN=/usr/bin/chromium-browser

RUN . $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use $NODE_VERSION

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

ENTRYPOINT ["/bin/zsh"]
