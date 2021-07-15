# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.411


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5-dotnet@sha256:11338c313e1d2c3089847687282185f94794ac9c052334d467b34c9bd15148f3

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
