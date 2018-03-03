#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM debian:jessie-slim

# ensure local python is preferred over distribution python
ENV PATH /usr/src/app/m-minerd-linux/64:/usr/src/app:/usr/local/bin:$PATH



RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app



COPY . /usr/src/app

RUN cd /usr/src/app && tar -xzvf /usr/src/app/m-minerd-linux.tar.gz

EXPOSE 5000


CMD ["runMining.sh"]


