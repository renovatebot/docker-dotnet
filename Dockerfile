# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.402


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:8b74cb13f61c3e785a61b65fca19998df24158b5b35cd42518b173b623e0fb32

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
