# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.403


#--------------------------------------
# Image: final
#--------------------------------------
FROM ghcr.io/containerbase/buildpack:5.0.0@sha256:8a8ef4739fc702d6b6cd6c39c79b6ec18ab4c18a9b3eddcafc4c916f85c9a17b

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
