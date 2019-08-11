#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# This configures NGINX such that the global configuration file is nginx.conf in the project root.
# Additional site specific items are loaded from the conf.d/ directory.
# See default.conf for examples of how to configure additional location paths
docker run --name nginx -p 9000:80 \
 -v /tmp:/hosttmp \
 -v ${SCRIPT_DIR}/nginx.conf:/etc/nginx/nginx.conf:ro \
 -v ${SCRIPT_DIR}/conf.d/:/etc/nginx/conf.d/:ro \
 -v ${SCRIPT_DIR}/content/:/content/:ro \
 -v /storage:/storage:ro \
 -d nginx
