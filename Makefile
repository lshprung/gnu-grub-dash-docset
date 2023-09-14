
all: grub

grub:
	$(MAKE) -f grub-Makefile

.PHONY: clean
clean:
	$(MAKE) clean -f grub-Makefile
