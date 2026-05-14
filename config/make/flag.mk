# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# **********************
# *** Compiler Flags ***
# **********************

CFLAGS_AMD64 := -Wall -Wextra -Wpedantic -ffreestanding -nostdlib -nostdinc -fno-builtin -fno-stack-protector
CFLAGS_ARM64 := -Wall -Wextra -Wpedantic -ffreestanding -nostdlib -nostdinc -fno-builtin -fno-stack-protector

# ***********************
# *** Assembler Flags ***
# ***********************

ASFLAGS_AMD64 := -Iinclude -fwin64
ASFLAGS_ARM64 := -Iinclude

# ********************
# *** Linker Flags ***
# ********************

LDFLAGS_AMD64 := --build-id=none -T$(LINKER_FILE_AMD64)
LDFLAGS_ARM64 := --build-id=none -T$(LINKER_FILE_ARM64)

# *****************
# *** Debugging ***
# *****************

QEMUFLAGS_AMD64 := -m 2048 -drive if=pflash,format=raw,readonly=on,file=/usr/share/ovmf/OVMF.fd -drive if=pflash,format=raw,file=./config/efi/OVMF.amdsev.fd
QEMUFLAGS_ARM64 := -m 2048