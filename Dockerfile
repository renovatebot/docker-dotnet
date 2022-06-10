# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.300


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:b446de10a3e22234d7012f964c402683bc9d398584a789915c7415eecfb70e26

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
