#!/usr/bin/env bash

CONT_NAME="$2"

docker rm -f ${CONT_NAME} 2>/dev/null

docker run -t -d -v $1:$1 \
 -u $UID \
 --name ${CONT_NAME} \
 codeneric/hack-transpiler

exit 0


# until [ "`/usr/bin/docker inspect -f {{.State.Running}} ${CONT_NAME}`" == "true" ]; do
#     sleep 0.1;
# done;

# docker exec -it hack hh_client --version