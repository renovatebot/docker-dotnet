
# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/core/sdk
ARG DOTNET_VERSION=3.1.403

FROM renovate/buildpack:2-dotnet

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
