# Summary

This project provides a very simple shell in order to instantly get up and running with NGINX

## Prequisites

- Docker 18.x+

## Run

```
$ ./launch.sh
```

## Configure

Out of the box, this starts the server and points the web root at the content/ directory under this
project for html content.

See default.conf and launch.sh for examples of how to also include additional external content directories, as
is done here for /media.

__NOTE:__ : This configuration also sets up wide open CORS headers. This is very useful for development, but be
sure to lock all of this down properly if considering any of this for production!
