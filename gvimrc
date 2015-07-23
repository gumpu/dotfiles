"----------------------------------------------------------
" vi:ai:ts=2:sw=2:ft=vim
"----------------------------------------------------------
" File:        gvimrc
" By:          Frans Slothouber
" Created:     2001
"
" Tested on:   Linux (Redhat), Win32, Ubuntu, VMS
"
" Make shift-insert work like in Xterm
map  <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Hide the mouse pointer while typing
set mousehide
set mousemodel=popup_setpos
set number

"=============================================
"      C O L O U R S
"=============================================
"background:  Are we using a "light" or "dark" background?
"set background=light
set background=dark
colorscheme solarized
" colorscheme ps_color
highlight ColorColumn ctermbg=235 guibg=#2c2d27
set guicursor+=a:blinkon0

set go-=T
set go-=m
" No Beep!!!
set vb t_vb=""
" It is wise not to set a font but use the default instead.  The
" selected font might not be available on the system vim is being
" installed on.
set guifont=Droid\ Sans\ Mono\ 8
"---------------------------------------------------------------------


" Font work better in gvim, so lets use some nice unicode.
" set listchars=tab:»˽,trail:˽,eol:¶
set listchars=tab:»˽,trail:˽

