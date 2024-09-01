-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- import/override with your plugins folder
  "AstroNvim/astrocommunity",

  -- BAR/LINE PLUGINS
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    options = { theme = "gruvbox" },
    require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {},
        always_divide_middle = true,
        globalstatus = false,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    },
  },
  -- CODE RUNNER PLUGINS
  -- COLOR PLUGINS
  -- COLORSCHEMES
  -- COMMENT PLUGINS
  -- COMPLETION PLUGINS
  -- DEBUGGIN PLUGINS
  -- DIAGNOSTICS PLUGINS
  -- EDITOR PLUGINS
  { import = "astrocommunity.editing-support.treesj" },
  -- FILE EXPLORE PLUGINS
  -- GIT PLUGINS
  -- INDENT PLUGINS
  -- LSP PLUGINS
  -- MARKDOWN/LATEX PLUGINS
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.markmap-nvim" },
  -- MEDIA PLUGINS
  -- MOTION PLUGINS
  { import = "astrocommunity.motion.nvim-surround" },
  -- NOTE TAKING PLUGINS
  -- PROGRAMMING LANGUAGE SUPPORT PLUGINS
  -- PROJECT PLUGINS
  -- REGISTER PLUGINS
  -- REMOTE DEVELOPMENT PLUGINS
  -- SCROLLING PLUGINS
  -- SEARCH PLUGINS
  -- SPLIT/WINDOWS PLUGINS
  -- STARTUP PLUGINS
  -- SYNTAX PLUGINS
  -- TERMINAL INTEGRATION PLUGINS
  -- TEST PLUGINS
  -- UTILITY PLUGINS
  -- WORKFLOW PLUGINS
  -- PLUGIN PACKS
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.python" },
}
