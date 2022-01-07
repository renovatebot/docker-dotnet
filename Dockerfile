# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.101


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:be0521a13e457332c7a1fb136fbc0a79472fcbdeaca628c053ab61b6fd48adf7

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
