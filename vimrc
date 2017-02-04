set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/nginx.vim'
Plugin 'fatih/vim-go'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
Plugin 'thinca/vim-localrc'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
set background=dark
colorscheme solarized

set nu

""" START Powerline
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
"set laststatus=2
"set t_Co=256
""" END Powerline


""" START airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airlinetheme = 'solarized dark'

""" END airline

""" START tabstop
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
""" END tabstop


au BufRead,BufNewFile haproxy* set ft=haproxy 
au BufRead,BufNewFile nginx* set ft=nginx

if has("python")
    python << EOF
import vim
import json
def FormatJSON(fmtlStart, fmtlEnd):
    fmtlStart = fmtlStart-1
    jsonStr = "\n".join(vim.current.buffer[fmtlStart:fmtlEnd])
    prettyJson = json.dumps(json.loads(jsonStr), sort_keys=True, indent=4, separators=(',', ': '), ensure_ascii=False)
    prettyJson = prettyJson.encode('utf8')
    vim.current.buffer[fmtlStart:fmtlEnd] = prettyJson.split('\n')
EOF

    com! -range -bar FmtJSON :python FormatJSON(<line1>, <line2>)
endif

" Spell check
set spell spelllang=en_us
