" terminalでのポップアップの色を赤に
hi Pmenu ctermbg=0
"タイトルをウインドウ枠に表示する
set title
"行番号を表示する
set number
"カーソルが何行目のに置かれているかを表示。
set ruler
"非表示文字の表示
set list
"Listモードに使われる文字を設定する。詳しくは「:help listchars」で
set listchars=tab:>-,trail:-
"オンの時、コマンドライン補完が拡張モードで行われる。(？)
set wildmenu
"シンタックスハイライトを有効にする
syntax on
"検索結果文字列のハイライトを有効にする
set hlsearch
"オンの時は、ウインドウの幅より長い行は折り返されて表示される。
set wrap
"入力されているテキストの最大幅。行がそれより長くなると、改行される。0にすると無効。
set textwidth=0
"カーソル行をハイライト
set cursorline

"最下ウインドウにいつステータス行が表示されるのか設定する。
"　　　　0: 全く表示しない
"        1: ウインドウの数が2以上の時のみ表示
"        2: 常に表示
set laststatus=2
"コマンドラインの高さ
set cmdheight=2
"コマンド(の一部)を画面の最下行に表示する
set showcmd
"全角の記号を正しく表示する
set ambiwidth=double

"閉じ括弧が入力されたといき、対応する開き括弧に僅かの間ジャンプする。
set showmatch
"対応する括弧の表示時間を2にする
set matchtime=2
"新しい行を開始したとき、現在の行とインデントを揃える
set autoindent
"いい感じでインデントしてくれる。
set smartindent
"C用のindent
set cindent
"<TAB>の挿入や<BS>の使用等で、<TAB>が対応する空白の数
set softtabstop=4
"<TAB>が対応する空白の数
set tabstop=4
"インデントの各段階に使われる空白の数
set shiftwidth=4
"Insertモードで<TAB>を入れるとき、代わりに適切な数の空白を使う
set expandtab
" クリップボードに
set clipboard+=unnamed
" pasteしたときにautoindentがオンでもオフでペーストできる
"set paste
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" ファイルに折りたたみがある場合、折りたたまれた状態で、ファイルを開く
set foldlevel=0
" ルーラー表示
set ruler

"カラースキーマ
"colorscheme wombat
colorscheme Tomorrow-Night-Bright

" 自動折返しを日本語対応
set formatoptions+=mM
