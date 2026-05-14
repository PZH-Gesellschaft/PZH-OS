# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# *****************
# *** Compilers ***
# *****************

CC_AMD64 := x86_64-elf-gcc
CC_ARM64 := aarch64-elf-gcc

# *****************
# *** Assembler ***
# *****************

AS_AMD64 := nasm
AS_ARM64 := aarch64-elf-as

# ***************
# *** Linkers ***
# ***************

LD_AMD64 := x86_64-elf-ld
LD_ARM64 := aarch64-elf-ld

# *****************
# *** Debugging ***
# *****************

QEMU_AMD64 := qemu-system-x86_64 -M q35 -cpu SandyBridge,-tsc-deadline
QEMU_ARM64 := qemu-system-aarch64 -M raspi4b -cpu cortex-a76