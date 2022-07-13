# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.302


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:87bef922665476c82bc1aa9dbee85d04be57c4d9f1147b964ac6cda63db3cc83

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
