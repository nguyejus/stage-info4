-include Makefile.config

TARGET=herodotos

test/Makefile:
	@echo "Generating basic Makefile"
	@echo "BOLT_CONFIG=debug.config" > $@
	@echo "-include $(DESTDIR)$(SHAREDIR)/Makefile.inc" >> $@

test/debug.config:
	@echo "Generating basic debug/trace config for Bolt"
	cp scripts/debug.config $@

test: test/Makefile test/debug.config
	$(MAKE) -C test preinit
	cd test ; ./fooldir.sh
	$(MAKE) -C test init
	tar xjvf test/orig-org.tbz2 -C test
	tar xjvf test/correl.tbz2 -C test
	tar xjvf test/fp-checked.tbz2 -C test
	tar xjvf test/patchset.tbz2 -C test
	$(MAKE) -C test correl
	tar xjvf test/exist.tbz2 -C test
	$(MAKE) -C test web

##############################################################################
# Install
##############################################################################

# don't remove DESTDIR, it can be set by package build system like ebuild
# for staged installation.

scripts/Makefile.inc: scripts/Makefile.inc.in Makefile.config
	sed "s|SHAREDIR|$(SHAREDIR)|" $@.in > $@

install:
	mkdir -p $(DESTDIR)$(BINDIR)
	mkdir -p $(DESTDIR)$(SHAREDIR)
	$(INSTALL_DATA) scripts/Makefile.inc $(DESTDIR)$(SHAREDIR)
	$(INSTALL_DATA) scripts/Makefile.images $(DESTDIR)$(SHAREDIR)
	$(INSTALL_DATA) scripts/Makefile.prj $(DESTDIR)$(SHAREDIR)
	if [ -f $(TARGET) ]; then $(INSTALL_PROGRAM) $(TARGET) $(DESTDIR)$(BINDIR); fi
	if [ -f $(TARGET).opt ]; then $(INSTALL_PROGRAM) $(TARGET).opt $(DESTDIR)$(BINDIR); fi

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/$(TARGET) $(DESTDIR)$(BINDIR)/$(TARGET).opt
	rm -f $(DESTDIR)$(SHAREDIR)/Makefile.*
	rmdir -p --ignore-fail-on-non-empty $(DESTDIR)$(SHAREDIR)

localclean:
	rm -f scripts/Makefile.inc
	rm -f $(EXEC) $(EXEC).opt
	rm -f *.cm[aiox] *.a *.o *.annot
	rm -f *~ .*~

clean: localclean
	for d in $(SUBDIRS); do $(MAKE) -C $$d $@; done
	$(MAKE) -C $(MENHIR_PATH) $@
	if [ -f test/Makefile ] ; then $(MAKE) -C test $@ ;fi

distclean: localclean
	for d in $(SUBDIRS); do $(MAKE) -C $$d $@; done
	-$(MAKE) -C $(MENHIR_PATH) $@
	$(MAKE) -C demo $@
	$(MAKE) $@-test
	rm -rf .depend Makefile.config
	find -name "*~" -delete
	find -name "\.#*" -delete

distclean-test:
	for f in `cat test/.gitignore`; do rm -rf test/$$f; done
	rm -rf test/*.patchset

debclean:
	rm -rf build-stamp install-stamp my-very-own-patch-stamp

depend: .depend
.depend:
	for d in $(SUBDIRS); do $(MAKE) -C $$d $@; done
	$(OCAMLDEP) *.mli *.ml > $@

-include .depend

check-config:
	@if [ ! -f Makefile.config ] ; then \
		echo "\n\tRun ./configure first\n" \
		exit 1 ; fi

TOLICENSIFY=$(SUBDIRS) scripts #test

#
# Automatically called by pack.
#
licensify:
	ocaml str.cma ../tools/licensify.ml
	set -e; for i in $(TOLICENSIFY); do cd $$i; \
		ocaml str.cma ../../tools/licensify.ml; cd -; done
