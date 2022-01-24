# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.101


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:0c79f452e305b38df6c34536a09ce43aacc819c85afa0e20275e824a4aff4398

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
