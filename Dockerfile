# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.202


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:dfc0c4f0a2f3bee71bafceaa1f77df72f798817aa8de161b98c9d993828c5081

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
