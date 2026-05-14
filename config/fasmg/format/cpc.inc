;; ********************************
;; *** Author: PZH Gesellschaft ***
;; *** Date: 12. Mai. 2026      ***
;; *** Update: 12. Mai. 2026    ***
;; *** License: AGPL-3-or-later ***
;; ********************************

;; ****************************
;; *** Define Format Binary ***
;; ****************************

define CPC_DISK
format binary as 'cpc_disk'

;; **************
;; *** Digits ***
;; **************

virtual at 0
	
	CPC_DISK.digits:: db "123456789ABCDEF"

end virtual

;; *************
;; *** Bytes ***
;; *************

macro CPC_DISK.byte value



end macro
