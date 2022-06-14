#!/bin/bash
all:
ifeq (, $(shell which sloccount))
 $(error "No sloccount in $(PATH), consider installing sloccount")
endif
	$(shell ./compute_all)
