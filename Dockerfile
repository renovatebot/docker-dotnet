# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.400


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:8173ffb647449807ce52096115a2ae9f2078e7d92a5a2883cf4846e3fcabca3c

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
