{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    git
    gh
    neovim
    vscode
    tshark
    wireshark
  ];
}
