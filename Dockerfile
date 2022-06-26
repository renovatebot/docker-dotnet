# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.301


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:f298b9376f73c8c6852840a2faff6bc8c00f569e0f989e54b7823eacc9d8b092

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
