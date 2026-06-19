# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# ********************
# *** Binary files ***
# ********************

#$(OBJECT_FILE_AMD64_BOOTLOADER): $(SOURCE_FILE_AMD64_BOOTLOADER)
#	@mkdir -p $(dir $@)
#	$(AS_AMD64) -fwin64 $< -o $@ -MD $(basename $@).dep
#
#-include $(basename $(BINARY_FILE_AMD64_BOOTLOADER))/*.dep

$(BINARY_FILE_AMD64_BOOTLOADER): $(OBJECT_FILES_AMD64_BOOTLOADER)
	@mkdir -p $(dir $@)
	lld-link /subsystem:efi_application /entry:efi_main /out:$@ $^

# ********************
# *** Images Files ***
# ********************

$(BINARY_FILE_AMD64_KERNEL): $(OBJECT_FILES_AMD64_KERNEL) $(OBJECT_FILES_AMD64_INTERFACE)
	@mkdir -p $(dir $@)
	$(LD_AMD64) $(LDFLAGS_AMD64) -o $@ $^

$(BINARY_FILE_AMD64_DISK): $(BINARY_FILE_AMD64_KERNEL) $(BINARY_FILE_AMD64_BOOTLOADER)
	@mkdir -p $(dir $@)
	dd if=/dev/zero of=$(BINARY_FILE_AMD64_DISK) bs=1M count=2880
	mkfs.fat -F 32 $(BINARY_FILE_AMD64_DISK)
#	mcopy -i $(BINARY_FILE_AMD64_DISK) $(BINARY_FILE_AMD64_BOOTLOADER) ::/EFI/BOOT/

$(BINARY_FILE_AMD64_ISO): $(BINARY_FILE_AMD64_DISK)
	@mkdir -p $(dir $@)

	mkisofs -quiet -V "PZHOS" -input-charset iso8859-1 -b "PZHOS" -e EFI/BOOT/BOOTX64.EFI -o $@ $(BINARY_FOLDER_AMD64_SYSTEM)
	
#	isohybrid --uefi $(BINARY_FILE_AMD64_ISO)

# **********************
# *** Package Images ***
# **********************

