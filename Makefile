

SRC=$(wildcard *.tex)
TARGET=$(SRC:.tex=.pdf)

default: $(TARGET)

%.pdf: %.bib
%.pdf: %.tex
	@pdflatex $^ && bibtex phd_research_proposal && pdflatex $^ && pdflatex $^ || \
        (\
            echo "*********************"; \
            echo "****** FAILED *******"; \
            echo "*********************"; \
        )
        
