{ config, pkgs, ... }:

{
  home.username = "claudiu";
  home.homeDirectory = "/home/claudiu";
  home.stateVersion = "25.05"; # Please read the comment before changing.

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true; 

  home.packages = with pkgs; [
    brave
    gemini-cli
    opencode
  ];

  programs.git = {
    enable = true;
    userName  = "kinkel";
    userEmail = "clauskinkel@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;
}
