# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.411


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-dotnet@sha256:91189b6ce7ef0051b84bf5dfc8db953fc36f5964d63065edefc4efab028ebe53

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
