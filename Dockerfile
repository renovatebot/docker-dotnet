#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:3-dotnet@sha256:88864f1afdd7bd71a3aa0973adffe6e48bc62c7bbdfc58f316007090c00ee334 as base-latest
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
