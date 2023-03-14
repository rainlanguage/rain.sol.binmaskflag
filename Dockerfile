FROM ghcr.io/cachix/devenv:latest
COPY . .
RUN devenv shell forge --help