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

%define DEFINE_EFI_SAVE_FUNCTIONS

%include "bootloader/efi.inc"
%include "bootloader/global.inc"

;; ****************************
;; *** Environment Division ***
;; ****************************

	;; **********************
	;; *** Global Section ***
	;; **********************

	global efi_save_functions

	;; **********************
	;; *** Export Section ***
	;; **********************

	export efi_save_functions

;; *********************
;; *** Data Division ***
;; *********************

section .rodata

section .data

;; ************************
;; *** Linkage Division ***
;; ************************

section .bss

;; **************************
;; *** Procedure Division ***
;; **************************

section .text

	efi_save_functions:

		mov rax, qword [rdx + EFI_SYSTEM_TABLE.ConOut]
		mov rcx, qword [rax + EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL.OutputString]

		mov qword [rel ConOut], rax
		mov qword [rel OutputString], rcx

		ret