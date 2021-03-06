" Color palette
let s:red = { "cterm": 204, "gui": "#ff6188" }
let s:orange = { "cterm": 209, "gui": "#ff9867" }
let s:yellow = { "cterm": 221, "gui": "#ffd866" }
let s:green = { "cterm": 150, "gui": "#a9dc76" }
let s:cyan = { "cterm": 116, "gui": "#78dce8" }
let s:magenta = { "cterm": 147, "gui": "#ab9df2" }

let s:white = { "cterm": 231, "gui": "fcfcfa" }
let s:light_grey = { "cterm": 250, "gui": "#bcbcbc" }
let s:dark_grey = { "cterm": 59, "gui": "#5f5f5f" }
let s:darker_grey = { "cterm": 238, "gui": "#444444" }
let s:light_charcoal = { "cterm": 236, "gui": "#303030" }
let s:charcoal = { "cterm": 235, "gui": "#222222" }

function! s:add(fg, bg, style)
  return [ a:fg["gui"], a:bg["gui"], a:fg["cterm"], a:bg["cterm"], a:style ]
endfunction

let s:palette = {}

" Normal mode
let s:palette.normal = {
      \   'airline_a': s:add(s:charcoal, s:cyan, 'bold'),
      \   'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
      \   'airline_c': s:add(s:cyan, s:darker_grey, 'none'),
      \   'airline_x': s:add(s:cyan, s:light_charcoal, 'none'),
      \   'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
      \   'airline_z': s:add(s:charcoal, s:cyan, 'bold'),
      \ }
let s:palette.normal_modified = {
      \   'airline_c': s:add(s:white, s:darker_grey, 'none'),
      \ }


" Insert mode
let s:palette.insert = {
      \   'airline_a': s:add(s:charcoal, s:red, 'bold'),
      \   'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
      \   'airline_c': s:add(s:red, s:darker_grey, 'none'),
      \   'airline_x': s:add(s:red, s:light_charcoal, 'none'),
      \   'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
      \   'airline_z': s:add(s:charcoal, s:red, 'bold'),
      \ }
let s:palette.insert_modified = {
      \   'airline_c': s:add(s:white, s:darker_grey, 'none'),
      \ }

" Command
let s:palette.commandline = {
      \   'airline_a': s:add(s:charcoal, s:green, 'bold'),
      \   'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
      \   'airline_c': s:add(s:green, s:darker_grey, 'none'),
      \   'airline_x': s:add(s:green, s:light_charcoal, 'none'),
      \   'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
      \   'airline_z': s:add(s:charcoal, s:green, 'bold'),
      \ }

" Replace mode
let s:palette.replace = {
      \   'airline_a': s:add(s:charcoal, s:orange, 'bold'),
      \   'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
      \   'airline_c': s:add(s:orange, s:darker_grey, 'none'),
      \   'airline_x': s:add(s:orange, s:light_charcoal, 'none'),
      \   'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
      \   'airline_z': s:add(s:charcoal, s:orange, 'bold'),
      \ }
let s:palette.replace_modified = {
      \   'airline_c': s:add(s:white, s:darker_grey, 'none'),
      \ }

" Visual mode
let s:palette.visual = {
      \   'airline_a': s:add(s:charcoal, s:magenta, 'bold'),
      \   'airline_b': s:add(s:light_grey, s:dark_grey, 'none'),
      \   'airline_c': s:add(s:magenta, s:darker_grey, 'none'),
      \   'airline_x': s:add(s:magenta, s:light_charcoal, 'none'),
      \   'airline_y': s:add(s:light_grey, s:darker_grey, 'none'),
      \   'airline_z': s:add(s:charcoal, s:magenta, 'bold'),
      \ }
let s:palette.visual_modified = {
      \   'airline_c': s:add(s:white, s:darker_grey, 'none'),
      \ }

" Inactive window
let s:IA = s:add(s:light_grey, s:darker_grey, 'none')
let s:palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let s:palette.inactive_modified = {
      \   'airline_c': s:add(s:white, s:darker_grey, 'none'),
      \ }

" CtrlP
if get(g:, 'loaded_ctrlp', 0)
  let s:palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
        \ s:add(s:yellow, s:dark_grey, 'none'),
        \ s:add(s:yellow, s:darker_grey, 'none'),
        \ s:add(s:charcoal, s:cyan, 'bold') )
endif

let g:airline#themes#monokai_tasty#palette = s:palette
