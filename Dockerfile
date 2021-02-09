#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:4-dotnet@sha256:c4488488ac59129eee29957376038b5fd491881d6c3bbe818b2073247b7fee71 as base-latest
FROM renovate/buildpack:3-dotnet-bionic@sha256:56de7eff2bef46d224e8c4abe8315ee6a70fca53a2f9a79a6a3f6c602e2c0c4e as base-bionic
FROM renovate/buildpack:3-dotnet-focal@sha256:cca790ddc2ad6482122ceddd105d91a2ae10362df581ea68f44dca7b24538e97 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
