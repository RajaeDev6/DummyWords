
" DUMMY WORD PLUGIN

" setting the default keymap
let g:dummywords_default_keymap = '<leader>hh'
" setting path to default text
let g:dummywords_default_file = expand('<sfile>:p:h:h')."/lorem-text"
" Function to insert the text
function! Insert_text() abort
	let file = Get_custom_file()
	" checking if file is valid
	if file ==# ''
		let file = g:dummywords_default_file
	elseif !filereadable(file)
		echoerr "Error: File not found or cannot be read: " . file
		return
	endif

	let lines = readfile(file)
	if len(lines) == 0
		echoerr "Error: File is empty."
		return
	endif

	silent call Start_insert()
	silent call Insert_lines(lines)

endfunction

function! Start_insert() abort
	silent! normal! i
endfunction

" insert the lines into the buffer
function! Insert_lines(lines) abort
	for line in a:lines
		let escaped_line = substitute(substitute(line, "\n", "\\r", "g"), "\t", "\\t", "g")
		let cmd = "a\<c-r>=substitute(substitute('".escaped_line."', '''', '', 'g'), '\"', '', 'g') . \"\\n\"\<cr>"
		execute 'normal! '.cmd
	endfor
endfunction

"Getting the custom file from the user
function! Get_custom_file() abort
	if exists("g:dummywords_custom_file")
		return g:dummywords_custom_file
	endif

	return ''
endfunction


" checking if file exists
if exists("g:dummywords_keymap_user")
	let keymap = g:dummywords_keymap_user
else
	let keymap = g:dummywords_default_keymap
endif


execute 'nnoremap <silent> ' . keymap . ' :call Insert_text()<CR>'

command! InsertText :call Insert_text()


