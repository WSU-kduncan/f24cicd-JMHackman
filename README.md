# Jeremy Hackman

### 12/2/2024

# Project 4

## Part 1 - Docker

### Tasks

3.  Create Public Repository in DockerHub named YOURLASTNAME-CEG3120
4. Create new GitHub repo (link to create located in Pilot in Content -> CI/CD Projects)
    - This repository will be Public (your previous repo was Private) and you will have privileges to manipulate the repository settings
5. To your repo in a folder named `angular-site`, extract the contents of [angular-bird.zip](angular-bird.zip)
    - You may use an EC2 instance if your system is not Docker compatible.
6. Build and configure a container that will run the `angular-site` application
    - See [Project Overview](#project-overview) for very useful hints
7. Create a `Dockerfile` in your repository that builds a container image with the following requirements:
    - utilizes an appropriate base image with the `FROM` command
    - completes installation of the application software stack with `RUN` command(s)
    - copies in the `angular-site` application with the `COPY` command
    - starts the application when a container is run from the image built with the `Dockerfile` with the `CMD` command 
      - Note: as needed according to your base  selection
    - use of the `EXPOSE` command is optional
    - [Relevant article from dev.to](https://dev.to/rodrigokamada/creating-and-running-an-angular-application-in-a-docker-container-40mk)
8. Push container image built by your `Dockerfile` to your DockerHub repository for container images for this project 

### Documentation

Create `README-CI.md` in main folder of your repo that details the following:

- CI Project Overview
  - (what are you doing, why, what tools)
- Containerizing your Application:
  - how to install docker + dependencies on your system's OS (or an EC2 instance)
  - how to build & configure a container (without building an image) that runs the `angular-site` application
  - summary of instructions stated in the repository `Dockerfile`
  - how to build an image from the repository `Dockerfile`
  - how to run a container from the image built by the repository `Dockerfile`
  - how to view the application running in the container 
    - (open a browser...go to IP and port...)
- Working with DockerHub:
  - how to create public repo in DockerHub
  - how to authenticate with DockerHub via CLI using DockerHub credentials
  - how to push container image to DockerHub
  - **Link** to your DockerHub repository for this project

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

