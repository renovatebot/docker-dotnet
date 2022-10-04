# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.401


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:7921940ef040d655e91eca217fdeff29a2d070d91cf2c2cea015c69364d71414

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
