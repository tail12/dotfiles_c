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

  Plug 'fatih/molokai'
call plug#end()

let g:go_fmt_commnad = "goimports"

source ~/dotfiles/.vimrc.alias
source ~/dotfiles/.vimrc.apperance
source ~/dotfiles/.vimrc.keymap
source ~/dotfiles/.vimrc.basic
source ~/dotfiles/.vimrc.moving
source ~/dotfiles/.vimrc.indent
