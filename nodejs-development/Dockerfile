FROM jfenske89/vim:latest

COPY files/profile.vimrc /root/.vimrc

# TODO: install nvm
RUN apk add --no-cache chromium npm python3 yarn && \
    vim +PlugInstall +qall

RUN addgroup -S developer && \
    adduser --disabled-password -G developer developer

USER developer
ENV HOME /home/developer
ENV CHROME_BIN=/usr/bin/chromium-browser

ENTRYPOINT ["/bin/zsh"]
