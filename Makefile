# LaTeX CV Makefile — builds all 3 versions (PT, EN, EN no-photo)
#
# Usage:
#   make          build all PDFs
#   make pt       Portuguese CV with photo (CV_PT.pdf)
#   make en       English CV with photo (CV_EN.pdf)
#   make en-nophoto  English CV without photo, ATS-friendly (CV_EN_NP.pdf)

LATEX = pdflatex
LATEX_FLAGS = -interaction=nonstopmode
RM = rm -f

PORTUGUESE = CV_PT
ENGLISH = CV_EN
ENGLISH_NO_PHOTO = CV_EN_NP

PDFS = $(PORTUGUESE).pdf $(ENGLISH).pdf $(ENGLISH_NO_PHOTO).pdf
PHOTO = square_photo_compressed.jpg

all: $(PDFS)
	$(MAKE) clean

pt: $(PORTUGUESE).pdf
	$(MAKE) clean

en: $(ENGLISH).pdf
	$(MAKE) clean

en-nophoto: $(ENGLISH_NO_PHOTO).pdf
	$(MAKE) clean

$(PORTUGUESE).pdf: $(PORTUGUESE).tex $(PHOTO)
	$(LATEX) $(LATEX_FLAGS) $(PORTUGUESE).tex
	$(LATEX) $(LATEX_FLAGS) $(PORTUGUESE).tex

$(ENGLISH).pdf: $(ENGLISH).tex $(PHOTO)
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH).tex
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH).tex

$(ENGLISH_NO_PHOTO).pdf: $(ENGLISH_NO_PHOTO).tex
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH_NO_PHOTO).tex
	$(LATEX) $(LATEX_FLAGS) $(ENGLISH_NO_PHOTO).tex

clean:
	$(RM) *.aux *.log *.out *.toc *.synctex.gz

fclean: clean
	$(RM) $(PDFS)

re:
	$(MAKE) fclean
	$(MAKE) all

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Available targets (each compiles the PDF, then removes auxiliary files):"
	@echo "  all         Compile PT, EN and EN no-photo versions"
	@echo "  pt          Compile Portuguese CV (CV_PT.pdf)"
	@echo "  en          Compile English CV (CV_EN.pdf)"
	@echo "  en-nophoto  Compile English CV without photo (CV_EN_NP.pdf)"
	@echo "  clean       Remove intermediate LaTeX auxiliary files"
	@echo "  fclean      Remove intermediate files and compiled PDFs"
	@echo "  re          Rebuild all CVs from scratch"
	@echo "  help        Display this help menu"

.PHONY: all pt en en-nophoto clean fclean re help
