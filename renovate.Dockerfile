# renovate rebuild trigger

FROM renovate/buildpack:2-dotnet@sha256:e2c4f5d5bf666f1c38c2c04a1f4b23a54fd2fffab70108f6f968977254250dbc
FROM renovate/buildpack:2-dotnet-focal@sha256:6f280352e1ab10725885314b9d5a942d777cdd5fc66bad87b7d760d0ec0a17af
FROM renovate/buildpack:2-dotnet-ubuntu@sha256:5cbec8a497017c2a1df15e20d8fb31531f0b2a4026f3f87586d945183281065c

# https://hub.docker.com/_/microsoft-dotnet-sdk

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=3.1.404

# renovate: datasource=docker depName=mcr.microsoft.com/dotnet/sdk
ARG DOTNET_VERSION=5.0.100
