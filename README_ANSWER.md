## Solution on tasks

### Task 1

Your first task is to create a Dockerfile for this application to build a Docker image. Docker image should contain all application files and application dependencies it should expose port `1337`, it should run command `sails lift` by default. As a base image you should use `node:10.15.3`.

https://github.com/spytliak/sails-rest-api

```
root@:/mydocker/dataArt/sails-rest-api# docker run -it --rm --name sails-rest-api -p 8080:1337 spytliak/sails-rest-api:latest

 info: Starting app...

 info: Initializing project hook... (`api/hooks/custom/`)
 info: Initializing `apianalytics` hook...  (requests to monitored routes will be logged!)
 info: ·• Auto-migrating...  (alter)
 info:    Hold tight, this could take a moment.
 info:  ✓ Auto-migration complete.

debug: Skipping v0 bootstrap script...  (because it's already been run)
debug: (last run on this computer: @ Sat Jun 13 2020 09:51:59 GMT+0000 (Coordinated Universal Time))
 info:
 info:                .-..-.
 info:
 info:    Sails              <|    .-..-.
 info:    v1.2.4              |\
 info:                       /|.\
 info:                      / || \
 info:                    ,'  |'  \
 info:                 .-'.-==|/_--'
 info:                 `--'-------'
 info:    __---___--___---___--___---___--___
 info:  ____---___--___---___--___---___--___-__
 info:
 info: Server lifted in `/app`
 info: To shut down Sails, press <CTRL> + C at any time.
 info: Read more at https://sailsjs.com/support.

debug: -------------------------------------------------------
debug: :: Wed Jun 17 2020 14:25:32 GMT+0000 (Coordinated Universal Time)

debug: Environment : development
debug: Port        : 1337
debug: -------------------------------------------------------
<- GET /                                      (23ms 200)
 |  Requesting user is a guest, so show the public landing page.
 |  view: pages/homepage



### Task 2

All right so far so good! It's a time to move a Docker image from your workstation to a registry from where other team members will be able to pull it. Your team decided to use `hub.docker.com` as a Docker images registry. Your next task will be create an account at `hub.docker.com` and create a new repository within your account. Repository should be public so your people can pull an image with your application.

https://hub.docker.com/r/spytliak/sails-rest-api



### Task 3

You're doing good, keep going!
Your team is very satisfied with your work. And it's time to build a Docker image with your application automatically evetytime when any member of your team pushes changes to the github repository. Your team decided to use Travis CI to achive this because it's free for opensource projects.
Your task is to configure integration with Travis CI. On each push into master branch of your repository on Github Travis CI should create a new docker image and push it to registry.


https://travis-ci.org/github/spytliak/sails-rest-api
