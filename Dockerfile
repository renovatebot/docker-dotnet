#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:2-dotnet@sha256:aee61a5d614df1ced65c6d07ff87483fffdadf516a53dc21a06c428f9ea37b54 as base-latest
FROM renovate/buildpack:2-dotnet-bionic@sha256:5f94619da1f4a39564337d3b2852b55e0bfec90752029d19276f21cb3b1fb5c7 as base-bionic
FROM renovate/buildpack:2-dotnet-focal@sha256:b45a4b1603d6931e39dca7b1db3ef58bc5dc2bb7069911882388e8038c069526 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
