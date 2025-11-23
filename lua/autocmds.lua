require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

-- TeX local settings
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = { "*.tex", "*.bib" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "csa"
    vim.opt_local.textwidth = 80
    vim.opt_local.wrapmargin = 2
    vim.opt_local.formatoptions = "tcq"
    vim.opt_local.colorcolumn = "81"
    -- add item on Enter in itemize/enumerate/description
    vim.cmd [[
      function! AddItem()
        let [end_lnum, end_col] = searchpairpos('\\begin{', '', '\\end{', 'nW')
        if match(getline(end_lnum), '\(itemize\|enumerate\|description\)') != -1
          return "\\item "
        else
          return ""
        endif
      endfunction
      inoremap <expr><buffer> <CR> getline('.') =~ '\item $' 
        \ ? '<c-w><c-w>' 
        \ : (col(".") < col("$") ? '<CR>' : '<CR>'.AddItem() )
      nnoremap <expr><buffer> o "o".AddItem()
      nnoremap <expr><buffer> O "O".AddItem()
    ]]
  end,
})

-- Typst local settings
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.typ",
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.spell = true
    vim.opt_local.spelllang = "csa"
    vim.opt_local.textwidth = 80
    vim.opt_local.wrapmargin = 2
    vim.opt_local.formatoptions = "tcq"
    vim.opt_local.colorcolumn = "81"
  end,
})

-- QML local settings
autocmd({ "BufNewFile", "BufRead" }, {
  pattern = "*.qml",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
  end,
})
