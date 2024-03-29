FROM docker.io/arm64v8/ubuntu:latest

USER root
RUN apt update -y
RUN apt install wget git   ca-certificates -y
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.115.4/hugo_extended_0.115.4_Linux-64bit.tar.gz && \
    tar -xvzf hugo_extended_0.115.4_Linux-64bit.tar.gz  && \
    chmod +x hugo && \
    mv hugo /usr/local/bin/hugo && \
    rm -rf hugo_extended_0.115.4_Linux-64bit.tar.gz
CMD ["/usr/local/bin/hugo", "-s", "/root/hugosite", "server", "-D", "--bind", "0.0.0.0", "--port", "1313"]
