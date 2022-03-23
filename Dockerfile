# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=6.0.201


#--------------------------------------
# Image: final
#--------------------------------------
FROM renovate/buildpack:6@sha256:33fd07dbab9b62e84eb346255d8a0f9b47aede116cc437adb7c19ca577896957

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
