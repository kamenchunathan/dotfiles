{pkgs, ...}: {
  programs = {
    firefox.enable = false; # Firefox is not installed by defualt
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    virt-manager.enable = true;
    mtr.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    amfora # Fancy Terminal Browser For Gemini Protocol
    appimage-run # Needed For AppImage Support
    ungoogled-chromium
    neovide
    brightnessctl # For Screen Brightness Control
    docker-compose # Allows Controlling Docker From A Single File
    duf # Utility For Viewing Disk Usage In Terminal
    eza # Beautiful ls Replacement
    ffmpeg # Terminal Video / Audio Editing
    file-roller # Archive Manager
    gedit # Simple Graphical Text Editor
    gimp # Great Photo Editor
    greetd.tuigreet # The Login Manager (Sometimes Referred To As Display Manager)
    htop # Simple Terminal Based System Monitor
    hyprpicker # Color picker for wayland
    imv # Image viewer
    inxi # System information tool
    killall
    libnotify
    libvirt
    lm_sensors
    lolcat # cat (concatenation program) with colors
    lshw
    lxqt.lxqt-policykit
    mpv
    ncdu # Disk usage analyzer
    nixfmt-rfc-style
    pavucontrol
    pciutils
    pkg-config
    playerctl
    ripgrep
    socat # parallel cat ???
    unrar
    unzip
    usbutils
    v4l-utils
    virt-viewer
    wget
  ];
}
