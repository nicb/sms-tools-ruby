TARGETS= libutilFunctions.$(SUFFIX)
OBJECTS= utilFunctions.o

HOST=$(shell arch)
DARWINARCH= -fPIC -arch i386 -arch x86_64

ifeq ($(HOST), i386)
	ARCH= $(DARWINARCH)
	LDFLAGS=$(ARCH) -bundle -undefined suppress -flat_namespace
endif

SUFFIX=dylib
CFLAGS=$(ARCH) -c -g -Wall

LD=$(CC)

all: $(TARGETS)

$(TARGETS): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $@ $(OBJECTS) -lm

clean:
	$(RM) $(OBJECTS) $(TARGETS)
