# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.411


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-dotnet@sha256:d4770fc39dd32054076f2639c526898cf84f9e2fd15d9a8ce08694cd9da8e92a

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
