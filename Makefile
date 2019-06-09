emacs ?= emacs
BEMACS = $(emacs) README.org -q -batch

all: compile

compile:
	$(BEMACS) -l targets/compile.el

clean:
	rm -f verbs/*.verb
