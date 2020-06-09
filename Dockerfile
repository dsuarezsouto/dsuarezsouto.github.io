from node:7.10.0

# Install gettext to get envsubst
RUN apt-get update && apt-get install -y gettext

ENV NODE_PATH=/tmp/node_modules APP_NAME=demo-dashboard

# Install dependencies first to use cache
RUN npm install -g http-server bower

WORKDIR /usr/src/app/

ADD . /usr/src/app

CMD ["/usr/src/app/init.sh"]