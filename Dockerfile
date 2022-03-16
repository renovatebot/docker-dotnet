# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.201


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:b623437ef365744b7d4b31a259205b46e17612f1ec3f3153f313cd783ed70dfb

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
