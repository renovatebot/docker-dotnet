# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.401


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:c20de5fff35e955110999f52504805cb8127237f90aab418462a19b63fda6a4f

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
