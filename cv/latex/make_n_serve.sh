#!/bin/bash

if [[ -x $(which tectonic) ]]; then
	echo "Running tectonic"
	tectonic cv.tex
elif [[ -x $(which pdflatex) ]]; then
	echo "Running pdflatex"
	pdflatex cv.tex
else
	echo "No compilers found"
	exit 1
fi

python3 -m http.server --directory . 8080
