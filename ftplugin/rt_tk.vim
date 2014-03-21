"pandoc {{{
"
" # TODO
"
" * ,r and ,co to work in visual mode
" * ,cl to close
" * ,o to set owner
" * FIX:dispec
"
"}}}

nnoremap ,$copy_paste ?^===> <cr>j"byN:4y s<cr>
noremap ,$new_mail   <c-w><c-n>:setf mail<cr>
noremap ,$setup_body "bp:,$s#^#> <cr>:%d b<cr>
noremap ,$comment :0r ~/.vim/mutt_drafts/rt-comment<cr>
noremap ,$respond :0r ~/.vim/mutt_drafts/rt-respond<cr>

" FIX:dispec #di is unistra IT dpt specific
noremap ,$subject 0gg}"sP:s,rt #ticket/,di #<cr>

" maybe try to use more functions :put :y :... 
" nnoremap ,$new_mail  <c-w><c-n>:setf mail<cr>
" nnoremap ,$new_mail  :wincmd n<bar>setf mail<cr>

nmap <buffer> ,c ,$copy_paste,$new_mail,$setup_body,$comment,$subject"bp
nmap <buffer> ,r ,$copy_paste,$new_mail,$setup_body,$respond,$subject"bp 

" nnoremap <buffer> ,$subject }"sP:s#ticket/<cr>j"bp:,/^-- $/s#^#> <cr>
