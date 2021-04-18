## docker-youtube-dl
A docker container for downloading and storing videos from the web.

### Usage
While you can run the container by command line, generally better to just run with docker-compose.
`docker-compose run --rm yt-dl <URI>`
It will automatically create a YT directory, and dump the results in there.

Additional options can be put in the environment.
```shell
docker-compose run -e EXEC_SHELL=1 --rm yt-dl
```
#### Docker Compose usage
`EXEC_SHELL=1` will open a shell after running in the container. Useful for debugging.
`YT_DL_OPTS="--additional --options` appends extra options. You can also just have them after the image.

#### Docker run usage
`docker run --rm -e YT_DL=1 jb/youtube-dl <URI>`
