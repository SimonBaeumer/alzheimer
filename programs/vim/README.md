# vim

syntax verb + noun

## Misc

 - `set paste` copy into vim without formatting
 - `v` visually select
 - `>` indent
 - `c` change (delete and enter insert mode)
 - `crtl+r` redo (undo undo)
 - `j` lines down
 - `ctrl+w`, `v` split vertically
 - `term[inal]` open a terminal
 - `cs` change surroding, i.e. `cs"'`

## Source code

 - `ctrl+]` jump to definition
 - `ctrl+t` jump back from definition
 - `ctrl+w ctrl+]` open definition in horizontal split
 
Add these lines in vimrc
`map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>`

`map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>`

New bindings:

- `Ctrl+\` Open definition in new tab
- `Alt+]` Open definition in vertical split

## Text objects

 - `iw` inner word
 - `it` inner tag
 - `iq` inner quotes
 - `ip` inner paragraph
 - `as` a sentence


## Links

 - https://benmccormick.org/2014/07/02/learning-vim-in-2014-vim-as-language
 - https://blog.carbonfive.com/vim-text-objects-the-definitive-guide/
 - https://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim
