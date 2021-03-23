# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.407


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-dotnet@sha256:09fb33a5dc1c27b2a22d980c2ce062445af6a78a81e8bde08d8f8c2d463de3f0

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
