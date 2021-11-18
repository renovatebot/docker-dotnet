# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.100


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:7f78c57c9926a672f7ed7b139aadabfa1eddf2d3a05056636926e10660c7645c

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
