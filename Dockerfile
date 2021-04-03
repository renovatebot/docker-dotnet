# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.407


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:4-dotnet@sha256:90045c3174d3e8ecfb63bb6f1b98fa65ea35df9b6ef5ea2291e2838eb6830c90

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
