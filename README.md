# Intro

You're a new DevOps engineer on a project. Your team is developing a new opensource application using Sails JS framework for NodeJS. Your team decided to use Docker to build, package and deploy this brand new application and your first task is put it inside a container.


## Pre-requires

You need to install Docker on your workstation. You can find all necessary information on the official Docker website, here is a link to installiation instuctions: https://docs.docker.com/engine/install/

Yes, it works on Linux, Windows and MacOs.

Also you need a text editor, I recomend you to use [SublimeText](https://www.sublimetext.com/3), [VSCode](https://code.visualstudio.com/), [Atom](https://atom.io/), [Notepad++](https://notepad-plus-plus.org/downloads/) or anything else you prefered.

And last but not least, you need a Github account, if you don't have Github account, please create a new one, you'll need it, because you will need to create a fork of this repository and submit results of your work as a pull request.

If you're ready, let's take a look at your first task below.


## Task 1

Your first task is to create a Dockerfile for this application to build a Docker image. Docker image should contain all application files and application dependencies it should expose port `1337`, it should run command `sails lift` by default. As a base image you should use `node:10.15.3`.

Where to start? The official documentation is a very good place to start, check this out:

* [Get started](https://docs.docker.com/get-started/)
* [Dockerfile reference](https://docs.docker.com/engine/reference/builder/)
* [docker build](https://docs.docker.com/engine/reference/commandline/build/)
* [Dockerfile best practices](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)


## Task 2

All right so far so good! It's a time to move a Docker image from your workstation to a registry from where other team members will be able to pull it. Your team decided to use `hub.docker.com` as a Docker images registry. Your next task will be create an account at `hub.docker.com` and create a new repository within your account. Repository should be public so your people can pull an image with your application.

* [hub.docker.com](https://hub.docker.com/)
* [Quick start](https://docs.docker.com/docker-hub/)
* [docker push](https://docs.docker.com/engine/reference/commandline/push/)


## Task 3

You're doing good, keep going!
Your team is very satisfied with your work. And it's time to build a Docker image with your application automatically evetytime when any member of your team pushes changes to the github repository. Your team decided to use Travis CI to achive this because it's free for opensource projects.
Your task is to configure integration with Travis CI. On each push into master branch of your repository on Github Travis CI should create a new docker image and push it to registry.

* [Travis CI](https://travis-ci.org/)
* [Core Concepts for Beginners](https://docs.travis-ci.com/user/for-beginners/)
* [Sharing docker image](https://docs.travis-ci.com/user/build-stages/share-docker-image/)
* [docker login](https://docs.docker.com/engine/reference/commandline/login/)


test3
