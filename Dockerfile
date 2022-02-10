# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.102


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c8c86ece7d8cedf807495a587b03f5acfe1c054d115dcee65df114b11860b684

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
