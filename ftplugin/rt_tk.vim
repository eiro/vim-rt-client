command -buffer -bar SelectBlock
    \| ?^===> ?+
    \| k<
    \| /\v^(\={3}\>|--|\d+: untitled)/-
    \| k>

command -buffer -bar SV silent SelectBlock|normal gv

command -range -buffer -bar CopyBody silent <line1>,<line2>VerboseCopyBody
command -range -buffer -bar VerboseCopyBody
    \| <line1>,<line2> y b
    \| enew |0put |%s/^/> / |%d b |bd!
    \| 0
    \| /^Subject: /
    \| y s
 
command -buffer -bar Comment silent VerboseComment
command -buffer -bar VerboseComment
    \| enew | setf mail 
    \| silent 0r ~/.vim/mutt_drafts/rtdi
    \| /^$/-1 |PasteSubject! |+1|put b

command -buffer Phone 0|/^Subject: /|y s
    \| enew | setf mail 
    \| silent 0r ~/.vim/mutt_drafts/phone
    \| /^$/ | PasteSubject!

command -buffer -bar Respond silent VerboseRespond
command! -bar VerboseRespond Comment |0|/^To: /|s/-comment//

command! -bar -bang PasteSubject put s
    \| s,rt #ticket/,di #,
    \| d s| put<bang> s
" "| d s |put<bang> s


vnoremap <buffer> C :CopyBody<cr>:Comment<cr>
vnoremap <buffer> R :CopyBody<cr>:Respond<cr>
nnoremap ,u :%w !5wen '/^Subject: / and print "https://rt.unistra.fr/rt/Ticket/Display.html?id=",m(/(\d+))'<cr>

" Old ideas: 
" "noremap ,$subject 0gg}"sP:s,rt #ticket/,di #<cr> 
" "nnoremap <buffer> ,g /^Subject: \[<cr>Y:enew<bar>setf gitcommit<bar>0put<cr>cf/fix:di#<esc>Exo<cr>
" "
