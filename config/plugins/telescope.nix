{
  plugins = {
    telescope = {
      enable = true;
      keymaps = {
        "<leader>ff" = {
          options.desc = "file finder";
          action = "find_files";
        };
        "<leader>fg" = {
          options.desc = "find via grep";
          action = "live_grep";
        };
        "<leader>fr" = {
          options.desc = "recent files";
          action = "oldfiles";
        };
        "<leader>uC" = {
          action = "colorscheme";
          options = {
            desc = "Colorscheme preview";
          };
        };
      };
      extensions = {
        file-browser.enable = true;
        ui-select.enable = true;
        frecency.enable = true;
        fzf-native.enable = true;
      };
    };
  };
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
  '';
}
