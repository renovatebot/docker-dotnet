# renovate rebuild trigger

FROM scratch

# https://hub.docker.com/_/microsoft-dotnet-sdk

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.408

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=5.0.202
