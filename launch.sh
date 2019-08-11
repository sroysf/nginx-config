#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run --name nginx -p 9000:80 \
 -v /tmp:/hosttmp \
 -v ${SCRIPT_DIR}/nginx.conf:/etc/nginx/nginx.conf:ro \
 -v ${SCRIPT_DIR}/conf.d/:/etc/nginx/conf.d/:ro \
 -v ${SCRIPT_DIR}/content/:/content/:ro \
 -d nginx
