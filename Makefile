# LaTeX CV Makefile

# Commands
LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode
RM = rm -f

# Targets
PORTUGUESE = CV_PT
ENGLISH = CV_EN

all: pt en
	$(MAKE) clean

pt: $(PORTUGUESE).pdf

en: $(ENGLISH).pdf

$(PORTUGUESE).pdf: $(PORTUGUESE).tex
	$(LATEX) $(LATEX_FLAGS) $(PORTUGUESE).tex
	$(LATEX) $(LATEX_FLAGS) $(PORTUGUESE).tex

$(ENGLISH).pdf: $(ENGLISH).tex
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH).tex
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH).tex

clean:
	$(RM) *.aux *.log *.out *.toc *.synctex.gz

fclean: clean
	$(RM) $(PORTUGUESE).pdf $(ENGLISH).pdf

re:
	$(MAKE) fclean
	$(MAKE) all

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets:"
	@echo "  all      Compile both PT and EN versions and clean intermediate files"
	@echo "  pt       Compile Portuguese CV (CV_PT.pdf)"
	@echo "  en       Compile English CV (CV_EN.pdf)"
	@echo "  clean    Remove intermediate LaTeX auxiliary files"
	@echo "  fclean   Remove intermediate files and compiled PDFs"
	@echo "  re       Rebuild all CVs from scratch"
	@echo "  help     Display this help menu"

.PHONY: all pt en clean fclean re help
