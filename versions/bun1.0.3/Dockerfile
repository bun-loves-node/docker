FROM oven/bun:1.0.3 as bun

# Following https://medium.com/@tgmarinho/how-to-install-node-js-via-binary-archive-on-linux-ab9bbe1dd0c2

FROM alpine as node_binaries_amd64
WORKDIR /node-binaries
ARG NODEJS_URL
RUN if [ "$NODEJS_URL" == '' ]; then echo "use '--build-arg NODEJS_URL=<nodejs-url>'"; exit 1; fi;
RUN wget $NODEJS_URL
RUN tar -xJf node-*-linux-x64.tar.xz
RUN mv node-*-linux-x64 extracted

FROM alpine as node_binaries_arm64
WORKDIR /node-binaries
ARG NODEJS_URL
RUN if [ "$NODEJS_URL" == '' ]; then echo "use '--build-arg NODEJS_URL=<nodejs-url>'"; exit 1; fi;
RUN wget $NODEJS_URL
RUN tar -xJf node-*-linux-arm64.tar.xz
RUN mv node-*-linux-arm64 extracted


FROM bun as amd64
RUN ARCH=$(arch); if [ $ARCH != 'x86_64' ]; then echo "Invalid platform, use '--platform linux/amd64'"; exit 1; fi;

ENV NODEJS_HOME=/usr/local/lib/node/nodejs
ENV PATH=$NODEJS_HOME/bin:$PATH

COPY --from=node_binaries_amd64 /node-binaries/extracted $NODEJS_HOME
RUN npm install --global yarn

FROM bun as arm64
RUN ARCH=$(arch); if [ $ARCH != 'aarch64' ]; then echo "Invalid platform, use '--platform linux/arm64'"; exit 1; fi;

ENV NODEJS_HOME=/usr/local/lib/node/nodejs
ENV PATH=$NODEJS_HOME/bin:$PATH

COPY --from=node_binaries_arm64 /node-binaries/extracted $NODEJS_HOME
RUN npm install --global yarn


FROM bun
RUN echo "use either 'docker build --target amd64 .' or 'docker build --target arm64 .'"; exit 1;