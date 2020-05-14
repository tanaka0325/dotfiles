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
set cmdheight=1
"コマンド(の一部)を画面の最下行に表示する
set showcmd
"全角の記号を正しく表示する
set ambiwidth=double
" ルーラー表示
set ruler

" transparent
"highlight Normal ctermbg=none
"highlight NonText ctermbg=none
"highlight LineNr ctermbg=none
"highlight Folded ctermbg=none
"highlight EndOfBuffer ctermbg=none

