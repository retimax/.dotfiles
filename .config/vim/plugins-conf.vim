"                   _         _                           
"               ___| |_ _ ___|_|___ ___                   
"              | . | | | | . | |   |_ -|                  
"              |  _|_|___|_  |_|_|_|___|                  
"              |_|       |___|                            
"               ___ _     _                 _   _         
"   ___ ___ ___|  _|_|___|_|___ _ _ ___ ___| |_|_|___ ___ 
"  |  _| . |   |  _| | . | | . | | |  _| .'|  _| | . |   |
"  |___|___|_|_|_| |_|_  |_|_  |___|_| |__,|_| |_|___|_|_|
"                    |___| |___|                          

" -> NERDtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1

" -> Markdown preview 
" Autostart (and autoclose) preview when open an MD file
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1



" -> Airline
" Tabline 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_type = 0

" -> Powerline font
let g:airline_powerline_fonts = 1

" -> COC
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

