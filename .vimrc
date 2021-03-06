if has('vim_starting')
  set rtp+=~/.vim/plugged/vim-plug
  if !isdirectory(expand('~/.vim/plugged/vim-plug'))
    echo 'install vim-plug...'
    call system('mkdir -p ~/.vim/plugged/vim-plug')
    call system('git clone https://github.com/junegunn/vim-plug.git ~/.vim/plugged/vim-plug/autoload')
  end
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-plug',
        \ {'dir': '~/.vim/plugged/vim-plug/autoload'}
  " Vundle/NeoBundle と同じように
  Plug 'junegunn/seoul256.vim'

  " コマンド実行時に読み込む
  Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle'] }

  " golang 環境
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'
  Plug 'prabirshrestha/asyncomplete.vim'
  Plug 'prabirshrestha/asyncomplete-lsp.vim'

  let g:lsp_diagnostics_enabled = 0
  " debug
  let g:lsp_log_verbose = 1
  let g:lsp_log_file = expand('~/vim-lsp.log')
  let g:asyncomplete_log_file = expand('~/asyncomplete.log')

  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " typescript
  Plug 'leafgarland/typescript-vim'

  " color scheme
  Plug 'cocopon/iceberg.vim'

  " commentary
  Plug 'tpope/vim-commentary'

  " complete plugin
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    let g:deoplete#enable_at_startup = 1

    Plug 'deoplete-plugins/deoplete-jedi'
    let g:deoplete#sources#jedi#server_timeout=100
    let g:deoplete#sources#jedi#statement_length=100
    " jedi側の保管をdisabled
    let g:jedi#completions_enabled = 0
  endif
call plug#end()

" gopls
if executable('gopls')
  au User lsp_setup call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
      \ 'whitelist': ['go'],
      \ })
endif

" filetypeの自動検出(最後の方に書いた方がいいらしい)
filetype on

source ~/dotfiles/.vimrc.alias
source ~/dotfiles/.vimrc.apperance
source ~/dotfiles/.vimrc.keymap
source ~/dotfiles/.vimrc.basic
source ~/dotfiles/.vimrc.moving
source ~/dotfiles/.vimrc.indent

