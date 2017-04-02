squareBrackets := method(
	list := List clone
	if(call message arguments asString containsSeq("square") not, return call message arguments)
	call message arguments foreach(arg,
		aArg := if(arg asString beginWithSeq("squareBrackets"),doMessage(arg),arg)
		list append(aArg)
	)
	list
)
