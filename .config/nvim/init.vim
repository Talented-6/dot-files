set relativenumber
filetype plugin on
" 非兼容模式
set nocompatible
" 不显示buffers未保存的提示 不知道是否有效
" set hidden
" 与系统剪切板联通
set clipboard=unnamedplus
" 中文提示和帮助
language messages zh_CN.utf-8
set helplang=cn
" 双字宽显示
" set ambiwidth=double
syntax on
let mapleader=','
" 谷歌风格
set tabstop=2
" scheme
let g:gruvbox_itlaic=1
set background=dark
" 延迟设置为300ms,让jj也能正常输入
set timeoutlen=300
" 高亮显示当前行
set cursorline
" 搜索高亮 取消用:noh完成
set hlsearch

inoremap <leader>w <Esc>:w<cr>
" 全选
nnoremap <leader>sa ggVG
inoremap jj  <Esc>

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
" auto complete
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
" 窗口的尺寸调节
nmap wk :resize +5<cr>
nmap wj :resize -5<cr>
nmap wh :vertical resize -5<cr>
nmap wl :vertical resize +5<cr>

" com! FormatJSON %!python3 -m json.tool

" use the vim-plug
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
" 待使用
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
" 成对编辑 ds cs ys(you add a surrounding)
Plug 'tpope/vim-surround'
" 模糊搜索
" Ag [Pattern]搜索字符串
" Files [Path]模糊搜索目录
Plug 'junegunn/fzf',{'dir':'~/.fzf','do':'./install --all'}
Plug 'junegunn/fzf.vim'
" 批量替换
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', {'do':':GoUpdateBinaries'}
Plug 'kien/rainbow_parentheses.vim'
Plug 'preservim/nerdcommenter'

call plug#end()
" @rainbow_parentheses.vim
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" scheme set must be put under the vim-plug
colorscheme gruvbox
" 使用fzf
" nnoremap <silent> <C-f> :Files<CR>
" 文件内fzf
nnoremap <silent> <Leader>f :Rg<CR>

nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.git$','\.hg$','.\DS_Store$']

let g:ctrlp_map='<c-p>'

" 非递归映射
nnoremap <leader>s <Plug>(easymotion-s2)

" Allow saving of files as sudo when I forgot to start vim using sudo.
cnoremap w!! w !sudo tee > /dev/null %

" 用ripgrep替换内置的grep
set grepprg=rg\ --vimgrep\ --smart-case\ --follow

" @vim-airline的必备配置
set t_Co=256      "在windows中用xshell连接打开vim可以显示色彩
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
" 使用打过补丁的powerline字体(powerline/fonts)
let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
let g:airline_theme='hybrid' "选择主题
let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
"let g:airline#extensions#tabline#formatter = 'default'  "formater
let g:airline_left_sep='▶'
let g:airline_left_alt_sep='❯'
let g:airline_right_sep='◀'
let g:airline_right_alt_sep='❮'

let g:NERDSpaceDelims=1
