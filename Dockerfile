# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.102


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:34d72ad1fa883dc85c48cabc9cd621bb1ec3c9cdaa5fbfa458c1b0fa89530b74

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
