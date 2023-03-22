FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN apt-get update && apt-get install -y libfontconfig1
RUN mkdir /app && mkdir /app/bin && mkdir /app/ext
ARG CLI_VERSION=4.0.2-pre.12
ADD https://github.com/circuitdiagram/circuitdiagram/releases/download/v${CLI_VERSION}/circuit-diagram-cli.${CLI_VERSION}.linux-x64.tar.gz /app
RUN tar -xJf /app/circuit-diagram-cli.${CLI_VERSION}.linux-x64.tar.gz -C /app/bin
ARG EXT_VERSION=0.7.1-dev
ADD https://github.com/circuitdiagram/circuitdiagram-vscode/releases/download/v${EXT_VERSION}/circuitdiagram-vscode-${EXT_VERSION}.vsix /app/ext
RUN chmod +r /app/ext/*
ENV PATH="${PATH}:/app/bin"
