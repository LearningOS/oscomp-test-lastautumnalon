IMG_URL := https://github.com/Azure-stars/testsuits-for-oskernel/releases/download/v0.1/sdcard-$(ARCH).img.gz

define load_img
	@if [ ! -f $(PWD)/sdcard-$(ARCH).img ]; then \
		wget $(IMG_URL); \
		gunzip $(PWD)/sdcard-$(ARCH).img.gz; \
	fi
	cp $(PWD)/sdcard-$(ARCH).img $(AX_ROOT)/disk.img
endef

oscomp_run:
	echo "asd"
clean:
	echo "asd"