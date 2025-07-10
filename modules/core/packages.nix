{ pkgs, ... }:
{
  programs = {
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    virt-manager.enable = true;
    mtr.enable = true;
    regreet.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    firefox.enable = true;
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # System apps and libraries
    appimage-run # AppImage Support
    brightnessctl # Screen Brightness Control
    greetd.regreet # The Login Manager
    adi1090x-plymouth-themes # Themes for the boot splash screen
    lxqt.lxqt-policykit # Polkit agent Authentication for processes that require it
    libnotify # Notifications
    libvirt # Virtualization API
    playerctl # Controlling media players
    lm_sensors

    # Terminal utilities
    pciutils
    usbutils
    v4l-utils
    lshw
    killall
    file # Shows the type of files
    wget
    ripgrep
    ffmpeg # Video / Audio Editing
    eza # Beautiful ls Replacement
    htop # Terminal Based System Monitor
    inxi # System information tool
    duf # Disk Usage/Free utility
    ncdu # Disk usage analyzer
    rar
    zip
    unrar
    unzip
    virt-viewer
    socat # Relay socket streams
    fzf # Fuzzy finder

    # GUI apps
    nautilus # File Manager
    gnome-photos # Image viewer
    totem # Video player
    pwvucontrol # Pipewire Audio volume control
    chromium # Default browser for all users
    file-roller # Archive Manager
    gedit # Simple Graphical Text Editor
    hyprpicker # Color picker
    onlyoffice-desktopeditors # Office suite
    papers # Document reader
    foliate # Ebook reader
  ];
}
