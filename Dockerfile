FROM ghcr.io/cachix/devenv:latest
USER vscode
COPY . .
RUN curl -L https://foundry.paradigm.xyz | bash
ENV PATH="$PATH:$USER/.foundry/bin"
RUN foundryup