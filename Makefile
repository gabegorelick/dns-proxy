.PHONY: all install uninstall clean

CFLAGS ?= -Wall -Wextra
daemon_name = dns-proxy

all: $(daemon_name)

$(daemon_name): $(daemon_name).c

install: $(daemon_name)
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/$(daemon_name)

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/mygame

clean:
	rm -f $(daemon_name)
