# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.402


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c831b621e16266121d75c4aaf2d53827b86f9f9c77b0c6004716de5c1b292737

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
