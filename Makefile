
all: grub grub-dev multiboot multiboot2

grub:
	$(MAKE) -f grub-Makefile

grub-dev:
	$(MAKE) -f grub-dev-Makefile

multiboot:
	$(MAKE) -f multiboot-Makefile

multiboot2:
	$(MAKE) -f multiboot2-Makefile

.PHONY: clean
clean:
	$(MAKE) clean -f grub-Makefile
	$(MAKE) clean -f grub-dev-Makefile
	$(MAKE) clean -f multiboot-Makefile
	$(MAKE) clean -f multiboot2-Makefile

.PHONY: dist-clean
dist-clean: clean
	rm -rf tmp
