let &t_Co=256

set number

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set ts=4

set cindent
set autoindent

set cursorline

set hlsearch 

"syntax enable
"syntax on
filetype on
filetype plugin on

colorscheme molokai

hi Pmenu ctermfg=green ctermbg=black
hi PmenuSel ctermfg=11 ctermbg=3

set backspace=indent,eol,start
"set guifont=Courier\ New:h14:cANSI


"let g:python3_host_prog = '/mingw64/bin/python3.8.exe'

"Javascript
let g:javascript_plugin_jsdoc = 1

"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"augroup END

"YouCompleteMe
let g:ycm_server_keep_logfile = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_simple_conf_active = 0
let g:ycm_server_python_interpreter = '/mingw64/bin/python3.8.exe'
"let g:ycm_server_python_interpreter = '/usr/bin/python3.8.exe'\

let g:ycm_seed_identifiers_with_syntax = 1

let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0

let g:ycm_autoclose_preview_window_after_completion = 1

let g:ycm_cache_omnifunc = 0

let g:ycm_complete_in_string = 1

autocmd InsertLeave If pumvisible() == 0|pclose|endif

inoremap <expr> <CR> pumvisible() ? '<C-y>' : '<CR>'

let g:ycm_global_ycm_extra_conf='~/.vim/plugged/ycm_simple_conf/python/ycm_simple_conf.py'


"Syntastic
execute pathogen#infect()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"Python-mode
let g:pymode_warnings = 0
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 119
let g:pymode_options_colorcolumn = 0
"let g:pymode_python = "python3"

let g:pymode_lint = 1
let g:pymode_lint_write = 1
let g:pymode_lint_checkers = ["pyflakes"]
"let g:pymode_lint_checkers = ["pyflakes", "pep8"]

let g:pymode_rope = 0
lef g:pymode_indent = 1
let g:pymode_folding = 0

let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>br'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"hi pythonSelf ctermfg=174 guifg=#6094DB cterm=bold gui=bold


call plug#begin()
            
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe'
Plug 'tdcdev/ycm_simple_conf'
Plug 'pangloss/vim-javascript'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()
