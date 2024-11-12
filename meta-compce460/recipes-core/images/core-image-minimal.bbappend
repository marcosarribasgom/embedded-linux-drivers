# imported and base recipes
IMAGE_INSTALL_append = "\
        irqgen-mod \
        "

inherit kernel-fitimage

KERNEL_IMAGETYPE = "uImage"
IMAGE_BOOT_FILES += "uImage devicetree.dtb fit.itb"


