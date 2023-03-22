FROM mcr.microsoft.com/devcontainers/base:ubuntu
RUN mkdir /app
ARG CLI_VERSION=4.0.2-pre.12
ADD https://github.com/circuitdiagram/circuitdiagram/releases/download/v${CLI_VERSION}/circuit-diagram-cli.${CLI_VERSION}.linux-x64.tar.gz /app
RUN tar -xJf /app/circuit-diagram-cli.${CLI_VERSION}.linux-x64.tar.gz -C /app
ENV PATH="${PATH}:/app"
