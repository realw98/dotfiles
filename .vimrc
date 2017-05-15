"НАСТРОЙКИ ВНЕШНЕГО ВИДА И БАЗОВЫЕ НАСТРОЙКИ РЕДАКТОРА
set nocompatible " отключить режим совместимости с классическим Vi
set scrolloff=3 " сколько строк внизу и вверху экрана показывать при скроллинге
"set background=dark " установить цвет фона
"цветовая схема по умолчанию (при вводе в режиме команд
"по табуляции доступно автодополнение имён схем). af, desert
set wrap " (no)wrap - динамический (не)перенос длинных строк
set linebreak " переносить целые слова
set hidden " не выгружать буфер когда переключаешься на другой
set mouse=a " включает поддержку мыши при работе в терминале (без GUI)
set mousehide " скрывать мышь в режиме ввода текста
set showcmd " показывать незавершенные команды в статусбаре (автодополнение ввода)
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов
set showmatch " показывать первую парную скобку после ввода второй
set autoread " перечитывать изменённые файлы автоматически
set t_Co=256 " использовать больше цветов в терминале
set confirm " использовать диалоги вместо сообщений об ошибках
"" Автоматически перечитывать конфигурацию VIM после сохранения
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
"" Формат строки состояния
" fileformat - формат файла (unix, dos); fileencoding - кодировка файла;
" encoding - кодировка терминала; TYPE - тип файла, затем коды символа под курсором;
" позиция курсора (строка, символ в строке); процент прочитанного в файле;
" кол-во строк в файле;
"Изменяет шрифт строки статуса (делает его не жирным)
hi StatusLine gui=reverse cterm=reverse
set laststatus=2 " всегда показывать строку состояния
set ruler "Отключить линейку
"" Подсвечивать табы и пробелы в конце строки
set list " включить подсветку
set listchars=tab:>-,trail:- " установить символы, которыми будет осуществляться подсветка
"Проблема красного на красном при spellchecking-е решается такой строкой в .vimrc
highlight SpellBad ctermfg=Black ctermbg=Red
set backspace=indent,eol,start " backspace обрабатывает отступы, концы строк
set sessionoptions=curdir,buffers,tabpages " опции сессий - перейти в текущую директорию, использовать буферы и табы
set noswapfile " не использовать своп-файл (в него скидываются открытые буферы)
set browsedir=current
set visualbell " вместо писка бипером мигать курсором при ошибках ввода
set clipboard=unnamed " во избежание лишней путаницы использовать системный буфер обмена вместо буфера Vim
set nobackup " включить сохранение резервных копий
set title " показывать имя буфера в заголовке терминала
set history=128 " хранить больше истории команд
set undolevels=2048 " хранить историю изменений числом N
set whichwrap=b,<,>,[,],l,h " перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
"set virtualedit=all " позволяет курсору выходить за пределы строки
let c_syntax_for_h="" " необходимо установить для того, чтобы *.h файлам присваивался тип c, а не cpp
" При вставке фрагмента сохраняет отступ
set pastetoggle=
"подсвечивает все слова, которые совпадают со словом под курсором.
if has('gui')
set cursorline
endif
set iminsert=0
set imsearch=-1


"НАСТРОЙКИ ПЕРЕМЕННЫХ ОКРУЖЕНИЯ


"НАСТРОЙКИ ПОИСКА ТЕКСТА В ОТКРЫТЫХ ФАЙЛАХ
set ignorecase " ics - поиск без учёта регистра символов
set smartcase " - если искомое выражения содержит символы в верхнем регистре - ищет с учётом регистра, иначе - без учёта
set nohlsearch " (не)подсветка результатов поиска (после того, как поиск закончен и закрыт)
set incsearch " поиск фрагмента по мере его набора
" поиск выделенного текста (начинать искать фрагмент при его выделении)
vnoremap <silent>* <ESC>:call VisualSearch()<CR>/<C-R>/<CR>
vnoremap <silent># <ESC>:call VisualSearch()<CR>?<C-R>/<CR>


"НАСТРОЙКИ СВОРАЧИВАНИЯ БЛОКОВ КОДА (фолдинг)
"set foldenable " включить фолдинг
"set foldmethod=syntax " определять блоки на основе синтаксиса файла
"set foldmethod=indent " определять блоки на основе отступов
"set foldcolumn=3 " показать полосу для управления сворачиванием
"set foldlevel=1 " Первый уровень вложенности открыт, остальные закрыты
"set foldopen=all " автоматическое открытие сверток при заходе в них
set tags=tags\ $VIMRUNTIME/systags " искать теги в текущй директории и в указанной (теги генерируются ctags)


"НАСТРОЙКИ РАБОТЫ С ФАЙЛАМИ
"Кодировка редактора (терминала) по умолчанию (при создании все файлы приводятся к этой кодировке)

if has('win32')
	set encoding=cp1251
" формат файла по умолчанию (влияет на окончания строк) - будет перебираться в указанном порядке
	set fileformat=dos
else
	set encoding=utf-8
	set termencoding=utf-8
	set fileformat=unix
endif
" варианты кодировки файла по умолчанию (все файлы по умолчанию сохраняются в этой кодировке)
set fencs=utf-8,cp1251,koi8-r,cp866
"" Перед сохранением .vimrc обновлять дату последнего изменения
syntax on " включить подсветку синтаксиса

"" Применять типы файлов

"ПЛАГИНЫ!!!

"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'jlanzarotta/bufexplorer'
"Plugin 'flazz/vim-colorschemes'
"Plugin 'kien/ctrlp.vim'
"Plugin 'bling/vim-bufferline'
"call vundle#end()

"set statusline=%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}\]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"

set noshowmode

if has('win32')
	call plug#begin('~/vimfiles/bundle')
else 
	call plug#begin('~/.vim/bundle')
endif

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jlanzarotta/bufexplorer'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-bufferline'
Plug 'leafgarland/typescript-vim'
Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

if has('unix')
	Plug 'ryanoasis/vim-devicons'
endif

call plug#end()

filetype plugin on
filetype indent on
let g:bufferline_echo = 0
let g:airline_powerline_fonts = 1
let g:NERDTreeLimitedSyntax = 1

if has('gui')
	colorscheme darkblue
else
	colorscheme evening
endif




"Удалять пустые пробелы на концах строк при открытии файла
"Путь для поиска файлов командами gf, [f, ]f, ^Wf, :find, :sfind, :tabfind и т.д.
"поиск начинается от директории текущего открытого файла, ищет в ней же
"и в поддиректориях. Пути для поиска перечисляются через запятую, например:
"set path=.,,**,/src,/usr/local
set path=.,,**


"НАСТРОЙКИ ОТСТУПА
set shiftwidth=4 " размер отступов (нажатие на << или >>)
set tabstop=4 " ширина табуляции
set softtabstop=4 " ширина 'мягкого' таба
set autoindent " ai - включить автоотступы (копируется отступ предыдущей строки)
set cindent " ci - отступы в стиле С
"set expandtab " преобразовать табуляцию в пробелы
set smartindent " Умные отступы (например, автоотступ после {)
" Для указанных типов файлов отключает замену табов пробелами и меняет ширину отступа
au FileType crontab,fstab,make set noexpandtab tabstop=4 shiftwidth=4


"НАСТРОЙКИ ВНЕШНЕГО ВИДА
" Установка шрифта (для Windows и Linux)
" настройка внешнего вида для GUI
if has('gui')
    " отключаем графические табы (останутся текстовые,
    " занимают меньше места на экране)
    set guioptions-=e
    " отключить показ иконок в окне GUI (файл, сохранить и т.д.)
    set guioptions-=T

    if has('win32')
        set guifont=Lucida_Console:h10:cRUSSIAN::
    else
        set guifont=Terminus\ 10
    endif
endif



"ВКЛЮЧЕНИЕ АВТОДОПЛНЕНИЯ ВВОДА (omnifunct)
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType tt2html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" Опции автодополнения - включаем только меню с доступными вариантами
" автодополнения (также, например, для omni completion может быть
" окно предварительного просмотра).
set completeopt=menu


"НАСТРОЙКИ ГОРЯЧИХ КЛАВИШ
"
" F2 и C-s - сохранить файл
map <F2> :w<cr>
imap <F2> <Esc>:w<cr>i

map <C-s> :w<cr>
imap <C-s> <Esc>:w<cr>i

"F3 - просмотр списка буферов
map <F3> <Esc>:BufExplorer<cr>
imap <F3> <Esc>:BufExplorer<cr>i

"F4 - выбор нового файла
map <F4> <Esc>:browse tabnew<CR>
imap <F4> <Esc>:browse tabnew<CR>
"C-t - новый таб
map <C-t> <Esc>:tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>

"C-F4 - закрыть таб
map <C-F4> <Esc>:browse tabnew<CR>
imap <C-F4> <Esc>:browse tabnew<CR>
"
"F5 - предыдущий таб
map <F5> :tabprev<cr>
imap <F5> <esc>:tabprev<cr>i
map <C-Left> :tabprev<cr>
imap <C-Left> <esc>:tabprev<cr>i

"F6 - следующий таб
map <F6> :tabnext<cr>
imap <F6> <esc>:tabnext<cr>i
map <C-Right> :tabnext<cr>
imap <C-Right> <esc>:tabnext<cr>i

"F10 - меню для выхода
set wildmenu
set wcm=<Tab>
menu Exit.quit     :quit<CR>
menu Exit.quit!    :quit!<CR>
menu Exit.save     :exit<CR>
map <F10> :emenu Exit.<Tab>
imap <F10> :emenu Exit.<Tab>

" C-l - включить-выключить нумерацию строк
map <C-l> :set<Space>nu!<CR>
imap <C-l> <Esc>:set<Space>nu!<CR>i

"Работа с буферами
"C-n предыдущий буфер
map <C-Up> :bn<cr>
imap <C-Up> <Esc>:bn<cr>i
"C-p след буфер
map <C-Down> :bp<cr>
imap <C-Down> <Esc>:bp<cr>i
"C-k закрыть буфер
map <C-k> :Sayonara<cr>
imap <C-k> <Esc>:Sayonara<cr>i

map <C-5> :split<cr>

"C-d - дублирование текущей строки
imap <C-d> <esc>yypi
" Ctrl-пробел для автодополнения
"inoremap <C-space> <C-x><C-o>
"" Вырезать-копировать-вставить через Ctrl
" CTRL-X - вырезать
vnoremap <C-x> "+x
" CTRL-C - копировать
vnoremap <C-c> "+y
" CTRL-V вставить под курсором
vnoremap <C-v>      "+gP
"" Отменить-вернуть через Ctrl
" отмена действия
noremap <C-Z> u
inoremap <C-Z> <C-O>u
" вернуть отменённое назад
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>


" плагин NERDTree - дерево каталогов)
map <F12> :NERDTreeToggle<cr>
vmap <F12> <esc>:NERDTreeToggle<cr>i
imap <F12> <esc>:NERDTreeToggle<cr>i



"" Переключение кодировок файла
   " Меню Encoding -->
        " Выбор кодировки, в которой читать файл -->
            set wildmenu
            set wcm=<Tab>
            menu Encoding.Read.utf-8<Tab> :e ++enc=utf8 <CR>
            menu Encoding.Read.windows-1251<Tab> :e ++enc=cp1251<CR>
            menu Encoding.Read.koi8-r<Tab> :e ++enc=koi8-r<CR>
            menu Encoding.Read.cp866<Tab> :e ++enc=cp866<CR>
            map <F7> :emenu Encoding.Read.<TAB>
        " Выбор кодировки, в которой читать файл <--

        " Выбор кодировки, в которой сохранять файл -->
            set wildmenu
            set wcm=<Tab>
            menu Encoding.Write.utf-8<Tab> :set fenc=utf8 <CR>
            menu Encoding.Write.windows-1251<Tab> :set fenc=cp1251<CR>
            menu Encoding.Write.koi8-r<Tab> :set fenc=koi8-r<CR>
            menu Encoding.Write.cp866<Tab> :set fenc=cp866<CR>
            map <F8> :emenu Encoding.Write.<TAB>
        " Выбор кодировки, в которой сохранять файл <--

        " Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) -->
            set wildmenu
            set wcm=<Tab>
            menu Encoding.End_line_format.unix<Tab><C-F8> :set fileformat=unix<CR>
            menu Encoding.End_line_format.dos<Tab><C-F8> :set fileformat=dos<CR>
            menu Encoding.End_line_format.mac<Tab><C-F8> :set fileformat=mac<CR>
            map <F9> :emenu Encoding.End_line_format.<TAB>
        " Выбор формата концов строк (dos - <CR><NL>, unix - <NL>, mac - <CR>) <--
    " Меню Encoding <--

    " Включение автоматического разбиения строки на несколько
    " строк фиксированной длины
    menu Textwidth.off :set textwidth=0<CR>
    menu Textwidth.on :set textwidth=78<CR>


if &term =~ '^screen'
   " tmux will send xterm-style keys when its xterm-keys option is on
     execute "set <xUp>=\e[1;*A"
     execute "set <xDown>=\e[1;*B"
     execute "set <xRight>=\e[1;*C"
     execute "set <xLeft>=\e[1;*D"
 endif
