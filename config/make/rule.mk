# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# *****************
# *** Main Rule ***
# *****************

ifeq ($(tgt), AMD64)

all: PZHOS_AMD64

else ifeq ($(tgt), ARM64)

all: PZHOS_AMD64

else

$(error No se ingresó target)

endif

# ******************
# *** Test Rules ***
# ******************

run-iso-amd64: $(BINARY_FILE_AMD64_ISO)
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) -cdrom $<

run-iso-arm64: $(BINARY_FILE_ARM64_ISO)
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) -cdrom $<

run-disk-amd64: $(BINARY_FILE_AMD64_DISK)
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) -drive format=raw,file=$<,if=ide

run-disk-arm64: $(BINARY_FILE_ARM64_DISK)
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) -drive format=raw,file=$<,if=ide

# *******************
# *** Debug Rules ***
# *******************

run-iso-debug-amd64:
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) $(BINARY_FILE_AMD64_ISO) -s -S

run-iso-debug-arm64:
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) $(BINARY_FILE_AMD64_ISO) -s -S

run-disk-debug-amd64:
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) $(BINARY_FILE_AMD64_ISO) -s -S

run-disk-debug-arm64:
	$(QEMU_AMD64) $(QEMUFLAGS_AMD64) $(BINARY_FILE_AMD64_ISO) -s -S

# *****************
# *** Iso Image ***
# *****************

iso-amd64: $(BINARY_FILE_AMD64_ISO)

disk-amd64: $(BINARY_FILE_AMD64_DISK)

# *******************
# *** Clean Rules ***
# *******************

clean:
	rm -f $(OBJECT_FILES_AMD64_BOOTLOADER) $(OBJECT_FILES_ARM64_BOOTLOADER) $(OBJECT_FILES_AMD64_KERNEL) $(OBJECT_FILES_ARM64_KERNEL) $(OBJECT_FILES_AMD64_INTERFACE) $(OBJECT_FILES_ARM64_INTERFACE)

distclean:
	rm -rf build

# *******************
# *** AMD64 Rules ***
# *******************

PZHOS_AMD64: $(OBJECT_FILES_AMD64_BOOTLOADER) $(BINARY_FILE_AMD64_BOOTLOADER) \
			 $(OBJECT_FILES_AMD64_KERNEL)     $(OBJECT_FILES_AMD64_INTERFACE) \
			 $(BINARY_FILE_AMD64_KERNEL)

PZHOS_ARM64: $(OBJECT_FILES_ARM64_BOOTLOADER) \
			 $(OBJECT_FILES_AMR64_KERNEL) $(OBJECT_FILES_ARM64_INTERFACE) \
			 $(BINARY_FILE_ARM64_IMAGE)