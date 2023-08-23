.PHONY: install

DESTDIR=/opt/le-install

install:
	install -o root -m 755 -d $(DESTDIR)
	install -o root -m 644 src/le-install $(DESTDIR)
