# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.202


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:868a48ef3a2f6297b4771fa402bb8b17f17463c57d9517df61343c8479b80aac

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
