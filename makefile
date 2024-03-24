SelfScript: SelfScript.l
	flex SelfScript.l
	gcc -o tokens SelfScanner.c -lfl

test: SelfScript
	./tokens Example.self

clean:
	rm -f tokens lex.yy.c