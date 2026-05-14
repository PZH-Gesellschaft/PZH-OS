;; ********************************
;; *** Author: PZH Gesellschaft ***
;; *** Date: 11. Mai. 2026      ***
;; *** Update: 11. Mai. 2026    ***
;; *** License: AGPL-3-or-later ***
;; ********************************

;; *******************************
;; *** Identification Division ***
;; *******************************

[BITS 64]
[default rel]

%include "bootloader/stdio.inc"

%include "bootloader/efi.inc"
%include "bootloader/global.inc"

;; ****************************
;; *** Environment Division ***
;; ****************************

	;; **********************
	;; *** Global Section ***
	;; **********************

	global efi_main
	
	;; **********************
	;; *** Export Section ***
	;; **********************

	export efi_main

;; *********************
;; *** Data Division ***
;; *********************

section .rodata

section .data

	msg:	dw 'H','o','l','a',' ','d','e','s','d','e',' '
			dw 'P','Z','H','-','O','S','!', 0x0D, 0x0A,0

section .bss

;; ************************
;; *** Linkage Division ***
;; ************************

section .bss

;; **************************
;; *** Procedure Division ***
;; **************************

section .text

efi_main:

	call efi_save_functions

	mov qword [image_handle], rcx ;; Save Image Hanlde
	mov qword [system_table], rdx ;; Save System Table

	lea  rdi, msg
	call puts

	xor rax, rax ;; Clear Acumulator

hang:
	
	cli
	hlt
	jmp hang