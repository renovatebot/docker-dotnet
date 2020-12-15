#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.404

FROM renovate/buildpack:2-dotnet@sha256:bd2e1a9ded9a5f2e7f05192530fb32b7f8b58014723691d9ea2d1f31536cf730 as base-latest
FROM renovate/buildpack:2-dotnet-bionic@sha256:b228de33d5bb00221132a2da21986c460fc8031dcfe6d41bfd364d8a2074f41a as base-bionic
FROM renovate/buildpack:2-dotnet-focal@sha256:5306d8e1e18797ca26d5bef5823c7bd6dbe14c836e504bbf57fd58e4b110ceec as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
