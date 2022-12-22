# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.404


#--------------------------------------
# Image: final
#--------------------------------------
FROM ghcr.io/containerbase/buildpack:5.7.0@sha256:7e1f21ed5cba3f75fb356515bf2c543385108e7df9497bf9cd0baddd6f440fee

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
