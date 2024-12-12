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

- Instance information - at minimum pub
- How to install Docker to the instance given it's OS
- `bash` script
  - Purpose
  - Description of script taskings
  - Location on instance filesystem
  - LINK to your script in a folder named `deployment`
- Purpose of installing & steps to install / setup adnanh's `webhook` to the instance
- `webhook` / hook task definition file
  - Description of what it does
  - Location on instance filesystem
  - LINK to your hook definition file in a folder named `deployment`
- How to start the `webhook` listening (without using service)
- How to test that the listener successfully listens & triggers the script
  - include:
    - how to monitor logs from the `webhook` program
    - what to look for in `docker` process views
- How to configure GitHub OR DockerHub to message the listener 
- How to modify or create a `webhook` service file such that your `webhook` listener is listening as soon as the system is booted
  - include commands to reload the service respective to files changed (`webhook` service file versus hook definition file)
  - LINK to your `webhook` service file in a folder named `deployment`

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
