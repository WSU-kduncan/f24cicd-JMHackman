# Project 5
# Jeremy H

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

- Link: [Link to deploy.sh](https://github.com/WSU-kduncan/f24cicd-JMHackman/blob/main/deployment/deploy.sh)

- Webhook setup: The webhook is used to listen to incoming HTTP requests and trigger specific actions when a webhook is recieved. It will listen to the redeploy-webhook call and execute a script to redeploy the docker container.

- To install webhook, `sudo apt-get update` and `sudo apt-get install -y webhook` are needed first. Than configure the webhook listeneer and ensure the `webhook.conf` and the `hooks.json` file are set up properly. Make sure the ports are ready and continue. 

- Description webhook:

- Path: `/home/meme/f24cicd-JMHackman/deployment/hooks.json`

- Link: [Link to hooks.json](https://github.com/WSU-kduncan/f24cicd-JMHackman/blob/main/deployment/hooks.json)

- You can start the webhook listener without systemd service with `webhook -nopanic -hooks /home/meme/f24cicd-JMHackman/deployment/hooks.json` and test the webhook listener with `curl "http://localhost:9000/redeploy-webhook?secret=dckr_pat_1ewj9HpUBZ4zQm4kQ4LUu1mDtGE"` and these would work for my webhook.

- You can monitor the logs from webhook with `sudo journalctl -u webhook -f` and verify if the docker container was working with `docker ps`. 

- To configure to send webhook messages, you can go to the github repository and navigate through settings and go to webhooks. Add a webhook and enter the URL of the webhook being used. Choose `application/json`, and save said webhook.

- To make a service file, create it in a designated location with `nano` or `vim` and inside the file define the service configuration. Enable the service to satrt at boot with `sudo systemctl enable webhook-listener.service` and start the service with `sudo systemctl start webhook-listener.service`. You can reload the system with `sudo systemctl daemon-reload`. You can enable the service to start at boot with `sudo systemctl enable webhook-listener.service` nad start with `sudo systemctl start webhook-listener.service`.

- Link: [Link to webhook.service](https://github.com/WSU-kduncan/f24cicd-JMHackman/blob/main/deployment/webhook.service)

## Failures

- For some reason unknown, I can make the `Dockerfile` push and build a container, I can make the `webhooks` work and I can make the actions push and all that. For some reason when put all together, nothing works, it all works individually but not when set in sequence. 


## Diagram

- ![Diagram](https://raw.githubusercontent.com/WSU-kduncan/f24cicd-JMHackman/main/images/diagram_p5.png)

## CItations

- Project 4, recordings, several grauated students, chatGPT, `adnah` for webhooks, stack overflow and other assorted websites. 
