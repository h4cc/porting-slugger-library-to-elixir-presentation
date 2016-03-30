.PHONY: all generate present

all:
	@echo "Hi there"

generate:
	pandoc -t beamer -V theme:default -V colortheme:beaver -o slides.pdf --highlight-style=tango slides.md

present:
	pdfpc -s slides.pdf
