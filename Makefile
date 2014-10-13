

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
        
literature_review.pdf: literature_review.tex
	@pdflatex $^
	@bibtex literature_review
	@pdflatex $^
	@pdflatex $^
