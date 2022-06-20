#!/bin/bash
.SILENT: all sizelog regen restart
all:
ifeq (, $(shell which sloccount))
 $(error "No sloccount in $(PATH), consider installing sloccount")
endif


LISTV=$(shell ls -d ../linux-1* ../linux-2.[0123456].* ../linux-[345].*)
INPUT=$(shell read -p "Enter versions to be processed:" input ; echo $${input})

sizelog:
	for d in $(INPUT); do \
	    if [ -d ../$$d ]; then \
		if [ ! -f $$d.sizelog ]; then \
		    echo "Processing" ../$$d; \
		    ./size_of ../$$d; \
		else \
		    echo "A sizelog is already present, please run make regen if you want to generate it again."; \
		fi; \
	    else \
		echo "version not found"; \
	    fi; \
	    done
	
    
regen:
	for d in $(INPUT); do \
	    if [ -d ../$$d ]; then \
		echo "Processing" ../$$d; \
		./size_of ../$$d; \
	    else \
		echo "version not found"; \
	    fi; \
	    done
	    
restart:
	for d in `ls -d ../linux-1* ../linux-2.[0123456].* ../linux-[345].*`; do \
		echo "Processing" $$d; \
		./size_of $$d; \
	done



