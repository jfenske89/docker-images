FROM jfenske89/vim:latest

COPY files/profile.vimrc /root/.vimrc

RUN apk add --no-cache npm python3 yarn && \
    vim +PlugInstall +qall

ENTRYPOINT ["/bin/zsh"]
