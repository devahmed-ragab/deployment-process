# [Udagram CircleCI](https://github.com/devahmed-ragab/deployment-process/tree/master/screenshots/CircleCi-digram.png)

![Circleci-digram](https://github.com/devahmed-ragab/deployment-process/tree/master/screenshots/CircleCi-digram.png?raw=true)

Developers commit and push code to the remote GitHub repository.
CricleCi Listen to the master branch Any change in it will trigger webhooks.
The main CircleCI pipeline will be triggered, deploying both the API and frontend applications.

The Main workflow runs two jobs:

- **deploy-api**:
  1- Checkouts the new code.
  2- Install the dependencies.
  3- Build API project.
  4- Deploy builded project to elasticbeanstalk.

- **deploy-frontend**:
  1- Checkouts the new code.
  2- Install the dependencies.
  3- Build Frontend(Angular) project.
  4- Deploy builded project to S3 bucket.
