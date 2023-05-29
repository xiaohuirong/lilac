V=20230316

PREFIX = /usr/local

install:
	install -dm755 $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
	install -m0644 archoream{.gpg,-trusted,-revoked} $(DESTDIR)$(PREFIX)/share/pacman/keyrings/

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/share/pacman/keyrings/archoream{.gpg,-trusted,-revoked}
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(PREFIX)/share/pacman/keyrings/
dist:
	git archive --format=tar --prefix=archoream-keyring-$(V)/ master | gzip -9 > archoream-keyring-$(V).tar.gz
	gpg --default-key BA266106 --detach-sign --use-agent archoream-keyring-$(V).tar.gz

upload:
	rsync --chmod 644 --progress archoream-keyring-$(V).tar.gz archoream-keyring-$(V).tar.gz.sig archoream.org:/nginx/var/www/keyring/

.PHONY: install uninstall dist upload

