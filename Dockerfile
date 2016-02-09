FROM debian:jessie

ENV HOME /root

RUN apt-get update -qq && \
	apt-get install -y -qq git curl wget && \
	apt-get -y clean


# install npm
RUN apt-get install -y -qq npm
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install bower
RUN npm install --global bower

WORKDIR /srv/
