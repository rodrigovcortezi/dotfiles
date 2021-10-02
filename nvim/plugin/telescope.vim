lua require("cortezi/telescope")

nnoremap <leader>pf :lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For >") })<cr>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<cr>

