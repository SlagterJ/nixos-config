{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    # essentials
    git
    gh
    neovim
    vscode

    # infrastructure
    filezilla
    tshark
    wireshark

    # javascript
    nodejs
    yarn
    typescript
  ];

  virtualisation.docker.enable = true;
}
