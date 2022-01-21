# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.101


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5e4220eb63a930eac6eb772d92aec0e72ecb3091dccee95c2a28b7dde14d6e24

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
