.PHONY: create-resume
create-resume:
	docker build -t latex .
	docker run --rm -i -v "$PWD":/data latex pdflatex mark_ortleb_resume.tex

