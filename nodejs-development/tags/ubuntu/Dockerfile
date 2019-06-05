FROM jfenske89/vim:ubuntu

COPY files/profile.vimrc /root/.vimrc 

# TODO: install nvm
RUN apt update && apt install -q -y software-properties-common && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list && \
    apt update && \
    apt install -q -y chromium-browser npm python3 yarn && \
    vim +PlugInstall +qall && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN addgroup developer && \
    adduser --gecos '' --disabled-password --ingroup developer developer

USER developer
ENV HOME /home/developer
ENV CHROME_BIN=/usr/bin/chromium-browser

ENTRYPOINT ["/bin/zsh"]
