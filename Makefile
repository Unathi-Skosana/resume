.PHONY: all clean prepare main release preview

all: prepare main release preview

main: build/resume.pdf

build/resume.pdf: resume.tex
	latexmk -f -quiet -xelatex -output-directory="./build"

preview:
	latexmk -pvc

clean:
	rm -rf build release
	latexmk -c

prepare:
	mkdir -p build release

release:
	cp build/*.pdf release
