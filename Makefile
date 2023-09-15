
all: grub grub-dev multiboot

grub:
	$(MAKE) -f grub-Makefile

grub-dev:
	$(MAKE) -f grub-dev-Makefile

multiboot:
	$(MAKE) -f multiboot-Makefile

.PHONY: clean
clean:
	$(MAKE) clean -f grub-Makefile
	$(MAKE) clean -f grub-dev-Makefile
	$(MAKE) clean -f multiboot-Makefile

.PHONY: dist-clean
dist-clean: clean
	rm -rf tmp
