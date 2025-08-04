FROM alpine
LABEL maintainer="Xi Shen <davidshen84@gmail.com>"

RUN apk add --no-cache \
    dos2unix \
    git

WORKDIR /data

CMD ["/bin/sh", "-c", "git status --porcelain | sed -s 's/\(. *\)\(.*\) -> \(.*\)/\1\3/' | cut -c4- | xargs dos2unix"]
