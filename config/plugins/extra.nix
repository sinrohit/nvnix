{
  plugins = {
    nvim-tree.enable = true;
    lazygit.enable = true;

    # UI
    web-devicons.enable = true;
    lualine.enable = true;
    bufferline.enable = true;
    treesitter.enable = true;
    which-key = {
      enable = true;
    };
    noice = {
      # WARNING: This is considered experimental feature, but provides nice UX
      enable = true;
      settings.presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        inc_rename = false;
        lsp_doc_border = false;
      };
    };
  };
}
