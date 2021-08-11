{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "felipe";
  home.homeDirectory = "/home/felipe";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.05";

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [ 
     vim-go 
     vim-sensible
 ];
    extraConfig = ''
    #set mouse =a
    '';
  };

  home.packages = with pkgs; [
   
    dmenu
    dwm
    st
    pavucontrol
    vifm
   
    vim_configurable
    htop
    neofetch
    git

    iwd
    networkmanager


    chromium
    lynx
    
    vscodium-fhs

    intel-media-driver
    xorg.xf86videointel

    gcc
    gnumake
    python
    go
    nodejs
    ghc
    nim



  ];





}


