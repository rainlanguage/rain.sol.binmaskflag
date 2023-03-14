{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [ pkgs.git ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
  export PATH="$PATH:$USER/.foundry/bin"
  '';

  # https://devenv.sh/languages/
  # languages.nix.enable = true;
  # languages.rust.enable = true;

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # https://devenv.sh/integrations/codespaces-devcontainer/
  devcontainer.enable = true;
}
