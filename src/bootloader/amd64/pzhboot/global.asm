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

;; ****************************
;; *** Environment Division ***
;; ****************************

	;; **********************
	;; *** Global Section ***
	;; **********************

	global system_table
	global image_handle

	global ConOut
	global OutputString

	;; **********************
	;; *** Export Section ***
	;; **********************

	export image_handle
	export system_table

	export ConOut
	export OutputString

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

	ConOut:       resq 1
	OutputString: resq 1

	system_table: resq 1
	image_handle: resq 1