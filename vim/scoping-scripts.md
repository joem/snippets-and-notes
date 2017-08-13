# Scoping in scripts


Use `s:` to scope a function to the script namespace, like so:

```vim
function! s:GrepOperator(type)
  ...
endfunction
```

Then use `<SID>` to call that function from within the script:

```vim
vnoremap <leader>g :<C-U>call <SID>GrepOperator(visualmode())<cr>
```


