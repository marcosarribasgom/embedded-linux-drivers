obj-m += irqgen.o
obj-m += irqgen_dbg.o

irqgen-objs := irqgen_main.o irqgen_sysfs.o irqgen_cdev.o
irqgen_dbg-objs := irqgen_main_dbg.o irqgen_sysfs.o

CFLAGS_irqgen_main_dbg.o += -DDEBUG

ccflags-y += -Wno-declaration-after-statement -Wno-format -std=gnu99


SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

clean:
	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
	rm -f Module.markers Module.symvers modules.order
	rm -rf .tmp_versions Modules.symvers

