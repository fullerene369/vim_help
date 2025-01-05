" Comments in Vimscript start with a `"`.   
" Vimscript中的注释以`"`开头。

" If you open this file in Vim, it'll be syntax highlighted for you.
" 如果您在Vim中打开此文件，它将为您进行语法高亮。

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).
" Vim基于Vi。设置`nocompatible`切换到默认的非Vi兼容模式，并启用有用的Vim功能。
" 对于名为`~/.vimrc`的文件，此配置选项实际上是不必要的，因为如果存在该文件，
" Vim会自动进入非兼容模式。但是为了防止以其他方式加载此配置文件（例如保存为`foo`，
" 然后使用`vim -u foo`启动Vim），我们在这里包含它。
set nocompatible

" Turn on syntax highlighting.
" 打开语法高亮。
syntax on

" Disable the default Vim startup message.
" 禁用默认的Vim启动消息。
set shortmess+=I

" Show line numbers.
" 显示行号。
set number

" This enables relative line numbering mode. With both number and
" relativenumber enabled, the current line shows the true line number, while
" all other lines (above and below) are numbered relative to the current line.
" 这启用了相对行号模式。启用`number`和`relativenumber`时，当前行显示真实行号，
" 而其他行（上下方）显示相对于当前行的编号。
set relativenumber

" Always show the status line at the bottom, even if you only have one window open.
" 始终在底部显示状态行，即使只打开一个窗口。
set laststatus=2

" The backspace key has slightly unintuitive behavior by default. For example,
" by default, you can't backspace before the insertion point set with 'i'.
" This configuration makes backspace behave more reasonably, in that you can
" backspace over anything.
" 默认情况下，退格键的行为稍显直观。例如，默认情况下，您无法在用`i`设置的插入点之前退格。
" 该配置使退格键的行为更合理，您可以退格覆盖任何内容。
set backspace=indent,eol,start

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
" 默认情况下，如果一个缓冲区中有未保存的更改，Vim不允许隐藏该缓冲区（即，没有显示在任何窗口中的缓冲区）。
" 这是为了防止您忘记未保存的更改然后通过`:qa!`等退出。我们发现隐藏缓冲区非常有用，因此禁用此保护。
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
" 当搜索字符串中的所有字符为小写时，使搜索不区分大小写。
" 如果包含任何大写字母，则搜索变为区分大小写。这使搜索更方便。
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
" 启用即时搜索（输入时开始搜索，而不是按下回车后）。
set incsearch

" Unbind some useless/annoying default key bindings.
" 解除一些无用或恼人的默认键绑定。
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.
             " 正常模式下，按`Q`进入Ex模式。几乎不需要这个。

" Disable audible bell because it's annoying.
" 禁用恼人的声音警报。
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
" 启用鼠标支持。尽量不要过于依赖此功能，但有时会很方便。
set mouse+=a

" Try to prevent bad habits like using the arrow keys for movement. This is
" not the only possible bad habit. For example, holding down the h/j/k/l keys
" for movement, rather than using more efficient movement commands, is also a
" bad habit. The former is enforceable through a .vimrc, while we don't know
" how to prevent the latter.
" 尝试防止不良习惯，例如使用方向键进行移动。这不是唯一的不良习惯。
" 例如，按住`h/j/k/l`键进行移动，而不是使用更高效的移动命令也是不良习惯。
" 在普通模式下...
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...以及在插入模式下
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
