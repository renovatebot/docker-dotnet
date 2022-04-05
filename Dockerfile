# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.201


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:1cb5313d17e2916ccb4694c268ae4941fa26fab832a53c7036538ad17b37580f

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
