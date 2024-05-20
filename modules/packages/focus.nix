{ config, pkgs, ... }:


{
  environment.systemPackages = with pkgs; [
    blanket
    errands
    gnome-solanum
  ];
}