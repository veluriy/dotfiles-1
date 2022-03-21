let s:floating_window_width_ratio = 1.0
let s:floating_window_height_ratio = 0.7

call denite#custom#option('default', {
      \ 'auto_action': 'preview',
      \ 'prompt': '> ',
      \ 'floating_preview': v:true,
      \ 'split': 'floating',
      \ 'vertical_preview': v:true,
      \ 'preview_height': float2nr(&lines * s:floating_window_height_ratio),
      \ 'preview_width': float2nr(&columns * s:floating_window_width_ratio / 2),
      \ 'wincol': float2nr((&columns - (&columns * s:floating_window_width_ratio)) / 2),
      \ 'winheight': float2nr(&lines * s:floating_window_height_ratio),
      \ 'winrow': float2nr((&lines - (&lines * s:floating_window_height_ratio)) / 2),
      \ 'winwidth': float2nr(&columns * s:floating_window_width_ratio / 2),
      \ })

nmap <silent> gr :<C-u>DeniteProjectDir grep:::<C-r><C-w><CR>
