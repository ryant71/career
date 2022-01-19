#!/bin/bash
pdflatex cv.tex
python3 -m http.server --directory . 8080
