" Helix key mappings for vscodevim

" Movement
noremap B <Esc>maBmbviWvEviWovhmc`bhmblvh]`o

" Search
noremap n <Esc>ngn
nnoremap N Ngn
xnoremap N ovNgn
vnoremap * y/<C-R>"<CR>N

" Space mode
noremap <Space>k gh
vnoremap <Space>y "*ygv
vnoremap <Space>Y "*ygv
nnoremap <Space>y v"*y
nnoremap <Space>Y v"*y

" Goto mode
noremap gd <Esc>gd
noremap gn <Esc>:bn<CR>
noremap gp <Esc>:bp<CR>
