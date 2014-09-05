" Disable Command-B so we can remap it
macmenu Tools.Make key=<nop>
" remap Command-B to "Jump to Definition" like PyCharm
nnoremap <silent> <D-b> <c-]>
" remap Command-[ to "Back to Previous Definition" like PyCharm
nnoremap <silent> <D-[> <c-t>
