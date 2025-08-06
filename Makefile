# Resume Makefile

# Variables
TEX_FILE = resume.tex
PDF_FILE = resume.pdf
AUX_FILES = *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz

# Default target
all: build

# Build the PDF
build:
	pdflatex $(TEX_FILE)

# Clean auxiliary files
clean:
	rm -f $(AUX_FILES)

# Clean everything including PDF
clean-all: clean
	rm -f $(PDF_FILE)

# Watch mode - rebuild on changes
watch:
	latexmk -pdf -pvc $(TEX_FILE)

# View the PDF (macOS)
view: build
	open $(PDF_FILE)

# Check if PDF builds without errors
check:
	pdflatex -halt-on-error $(TEX_FILE) > /dev/null

# Help
help:
	@echo "Available targets:"
	@echo "  build     - Build the PDF"
	@echo "  clean     - Remove auxiliary files"
	@echo "  clean-all - Remove all generated files"
	@echo "  watch     - Auto-rebuild on changes"
	@echo "  view      - Build and open PDF"
	@echo "  check     - Check if PDF builds without errors"
	@echo "  help      - Show this help"

.PHONY: all build clean clean-all watch view check help