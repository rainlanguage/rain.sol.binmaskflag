FROM mcr.microsoft.com/devcontainers/universal:linux
RUN curl -L https://foundry.paradigm.xyz | bash
ENV PATH="$PATH:$USER/.foundry/bin"
RUN foundryup