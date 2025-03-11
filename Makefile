.POSIX:
.SUFFIXES:
HARE=hare
HAREFLAGS=
HAREDOC=haredoc

DESTDIR=
PREFIX=/usr/local
SRCDIR=$(PREFIX)/src
HARESRCDIR=$(SRCDIR)/hare
THIRDPARTYDIR=$(HARESRCDIR)/third-party

all:

check:
	$(HARE) test

docs:
	mkdir -p docs/libgit2
	$(HAREDOC) -Fhtml libgit2 > docs/libgit2/index.html

clean:
	rm -rf docs

install:
	mkdir -p $(DESTDIR)$(THIRDPARTYDIR)/libgit2
	install -m644 libgit2/*.ha $(DESTDIR)$(THIRDPARTYDIR)/libgit2

uninstall:
	rm -rf $(DESTDIR)$(THIRDPARTYDIR)/libgit2

.PHONY: all docs clean check install uninstall
