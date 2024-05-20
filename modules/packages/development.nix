{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    git
    gh
    neovim
    vscode
    filezilla
    tshark
    wireshark
  ];

  virtualisation.docker.enable = true;
}
