{ config, pkgs, ... }:


{
  imports = [
    ./hardware-configuration.nix
    ./modules/machine/bootloader.nix
    ./modules/machine/drivers.nix
    ./modules/machine/networking.nix
    ./modules/users/jordy.nix
    ./modules/environment/locale.nix
    ./modules/environment/desktop.nix
    ./modules/packages/fonts.nix
    ./modules/packages/terminal.nix
    ./modules/packages/development.nix
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
