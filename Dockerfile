FROM mcr.microsoft.com/devcontainers/base:ubuntu
USER vscode
RUN curl -L https://foundry.paradigm.xyz | bash
ENV PATH="$PATH:/vscode/.foundry/bin"
RUN foundryup