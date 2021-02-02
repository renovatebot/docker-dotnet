#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:3-dotnet@sha256:7469b0e0213600db77d045579806c86c94582d70d143bd34e73b77a305f9615e as base-latest
FROM renovate/buildpack:3-dotnet-bionic@sha256:465df4c3ff545a0e77482b22565da6332695c1cffe67bca97925f8191300fc47 as base-bionic
FROM renovate/buildpack:3-dotnet-focal@sha256:74c2e28a2a108876cd751722990d2b3adfd7ff0705915ea5ab4e850415dbc961 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
