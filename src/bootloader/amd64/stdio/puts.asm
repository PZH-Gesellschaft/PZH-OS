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

%include "bootloader/global.inc"

;; ****************************
;; *** Environment Division ***
;; ****************************

	;; **********************
	;; *** Global Section ***
	;; **********************

	global puts

	;; **********************
	;; *** Export Section ***
	;; **********************

	export puts

;; *********************
;; *** Data Division ***
;; *********************

section .rodata

section .data

section .bss

;; ************************
;; *** Linkage Division ***
;; ************************

section .bss

;; **************************
;; *** Procedure Division ***
;; **************************

section .text

	puts:
	;; Asegurar Compatibilidad con la ABI de MS 
		sub  rsp, 32

	;; Imprimir

		mov rcx, qword [rel ConOut]
		mov rdx, rdi

		call [rel OutputString]

	;; Asegurar Compatibilidad con la ABI de MS
		add rsp, 32

	;; Retornar
		ret