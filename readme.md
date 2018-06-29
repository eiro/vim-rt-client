# DON'T USE IT

those macros spared me a lot of time when i was in charge of
[sympa](http://www.sympa.org) at the
[university of Strasbourg](http://www.unistra.fr). i left this job
in circa 2016 and this repo will be removed without warning.

# install

put those files in your `&rtp` (`:h 'rtp'` for more informations).
(if you just don't know how, read about
[pathogen.vim](https://github.com/tpope/vim-pathogen) and
[git submodules](http://git-scm.com/book/en/Git-Tools-Submodules)).
tips credits to [nono](https://github.com/agrausem). 

# now i have to read a vimdoc

an rt queue (`setf rt_q`) entry is a line showing a ticket in a form you can
easily transform to a shell script (see macros).

    ticket_ID # ticket description 

(maybe we should add an `rtqueue` filename extension?) 

to create such a file, use a ` rt ls -s | rt/rt_q` combo
(see [uze rt](https://github.com/eiro/uze/blob/master/rt))

   rt show -s tickets [my query here] | rt/rt_q | vim -  

then you have rt tickets (`setf rt_tk`) which is the result
of rt show ticket

# mappings 

## in rt_q 

those commands works for

* a line in normal mode
* a selection in visual mode 

    ,h ticket history in another buffer 
    ,s stale the ticket (need to be piped)
    ,r resolve the ticket (need to be piped)
    ,o set the ticket to owner ... (just write there) 
    ,t take the ticket

those bindings are very specific to my own rt instance. i had no time to think
generic so this are just examples (any idea to have them on a separated file?
something like `:so ~/.vim/rt_q_mappings.vim` ?)  

    ,qi set owner=nobody queue=infra
    ,qs set owner=nobody queue=support
    ,I  prefix subject with [INGE]
    ,T  prefix subject with [TODO]

## in rt_tk

    ,r respond to ticket
    ,c comment the ticket

