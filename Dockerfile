# syntax=docker/dockerfile:1.2

FROM node:alpine

# intall openssh-client
RUN apk add --no-cache openssh-client

# install git
RUN apk add --no-cache openssh-client git

# get public keys of github.com
RUN mkdir -p -m 0700 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

# clone repo from github
RUN --mount=type=ssh git clone git@github.com:krzysztof-winiarczyk/example_nodejs_server.git /server

# change working directory
WORKDIR /server

# intall node package manager
RUN npm install

# run app (default image command)
CMD ["npm", "start"]