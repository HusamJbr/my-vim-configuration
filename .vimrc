" show the syntax colors to make files more readable
syntax on
" set a colorscheme for a nice color
colorscheme torte
" set auto indention
" when you make a new line will make an indention 
set autoindent
" show numbers and make it relative relative means:
" that will show how lines is for from the current line
set number relativenumber
" enter the current millennium 
" vim by default expect you on the old one and that is too slow so to make
" it more fast we are using this command
set nocompatible	" be improved
" to make clipboard works for copy and paste
" by default when you copy something from out of vim and paste it in vim or
" vice versa these are not working this command will help you
" and you need to install gvim for activating clipboard
set clipboard=unnamedplus
" ---------------------------------------------------------------------------
" remap normal mode these are some remaps for a specific things
" this one to join normal mode with jj instead <esc>
inoremap jj <esc>
" for close the curly bracket 
inoremap {<CR>  {<CR>}<Esc>O
" to join normal mode with jj in terminal mode 
tmap jj <C-w>N
" t for create new tab
nnoremap t :tab new<CR>
" <shift-t> to create a new terminal tab
nnoremap T :tab ter<CR>
" <shift-k> to go to the next tab
nnoremap <S-k> :tabn<CR>
" <shift-j> to go to perious tab
nnoremap <S-j> :tabp<CR>

" to highlight the search and you can toggle the highlight
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" map for coppy whole file
nnoremap <C-a> :%y<cr>

" map for delete every thing
nnoremap <C-x> ggVG"_d
" c++ compile and build
" <F8> compile c++ and the out put file as same as the name of the current file
autocmd filetype cpp nnoremap <F8> :w <bar> !g++ -std=c++17 % -o %:r<CR>
" <shift-F8> compile with -g flag for debugging perspective
autocmd filetype cpp nnoremap <S-F8> :w <bar> !g++ -g -std=c++17 % -o %:r<CR>
" <F9> run file and make file in as input and file out for output
autocmd filetype cpp nnoremap <F9> :!./%:r <in>out<CR>
" <shift-F9> run file with normal input output
autocmd filetype cpp nnoremap <S-F9> :!./%:r<CR>

" Finding files
" for searching in nested files
" I can find file that in another file with the same dir. 
" that will help you alot
set path+=**
" when you searching on file and press <tab> will show you the menu of
" suggestion
set wildmenu

" File Browsing settings (menu shows the current dir. files
" important to make netrw working
filetype plugin on
" change how browsing looks like
" -----------------------------------
" delete the text in top of the brwosing list
let g:netrw_banner=0
" open in the last opend window to replace the last working file if its not
" edited
let g:netrw_browse_split=4
" open the new file on the right when you press enter on file will open it on
" the right
let g:netrw_altv=1
" resize the split window to make it smaller
let g:netrw_winsize = 25
" remap to show and hide the menu this remap to show the list of files and
" colse it
map <silent> <C-E> :Lex<CR>


" debuger this debuger its build in vim 8.1 and more if you need to learn
" about it you can search on google gdb there are alot of tutorials
" --- you need to add this pack to make the debugger working 
packadd termdebug
" to open depugger on the left and file on the right
let g:termdebug_wide=1
" db remap will open the debugger for the current compiled file 
map db :Termdebug %:r<CR>
