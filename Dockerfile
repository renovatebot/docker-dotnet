#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.404

#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:2-dotnet${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
