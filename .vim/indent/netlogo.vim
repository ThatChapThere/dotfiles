function! NetlogoIndent()
	let previousLineNumber=v:lnum-1
	let currentLine=getline(v:lnum)
	let previousLine=getline(previousLineNumber)
	let previousIndentation = indent(previousLineNumber)
	if previousLine=~'^to\>'
		return 2
	elseif previousLine=~'\[$'
		return 2 + previousIndentation
	elseif currentLine=~'^\s*end$'
		return -2 + previousIndentation
	elseif currentLine=~'^\s*\]$'
		return -2 + previousIndentation
	endif
	return -1
endfunction

set indentkeys='=end,o,O,[,]'
set indentexpr=NetlogoIndent()
