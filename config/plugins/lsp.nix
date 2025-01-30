{
  plugins = {
    lsp = {
      enable = true;
      keymaps = {
        lspBuf = {
          "gd" = "definition";
          "gD" = "references";
          "gt" = "type_definition";
          "gi" = "implementation";
          "K" = "hover";
          "<leader>A" = "code_action";
        };
        diagnostic = {
          "<leader>k" = "goto_prev";
          "<leader>j" = "goto_next";
        };
      };
      servers = {
        hls = {
          enable = true;
          installGhc = false;
        };
        marksman.enable = true;
        nil_ls.enable = true;
        rust_analyzer = {
          enable = true;
          installCargo = false;
          installRustc = false;
        };
      };
    };
  };
}
