# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.101


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:77153214dc7eefe4351b376dd0424253fa63ae75cf37097c0889fcb6dd1aa5c8

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
