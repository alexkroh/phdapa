

SRC=$(wildcard *.tex)
TARGET=$(SRC:.tex=.pdf)

default: $(TARGET)

%.pdf: %.tex
	@pdflatex $^ || \
        (\
            echo "*********************"; \
            echo "****** FAILED *******"; \
            echo "*********************"; \
        )
        
