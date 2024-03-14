FROM alpinelinux/docker-cli:latest

LABEL maintainer="SoftPearAI <info@softpear.com>" \
      org.label-schema.name="docker-stack-deploy" \
      org.label-schema.description="Deploy docker stack" \
      org.label-schema.vendor="kitconcept GmbH" \
      org.opencontainers.image.source="https://github.com/SoftPearAI/docker-stack-deploy" \
      org.label-schema.docker.cmd="docker run -rm -v "${PWD}":/github/workspace ghcr.io/SoftPearAI/docker-stack-deploy"

RUN apk add --no-cache openssh-client findutils bash

COPY scripts/*.sh /

WORKDIR /github/workspace

ENTRYPOINT [ "/docker-entrypoint.sh" ]
