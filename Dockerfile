#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:2-dotnet@sha256:f758fba0fa629b0a843d42895cf01220301acd7d3c3ec93a946a64b5bcfbd1d9 as base-latest
FROM renovate/buildpack:2-dotnet-bionic@sha256:ba07aeaed6ff7d71ff39126810e735f3f42b7d5662b6fff22c049b1886f4ae82 as base-bionic
FROM renovate/buildpack:2-dotnet-focal@sha256:13bf169eb0c5e1f0e60561dec05197027519fde194a8832469d9f6a313d5f134 as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
