"
"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|                          
"
"

" vim nvim 分岐
if has('nvim')
	let g:vim_home = expand('~/.nvim')
	let g:rc_dir = expand('~/.nvim/rc')
else
	let g:vim_home = expand('~/.vim')
	let g:rc_dir = expand('~/.vim/rc')
endif

" rcファイル読み込み関数
function! s:source_rc(rc_file_name)
	let rc_file = expand(g:rc_dir . '/' . a:rc_file_name)
	if filereadable(rc_file)
		execute 'source' rc_file
	endif
endfunction

" ----------------------------------------------------------

" 読み込み
call s:source_rc('init.rc.vim')
call s:source_rc('map.rc.vim')
call s:source_rc('dein.rc.vim')
call s:source_rc('coc.rc.vim')
call s:source_rc('defx.rc.vim')
call s:source_rc('defx-git.rc.vim')
