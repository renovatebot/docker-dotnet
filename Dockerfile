# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.202


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:6d7ae32f259453ae5f524f965cf46e56f2645b71a3903c99c47deaf092f39420

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
