FROM ghcr.io/cachix/devenv:latest
RUN devenv shell "curl -L https://foundry.paradigm.xyz | bash"