index.html : $(wildcard articles/*.html)
	touch index.html

articles/%.html : src/%.md
	lowdown $< $@;
