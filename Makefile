emacs ?= emacs
BEMACS = $(emacs) README.org -q -batch

all: compile

compile:
	$(BEMACS) -l compile.el

clean:
	rm -f verbs/*.verb
