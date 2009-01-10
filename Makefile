#  Copyright (c) 2008 David Caldwell,  All Rights Reserved.

CFLAGS += -MMD -std=gnu99 -Wall -Wno-parentheses
LDFLAGS += -lreadline

TARGETS = gdisk

all: $(TARGETS)

gdisk: gdisk.o guid.o mbr.o device.o autolist.o csprintf.o device-macosx.o

clean:
	rm -f *.o
	rm -f $(TARGETS)

-include *.d

include Makefile.quiet
