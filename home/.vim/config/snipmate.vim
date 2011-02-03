"
" Snipmate
"

" path to 'private' snippets
let g:private_snippets_dir = "~/.vim/snippets/"

function! ListKnownSnippetLanguageTypes(A, L, P)
    let filesanddirs = split(globpath(g:private_snippets_dir, a:A . "*"), "\n")
    let dirsonly = []
    for f in filesanddirs
        if isdirectory(f)
            let each = split(f, '/')
            let dirsonly = add(dirsonly, each[-1])
        end
    endfor
    return dirsonly
endfunction

function! ReloadSnippets(type)
    call ResetSnippets()
    if a:type != ""
        call ExtractSnips(g:private_snippets_dir . a:type, a:type)
    else
        let alltypes = ListKnownSnippetLanguageTypes("", "", "")
        for type in alltypes
            call ExtractSnips(g:private_snippets_dir . type, type)
        endfor
    endif
endfunction
