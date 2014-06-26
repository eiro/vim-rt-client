nnoremap ,h  Y<c-w><c-n>:setf rt_tk<cr>P!!sed 's/^/rt show /' <bar> zsh <cr> 

nnoremap ,s  :s/\v(\d+).*/rt edit \1 set status=stalled/<cr>
nnoremap ,r  :s/\v(\d+).*/rt edit \1 set status=resolved/<cr>
nnoremap ,o  :s/\v(\d+).*/rt edit \1 set owner=<cr>A
nnoremap ,t  :s/\v(\d+).*/rt take \1/<cr>
nnoremap ,qi :s/\v(\d+).*/rt edit \1 set owner=nobody queue=infra
nnoremap ,qs :s/\v(\d+).*/rt edit \1 set owner=nobody queue=support
nnoremap ,I  :s/\v(\d+) # (.*)/rt edit \1 set subject="[INGE] \2"
nnoremap ,T  :s/\v(\d+) # (.*)/rt edit \1 set subject="[TODO] \2"

vnoremap ,s  :s/\v(\d+).*/rt edit \1 set status=stalled/<cr>
vnoremap ,r  :s/\v(\d+).*/rt edit \1 set status=resolved/<cr>
vnoremap ,o  :s/\v(\d+).*/rt edit \1 set owner=<cr>A
vnoremap ,t  :s/\v(\d+).*/rt take \1/<cr>
vnoremap ,qi :s/\v(\d+).*/rt edit \1 set owner=nobody queue=infra
vnoremap ,qs :s/\v(\d+).*/rt edit \1 set owner=nobody queue=support
vnoremap ,I  :s/\v(\d+) # (.*)/rt edit \1 set subject="[INGE] \2"
vnoremap ,T  :s/\v(\d+) # (.*)/rt edit \1 set subject="[TODO] \2"

set dict+=~/.vim/rt/users 

" Evolve : ~/.vim/rt/README

