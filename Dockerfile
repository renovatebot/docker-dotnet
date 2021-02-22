# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.406


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-dotnet@sha256:727a086e6b97e45a8c44e0f32f11cb5c0dcbb3bd5dacb359f0c8ff579d743cc1

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
