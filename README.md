# AWS DevOps CI/CD Project – Flask App Deployment to EC2
Automated CI/CD pipeline that deploys a Dockerized Flask application to AWS EC2 using GitHub Actions.
This project demonstrates a complete CI/CD pipeline using GitHub Actions to automatically deploy a Dockerized Flask application to an AWS EC2 instance.

## Architecture
- GitHub (Source Code)
- GitHub Actions (CI/CD)
- AWS EC2 (Deployment Server)
- Docker (Containerization)
- Flask (Python Web App)
- 
## CI/CD Workflow
1. Code is pushed to the `main` branch.
2. GitHub Actions workflow is triggered.
3. Workflow connects to EC2 using SSH.
4. Latest code is pulled.
5. Docker image is rebuilt.
6. Existing container is stopped and removed.
7. New container is started on port 5000.

## Deployment Details
- EC2: Amazon Linux 2023
- Instance Type: t2.micro
- Dockerized Flask App
- Port: 5000
- Elastic IP attached
- Application URL: http://54.85.151.49:5000

## Run Locally
docker build -t flaskapp .
docker run -d -p 5000:5000 flaskapp

## What I Learned
- How to launch and configure an EC2 instance
- Managing Security Groups and opening required ports
- Attaching and using an Elastic IP
- Creating and managing SSH keys securely
- Dockerizing a Flask application
- Writing a CI/CD pipeline using GitHub Actions
- Using GitHub Secrets for secure deployment
- Automating container rebuild and restart on deployment
- Troubleshooting SSH authentication issues



