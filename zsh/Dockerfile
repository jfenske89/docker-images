FROM alpine:latest

COPY files/setup-zsh.sh /tmp/setup-zsh.sh

# Ironic that this installs bash, no?
RUN apk add --no-cache curl bash git zsh && \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" && \
    sh /tmp/setup-zsh.sh && \
    rm /tmp/setup-zsh.sh

ENTRYPOINT ["/bin/zsh"]
