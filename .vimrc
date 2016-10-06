" vim-javascript {{{
NeoBundleLazy 'pangloss/vim-javascript', {'filetypes': ['html', 'php', 'javascript']}
"}}}

NeoBundleFetch 'tokuhirom/jsref'
NeoBundleFetch 'mustardamus/jqapi'
NeoBundleLazy 'thinca/vim-ref', {'depends': 'mojako/ref-sources.vim', 'on_func': 'ref#K', 'on_map': '<Plug>(ref-keyword)'}
let g:ref_no_default_key_mappings = 1
inoremap <silent><C-k> <C-o>:call<Space>ref#K('normal')<CR><ESC>
nmap <silent>K <Plug>(ref-keyword)
let s:hooks = neobundle#get_hooks('vim-ref')
function! s:hooks.on_source(bundle) abort "{{{
    let g:ref_cache_dir       = s:envHome .'/.vim/vim-ref/cache'
    let g:ref_detect_filetype = {
    \    'html':       ['javascript', 'jquery'],
    \    'javascript': ['javascript', 'jquery']}
    let g:ref_javascript_doc_path = s:envHome .'/.vim/bundle/jsref/htdocs'
    let g:ref_jquery_doc_path     = s:envHome .'/.vim/bundle/jqapi'
    let g:ref_use_cache           = 1
    let g:ref_use_vimproc         = 1
endfunction "}}}
