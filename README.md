# Dependent DevOps

## Story

You are working at _What a good Software LTD._ as a full stack developer. Last time you successfully created a simple **GitHub Actions** workflow, now everyone thinks that you are the DevOps expert in the team (&ast;SIGH&ast;). So you got this next task, to set up two workflows in this case: one that runs the unit test suite first, and a second one that builds and deploys the application ONLY if the first workflow succeeded.

The task is ready when both workflows turn green and the app is deployed.

## What are you going to learn?

- Create a CI/CD pipeline with GitHub Actions.
- Set running conditions for GitHub Actions workflows.
- Use workflow triggers.
- Build a Docker image.
- Push the Docker image to image registry.
- Deploy an app using Docker image.

## Tasks

1. Create a basic GitHub Actions workflow to run the unit tests of your app.
    - There is a workflow that runs tests upon push or PR on `main`.

2. Create another workflow that is triggered by the success of the testing workflow.
    - A successful testing workflow triggers the deployment workflow (only if a PR has been merged or commits are pushed to the `main` branch).

3. Create a Dockerfile which builds and runs the app without the uneccessary files and folders.
    - Dockerfile is valid, the image starts the app.
    - Valid `.dockerignore` file that excludes `.git` and `node_modules` folders.

4. Modify the GitHub Actions workflow to build and push the Docker image to DockerHub.
    - DockerHub access information (`DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN`) are added as secret environment variables to GitHub Actions.
    - The workflow builds and pushes the Docker image to DockerHub.

5. The deployment workflow should deploy the Dockerized app to Heroku.
    - Heroku access information (`HEROKU_API_KEY`, `HEROKU_APP_NAME`, and `HEROKU_EMAIL`) are added as secret environment variables to GitHub Actions.
    - The workflow deploys the application's Docker image to Heroku, the app is up and running.

## General requirements

None

## Hints

- You just need to run `npm run test` to run the tests for the application.
- The start of the second workflow has to depend on a completed first. Check the `on` condition that sets up such a trigger.
- Don't forget, you also need to check the _success_ and not just the completion of the first workflow! You can set a job condition for it.
- There will be repeated actions in the two workflows as testing and running require similar setup steps.

## Background materials

- <i class="far fa-exclamation"></i> [GitHub Actions basics](https://docs.github.com/en/actions)
- <i class="far fa-exclamation"></i> [Docker basics](https://docs.docker.com/ci-cd/best-practices/)
- <i class="far fa-exclamation"></i> [DockerHub basics](https://docs.docker.com/ci-cd/best-practices/)
- <i class="far fa-exclamation"></i> [Heroku basics](https://help.heroku.com/PBGP6IDE/how-should-i-generate-an-api-key-that-allows-me-to-use-the-heroku-platform-api)
- <i class="far fa-exclamation"></i> [CI/CD basics](https://docs.github.com/en/actions/automating-builds-and-tests/about-continuous-integration)
- <i class="far fa-exclamation"></i> [Node.js basics](https://nodejs.dev/learn)
