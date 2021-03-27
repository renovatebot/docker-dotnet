# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.407


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-dotnet@sha256:20443840feb692a91a8bb4b84b5b09b50f42893d06aa317a9c7266237e1f896c

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
