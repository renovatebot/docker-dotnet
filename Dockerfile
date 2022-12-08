# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.403


#--------------------------------------
# Image: final
#--------------------------------------
FROM ghcr.io/containerbase/buildpack:5.2.1@sha256:890bab81f340af2ca29b3c8709c46f4ec9f57545493e3fb09d602af52445e475

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
