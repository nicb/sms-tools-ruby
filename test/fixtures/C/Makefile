TARGETS= genbh92lobe_driver
OBJS= $(TARGETS:=.o)
UFDIR= ../../../ext/util_functions
CFLAGS= -I$(UFDIR)
UFOBJ= $(UFDIR)/utilFunctions.o
LDFLAGS=$(CFLAGS) -lm

all: $(TARGETS)
	
$(TARGETS): $(UFOBJ)
	for t in $(TARGETS);\
	do\
		$(CC) $(LDFLAGS) -o $$t $${t}.c $(UFOBJ);\
	done
	
$(UFOBJ):
	$(MAKE) -C $(UFDIR) -$(MAKEFLAGS)

.PHONY: $(TARGETS)
