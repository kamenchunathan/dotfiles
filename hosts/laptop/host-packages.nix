{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    discord
    nodejs_23
    obs-studio
  ];
}
