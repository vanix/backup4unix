syntax	on
set	number
set	bs=2

let	python_highlight_all = 1

colorscheme	wombat256

if has("autocmd")
   autocmd BufRead *.txt set tw=78
   autocmd BufReadPost *
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \   exe "normal g'\"" |
      \ endif
endif

