# eclipse

<div align="center">
  <a href="https://eclipse.org/">
    <img src="https://eclipse.org/eclipse.org-common/themes/solstice/public/images/logo/eclipse-426x100.png">
  </a>
</div>

# How to use

Create the volume before:
- `mkdir -p ~/volumes/eclipse/workspace`

Go into the version you want (for example: oxygen):
- `cd oxygen`

Build the image:
- `./build.sh`
- or you can use: `docker build -t eclipse:oxygen .`

Start eclipse:
- `docker-compose up -d`

Stop eclipse:
- `docker-compose stop`

Copy the project you want into the folder:
- `~/volumes/eclipse/workspace/`
