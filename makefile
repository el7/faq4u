# CS 411 - Group 31
# Cezary Wojcik, David Graffeo, Kevin Bergman
# Project 2

SRC =  faq4u.tex
SRC += README
SRC += README.md
SRC += makefile
SRC += putty1.png putty2.png


default: all

all: faq4u clean


faq4u: faq4u.tex 
	@echo "Creating PDF for faq4u.tex..."
	@latex faq4u.tex
	@latex faq4u.tex
	@dvips -R -Poutline -t letter faq4u.dvi -o faq4u.ps
	@ps2pdf faq4u.ps

clean:
	rm -rf *.aux *.dvi *.log *.out *.ps *.toc

clean_all:
	rm -rf *.aux *.dvi *.log *.out *.ps *.toc faq4u.pdf

tar:
	tar cvjf faq4u.tar.bz2 ${SRC}
