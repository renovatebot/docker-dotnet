
# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/core/sdk
ARG DOTNET_VERSION=3.1.403

FROM renovate/buildpack:2-dotnet@sha256:96fcd543e1b682b447ceb22cfcf8658cf8495df049ab6b45d877b7957ed15637

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
