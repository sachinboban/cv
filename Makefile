# makefile for pdflatex

# Root diectory
REPO_ROOT := $(shell pwd)

# Source directory
SRC_DIR := $(REPO_ROOT)/src

# Output directory
OUTPUT_DIR := $(REPO_ROOT)/out

# Output file name
OUTPUT_FILE := sachinboban.pdf

# Make pdf command
MAKE_PDF := pdflatex

# Make pdf command options
OPT := -output-directory $(OUTPUT_DIR)

PDF_OPT := -output-directory $(OUTPUT_DIR)

cv.pdf: $(SRC_DIR)/cv.tex $(OUTPUT_DIR)/
	cd $(SRC_DIR) && $(MAKE_PDF)  $(OPT)  cv.tex
	cp -f $(OUTPUT_DIR)/cv.pdf $(REPO_ROOT)/$(OUTPUT_FILE)

$(OUTPUT_DIR)/:
	mkdir -p $(OUTPUT_DIR)

clean:
	rm -rf $(OUTPUT_DIR)
