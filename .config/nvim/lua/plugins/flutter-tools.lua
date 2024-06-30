local function config()
  require("flutter-tools").setup({
    ui = {
      border = "rounded",
      notification_style = "native",
    },
    decorations = {
      statusline = {
        app_version = true,
        device = true,
      },
    },
    flutter_lookup_cmd = "asdf where flutter",
    closing_tags = {
      highlight = "",
      prefix = "// ",
      enabled = true,
    },
    dev_log = {
      enabled = false,
      open_cmd = "tabedit",
    },
    widget_guides = {
      enabled = true,
    },
    dev_tools = {
      autostart = true,
      auto_open_browser = true,
    },
    outline = {
      open_cmd = "40vnew",
      auto_open = false,
    },
    lsp = {
      color = {
        enabled = true,
        background = false,
        background_color = nil,
        foreground = false,
        virtual_text = true,
        virtual_text_str = "■",
      },
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      renameFilesWithClasses = "prompt",
      enableSnippets = true,
      updateImportsOnRename = true,
    },
  })

  require("luasnip").filetype_extend("dart", { "flutter" })
  require("telescope").load_extension("flutter")
end

return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  config = config,
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "RobertBrunhage/flutter-riverpod-snippets", lazy = false },
  },
  keys = {
    { "<leader>cv", "<cmd>Telescope flutter commands<CR>", desc = "Flutter commands" },
  },
}
