filetype plugin on
syntax on
set number
set mouse=a
set hlsearch
set ruler

" Colors
hi StatusLine ctermfg=white ctermbg=darkblue cterm=NONE
hi StatusLineNC ctermfg=white ctermbg=darkblue cterm=NONE
hi User1 ctermfg=white ctermbg=none
hi User2 ctermfg=NONE ctermbg=none
hi User3 ctermfg=white ctermbg=darkblue
hi User4 ctermfg=white ctermbg=darkblue
highlight LineNr ctermfg=darkblue

let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ "\<c-V>" : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ "<c-S>" : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\     " The current mode
set statusline+=%1*\ %<%F\                                  " File path
set statusline+=\ %1*\                                      " Padding & switch colour
set statusline+=%y                                          " File type
set statusline+=\ %2*\                                      " Padding & switch colour
set statusline+=%=                                          " Switch to right-side
set statusline+=\ %3*\                                      " Padding & switch colour
set statusline+=%02l/%L\ :\ %02v\ %0*                       " Postition and line numbers

set noshowmode
set noshowcmd
set shortmess+=F