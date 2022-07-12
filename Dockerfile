# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.301


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:cc4b8b2563509d5a2be93a9c67f1f3ad6dbb1c0d65eb03d55fd28036f025d527

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
