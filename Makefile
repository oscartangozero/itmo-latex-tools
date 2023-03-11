.PHONY: example example-report example-flowchart install uninstall

TARGETS := itmo-report.cls itmo-flowchart.sty
TEMPLATES := example-report.tex example-flowchart.tex

INSTALL_TARGETS_DIR=~/texmf/tex/latex/local
INSTALL_TEMPLATES_DIR=~/templates

examples: example-report example-flowchart
example-report: out/example-report.pdf
example-flowchart: out/example-flowchart.pdf

out:
	@mkdir -p out

out/example-%.pdf: example-%.tex | out
	latexmk -pdf -shell-escape -outdir=out -quiet $<

install: $(TARGETS) $(TEMPLATES)
	cp $(TARGETS) $(INSTALL_TARGETS_DIR)
	cp $(TEMPLATES) $(INSTALL_TEMPLATES_DIR)

uninstall:
	cd $(INSTALL_TARGETS_DIR) && rm $(TARGETS)
	cd $(INSTALL_TEMPLATES_DIR) && rms $(TEMPLATES)

clean:
	rm -rf out
