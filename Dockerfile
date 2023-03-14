FROM ghcr.io/cachix/devenv:latest
COPY . .
RUN devenv shell curl -L https://foundry.paradigm.xyz | bash
ENV PATH="$PATH:$USER/.foundry/bin"
RUN devenv shell echo $PATH
RUN devenv shell ls -la $USER
RUN devenv shell foundryup