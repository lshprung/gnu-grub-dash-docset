
all: grub grub-dev

grub:
	$(MAKE) -f grub-Makefile

grub-dev:
	$(MAKE) -f grub-dev-Makefile

.PHONY: clean
clean:
	$(MAKE) clean -f grub-Makefile
	$(MAKE) clean -f grub-dev-Makefile
