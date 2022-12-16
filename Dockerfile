# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.404


#--------------------------------------
# Image: final
#--------------------------------------
FROM ghcr.io/containerbase/buildpack:5.2.5@sha256:8df2bd19a4a84efb5b1d96b4d6ce82676b13d786bcd03820473582d838496801

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
