# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.302


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:96b9ec488f01f4f0dafb733601415abdea6b22e8dcac8e6a5cb14706a6e75a51

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
