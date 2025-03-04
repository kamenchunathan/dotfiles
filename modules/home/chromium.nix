{ pkgs, ... }:
{
  programs.chromium = {
    enable = true;
    extensions = [
      "dbepggeogbaibhgnhhndojpepiihcmeb"                  # Vimium
      "cjpalhdlnbpafiamejdnhcphjbkeiagm"                  # uBlock origin
      "ekhagklcjbdpajgpjgmbionohlpdbjgc"                  # Zotero connector
      "eimadpbcbfnmbkopoojfekhnkhdbieeh"                  # Dark reader
    ];
  };
  nixpkgs.config.chromium.commandLineArgs = "--enable-features=Vulkan";
}
