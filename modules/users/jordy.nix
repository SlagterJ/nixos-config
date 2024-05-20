{ config, pkgs, ... }:


{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jordy = {
    isNormalUser = true;
    description = "Jordy Slagter";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [];
  };
}
