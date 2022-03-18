# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.201


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:810e591441c698bbab3047bf875b812c98b42a19a94b9f9651a5355e2a7462d3

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
