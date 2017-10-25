all: BUILD_DSK


DSK_FNAME={{cookiecutter.project_name_slug}}.dsk
LOAD_ADDRESS=x4000
EXECUTABLE=EXE

vpath %.asm src/ 


include CPC.mk



$(EXECUTABLE): test.o
	$(call SET_HEADER,$^,$@,$(AMSDOS_BINARY),$(LOAD_ADDRESS),$(LOAD_ADDRESS))

$(DSK_FNAME):
	$(call CREATE_DSK,$(DSK_FNAME))

BUILD_DSK: $(EXECUTABLE) $(DSK_FNAME)
	$(call PUT_FILE_INTO_DSK,$(DSK_FNAME),$(EXECUTABLE))


clean:
	-rm *.o
	-rm *.exo
	-rm *.NOHEADER
	-rm *.lst
	-rm $(EXECUTABLE)

distclean: clean
	-rm $(DSK_FNAME)

launch: BUILD_DSK
	xdg-open $(DSK_FNAME)


launch_on_cpc: $(EXECUTABLE)
	$(call RUN_FILE_ON_CPC,$(EXECUTABLE))
