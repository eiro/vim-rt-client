command -buffer -bar SelectBlock
    \| ?^===> ?+
    \| k<
    \| /\v^(\={3}\>|--|\d+: untitled)/-
    \| k>

command -buffer -bar SV silent SelectBlock|normal gv

command -range -buffer -bar CopyBody
    \| <line1>,<line2>y b
    \| 0|/^Subject: /|y s
 
command -buffer -bar Comment
    \| enew | setf mail | file Commentaire\ RT
    \| silent 0r ~/.vim/mutt_drafts/rtdi
    \| /^$/ | y S | put! s | put b

command! -bar Respond Comment |file Réponse\ RT|0|/^To: /|s/-comment//

vnoremap <buffer> C :CopyBody<cr>:Comment<cr>
vnoremap <buffer> R :CopyBody<cr>:Respond<cr>
nnoremap ,u :%w !5wen '/^Subject: / and print "https://rt.unistra.fr/rt/Ticket/Display.html?id=",m(/(\d+))'<cr>

" Old ideas: 
" "noremap ,$subject 0gg}"sP:s,rt #ticket/,di #<cr> 
" "nnoremap <buffer> ,g /^Subject: \[<cr>Y:enew<bar>setf gitcommit<bar>0put<cr>cf/fix:di#<esc>Exo<cr>
" "
