# A LAPP image based on Turnkeylinux
# Forked from cboulanger/turnkeylinux-lamp-docker
	
FROM turnkeylinux/lapp-14.1
MAINTAINER Ano Tisam "ano.tisam@ffa.int"

ENV DEBIAN_FRONTEND noninteractive

# Updates Repos
RUN (apt-get update && apt-get -y -q autoclean && apt-get -y -q autoremove)

#Install NodeJs
RUN curl https://deb.nodesource.com/node_5.x/pool/main/n/nodejs/nodejs_5.9.1-1nodesource1~jessie1_amd64.deb > node.deb \
&& dpkg -i node.deb \
&& rm node.deb

#Start Node
ENV NODE_ENV production
WORKDIR /usr/src/app
CMD ["npm","start"]

#Clean Up
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ENTRYPOINT ["/usr/sbin/start.sh"]
