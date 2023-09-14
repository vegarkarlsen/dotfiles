set nocompatible
let mapleader = "\<Space>"

"" Plugins

"" Install vim-plug if not present

if empty(glob('~/.vim/autoload/plug.vim'))
          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
          autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"" Plugin List

call plug#begin('~/.vim/plugged')

" vim enhancements
Plug 'ciaranm/securemodelines'
Plug 'christoomey/vim-tmux-navigator'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree'

" Fugitive for git functionality
Plug 'tpope/vim-fugitive'

" Commentary for commenting
Plug 'tpope/vim-commentary'

" Polyglot for syntax highlighting
Plug 'sheerun/vim-polyglot'

" warm 'n' fuzzy
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'

call plug#end()

syntax on

" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename'
      \ },
      \ }
function! LightlineFilename()
    return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" Completion
" Better completion
" menuone: popup even when there's only one match
" noinsert: Do not insert text until a selection is made
" noselect: Do not select, force user to select one from the menu
set completeopt=menuone,noinsert,noselect
" Better display for messages
set cmdheight=2

" =============================================================================
"  # editor settings
" =============================================================================

set showmatch
set noshowmode
set hidden

" undo history
set undodir=~/.vimdid
set undofile

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" =============================================================================
" # gui settings
" =============================================================================

set guioptions-=T " Remove toolbar
set laststatus=2
highlight clear SignColumn

" sane splits
set splitright
set splitbelow

" search
set incsearch
set ignorecase
set smartcase

" hidden chars
set listchars=nbsp:¬,extends:»,precedes:«,trail:•

" =============================================================================
" " # keybindings
" =============================================================================

" nerdtree
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" quicksave
nmap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" unhighlight

" jump to start/end of line with le row du maison
map H ^
map L $

" unbind arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" =============================================================================
" # autocommands
" =============================================================================

function! GenerateSupport(username, mail)
  let text = "Får du logget inn på medlem.samfundet.no med kortnummer/epost\<CR>"
        \ . "(" . a:mail . ") og passordet ditt?\<CR>"
        \ . "Det er samme passord her som på eks. wiki.samfundet.no.\<CR>"
        \ . "Hvis du har glemt/mistet passordet ditt, kan du få nytt her:\<CR>"
        \ . "https://medlem.samfundet.no/account/lostpwd\<CR>"
        \ . "\<CR>"
        \ . "De vanligste feilene på tjenester som wiki.samfundet.no er:\<CR>"
        \ . "- Feil brukernavn: ditt brukernavn er " . a:username . " (og ikke " . a:username . "@samfundet.no)\<CR>"
        \ . "- Feil passord: vær helt sikker på at du skriver inn riktig passord.\<CR>"
        \ . "Noen mobiler (eks iPhone) starter automatisk med stor bokstav.\<CR>"
        \ . "- På Windows er det en bug som gjør at man må skrive inn brukernavn og\<CR>"
        \ . "passord to ganger før det går gjennom. (Vi har forsøkt å fikse dette\<CR>"
        \ . "for innsida)\<CR>"
        \ . "\<CR>"
        \ . "Hvis du prøver å logge inn gjennom en google-tjeneste, skal du bruke\<CR>"
        \ . a:username . "@samfundet.no som innlogging.\<CR>"
        \ . "\<CR>"
        \ . "Legger ved noen veiledninger:\<CR>"
        \ . "https://itk.samfundet.no/dok/Samfundet-bruker\<CR>"
        \ . "https://itk.samfundet.no/dok/Brukertjenester\<CR>"
        \ . "https://itk.samfundet.no/dok/gsuitebruker\<CR>"
        \ . "\<CR>"
        \ . "Ta kontakt igjen hvis du fortsatt har problemer.\<CR>"
execute "normal! i" . text . "\<Esc>"
endfunction
