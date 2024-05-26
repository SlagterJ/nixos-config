# References:
# - https://nixos.wiki/wiki/GNOME
# - https://discourse.nixos.org/t/nixos-gnome-remove-xterm-tour-and-manual/20027


{ config, pkgs, ... }:


{
  # Enable the X11 windowing system
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents
  services.printing.enable = true;

  # Enable sound with pipewire
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Install firefox
  programs.firefox.enable = true;

  # Sudo doesn't require password
  security.sudo.enable = false;
  security.doas.enable = true;
  security.doas.wheelNeedsPassword = false;

  # Install fish shell
  programs.fish.enable = true;

  environment.systemPackages = with pkgs; [
    gnome3.gnome-tweaks
    gnomeExtensions.alphabetical-app-grid
    gnomeExtensions.bing-wallpaper-changer
    gnomeExtensions.blur-my-shell
    gnomeExtensions.caffeine
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    epiphany # web browser
    geary # email reader
  ]);

  services.xserver.excludePackages = with pkgs; [ xterm ];
  services.xserver.desktopManager.xterm.enable = false;
}
