{
  pkgs,
  username,
  ...
}: {
  systemd.user.targets.hyprland-session.Unit.Wants = [
    "xdg-desktop-autostart.target"
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
      # hidpi = true;
    };
    # enableNvidiaPatches = false;
    systemd.enable = true;
  };
  home = {
    packages = with pkgs; [
      swww
      grim
      slurp
      wl-clipboard
      swappy
      ydotool
    ];
    file = {
      # Place Files Inside Home Directory
      "Pictures/Wallpapers" = {
        source = ../../../wallpapers;
        recursive = true;
      };
      ".face.icon".source = ./face.jpg;
      ".config/face.jpg".source = ./face.jpg;
      ".config/swappy/config".text = ''
        [Default]
        save_dir=/home/${username}/Pictures/Screenshots
        save_filename_format=swappy-%Y%m%d-%H%M%S.png
        show_panel=false
        line_size=5
        text_size=20
        text_font=Ubuntu
        paint_mode=brush
        early_exit=true
        fill_shape=false
      '';
    };
  };
}
