-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

return {
  "AstroNvim/astrocore",
  opts = {
    -- Configure core features of AstroNvim
    features = {
      -- set global limits for large files for disabling features like
      -- treesitter
      large_buf = { size = 1024 * 500, lines = 10000 },

      -- enable autopairs at start
      autopairs = true,

      -- enable completion at start
      cmp = true,

      -- diagnostic mode on start
      -- (
      --   0 = off,
      --   1 = no signs/virtual text,
      --   2 = no virtual text,
      --   3 = on
      -- )
      diagnostics_mode = 3,

      -- highlight URLs at start
      highlighturl = true,

      -- enable notifications at start
      notifications = true,
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when
    -- diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },

    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        -- カーソル行からの相対的な行番号を表示する
        relativenumber = true, -- sets vim.opt.relativenumber

        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto

        -- テキストの表示方法を変更します。バッファ内のテキストは変更されません。
        -- trueにすると、ウィンドウの幅より長い行が折り返され、表示が次の行に
        -- 続きます。
        -- falseの場合、行は折り返されず、長い行の一部のみが表示されます。
        wrap = true, -- sets vim.opt.wrap

        -- 以下は自分で設定

        -- 入力したタブを数文字分のスペースに置き換える
        expandtab = true,
        -- タブの幅を２文字分として表示する
        tabstop = 2,
        -- インデントのスペース幅を２文字とする
        shiftwidth = 2,

        -- カーソルが存在する行にハイライトを当ててくれます。
        cursorline = true,

        -- 80文字目にラインを入れる
        colorcolumn = "80",

        -- 挿入されるテキストの最大幅。長い行は、この幅を得るために空白の後に
        -- 分割されます。値をゼロにすると、これが無効になります。
        -- 「textwidth」がゼロの場合、「wrapmargin」が使用される可能性が
        -- あります。
        textwidth = 80,

        -- formatoptions = "tcqj" <- default
        -- t: 'textwidth'が設定されている場合、自動的にテキスト部分を改行する。
        -- c: 自動的にコメントを改行。自動的にコメントリーダーを挿入する。
        -- q: gqコマンドでコメントをフォーマットする。
        --    Note that formatting will not change blank lines or lines
        --    containing only the comment leader. A new paragraph starts after
        --    such a line, or when the comment leader changes.
        -- j: 複数行のコメントを連結する際に、余計なコメントリーダーを消す
        -- r: 新しい行が挿入されるコメントにおけるコメントリーダーを挿入する。
        --    automatically insert the current comment leader after hitting
        --    <Enter> in Insert mode.
        -- o: Oやoを使用して新しい行が作られるコメントにおいて、
        --    コメントリーダーを挿入する。
        --    automatically insert the current comment leader after hitting
        --    'o' or 'O' in Normal mode. In case comment is unwanted in a
        --    specific place use CTRL-U to quickly delete it. i_CTRL_U
        -- local_vim.opt.formatoptions:append { m = true, M = true }
        -- local_vim.opt.formatoptions = "tcqjrolmM"
        -- formatoptions = "tcqjromM",
        formatoptions = "tcqjn",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file

        -- 以下は自分で設定

        python3_host_prog = "/usr/bin/python3",

        -- enable or disable auto formatting at start
        -- (lsp.formatting.format_on_save must be enabled)
        autoformat_enabled = true,
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        -- L = {
        --   function() require("astrocore.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- H = {
        --   function() require("astrocore.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },
        -- quick save
        -- change description but the same command
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
