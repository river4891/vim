function! CheckDir(dir)
  if !isdirectory(a:dir)
    let confirm = input("dir " . a:dir . " no exists, are you create?(y/n) ")
    if confirm == "y"
      call Mkdir(a:dir)
    else
      echo "cancel."
      return
    endif
  endif
endfunction

function! Mkdir(dir)
  call mkdir(a:dir)
  let l:parent = fnamemodify(a:dir, ':h')
  if !isdirectory(a:dir)
    call Mkdir(parent) 
  endif
endfunction

autocmd BufWritePre * call CheckDir(expand('%:p:h'))

