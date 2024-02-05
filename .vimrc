hi Comment term=bold ctermfg=darkcyan guifg=LightBlue
set tabstop=4 "tab"
set nobackup
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set scrolloff=3 "游標移動到頂部與底部會保持3行距離"
set cul "游標所在行，水平會有一條線"
set cuc "游標所在行，垂直會有一條線。效果不太好。"
set wildmenu "命令行補齊"
set hlsearch "搜尋時，關鍵字反白"
set cindent "C 语言自动缩进"
set sm "括号自动匹配"
color ron "設定背景主題，寫c顯示感覺不錯"

""""""""""""""""""""""""for omnicppcomplete""""""""""""""""""""""""""""""
:set nocp
:filetype plugin on
:set ofu=syntaxcomplete#Complete

"""""""""""""""""""""""""Auto return to previous read position"""""""""""
if has("autocmd")
    autocmd BufRead *.txt set tw=78
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \ exe "normal g'\""|
    \ endif
endif
"""""""""""""""""""""""""for Tlist"""""""""""""""""""""""""""""""""""""""
map <f9> :Tlist<CR>
"let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口 
let Tlist_WinWidth=40
"""""""""""""""""""""""""for NERDTree""""""""""""""""""""""""""""""""""""
"map <f10> :NERDTree<CR>
map <f10> :NERDTreeToggle<CR>
map <f10> <ESC> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let NERDTreeWinSize=50 "如果視窗太小，可以採用
"""""""""""""""""""""""""for tabe""""""""""""""""""""""""""""""""""""""""
map <Esc><Esc> :w<CR>
map <f3> :ls<CR>
map <f4> :b
map <f5> :bn<CR> "切換到下個檔案"
map <f6> :bp<CR> "切換到上個檔案"
map <f7> /\c
map ;; :b#<CR>
