;; ********************************
;; *** Author: PZH Gesellschaft ***
;; *** Date: 12. Mai. 2026      ***
;; *** Update: 12. Mai. 2026    ***
;; *** License: AGPL-3-or-later ***
;; ********************************

;; *****************
;; *** Registers ***
;; *****************

element REGISTER

element A? : REGISTER + 111b
element B? : REGISTER + 000b
element C? : REGISTER + 001b
element D? : REGISTER + 010b
element E? : REGISTER + 011b
element H? : REGISTER + 100b
element L? : REGISTER + 101b

element HL?
element IX?
element IY?
element SP?

;; *******************
;; *** Conditional ***
;; *******************

element CC

NZ? := CC + 000b
Z?  := CC + 001b
NC? := CC + 010b
_C?  := CC + 011b
PO? := CC + 100b
PE? := CC + 101b
P?  := CC + 110b
M?  := CC + 111b

;; *************************
;; *** Load Instructions ***
;; *************************

;; *****************************
;; *** Exchange Instructions ***
;; *****************************

calminstruction EX? register&

	local condition, condition2

	match condition:name =, (SP?), register, :
	jyes EX_SP

	match condition:name =, DE, register, :
	
	jyes EX_DE
	jno error

	error:
		err "unrecognized syntax"

	EX_DE:
		match condition2:name =, HL, register, :
		emit 1, EBh

	EX_SP:
		match condition2:name =, HL, register, :
		emit 1, E3h

		match condition2:name =, IX, register, :
		emit 2, E3DDh
		
		match condition2:name =, IY, register, :
		emit 2, E3FDh

end calminstruction

;; *************************
;; *** Call Instructions ***
;; *************************

calminstruction CALL? target&

	local condition

	match condition:name =, target, target, :
	jno unconditional

	check defined condition & condition relativeto CC
	jno error

	emit 1, 0C4h + (condition - CC) shl 3
	jump address

	error:
		err "unrecognized syntax"

	unconditional:
		emit 1, 0CDh

	address:
		emit 2, target

end calminstruction