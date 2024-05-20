# References:
# - https://nixos.wiki/wiki/Bootloader


{ config, ... }:


{
  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    grub = {
      efiSupport = true;
      device = "nodev";
    };
  };
}
