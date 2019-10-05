FROM ruby:2.6-alpine

# START: jfenske89/zsh
COPY ./files/setup-zsh.sh /tmp/setup-zsh.sh

RUN apk add --no-cache curl bash git zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    sh /tmp/setup-zsh.sh && \
    rm /tmp/setup-zsh.sh
# END: jfenske/zsh

# START: jfenske89/vim
RUN apk add --no-cache ctags python3 vim vimdiff && \
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim && \
    vim +PlugInstall +qall && \
    echo "alias vi=/usr/bin/vim" >> /root/.zshrc
# END: jfenske89/vim

# Ruby / RoR development
COPY files/profile.vimrc /root/.vimrc

RUN apk add --no-cache alpine-sdk mariadb-dev nodejs sqlite-dev tzdata && \
    vim +PlugInstall +qall

ENTRYPOINT ["/bin/zsh"]
