# Project 5
# Jeremy H

## Repo contents

- `README-CD.md` (and `README-CI.md` from P4)
- `angular-site` folder with application
- `Dockerfile`
- GitHub action `yml` file in `.github/workflows`
- `deployment` folder with:
  - `bash` script
  - `webhook` / `hook` definition file
  - `webhook` service file

## Semantic Versioning

- CD Project Overview
  - This project will have a continous deployment pipeline for an angular application using docker, webhooks and github actions. This will automate the building and tagging and updating on an EC2 instance. This will make the deployment process more viable and allows automatic updates for the application whenever changes are made. 
- The way to generate a tag in git is with two seperate types of tags. Lightweight tags, and Anotated tags. Lightweight tags are simple tags that just stick to a commit. Anotated tags are a full item in the git database and include data like the date and name and message of the user.
- GitHub workflow:
  - The github action workflow, is mainly triggered by the repository events and can push, pull, and other repo actions. This can trigger when a new tag is pushed, usually by semantic versioning. 
  - Once the above is procked, the github actiond perform a few steps to complete the tasks. Steps like building the image and pushing the image.
- https://hub.docker.com/u/hackmanmeme

## Deployment

- Public IP: 3.86.202.55

- Operating System: Ubuntu 20.04

- Docker install, update the package index with `sudo apt-get update`, than install docker with `sudo apt-get install -y docker.io` start docker with, `sudo systemctl start docker` and enable docker with `sudo systemctl enable docker`, If you need to verify that it is running use `docker --version`.

- The bash script allows the automatic deployment of docker to a specific image, and checks if the container is running and stops and removes if it is nescessary, than deploys the image again. The scrip tasks are simple, firstly, pull the docker image, secondly, check for existing containers, and lastly start a new container. 

- Path: /home/meme/f24cicd-JMHackman/deployment/deploy.sh

- Link:

- Webhook setup: The webhook is used to listen to incoming HTTP requests and trigger specific actions when a webhook is recieved. It will listen to the redeploy-webhook call and execute a script to redeploy the docker container.

- To install webhook, `sudo apt-get update` and `sudo apt-get install -y webhook` are needed first. Than configure the webhook listeneer and ensure the `webhook.conf` and the `hooks.json` file are set up properly. Make sure the ports are ready and continue. 

- Description webhook:

- Path: `/home/meme/f24cicd-JMHackman/deployment/hooks.json`

- Link:

- You can start the webhook listener without systemd service with `webhook -nopanic -hooks /home/meme/f24cicd-JMHackman/deployment/hooks.json` and test the webhook listener with `curl "http://localhost:9000/redeploy-webhook?secret=dckr_pat_1ewj9HpUBZ4zQm4kQ4LUu1mDtGE"` and these would work for my webhook.

- You can monitor the logs from webhook with `sudo journalctl -u webhook -f` and verify if the docker container was working with `docker ps`. 
- LAST HALF NEED TO BE DONE FOR DESCRIPTION
## Diagramming ( / 2)

- Logically diagrammed steps for continuous deployment workflow

## Demonstration ( / 10)

1. current state of site running on server, before making a change
    - show the page in the browser
    - show the docker status
2. making a change to the project file (from your local system)
3. `commit` and `push` of the change (from your local system)
4. `tag` the `commit` and `push` the `tag` (from your local system)
5. the GitHub Action triggering, relevant logs that it worked
6. DockerHub receiving a new set of tagged images (modified time should be visible)
7. status of `webhook` running as a service on the server
8. `webhook` logs that validate container refresh has been triggered
9. post-change state of site running on server
    - show the page in the browser
    - show the docker status
