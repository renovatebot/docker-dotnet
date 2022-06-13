# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.300


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:f70c53572abff13f18df4297cedbf42e9acedcaacb60d2316d3e34481e817648

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
