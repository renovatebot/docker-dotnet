# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.200


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:cb2f8aa6396ac56b32966552f2480a9f6cc2e731e57cf780c6f863ce64b2282e

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
