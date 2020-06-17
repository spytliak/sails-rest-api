## Solution 

### Task 1

Your first task is to create a Dockerfile for this application to build a Docker image. Docker image should contain all application files and application dependencies it should expose port `1337`, it should run command `sails lift` by default. As a base image you should use `node:10.15.3`.

Dockerfife:

FROM node:10.15.3

LABEL NAME="spytliak/sails-rest-api"
LABEL VERSION="0.0.0"
LABEL MAINTEINER="Serhii Pytliak"

ENV HOST="0.0.0.0"
ENV PORT="1337"

WORKDIR /app
COPY . .

RUN npm i --no-cache && npm i sails -g  --no-cache

HEALTHCHECK --interval=5s --timeout=3s --start-period=3s --retries=3 CMD [ "curl", "0.0.0.0:1337" ]

EXPOSE 1337
ENTRYPOINT [ "sails", "lift" ]



### Task 2

All right so far so good! It's a time to move a Docker image from your workstation to a registry from where other team members will be able to pull it. Your team decided to use `hub.docker.com` as a Docker images registry. Your next task will be create an account at `hub.docker.com` and create a new repository within your account. Repository should be public so your people can pull an image with your application.




### Task 3

You're doing good, keep going!
Your team is very satisfied with your work. And it's time to build a Docker image with your application automatically evetytime when any member of your team pushes changes to the github repository. Your team decided to use Travis CI to achive this because it's free for opensource projects.
Your task is to configure integration with Travis CI. On each push into master branch of your repository on Github Travis CI should create a new docker image and push it to registry.

