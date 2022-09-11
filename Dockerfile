# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.400


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c1e1eb6659fc36d40f980038e27bb4368ddbbf6536e2a6c941750a7713789fde

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
