"set colorcolumn=80
"hi ColorColumn guibg=#2d2d2d
set nocompatible | filetype indent plugin on | syn on


fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()

VAMActivate bufexplorer.zip
VAMActivate taglist

set nocp
set bs=2
set number
"set spell
colorscheme desert
set showtabline=2
set hlsearch
set incsearch
set mouse=a
" If you do not want to insert EOLs at column number=80 then use set wrap and
" linebreak. Here we insert an EOL at column number=80
set textwidth=80
let g:pydiction_location = '/usr/share/pydiction/complete-dict'
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
"map <C-h> :tabprevious<cr>
"map <C-l> :tabnext<cr>
"map <C-t> :tabnew<cr>
"map <C-q> :tabclose<cr>
"map! <C-h> :tabprevious<cr>
"map! <C-l> :tabnext<cr>
"map! <C-t> :tabnew<cr>
"map! <C-q> :tabclose<cr>
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "pdflatex"
"Put spaces instead of tabs
set tabstop=2
set shiftwidth=2 
set expandtab
set softtabstop=2 ""This option lets you delete 4 spaces with one bs keystroke.
set autoindent
"gui options
"set guioptions-=m
"set guioptions-=T
"Taglist settings
nnoremap <silent> <F2> :TlistToggle<CR>
"MiniBufExplorer settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
