#--------------------------------------
# Ubuntu base image to use
#--------------------------------------
ARG FLAVOR=latest

#--------------------------------------
# renovate rebuild triggers
#--------------------------------------

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.405

FROM renovate/buildpack:3-dotnet@sha256:281f1d7ae60aee0f95d94409f2baa4837c0a92b4a6d2871ac27e8e477dfb71a1 as base-latest
FROM renovate/buildpack:3-dotnet-bionic@sha256:5f1659da6fdafb21307b40ca3132794e67d64ae6a0b056cd02640e68eea6b687 as base-bionic
FROM renovate/buildpack:3-dotnet-focal@sha256:7d96771b409c7b1a409c7e6ffb9350a48e2507eba160f5c5460f295a92d8ce8a as base-focal

#--------------------------------------
# Image: final
#--------------------------------------
FROM base-${FLAVOR}

ARG DOTNET_VERSION
RUN install-tool dotnet

LABEL org.opencontainers.image.source="https://github.com/renovatebot/docker-dotnet" \
  org.opencontainers.image.version="${DOTNET_VERSION}"

USER 1000
