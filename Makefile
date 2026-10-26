TARGET = FLASHBACKPSP
OBJS = \
	collision.cpp cutscene.cpp file.cpp fs.cpp game.cpp graphics.cpp main.cpp menu.cpp \
	mixer.cpp mod_player.cpp piege.cpp resource.cpp scaler.cpp seq_player.cpp sfx_player.cpp \
	staticres.cpp systemstub_sdl.cpp unpack.cpp util.cpp video.cpp
INCDIR =

CFLAGS = -O2 -G0 -Wall -DPSP -DBYPASS_PROTECTION -DUSE_ZLIB
CXXFLAGS = $(CFLAGS) -O2 -G0 -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS =

EXTRA_TARGETS = EBOOT.PBP

PSP_DIR_NAME = REminiscencePSP
PSP_EBOOT_SFO = param.sfo
PSP_EBOOT_TITLE = REminiscence PSP v0.2.1
PSP_EBOOT = EBOOT.PBP
PSP_EBOOT_ICON = icon0.png
PSP_EBOOT_ICON1 = NULL
PSP_EBOOT_PIC0 = NULL
PSP_EBOOT_PIC1 = NULL
PSP_EBOOT_SND0 = NULL
PSP_EBOOT_PSAR = NULL
BUILD_PRX = 1
PSP_FW_VERSION = 371

PSPSDK=$(shell psp-config --pspsdk-path)
PSPBIN = $(PSPSDK)/../../bin
CFLAGS += $(shell $(PSPBIN)/sdl-config --cflags)
LIBS += $(shell $(PSPBIN)/sdl-config --libs) -lpsppower -lz -lstdc++
include $(PSPSDK)/lib/build.mak

clean:
	rm -f *.o *.d *.sfo