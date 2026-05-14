# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# ******************
# *** Bootloader ***
# ******************

$(OBJECT_FOLDER_AMD64_BOOTLOADER)/%.asm.o: $(SOURCE_FOLDER_AMD64_BOOTLOADER)/%.asm
	@mkdir -p $(dir $@)
	$(AS_AMD64) $(ASFLAGS_AMD64) $< -o $@ -MD $(basename $@).dep

-include $(OBJECT_FOLDER_AMD64_BOOTLOADER)/*.dep
-include $(OBJECT_FOLDER_AMD64_BOOTLOADER)/EFI/*.dep
-include $(OBJECT_FOLDER_AMD64_BOOTLOADER)/stdio/*.dep
-include $(OBJECT_FOLDER_AMD64_BOOTLOADER)/pzhboot/*.dep

# **************
# *** Kernel ***
# **************

$(OBJECT_FOLDER_AMD64_KERNEL)/%.c.o: $(SOURCE_FOLDER_KERNEL)/%.c
	@mkdir -p $(dir $@)
	$(CC_AMD64) $(CFLAGS_AMD64) -c $< -o $@

-include $(OBJECT_FOLDER_AMD64_KERNEL)/*.dep