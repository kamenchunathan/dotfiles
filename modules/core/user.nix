{
  pkgs,
  inputs,
  username,
  host,
  profile,
  ...
}: let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername;
in {
  imports = [inputs.home-manager.nixosModules.home-manager];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {inherit inputs username host profile;};
    users.${username} = {
      imports = [./../home];
      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "23.11";
      };
      programs.home-manager.enable = true;
    };
  };
  users.mutableUsers = true;
  users.users.${username} = {
    isNormalUser = true;
    description = "${gitUsername}";
    #  passord is `password` initialPassword did not work quite as well
    initialHashedPassword = "$y$j9T$7GGjVmvGIBpwCSSNvR/iC/$Tbf8meenzM6odINXJT.D1IwmNYlkEdHrlMJlD89vTd8";
    extraGroups = [
      "docker"
      "libvirtd"
      "lp"
      "networkmanager"
      "scanner"
      "wheel"
    ];
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
    packages = with pkgs; [
      gimp                                # Image editting 
      discord
      thunderbird                         # mail client
      obs-studio                          # Video recording and streaming
      obsidian                            # Notes / Knowledge base
      libresprite                         # Pixel editor
      zotero                              # Citing and references
      en-croissant                        # Chess
      stockfish
      mpv                                 # Media player
      kdePackages.kdenlive                # Video editting
      morgen                              # Calendar
      
      neovide                             # Graphical neovim client
      direnv
      lazygit
      
      # Dev Utilities
      libgcc
      gcc_debug
      pkg-config
      nodejs
      docker-compose
      nixfmt-rfc-style
    ];
  };

  users.users.guest = {
    isNormalUser = true;
    home = "/home/guest";
    description = "Guest User";
    password = "guest";
    extraGroups = [ "networkmanager" ];
  };
  
  nix.settings.allowed-users = ["${username}"];
}
