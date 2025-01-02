# Code & Chaos Static Website Goals Project

This project is a minimal static website built to showcase goals to serve an example website for the Docker image. The website is built using HTML, CSS, and is served using NGINX within a Docker container.

## Features

- **Static Content**: Displays a clean and minimalistic static webpage.
- **Dockerized Deployment**: Easily deploy the website using Docker.
- **Lightweight and Optimized**: Uses a multi-stage build for a small Docker image size.

## Getting Started

### Prerequisites

- Install [Docker](https://www.docker.com/) on your system.

### Deployment Steps

1. **Clone the Repository**

   git clone https://github.com/CodeAndChaosDev/codeandchaos-static-website
   cd codeandchaos-static-website


2. **Build the Docker Image**

   docker build -t codeandchaos-static .


3. **Run the Docker Container**

   docker run -p 8080:80 codeandchaos-static


4. **Access the Website**
   Open your browser and go to: [http://localhost:8080](http://localhost:8080)

## Pushing the Image to Docker Hub

1. **Log in to Docker Hub**

   docker login


2. **Tag the Image**

   docker tag codeandchaos-static <your-dockerhub-username>/codeandchaos-static


3. **Push the Image**

   docker push <your-dockerhub-username>/codeandchaos-static

4. **Pull the Image on Another Machine**

   docker pull <your-dockerhub-username>/codeandchaos-static

## Project Goals

This project serves as:
- A starting point for Dockerized static websites.
- A showcase of the **Code & Chaos** channel's mission:
  - Exploring cybersecurity and ethical hacking.
  - Developing scalable backend systems.
  - Learning and sharing knowledge of cutting-edge technology.

## License

(LICENSE)

