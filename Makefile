doc = plan9
workdir = aux

default:
	rst2beamer --theme=plan9 --documentoptions=11.5pt $(doc).rst >$(workdir)/$(doc).tex && pdflatex --output-directory=$(workdir) $(workdir)/$(doc).tex 
	mv $(workdir)/$(doc).pdf .

clean:
	rm -f $(workdir)/*
