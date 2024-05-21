{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    starship
    zoxide
    fzf
    lf
    fastfetch
    htop
    calc
  ];
}
