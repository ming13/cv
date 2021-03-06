TEX_BUILDER = xelatex

DOCUMENT_BUILDER = latexmk
DOCUMENT_BUILDER_FLAGS = \
	-pdf \
	-pdflatex="$(TEX_BUILDER)"


ENGLISH_FILENAME = english
RUSSIAN_FILENAME = russian


english:
	$(DOCUMENT_BUILDER) $(DOCUMENT_BUILDER_FLAGS) $(ENGLISH_FILENAME).tex

russian:
	$(DOCUMENT_BUILDER) $(DOCUMENT_BUILDER_FLAGS) $(RUSSIAN_FILENAME).tex

clean:
	$(DOCUMENT_BUILDER) -C
