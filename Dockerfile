# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.201


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:d2e548f5f0c79bc433f44280b606f5561fb08cd3aafaf0806b89c1545f6f02b6

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
