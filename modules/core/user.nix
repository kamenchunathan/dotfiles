{
  pkgs,
  lib,
  inputs,
  username,
  host,
  profile,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix) gitUsername;

  arch = if pkgs.stdenv.isx86_64 then "x86_64" else "aarch64";
  spotify = pkgs.stdenv.mkDerivation {
    pname = "spotify-player";
    version = "0.20.4";

    src = pkgs.fetchurl {
      url = "https://github.com/aome510/spotify-player/releases/download/v0.20.4/spotify_player-${arch}-unknown-linux-gnu.tar.gz";
      sha256 = "sha256-J0yJjtwMxPZt0z+XnjAv08Bl1nc1bMVTMhUmt598rBA=";
    };

    nativeBuildInputs = [ pkgs.makeWrapper ];
    sourceRoot = ".";
    installPhase = ''
      mkdir -p $out/bin
      tar -xzf $src -C $out/bin
      chmod +x $out/bin/spotify_player
    '';

    meta = {
      description = "A terminal-based Spotify player with full feature parity.";
      homepage = "https://github.com/aome510/spotify-player";
      license = lib.licenses.mit;
      maintainers = with lib.maintainers; [ ];
    };
  };

in
{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    backupFileExtension = "backup";
    extraSpecialArgs = {
      inherit
        inputs
        username
        host
        profile
        ;
    };
    users.${username} = {
      imports = [ ./../home ];
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
      spotify # spotify client

      gimp # Image editting
      discord
      thunderbird # mail client
      obs-studio # Video recording and streaming
      obsidian # Notes / Knowledge base
      zotero # Citing and references
      zoom

      # Chess
      en-croissant
      lc0
      stockfish

      morgen # Calendar
      mpv # Media player
      kdePackages.kdenlive # Video editting
      blender

      godot_4 # Game dev
      libresprite # Pixel editor

      neovide # Graphical neovim client
      direnv
      lazygit

      jq
      jqp

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

  nix.settings.allowed-users = [ "${username}" ];
}
