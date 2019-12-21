BUILD := \
	resume \


DEPS := \
	awesome-cv.cls \
	fontawesome.sty \


LATEX  := latexmk

LATEXOPTS := -f -pdf -lualatex -use-make
TARGETS := $(patsubst %, %.pdf, $(BUILD))

# phony targets

all: $(TARGETS)

clean:
	rm -rf *.pdf *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc

.PHONY: all clean

# main targets

resume.pdf: resume.tex $(DEPS)
	$(eval SRC_$@ = $(patsubst %.tex, %, $<))
	$(LATEX) $(LATEXOPTS) $(SRC_$@)
	$(LATEX) $(LATEXOPTS) $(SRC_$@)
	$(LATEX) $(LATEXOPTS) $(SRC_$@)
