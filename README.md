Just hotchpotch of scripts to build a lfs in Docker. Use this project just as a reference for scripts; other than that it is not well organized.

Basic command that starts it all in docker

```
docker run -it --name lfs-systemd --mount type=bind,source=(pwd),target=/lfs --privileged debian:11
```
