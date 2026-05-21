return {
  { "kylechui/nvim-surround", event = "VeryLazy", opts = {} },
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = {} },
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    keys = {
      { "<leader>m", "<cmd>TSJToggle<cr>", desc = "Toggle Split/Join" },
    },
    opts = { use_default_keymaps = false },
  },
}
