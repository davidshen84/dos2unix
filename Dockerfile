FROM ubuntu
LABEL maintainer="Xi Shen <davidshen84@gmail.com>"

RUN apt-get update && apt-get install -y \
    dos2unix \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD git status --porcelain | sed -s 's/\(. *\)\(.*\) -> \(.*\)/\1\3/' | cut -c4- | xargs dos2unix
