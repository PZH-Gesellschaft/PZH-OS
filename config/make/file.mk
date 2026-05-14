# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# ********************
# *** Source Files ***
# ********************

SOURCE_FILE_KERNEL_START := $(SOURCE_FOLDER_KERNEL)/start.c

SOURCE_FILE_AMD64_BOOTLOADER := $(SOURCE_FOLDER_AMD64_BOOTLOADER)/loader.asm

# ********************
# *** Object Files ***
# ********************

OBJECT_FILE_AMD64_BOOTLOADER := $(OBJECT_FOLDER_AMD64_BOOTLOADER)/pzhboot.obj

OBJECT_FILE_ADM64_KERNEL_START := $(OBJECT_FOLDER_AMD64_KERNEL)/start.c.o
OBJECT_FILE_ARM64_KERNEL_START := $(OBJECT_FOLDER_ARM64_KERNEL)/start.c.o

# ********************
# *** Script Files ***
# ********************

LINKER_FILE_AMD64 := ./config/ldscript/amd64.ld
LINKER_FILE_ARM64 := ./config/ldscript/arm64.ld

# ********************
# *** Binary Files *** 
# ********************

BINARY_FILE_AMD64_BOOTLOADER := $(BINARY_FOLDER_AMD64_SYSTEM)/EFI/BOOT/BOOTX64.EFI

BINARY_FILE_AMD64_KERNEL := $(BINARY_FOLDER_AMD64_SYSTEM)/phzos.kern
BINARY_FILE_ARM64_KERNEL := $(BINARY_FOLDER_ARM64_SYSTEM)/kernel8.img

BINARY_FILE_AMD64_ISO  := $(BINARY_FOLDER_AMD64_IMAGE)/phzos.iso
BINARY_FILE_AMD64_DISK := $(BINARY_FOLDER_AMD64_IMAGE)/phzos.img