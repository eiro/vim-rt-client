nnoremap ,v Y<c-w><c-n>:setf rt_tk<cr>P!!sed 's/^/rt show /' <bar> zsh <cr>
nnoremap ,s :s/\v(\d+).*/rt edit \1 set status=stalled/<cr>
nnoremap ,r :s/\v(\d+).*/rt edit \1 set status=resolved/<cr>
nnoremap ,o :s/\v(\d+).*/rt edit \1 set owner=<cr>A
nnoremap ,t :s/\v(\d+).*/rt take \1/<cr>
set dict+=~/.vim/rt/users 

" Evolve : ~/.vim/rt/README

