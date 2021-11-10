# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.415


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:73ebcce84f33d61a25cdd83de4ec448f9fcd37a8cefc38148b51757545b02dcd

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
