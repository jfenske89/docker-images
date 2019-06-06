FROM jfenske89/vim:latest

COPY files/profile.vimrc /root/.vimrc

RUN apk add --no-cache chromium npm python3 && \
    vim +PlugInstall +qall
# NVM is not supported for Alpine
#    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh

ENV HOME /root
#ENV NVM_DIR /root/.nvm
#ENV NODE_VERSION 10.16.0
ENV CHROME_BIN=/usr/bin/chromium-browser
#ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
#ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

#RUN . $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm use --delete-prefix $NODE_VERSION

ENTRYPOINT ["/bin/zsh"]
