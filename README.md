# AWS DevOps Project 1 - Flask Web App

## Overview
This project demonstrates deploying a Python Flask web application on an AWS EC2 instance using Docker. Nginx is used as a reverse proxy to serve the app on port 80. The project also includes version control with GitHub.

## Features
- Dockerized Flask application
- Nginx reverse proxy for port forwarding (80 → 5000)
- EC2 instance setup with proper security group rules
- Code managed in GitHub repository

## Setup Instructions
1. Launch an EC2 instance (Amazon Linux 2)
2. SSH into the instance:
   ```bash
  ssh -i "awsdevops.pem" ec2-user@ec2-107-20-182-167.compute-1.amazonaws.com 

3.Install Docker and Nginx:
  sudo yum update -y
sudo yum install docker nginx -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl start nginx
sudo systemctl enable nginx

4.Build and run the Docker container for the Flask app:
docker build -t flaskapp .
docker run -d -p 5000:5000 flaskapp

5.Configure Nginx to forward traffic to Flask on port 5000

6.Open EC2 security group for SSH (22) and HTTP (80)

7. Access the app in your browser
   http://107.20.182.167


Access the app in a browser:
