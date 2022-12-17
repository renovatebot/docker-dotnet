# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.404


#--------------------------------------
# Image: final
#--------------------------------------
FROM ghcr.io/containerbase/buildpack:5.2.8@sha256:f363a9b95cc7d6c16642c050926a322e75873a5218e8b9c709ec7f43c6de8532

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
