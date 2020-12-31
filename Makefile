.PHONY : compile
compile :
	emacs --batch -f batch-byte-compile ./lisp/src/*.el

.PHONY : clean
clean :
	rm ./lisp/src/*.elc
