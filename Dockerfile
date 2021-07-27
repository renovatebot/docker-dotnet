# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.411


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-dotnet@sha256:d7490e9f30ba9fc8cd42fe17f0b3ad5d9d68c048437558da8181ab2aaf2edf51

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
