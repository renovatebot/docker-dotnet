#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:2-dotnet@sha256:d02b7d94322580f96335fc7490ce57315f83fdaeeaa10bff98b71f5c4bc34296 as base-latest
FROM renovate/buildpack:2-dotnet-bionic@sha256:f1d76f4000b52c7f04a037ba0a7094f74578ae161184e3cb374bf7d9f541429f as base-bionic
FROM renovate/buildpack:2-dotnet-focal@sha256:3cd92542c2687d44cb51edc2f42afd162bbdeace53adf6b57ab997c958f79d83 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
