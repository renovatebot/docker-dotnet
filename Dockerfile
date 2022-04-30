# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.202


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:e9cf288c79c27968b94c48679a1b3b6cae42168ba73b18150dda1e590da30bbf

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
