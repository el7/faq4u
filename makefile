# CS 411 - Group 31
# Cezary Wojcik, David Graffeo, Kevin Bergman
# Project 2

default: project2

project2: project2.tex
	@echo "Creating PDF for project2.tex..."
	@latex project2.tex
	@latex project2.tex
	@dvips -R -Poutline -t letter project2.dvi -o project2.ps
	@ps2pdf project2.ps
	@rm *.aux *.dvi *.log *.out *.ps
