return {
  'dense-analysis/ale',
  config = function()
    local g = vim.g

    g.ale_fix_on_save = 1
    g.ale_fixers = {
      ['*'] = {'remove_trailing_lines', 'trim_whitespace'},
      javascript = {'prettier', 'eslint'},
      typescript = {'prettier', 'eslint'},
      html = {'prettier'},
      scss = {'prettier'},
    }
  end
}

