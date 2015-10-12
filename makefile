.DEFAULT_GOAL := main.pdf

LATEXMK := latexmk
LATEXMKFLAGS := -pdf -pdflatex="pdflatex --shell-escape %O %S -interaction=nonstopmode"

main.pdf: main.tex
	$(LATEXMK) $(LATEXMKFLAGS) $<

# clean up, leave pdfs
.PHONY: clean
clean:
	$(LATEXMK) $(LATEXMKFLAGS) -c main.tex

# clean up, remove pdfs
.PHONY: cleanall
cleanall: clean
	$(RM) *.pdf
	$(RM) *.spl
	$(RM) -r auto
	$(RM) -r fig/auto
