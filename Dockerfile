
# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/core/sdk
ARG DOTNET_VERSION=3.1.403

FROM renovate/buildpack:2-dotnet@sha256:c2a13fa1278d83b470bfdd58e2fe72714b542d01787f00e36ca489e552b79102

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
      org.opencontainers.image.version="${DOTNET_VERSION}"


USER 1000
