LATEXMK=latexmk
FLAGS=-pdf -interaction=nonstopmode

all: python ai mlops

python:
	$(LATEXMK) $(FLAGS) -output-directory=output python/resume.tex

ai:
	$(LATEXMK) $(FLAGS) -output-directory=output ai/resume.tex

mlops:
	$(LATEXMK) $(FLAGS) -output-directory=output mlops/resume.tex

clean:
	$(LATEXMK) -C

distclean:
	rm -rf output/*