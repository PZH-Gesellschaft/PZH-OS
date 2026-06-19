# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# ******************************
# *** Environmente Variables ***
# ******************************

export C_INCLUDE_PATH     := include
export CPLUS_INCLUDE_PATH := include

# ***************
# *** Targets ***
# ***************

ifndef TARGET
$(info Target not defined)
$(info Available Targets:)
$(info AMD64)
$(info ARM64)
$(error Please, define target)
endif

tgt := $(shell echo "$(TARGET)" | tr a-z A-Z)