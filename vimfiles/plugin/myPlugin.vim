function InStr()
	:%s/^/'/g
	:%s/$/',/g
	:execute "normal gg I(\<Esc>"
	:execute "normal G $"
	:execute "normal x"
	:execute "normal a)"
endfunction
