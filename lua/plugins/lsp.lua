return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        marksman = { enabled = false },
      },
    },
  },
  { "j-hui/fidget.nvim", event = "LspAttach", opts = {} },
  { "dmmulroy/ts-error-translator.nvim", ft = { "typescript", "typescriptreact" }, opts = {} },
  {
    "mrcjkb/rustaceanvim",
    keys = {
      {
        "<leader>rr",
        function()
          vim.cmd.RustLsp("runnables")
        end,
        ft = "rust",
        desc = "Rust Runnables",
      },
      {
        "<leader>rt",
        function()
          vim.cmd.RustLsp("testables")
        end,
        ft = "rust",
        desc = "Rust Testables",
      },
      {
        "<leader>re",
        function()
          vim.cmd.RustLsp("explainError")
        end,
        ft = "rust",
        desc = "Explain Error",
      },
      {
        "<leader>rm",
        function()
          vim.cmd.RustLsp("expandMacro")
        end,
        ft = "rust",
        desc = "Expand Macro",
      },
    },
  },
  { "folke/which-key.nvim", opts = { spec = { { "<leader>r", group = "rust" } } } },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
    opts = {
      symbol_in_winbar = { enable = true },
      implement = { enable = true },
      lightbulb = { virtual_text = false },
    },
    keys = {
      {
        "K",
        function()
          local clients = vim.lsp.get_clients({ bufnr = 0 })
          if #clients > 0 then
            vim.cmd("Lspsaga hover_doc")
          else
            vim.cmd("normal! K")
          end
        end,
        desc = "Hover Doc",
      },
      { "gd", "<cmd>Lspsaga peek_definition<cr>", desc = "Peek Definition" },
      { "gr", "<cmd>Lspsaga finder<cr>", desc = "LSP Finder" },
      { "<leader>ca", "<cmd>Lspsaga code_action<cr>", desc = "Code Action" },
      { "<leader>cr", "<cmd>Lspsaga rename<cr>", desc = "Rename" },
    },
  },
}
