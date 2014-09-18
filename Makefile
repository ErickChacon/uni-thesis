#
# makefile
#
# Makefile for LaTeX Documents
#

SHELL=sh

#
# Base name of the document
#
TARGET=MyThesis

#
# Sources
#
SOURCES=*.tex

# 
# File-extensions to DELETE recursive from here
# 
EXTENSION=aux toc idx ind ilg log out lof lot lol bbl blg



#
# Targets
# 
all: $(TARGET).pdf


#
# Portable Document Format (PDF)
#
$(TARGET).pdf: $(SOURCES)
	@echo "-------------------------------------------------------------------------------"
	@echo "-- Running 'pdflatex $(TARGET).tex'"
	@echo "-------------------------------------------------------------------------------"
	@pdflatex $(TARGET).tex

	@echo ""
	@echo "-------------------------------------------------------------------------------"
	@echo "-- Running 'bibtex $(TARGET)'"
	@echo "-------------------------------------------------------------------------------"
	@bibtex $(TARGET)

	@echo ""
	@echo "-------------------------------------------------------------------------------"
	@echo "-- Rerunning 'pdflatex $(TARGET).tex' to get cross-references right"
	@echo "-------------------------------------------------------------------------------"
	@pdflatex $(TARGET).tex

	@latex_count=5 ; \
	while egrep -s 'Rerun (LaTeX|to get cross-references right)' \
		$(TARGET).log && [ $$latex_count -gt 0 ] ;\
	do \
		echo "";\
		echo "-------------------------------------------------------------------------------";\
		echo "-- Rerunning 'pdflatex $(TARGET).tex' to get cross-references right" ;\
		echo "-------------------------------------------------------------------------------";\
		pdflatex $(TARGET).tex ;\
		latex_count=`expr $$latex_count - 1` ;\
	done

#
# Show in acroread
#
acroread: $(TARGET).pdf
	acroread $(TARGET).pdf&

#
# Show in kpdf
#
kpdf: $(TARGET).pdf
	kpdf $(TARGET).pdf&

#
# Clean
#
clean:
	@for EXT in $(EXTENSION); do \
		find . -name \*\.$${EXT} -exec rm -vf \{\} \; ;\
	done
	@rm -vf $(TARGET).pdf
