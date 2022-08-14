# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.400


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:3b4b7d0a920867cf2ec495632b159a3f7e10af1f7c454b0a076ad385edc2331d

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
