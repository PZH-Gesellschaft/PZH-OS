/**
 * *********************************
 * *** Author: PZH Geselleschaft ***
 * *** Date: 10. Mai. 2026       ***
 * *** Update: 10. Mai. 2026     ***
 * *** License: AGPL-3-or-later  ***
 * *********************************
 */
 
ENTRY(start)

MEMORY {
	ROM (rx) : ORIGIN = 1M, LENGTH = 256K
	RAM (wx) : ORIGIN = 1M + 256K, LENGTH = 256K
}

SECTIONS {

	.text.start (_KERNEL_BASE_) : {
		startup.o(.text)
	}
	
	.text : ALIGN(CONSTANT(MAXPAGESIZE)) {
		_TEXT_START_ = .;
		*(.text)
		_TEXT_END_ = .;
	}
	
	.data : ALIGN(CONSTANT(MAXPAGESIZE)) {
		_DATA_START_ = .;
		*(.data)
		_DATA_END_ = .;
	}
	
	.bss : ALIGN(CONSTANT(MAXPAGESIZE)) {
		_BSS_START_ = .;
		*(.bss)
		_BSS_END_ = .;
	}

}