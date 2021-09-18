{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  #go
  programs.go.enable = true;

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
 ];
    settings = { ignorecase = true;  };
    extraConfig = ''
      set mouse=a
    '';
  };

  home.packages = with pkgs; [
   
    dmenu
    dwm
    st
    alacritty
    pavucontrol
    vifm

    ffmpeg

    elinks

    unzip
    vlc


    zathura
    transmission-gtk

   
    htop
    neofetch
    git

    iwd
    networkmanager


    chromium
    

    intel-media-driver
    xorg.xf86videointel
    vaapiIntel
    vaapiVdpau
    libvdpau-va-gl

    xorg_sys_opengl


    gcc
    gnumake
    python
    python39Packages.ipython
    go
    rustup
    nodejs
    ghc
    nim
    mitscheme
    emacs
    vscodium-fhs

    libreoffice
    groff

    vulkan-tools
    vulkan-loader
    vulkan-headers




  ];





}


