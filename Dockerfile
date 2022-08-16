# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.400


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:1922ea7accc3245856ccfed61c2bd37962d510eb6216a86d69ecebc029bfe66b

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
