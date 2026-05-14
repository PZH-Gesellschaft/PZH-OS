# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# *********************
# *** Source Folder ***
# *********************

SOURCE_FOLDER_AMD64_BOOTLOADER := ./src/bootloader/amd64
SOURCE_FOLDER_ARM64_BOOTLOADER := ./src/bootloader/arm64

SOURCE_FOLDER_KERNEL     := ./src/kernel
SOURCE_FOLDER_INTERFACE  := ./src/interface

# *********************
# *** Object Folder ***
# *********************

OBJECT_FOLDER_AMD64_BOOTLOADER := ./build/obj/amd64/bootloader
OBJECT_FOLDER_AMD64_KERNEL     := ./build/obj/amd64/kernel
OBJECT_FOLDER_AMD64_INTERFACE  := ./build/obj/amd64/interface

OBJECT_FOLDER_ARM64_BOOTLOADER := ./build/obj/arm64/bootloader
OBJECT_FOLDER_ARM64_KERNEL     := ./build/obj/arm64/kernel
OBJECT_FOLDER_ARM64_INTERFACE  := ./build/obj/arm64/interface

# *********************
# *** Binary Folder ***
# *********************

BINARY_FOLDER_AMD64_IMAGE := ./build/amd64/image
BINARY_FOLDER_ARM64_IMAGE := ./build/arm64/image

BINARY_FOLDER_AMD64_SYSTEM := ./build/amd64/system
BINARY_FOLDER_ARM64_SYSTEM := ./build/arm64/system