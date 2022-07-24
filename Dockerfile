# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.302


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:7df4265ac86591f6909e9e2c73b4e32e9fe06e5b89405cea1addfc213bc94aef

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
