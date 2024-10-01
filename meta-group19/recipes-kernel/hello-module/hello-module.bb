SUMMARY = "Hello World Kernel Module"
DESCRIPTION = "A simple Hello World kernel module"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
SRC_URI = "file://hello_module.c \
           file://Makefile"

S = "${WORKDIR}"

inherit module

KERNEL_MODULE_AUTOLOAD = "hello_module"

# Override the default do_install
do_install() {
    oe_runmake INSTALL_MOD_PATH=${D} modules_install
}

