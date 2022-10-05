# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.401


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0beb042a8f0c8184d765ca0f2190ccc3e502773dc972584c7923c019111ae63e

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
