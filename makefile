SelfScript: SelfScript.l
	lex SelfScript.l
	gcc -o SelfScript lex.yy.c -ll

clean:
	rm SelfScript lex.yy.c
