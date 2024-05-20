{ config, ... }:


{
  networking.hostName = "js-shuttlecraft";
  networking.networkmanager.enable = true;

  networking.firewall.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
}
