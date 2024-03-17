require('lualine').setup {
    options = {
        theme = 'gruvbox',
        component_separators = {left = '', right = ''},
        section_separators = {left = '', right = ''}
    },
    sections = {
        lualine_a = {{'mode', right_padding = 2}},
        lualine_b = {
            'filename', 'branch'
            -- require("lsp-progress").progress  
        },
        lualine_c = {'fileformat'},
        lualine_x = {},
        lualine_y = {'filetype', 'progress'},
        lualine_z = {
            {'location', left_padding = 2}
        }
    },
    inactive_sections = {
        lualine_a = {'filename'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'location'}
    },
    tabline = {},
    extensions = { 'nvim-tree' },
}

vim.cmd([[
augroup lualine_augroup
    autocmd!
    autocmd User LspProgressStatusUpdated lua require("lualine").refresh()
augroup END
]])
