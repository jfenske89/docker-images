FROM ubuntu:latest

COPY files/setup-zsh.sh /tmp/setup-zsh.sh

RUN apt update && \
    apt install -q -y curl git zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    chsh --shell=/usr/bin/zsh root && \
    sh /tmp/setup-zsh.sh && \
    rm /tmp/setup-zsh.sh && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

ENTRYPOINT ["/bin/zsh"]
