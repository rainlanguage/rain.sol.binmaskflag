FROM mcr.microsoft.com/devcontainers/universal:linux
USER root
RUN curl -L https://foundry.paradigm.xyz | bash
RUN whoami
RUN cat /root/.bashrc
ENV PATH="$PATH:/$USER/.foundry/bin"
RUN ls -la /root/.foundry/bin
RUN echo $PATH
RUN foundryup