# References:
# - https://nixos.wiki/wiki/Fonts


{ config, pkgs, ... }:


{
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-color-emoji
    noto-fonts-cjk-sans

    (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
  ];
}
