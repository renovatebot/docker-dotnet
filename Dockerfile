
# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.404

FROM renovate/buildpack:2-dotnet@sha256:e2c4f5d5bf666f1c38c2c04a1f4b23a54fd2fffab70108f6f968977254250dbc

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
