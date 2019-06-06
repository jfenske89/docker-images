FROM jfenske89/vim:latest

COPY files/profile.vimrc /root/.vimrc

RUN apk add --no-cache chromium npm python3 && \
    vim +PlugInstall +qall

ENV HOME /root
ENV CHROME_BIN=/usr/bin/chromium-browser

ENTRYPOINT ["/bin/zsh"]
