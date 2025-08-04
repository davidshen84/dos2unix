# Use the official Alpine Linux as a parent image
FROM alpine

# Set the maintainer label for the image
LABEL maintainer="David Shen <davidshen84@gmail.com>"

# Install dos2unix and git packages
RUN apk add --no-cache \
    dos2unix \
    git

# Set the working directory to /data
WORKDIR /data

# The command to run when the container starts. This command finds all modified files in the git repository and runs dos2unix on them.
CMD ["/bin/sh", "-c", "git status --porcelain | sed -s 's/\(. *\)\(.*\) -> \(.*\)/\1\3/' | cut -c4- | xargs dos2unix"]