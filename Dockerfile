# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.401


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:999b1f547a36a8638e0e6646a1d06537b8a5c0a5575dcdc8adc54104b7ba1ea3

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
