SUBDIRS = lexicon phon ninfl vinfl deriv

include Makefile.inc

.PHONY: all subdirs $(SUBDIRS)

all: malayalam.a

malayalam.a: malayalam.fst morph.a afilter.a
noun.a: subdirs
morph.a: noun.a morph.fst subdirs num.a
subdirs: $(SUBDIRS)
$(SUBDIRS):
	$(MAKE) -C $@

clean:
	-rm -f *.a *.dot *~ Makefile.bak tests.all *.gen*.txt
	-for dir in $(SUBDIRS); do  $(MAKE) -C $$dir clean; done

test: malayalam.a
	python3 tests/mlmorph-test.py
