I˙SerializedBuffer˙ EventHandler˙ Cursor˙ ModTime˙   8˙EventHandler˙ 	UndoStack˙ 	RedoStack˙   '˙TEStack˙ Top˙ Size   *˙Element˙ Value˙ Next˙   B˙	TextEvent˙ C˙ 	EventType Deltas˙ Time˙   Z˙Cursor˙ Loc˙ LastVisualX CurSelection˙ OrigSelection˙ Num   ˙Loc˙ X Y   ˙[2]buffer.Loc˙ ˙  ˙[]buffer.Delta˙ ˙  0˙Delta˙ Text
 Start˙ End˙   ˙Time˙   ţv˙d   d   
˙b d     ŮŻ	){ŔŮJ f   f   
d f     ŮŻ	 hĺJ f f ˙ ˙   ţŠset runtimepath^=${XDG_CONFIG_HOME}/vim
set runtimepath+=${XDG_DATA_HOME}/vim
set runtimepath+=${XDG_CONFIG_HOME}/vim/after

set packpath^=$XDG_DATA_HOME/vim,$XDG_CONFIG_HOME/vim
set packpath+=$XDG_CONFIG_HOME/vim/after,$XDG_DATA_HOME/vim/after

let g:netrw_home = $XDG_DATA_HOME."/vim"
call mkdir($XDG_DATA_HOME."/vim/spell", 'p')
set viewdir=$XDG_DATA_HOME/vim/view | call mkdir(&viewdir, 'p')

set backupdir=$XDG_CACHE_HOME/vim/backup | call mkdir(&backupdir, 'p')
set directory=$XDG_CACHE_HOME/vim/swap   | call mkdir(&directory, 'p')
set undodir=$XDG_CACHE_HOME/vim/undo     | call mkdir(&undodir,   'p')

if !has('nvim') | set viminfofile=$XDG_STATE_HOME/vim/viminfo | endif
f ˙     ŮŻ	-PJ       ˙b    ŮŻ	OJ 