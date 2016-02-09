all: BUILD_DSK


DSK_FNAME=test.dsk
LOAD_ADDRESS=x4000


vpath %.asm src/ 


include CPC.mk



BOOTSTRAP: test.o
	$(call SET_HEADER,$^,$@,$(AMSDOS_BINARY),$(LOAD_ADDRESS),$(LOAD_ADDRESS))

$(DSK_FNAME):
	$(call CREATE_DSK,$(DSK_FNAME))

BUILD_DSK: BOOTSTRAP $(DSK_FNAME)
	$(call PUT_FILE_INTO_DSK,$(DSK_FNAME),BOOTSTRAP)


clean:
	-rm *.o
	-rm *.exo
	-rm *.NOHEADER
	-rm *.lst
	-rm BOOTSTRAP

distclean: clean
	-rm $(DSK_FNAME)
	
launch: BUILD_DSK
	xdg-open $(DSK_FNAME)

