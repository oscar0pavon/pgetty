CFLAGS=-O2 -Wall -W -pipe -D_GNU_SOURCE
LDFLAGS := -s -static

all: mingetty

install:	all
		cp mingetty /bin/mingetty

mingetty: mingetty.c
	cc mingetty.c $(LDFLAGS) $(CFLAGS) -o mingetty


clean:
		rm -f *.o mingetty

