{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    # essentials
    git
    gh
    neovim
    texlive
    vscode
    hieroglyphic
    gnome-graphs

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
