;; ********************************
;; *** Author: PZH Gesellschaft ***
;; *** Date: 11. Mai. 2026      ***
;; *** Update: 11. Mai. 2026    ***
;; *** License: AGPL-3-or-later ***
;; ********************************

%ifndef BOOTLOADER_EFI_INC
%define BOOTLOADER_EFI_INC

;; **************
;; *** Macros ***
;; **************

;; ***************
;; *** Aliases ***
;; ***************

;; ******************
;; *** Structures ***
;; ******************

struc EFI_SYSTEM_TABLE
	.Hdr:                   resb 24
	.FirmwareVendor:        resq 1
	.FirmwareRevision:      resd 1
	.padding:               resd 1
	.ConsoleInHandle:       resq 1
	.ConIn:                 resq 1
	.ConsoleOutHandle:      resq 1
	.ConOut:                resq 1
	.StandardErrorHandle:   resq 1
	.StdErr:                resq 1
	.RuntimeServices:       resq 1
	.BootServices:          resq 1
endstruc

struc EFI_SIMPLE_TEXT_OUTPUT_PROTOCOL
	.Reset:                 resq 1
	.OutputString:          resq 1
	.TestString:            resq 1
endstruc

;; *****************
;; *** Functions ***
;; *****************

%ifndef DEFINE_EFI_SAVE_FUNCTIONS 
extern efi_save_functions
%endif

%endif