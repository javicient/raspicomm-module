obj-m += raspicommrs485.o

raspicommrs485-objs := module.o queue.o

SRC = /home/mdk/raspicomm-module
LINUX_3_2_27 = /home/mdk/rpi/linux-rpi-3.2.27/
LINUX_3_6_11 = /home/mdk/rpi/linux-rpi-3.6.y/
LINUX_3_6_11_538 = /home/mdk/rpi/linux-rpi-3.6.y-538/

PREFIX = /home/mdk/rpi/tools-master/arm-bcm2708/arm-bcm2708-linux-gnueabi/bin/arm-bcm2708-linux-gnueabi-

all:
	make ARCH=arm CROSS_COMPILE=$(PREFIX) -C $(LINUX_3_2_27) M=$(SRC) modules

3.2.27+:
	make ARCH=arm CROSS_COMPILE=$(PREFIX) -C $(LINUX_3_2_27) M=$(SRC) modules

3.6.11+:
	make ARCH=arm CROSS_COMPILE=$(PREFIX) -C $(LINUX_3_6_11) M=$(SRC) modules

3.6.11+538:
	make ARCH=arm CROSS_COMPILE=$(PREFIX) -C $(LINUX_3_6_11_538) M=$(SRC) modules

clean:
	make -C $(LINUX_3_2_27) M=$(SRC) clean
	make -C $(LINUX_3_6_11) M=$(SRC) clean
	make -C $(LINUX_3_6_11_538) M=$(SRC) clean