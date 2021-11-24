# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.100


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:133a7bb0d8b622bfb9c4651de16c29ce05631ada1436988ed2a3bea78b37eb63

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
