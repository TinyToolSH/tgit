
.POSIX:

prefix = /usr/local

all:
	@echo "all target"

install:
	@echo "Installing tgit..."
	install -m 555 tgit $(DESTDIR)/$(prefix)/bin/tgit
	install -m 555 dmenu_tgit $(DESTDIR)/$(prefix)/bin/dmenu_tgit
	install -m 555 tgit-status $(DESTDIR)/$(prefix)/bin/tgit-status
	@echo "done!"

clean:
	@echo "Cleaning tgit"

distclean: clean

uninstall:
	@echo "Uninstall tgit"
	rm -f $(DESTDIR)/$(prefix)/bin/tgit
	rm -f $(DESTDIR)/$(prefix)/bin/dmenu_tgit
	rm -f $(DESTDIR)/$(prefix)/bin/tgit-status
	@echo "done!"

.PHONY: all install clean distclean uninstall