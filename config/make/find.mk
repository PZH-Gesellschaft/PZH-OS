# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# *************************
# *** Find Source Files ***
# *************************

SOURCE_FILES_AMD64_BOOTLOADER := $(shell find $(SOURCE_FOLDER_AMD64_BOOTLOADER) -type f -iname '*.asm')
SOURCE_FILES_ARM64_BOOTLOADER := $(shell find $(SOURCE_FOLDER_ARM64_BOOTLOADER) -type f -iname '*.asm')

SOURCE_FILES_KERNEL     := $(shell find $(SOURCE_FOLDER_KERNEL)    -type f -iname '*.c')
SOURCE_FILES_INTERFACE  := $(shell find $(SOURCE_FOLDER_INTERFACE) -type f -iname '*.c')

# *************************
# *** Find Object Files ***
# *************************

OBJECT_FILES_AMD64_BOOTLOADER := $(patsubst $(SOURCE_FOLDER_AMD64_BOOTLOADER)/%.asm,$(OBJECT_FOLDER_AMD64_BOOTLOADER)/%.asm.o,$(SOURCE_FILES_AMD64_BOOTLOADER))
OBJECT_FILES_ARM64_BOOTLOADER := $(patsubst $(SOURCE_FOLDER_ARM64_BOOTLOADER)/%.asm,$(OBJECT_FOLDER_ARM64_BOOTLOADER)/%.asm.o,$(SOURCE_FILES_ARM64_BOOTLOADER))

OBJECT_FILES_AMD64_KERNEL := $(patsubst $(SOURCE_FOLDER_KERNEL)/%.c,$(OBJECT_FOLDER_AMD64_KERNEL)/%.c.o,$(SOURCE_FILES_KERNEL))
OBJECT_FILES_ARM64_KERNEL := $(patsubst $(SOURCE_FOLDER_KERNEL)/%.c,$(OBJECT_FOLDER_ARM64_KERNEL)/%.c.o,$(SOURCE_FILES_KERNEL))

OBJECT_FILES_AMD64_INTERFACE := $(patsubst $(SOURCE_FOLDER_INTERFACE)/%.c,$(OBJECT_FOLDER_AMD64_INTERFACE)/%.c.o,$(SOURCE_FILES_INTERFACE))
OBJECT_FILES_ARM64_INTERFACE := $(patsubst $(SOURCE_FOLDER_INTERFACE)/%.c,$(OBJECT_FOLDER_ARM64_INTERFACE)/%.c.o,$(SOURCE_FILES_INTERFACE))