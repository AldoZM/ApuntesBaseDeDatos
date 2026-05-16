PUML_JAR  ?= plantuml.jar
PUML_SRC  := images/src_plantuml
PUML_OUT  := images/diagrams
PUML_FILES := $(wildcard $(PUML_SRC)/*.puml)
PNG_FILES  := $(patsubst $(PUML_SRC)/%.puml,$(PUML_OUT)/%.png,$(PUML_FILES))
MAIN      := main

.PHONY: all diagrams clean

all: diagrams $(MAIN).pdf

diagrams: $(PNG_FILES)

$(PUML_OUT)/%.png: $(PUML_SRC)/%.puml
	java -jar $(PUML_JAR) -tpng -o $(CURDIR)/$(PUML_OUT) $<

$(MAIN).pdf: $(MAIN).tex preamble.tex chapters/*.tex
	pdflatex -interaction=nonstopmode $(MAIN).tex
	pdflatex -interaction=nonstopmode $(MAIN).tex

clean:
	rm -f *.aux *.log *.toc *.out *.fls *.fdb_latexmk *.synctex.gz
	rm -f $(MAIN).pdf

cleanall: clean
	rm -f $(PUML_OUT)/*.png
