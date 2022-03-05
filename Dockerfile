# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.200


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:2279a1ffacff20ecae97dc0c2050b03e6d5550ce3a21f9389b503565671af243

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
