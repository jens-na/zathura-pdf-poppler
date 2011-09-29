# See LICENSE file for license and copyright information

# paths
PREFIX ?= /usr

# libs
PDF_INC ?= $(shell pkg-config --cflags gtk+-2.0 poppler-glib)
PDF_LIB ?= $(shell pkg-config --libs gtk+-2.0 poppler-glib)

INCS = -I. -I/usr/include ${PDF_INC}
LIBS = ${PDF_LIB}

# flags
CFLAGS += -std=c99 -fPIC -pedantic -Wall -Wno-format-zero-length $(INCS)

# debug
DFLAGS ?= -g

# build with cairo support?
WITH_CAIRO ?= 1

# compiler
CC ?= gcc
LD ?= ld
