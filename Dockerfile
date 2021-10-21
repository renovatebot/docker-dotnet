# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.414


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:5@sha256:06831d3732e8d66580f5da09a849194517e6497a5862511f11103a097dad4c5f

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
