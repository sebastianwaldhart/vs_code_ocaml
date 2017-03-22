BUILDER = ocamlbuild

SRCDIR = src

ALL = main

/=/

all: $(ALL)

%.debug: src/%.ml
	$(BUILDER) -tag 'debug' -use-ocamlfind $(SRCDIR)$/$(*F).d.byte -I $(SRCDIR)
	@mkdir -p out/debug
	@cp -fu _build/$(SRCDIR)$/$(*F).d.byte out/debug/$(*F).d.byte
	@unlink $(*F).d.byte

%.byte: src/%.ml
	$(BUILDER).byte -use-ocamlfind $(SRCDIR)$/$@ -I $(SRCDIR)
	@mkdir -p out/byte
	@cp -fu _build/$(SRCDIR)$/$@ out/byte/$@ 
	@unlink $@

%.native: src/%.ml
	$(BUILDER).native -use-ocamlfind $(SRCDIR)$/$@ -I $(SRCDIR)
	@mkdir -p out/bin
	@cp -fu _build/$(SRCDIR)$/$@ out/bin/$(*F)
	@unlink $@

clean: 
	$(BUILDER) -clean
	@rm -rf out/

%: %.native %.byte %.debug
	@echo "build $@ as .natice .byte and .debug"