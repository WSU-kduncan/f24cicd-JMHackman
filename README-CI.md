# Jeremy Hackman

### 12/2/2024

# Project 4

## Part 1 - Docker

### Documentation

# Project Overview

- The main point of this project is to make a container for an angular application using docker and CI which is continous integration with github. This can help make repeatable environments for later apps and containers. the tools that were used in this project are, Docker, Angular, and Github. I used Docker for container storage and Angular as it was the given framework for this project and I used Github for the CI that was needed for the project.

- Part 4 - Diagramming goes here
  - Include a diagram (or diagrams) of your entire workflow. Meaning it should start with a project change / update, the steps that happen in between, and end with the updated version when the server is queried (web page is accessed)

# Run Project Locally
- I installed docker via the docker website, dockerhub and downloaded docker desktop to assist in the project. I also made sure to make the account to the project specifications as i was having some issues with docker a few weeks ago.

- The first step would be to create the Dockerfile, with pieces like, "FROM, WORKDIR, COPY, RUN, COPY, EXPOSE, CMD and any others". Than build the image with "docker build -t name/angular-site .". Than you should run the container to see if it works and us the command, "docker run -p portnumber:portnumber name/angular-site". Than lastly, you should push the image to dockerhub using the command "docker push name/angular-site".

- To run an container you should 

- how to view the project running in the container (open a browser...go to ip and port...)

# DockerHub

- Process to create public repo in DockerHub
- How to authenticate with DockerHub via CLI using Dockerhub credentials
  - what credentials would you recommend providing?
- How to push container to Dockerhub

# GitHub Actions

- Configuring GitHub Secrets
  - What secrets were set based on what info
- Behavior of GitHub workflow
  - what does it do and when
  - what variables in workflow are custom to your project

# Deployment

- Description of container restart script
- Setting up a webhook on the server
  - How you created you own listener
  - How you installed the [webhook on GitHub](https://github.com/adnanh/webhook)
  - How to keep the webhook running if the instance is on
- Description of Webhook task definition file
- Steps to set up a notifier in GitHub or DockerHub

## Part 2 - GitHub Actions and DockerHub

### Tasks

1. Create an Access Token with Read / Write access to your DockerHub account's repositories.
2. Set GitHub Secrets named DOCKER_USERNAME and DOCKER_TOKEN containing your DockerHub username & DockerHub access token, respectively.
3. Set up GitHub Actions workflow to build and push docker image using your `Dockerfile` to DockerHub

### Documentation

In `README-CI.md`, include the following details:

- Configuring GitHub Secrets:
  - How to set a secret for use by GitHub Actions
  - What secret(s) are set for this project
    - Note: do not copy paste your secrets into your documentation
- Behavior of GitHub workflow
  - summary of what your workflow does
  - **Link** to workflow file in your GitHub repository
  - summary of what a user would need to change or configure if using your workflow to duplicate your project
    - include workflow changes & repository changes

## Part 3 - Diagramming

Include a diagram (or diagrams) of the continuous integration process.  A good diagram will label tools used and how things connect.  This diagram would probably look best near your project description.

## Submission

1. Commit and push your changes to your repository. Verify that these changes show in your course repository.

   - Your repo should contain:
   - `README-CI.md`
   - `angular-site` folder with Angular application
   - `Dockerfile`
   - GitHub action `yml` file in `.github/workflows`
   - diagram image(s)

