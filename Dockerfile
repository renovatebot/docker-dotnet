# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.100


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:100fc8f4d6b25ffeadab4eff7fbc9adfdb61b84ed6e5d9199290e02e9ac49c8e

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
