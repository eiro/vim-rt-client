command -bar TKhistory y | enew | setf rt_tk | 0put | s/^/rt show / | .!zsh
nnoremap ,h  :TKhistory<cr>

nnoremap ,s  :s/\v(\d+).*/rt edit \1 set status=stalled/<cr>
nnoremap ,r  :s/\v(\d+).*/rt edit \1 set status=resolved/<cr>
nnoremap ,o  :s/\v(\d+).*/rt edit \1 set owner=<cr>A
nnoremap ,t  :s/\v(\d+).*/rt take \1/<cr>
nnoremap ,qi :s/\v(\d+).*/rt edit \1 set owner=nobody queue=Infra 
nnoremap ,qs :s/\v(\d+).*/rt edit \1 set owner=nobodyqueue=Support 
nnoremap ,I  :s/\v(\d+) # (.*)/rt edit \1 set subject="[INGE] \2"
nnoremap ,T  :s/\v(\d+) # (.*)/rt edit \1 set subject="[TODO] \2"
nnoremap ,$reformat-id :s/\v(\d+) #/[di#\1]<cr>
nmap ,$prepare-ans P,$reformat-id:s#^#Subject: #<cr>o<cr><esc>:r ~/local/fragments/
nmap ,mr Y,m<c-v>rt-respond<cr>},$prepare-ans
nmap ,mc Y,m<c-v>rt-comment<cr>},$prepare-ans

vnoremap ,s  :s/\v(\d+).*/rt edit \1 set status=stalled/<cr>
vnoremap ,r  :s/\v(\d+).*/rt edit \1 set status=resolved/<cr>
vnoremap ,o  :s/\v(\d+).*/rt edit \1 set owner=<cr>A
vnoremap ,t  :s/\v(\d+).*/rt take \1/<cr>
vnoremap ,qi :s/\v(\d+).*/rt edit \1 set owner=nobody queue=Infra
vnoremap ,qs :s/\v(\d+).*/rt edit \1 set owner=nobody queue=Support
vnoremap ,I  :s/\v(\d+) # (.*)/rt edit \1 set subject="[INGE] \2"
vnoremap ,T  :s/\v(\d+) # (.*)/rt edit \1 set subject="[TODO] \2"

inoremap <c-x><c-u> <esc>:RTU<cr>:FuzzySearch<space>
nmap ,O  ,o<c-x><c-u>
