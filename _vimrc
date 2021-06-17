"CONFIGURAÇÕES VIM

"Quebrar linhas por palavra (requer quebras de linha)
set linebreak

"Quebra de linha (número de colunas)
set textwidth=100

"Mostrar informações da régua de linha e coluna
set ruler

"Menu sobreposto para pesquisa
set wildmenu

"Destaca linha inferior
set laststatus=2

"Mensagem de confirma sair sem salvar?
set confirm

"Titulo do documento que esta sendo editado
set title

"Salvar alterações documento
map <C-s> :w<CR>

" ativar sintaxe colorida
syntax on
syntax enable

" ativar indentação automática
set autoindent

" ativa indentação inteligente, o Vim tentará adivinhar
" qual é a melhor indentação para o código quando você
" efetuar quebra de linha. Funciona bem para linguagem C
set smartindent

" por padrão o vim armazena os últimos 50 comandos que você
" digitou em seu histórico. Eu sou exagerado, prefiro armazenar
" os últimos 5000
set history=5000

" ativar numeração de linha
set number

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" converte o tab em espaços em branco
" ao teclar tab o Vim irá substutuir por 2 espaços
set tabstop=2 softtabstop=2 expandtab shiftwidth=2

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za

set guifont=DejaVu_Sans_Mono:h10:cANSI:qDRAFT

colo materialbox

let g:indentLine_enabled = 1
map <c-k>i :IndentLinesToggle<cr>

"Quando abrir outroterminal vim que abra embaixo e o vertical a direita
set splitbelow splitright

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop=0
let g:airline_theme='base16_twilight'

"Mudar a leader key para ',''
let mapleader = "/"

"Atalho para estar compilando o arquivo e para estar dando um preview (/ + c - compila; / + p -
"preview)
map <Leader>c :w! \| !compiler <c-r>%<CR>
map <Leader>p :!opout <c-r>%<CR><CR>

let g:airline#extensions#tabline#formatter = 'default'

"Trasforma a linha em comentario
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert

let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
" let g:ale_fixers = {
"      'python': ['yapf'],
"  }
" nmap <F10> :ALEFix<CR>
" let g:ale_fix_on_save = 1
