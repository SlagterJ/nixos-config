{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    noto-fonts-cjk-sans
  ];
}
