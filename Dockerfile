
# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.404

FROM renovate/buildpack:2-dotnet@sha256:7da94c7ff2b0a7ea92c63c22bb6db7422d3c0ec079a78b3a15b0e730cb0884ae

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
