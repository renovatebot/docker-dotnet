# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.102


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:4cb8ef72833ab7ab249b45f5ba1253cefec17222d9e9fc348015d9261f42cc9f

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
