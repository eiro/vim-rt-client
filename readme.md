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

    ,v view the ticket in another buffer
    ,s stale the ticket (need to be piped)
    ,r resolve the ticket (need to be piped)
    ,o set the ticket to owner ... (just write there) 
    ,t take the ticket

## in rt_tk

    ,r respond to ticket
    ,c comment the ticket

## todo: remove/configure specific stuff

