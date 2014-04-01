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

nnoremap ,$copy_body ?^===> <cr>j"byN
nnoremap ,$copy_subject 0gg/^Subject:<cr>"sY
nmap ,$copy_paste ,$copy_body,$copy_subject
nnoremap ,$new_mail   <c-w><c-n>:setf mail<cr>
nnoremap ,$setup_body "bp:,$s#^#> <cr>:%d b<cr>
nnoremap ,$comment :0r ~/.vim/mutt_drafts/rt-comment<cr>
nnoremap ,$respond :0r ~/.vim/mutt_drafts/rt-respond<cr>

" FIX:dispec #di is unistra IT dpt specific
noremap ,$subject 0gg}"sP:s,rt #ticket/,di #<cr>

" maybe try to use more functions :put :y :... 
" nnoremap ,$new_mail  <c-w><c-n>:setf mail<cr>
" nnoremap ,$new_mail  :wincmd n<bar>setf mail<cr>

nmap <buffer> ,c ,$copy_paste,$new_mail,$setup_body,$comment,$subject"bp
nmap <buffer> ,r ,$copy_paste,$new_mail,$setup_body,$respond,$subject"bp 

" nnoremap <buffer> ,$subject }"sP:s#ticket/<cr>j"bp:,/^-- $/s#^#> <cr>
