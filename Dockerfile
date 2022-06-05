# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.300


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:5341b837a42cd0feac1897b3477d79ec910c6f806dd8d3bfbd69efda723b164b

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
