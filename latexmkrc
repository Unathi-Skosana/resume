@default_files = ('edelgas-resume.tex');

$pdflatex= 'xelatex %O -synctex=1 --shell-escape %S';
$pdf_mode = 5;
$pdf_previewer = 'start zathura';
$clean_ext = "%R.acn %R.xdv %R.acr %R.alg %R.aux %R.auxlock %R.bak %R.bbl %R.blg %R.dvi %R.fls %R.glg %R.glo %R.gls %R.idx %R.ist %R.ilg %R.ind %R.log %R.out %R.pdf %R.ps %R.sav %R.swp %R.toc %R.run.xml %R-blx.bib %R_latexmk %R~ %R.pgf-plot.%R"
