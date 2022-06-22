# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.301


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5c288f957d5141042941d261e727fd9fdb7e2d42c44ab78f2ceee3e030a0bbf8

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
