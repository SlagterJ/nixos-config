{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    libreoffice
    hunspell
    hunspellDicts.en_US
    hunspellDicts.nl_NL
    onlyoffice-bin_latest
  ];
}
