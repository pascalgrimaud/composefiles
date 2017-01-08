# SonarQube

<div align="center">
  <a href="https://hub.docker.com/_/sonarqube/">
    <img src="https://raw.githubusercontent.com/docker-library/docs/84479f149eb7d748d5dc057665eb96f923e60dc1/sonarqube/logo.png">
  </a>
</div>

# How to use

Pull the image:
- `docker pull sonarqube:6.2-alpine`

Start SonarQube:
- `docker-compose up`

Start SonarQube in background
- `docker-compose up -d`

Stop SonarQube:
- `docker-compose stop`

All data are under the volume:
- `~/volumes/sonarqube/postgresql`

Access to SonarQube:
- http://localhost:9000
