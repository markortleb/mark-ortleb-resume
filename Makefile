.PHONY: init
init:
	docker build -t latex .

.PHONY: create-resume
create-resume:
	docker run --rm -i -v $(shell pwd):/data latex pdflatex mark_ortleb_resume.tex

