# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.410


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-dotnet@sha256:598be890c05806fcc986b153ae00b38f58becb997b846379bd9bef95a2dde299

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
