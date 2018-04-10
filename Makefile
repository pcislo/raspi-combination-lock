CC=$(CROSS_COMPILE)gcc
OBJS := src/main.o
combination-lock: $(OBJS)
	$(CC) -o combination-lock $(OBJS) -l wiringPi
$(OBJS) : %.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@