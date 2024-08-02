FROM ubuntu:noble

RUN apt-get update &&\
    apt-get dist-upgrade -y &&\
    apt-get install curl -y

# this keeps the container up so you can 
# be exec -it /bin/bash
ENTRYPOINT ["tail", "-f", "/dev/null"]