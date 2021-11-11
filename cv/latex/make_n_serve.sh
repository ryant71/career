#!/bin/bash
pdflatex cv.tex
python -m http.server --directory . 8080
