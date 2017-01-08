# Jenkins2 with Docker

<div align="center">
  <a href="https://hub.docker.com/_/jenkins/">
    <img src="https://raw.githubusercontent.com/docker-library/docs/3ab4dafb41dd0e959ff9322b3c50af2519af6d85/jenkins/logo.png">
  </a>
</div>

# How to use

Pull the image:
- `docker pull jenkinsci/jenkins`

Start Jenkins2:
- `docker-compose up`

Start Jenkins2 in background
- `docker-compose up -d`

Stop Jenkins2:
- `docker-compose stop`

All data are under the volume:
- `~/volumes/jenkins2`
