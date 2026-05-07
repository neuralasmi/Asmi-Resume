#!/bin/bash
# Compile resume.tex to PDF using pdflatex
pdflatex -interaction=nonstopmode -halt-on-error resume.tex > /tmp/pdflatex.log 2>&1
if [ $? -eq 0 ]; then
    echo "Build successful"
    ls -la resume.pdf
else
    echo "Build failed:"
    cat /tmp/pdflatex.log
fi
