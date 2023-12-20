cit:
	jupyter-book build ./ -W -n --keep-going

book:
	jupyter-book build ./

pdf:
	jupyter-book build ./ --builder pdflatex

website: book
	ghp-import -n -p -f _build/html

clean:
	jupyter-book clean ./
