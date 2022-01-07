function! myspacevim#before() abort
    inoremap kj <Esc>
endfunction

function! myspacevim#after() abort
    " you can remove key binding in bootstrap_after function
    iunmap kj
    "highlight CursorLine term=none cterm=none
    "highlight CursorLineNr term=none cterm=none
    "highlight! link SignColumn LineNr
    
    set updatetime=100
    let g:gitgutter_set_sign_backgrounds = 0

    set foldmethod=syntax   
    set foldnestmax=10
    set nofoldenable
endfunction
