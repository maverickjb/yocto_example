all: helloworld

DESTDIR ?= $(shell pwd)
PREFIX ?= /usr

helloworld: helloworld.c
	${CC} ${LDFLAGS} helloworld.c -o helloworld

clean:
	rm -rf helloworld

install: helloworld
	install -d ${DESTDIR}${PREFIX}/bin
	install -m 0755 helloworld ${DESTDIR}${PREFIX}/bin

	
