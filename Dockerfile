# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.100


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:af1cfb539fe81d30cfdb247069f912c411fcd7fb1b505d86afa4c94f955462a0

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
