TARGETS= libutilFunctions.$(SUFFIX)
OBJECTS= utilFunctions.o

HOST=$(shell arch)
DARWINARCH= -fPIC -arch i386 -arch x86_64
LINUX64ARCH= -fPIC

ifeq ($(HOST), i386) # mac-intel OSX
	ARCH= $(DARWINARCH)
	LDFLAGS=$(ARCH) -bundle -undefined suppress -flat_namespace
  SUFFIX=dylib
endif
ifeq ($(HOST), x86_64) # linux 64-bit
	ARCH= $(LINUX64ARCH)
	LDFLAGS=$(ARCH) -shared
	SUFFIX=so
endif

CFLAGS=$(ARCH) -c -g -Wall

LD=$(CC)

all: $(TARGETS)

$(TARGETS): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS) -lm

clean:
	$(RM) $(OBJECTS) $(TARGETS)
