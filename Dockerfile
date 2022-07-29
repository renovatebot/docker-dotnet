# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.302


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:72043b5318d6876dda202be77dd7025ad9305b347f1c275a4ed4b028774b2caf

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
