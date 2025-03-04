{
  colorschemes = {
    gruvbox.enable = true;
    catppuccin = {
      enable = false;
      settings = {
        background = {
          light = "macchiato";
          dark = "mocha";
        };
        custom_highlights = ''
          function(highlights)
            return {
            CursorLineNr = { fg = highlights.peach, style = {} },
            NavicText = { fg = highlights.text },
            }
          end
        '';
        flavour = "mocha"; # "latte", "mocha", "frappe", "macchiato" or raw lua code
      };
    };
  };
}
