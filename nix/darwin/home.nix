{ config, pkgs, ... }:

{
  home.username = "andres";
  home.homeDirectory = "/Users/andres";
  home.stateVersion = "24.05";

  home.packages = with pkgs; [];

  home.file = {
    ".tmux.conf".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/tmux/.tmux.conf";
    ".config/fish/config.fish".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/fish/config.fish";
    ".config/starship.toml".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/starship/starship.toml";
    ".wezterm.lua".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/wezterm/.wezterm.lua";
    ".ideavimrc".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/idea/.ideavimrc";
    ".config/yabai".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/yabai";
    ".config/skhd".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/skhd";
    ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/neovim";
    "qmk_firmware/keyboards/bluebell/swoop/keymaps/andresfgonz".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/qmk/andresfgonz";
  };

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
