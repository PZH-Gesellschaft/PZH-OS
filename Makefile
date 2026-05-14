# *********************************
# *** Author: PZH Geselleschaft ***
# *** Date: 10. Mai. 2026       ***
# *** Update: 10. Mai. 2026     ***
# *** License: AGPL-3-or-later  ***
# *********************************

# **********************
# *** Shell Settings ***
# **********************

include config/make/shell.mk
include config/make/environment.mk

# ***************
# *** Folders ***
# ***************

include config/make/folder.mk

# *************
# *** Files ***
# *************

include config/make/file.mk
include config/make/find.mk

# *************
# *** Tools ***
# *************

include config/make/tool.mk
include config/make/flag.mk

# *************
# *** Rules ***
# *************

include config/make/phony.mk
include config/make/rule.mk
include config/make/compile.mk
include config/make/pattern.mk