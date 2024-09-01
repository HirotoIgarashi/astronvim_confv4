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
