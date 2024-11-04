# imported and base recipes
IMAGE_INSTALL_append = "\
<<<<<<< HEAD
        irqgen-ex4-mod \
        "

inherit kernel-fitimage

KERNEL_IMAGETYPE = "uImage"
IMAGE_BOOT_FILES += "uImage devicetree.dtb fit.itb"
=======
    dtc \
    evil-mod \
    evil-tests \
    irqgen-ex4-mod \
    irqgen-mod \
    "
>>>>>>> course_upstream_updates

inherit extrausers

EXTRA_USERS_PARAMS = "\
        useradd pynq; \
        usermod -p '' pynq; \
    "

mount_microsd () {
    local DEV="/dev/mmcblk0p1"
    local MNTPNT="/mnt/microsd"
    local FS="vfat"
    local OPTS="defaults,ro"

    mkdir -p ${IMAGE_ROOTFS}${MNTPNT}
    cat >> ${IMAGE_ROOTFS}/etc/fstab <<EOF

# Mount the microsd card at boot in Read-Only mode
${DEV}	${MNTPNT}	${FS}	${OPTS}	0	0
EOF
}

ROOTFS_POSTPROCESS_COMMAND += " mount_microsd; "
