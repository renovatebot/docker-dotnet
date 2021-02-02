#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:3-dotnet@sha256:0452caf9f3e61022081bd0ecbb47338bed3baa7aaf5bb305dc7ad109cefacd52 as base-latest
FROM renovate/buildpack:3-dotnet-bionic@sha256:4105827d5ec3a1e6973c42baf65948ecdd7bc1e222b9927c86a65867d1d6cc6a as base-bionic
FROM renovate/buildpack:3-dotnet-focal@sha256:97131f751b5bad7cfde15714946756a3aa3432c690d784b7663e6411c1300fbf as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
