FROM alpine:3.10.3
RUN apk add --no-cache curl
ARG HELM_VERSION=unknown
ENV HELM_VERSION=$HELM_VERSION
RUN cd /tmp/ && wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz && tar -zxf helm-v*-linux-amd64.tar.gz && mv linux-amd64/helm /usr/local/bin/helm && rm -rf /tmp/*.tar.gz /tmp/linux-amd64
CMD ["helm"]
