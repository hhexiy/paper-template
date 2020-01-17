default: refdb refdb/all.bib
	pdflatex main
	bibtex main
	#pdflatex main
	#pdflatex main

refdb/all.bib: refdb/data/hhe.rb
	cd refdb && ./generate.rb bib out=all.bib

vega-lite:
	git clone https://github.com/vega/vega-lite && cd vega-lite && yarn && yarn build

clean:
	rm main.aux main.log main.out main.bbl main.blg main.pdf

refdb:
	git clone https://github.com/hhexiy/refdb

run:
	go main.pdf
