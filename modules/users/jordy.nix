{ config, pkgs, ... }:


{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jordy = {
    isNormalUser = true;
    description = "Jordy Slagter";
    extraGroups = [ "networkmanager" "docker" "wireshark" "wheel" ];
    shell = pkgs.fish;
    packages = with pkgs; [];
  };
}
