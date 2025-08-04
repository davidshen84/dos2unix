# USE THE OFFICIAL ALPINE LINUX AS A PARENT IMAGE
FROM alpine

# SET THE MAINTAINER LABEL FOR THE IMAGE
LABEL maintainer="David Shen <davidshen84@gmail.com>"

# INSTALL DOS2UNIX AND GIT PACKAGES
RUN apk add --no-cache \
    dos2unix \
    git

# SET THE WORKING DIRECTORY TO /DATA
WORKDIR /data

# THE COMMAND TO RUN WHEN THE CONTAINER STARTS. THIS COMMAND FINDS ALL MODIFIED FILES IN THE GIT REPOSITORY AND RUNS DOS2UNIX ON THEM.
CMD ["/bin/sh", "-c", "git status --porcelain | sed -s 's/\(. *\)\(.*\) -> \(.*\)/\1\3/' | cut -c4- | xargs dos2unix"]
