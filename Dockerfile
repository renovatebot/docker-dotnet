# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.406


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-dotnet@sha256:c4488488ac59129eee29957376038b5fd491881d6c3bbe818b2073247b7fee71

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
