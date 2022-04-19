# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.202


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5acca3e8ea4db8a58b9d44cfa260f6d28478ed52f9ad664a705b6aa0a0b42967

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
