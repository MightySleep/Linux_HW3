#Makefile
#Jared Sleep
#COSC 3750 Spring 2022
# Homework 3
#Date last modified: 7:05PM 2/11/2022
#
# Desc: Makefile compiles approxe executable based on object files prompt.o, display.o, compute.o,
# approxe.c

CC=g++
CFLAGS=-Wall -ggdb
OBJS=prompt.o display.o compute.o
RM=/bin/rm -f

.PHONY: tidy clean

approxe_: approxe clean
approxe: approxe.c $(OBJS)
	$(CC) $(CFLAGS) approxe.c prompt.c prompt.h display.c display.h compute.c compute.h -o approxe -I.
prompt.o: prompt.c prompt.h
	$(CC) $(CFLAGS) prompt.c prompt.h -o prompt.o -I. -c
display.o: display.c display.h
	$(CC) $(CFLAGS) display.c display.h -o display.o -I. -c
compute.o: compute.c compute.h
	$(CC) $(CFLAGS) compute.c compute.h -o compute.o -I. -c
tidy:
	$(RM) a.out core.*
clean: tidy
	$(RM) prompt.o display.o compute.o
