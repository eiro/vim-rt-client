au BufRead,StdinReadPost *
    \ if getline(1) =~ '\v^\d+ # \S' | setf rt_q | endif
au BufRead,StdinReadPost *
    \ if search('^X-Queue: ','',20) | setf rt_tk | endif
