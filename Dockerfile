FROM mcr.microsoft.com/devcontainers/universal:linux
USER root
RUN curl -L https://foundry.paradigm.xyz | bash
ENV PATH="$PATH:/root/.foundry/bin"
RUN echo $PATH
RUN foundryup