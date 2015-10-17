#!/usr/bin/env bash
pdflatex -shell-escape -interaction=nonstopmode main.tex
bibtex main.aux 
pdflatex -shell-escape -interaction=nonstopmode main.tex
pdflatex -shell-escape -interaction=nonstopmode main.tex