FROM ghcr.io/cachix/devenv:latest
COPY . .
RUN devenv shell "curl -L https://foundry.paradigm.xyz | bash"
RUN devenv shell foundryup