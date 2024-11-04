#ifndef __IRQGEN_ADDRESSES_H
#define __IRQGEN_ADDRESSES_H

/* IRQ Generator core register address space from devicetree.dts */
# define IRQGEN_REG_PHYS_BASE 0x43c00000 // FIXED
# define IRQGEN_REG_PHYS_SIZE 0x10000    // FIXED

#define ACK1d 0x0  // Example value for the first interrupt
#define ACK1e 0x1  // Example value for the second interrupt

/* IRQ Generator register address map from irq_generator_v1_1.pdf */
# define IRQGEN_CTRL_REG_OFFSET 0x0000 // FIXED
# define IRQGEN_GENIRQ_REG_OFFSET 0x0004 // FIXED
# define IRQGEN_IRQ_COUNT_REG_OFFSET 0x0008 // FIXED
# define IRQGEN_LATENCY_REG_OFFSET 0x000C // FIXED

# define IRQGEN_CTRL_REG      (irqgen_reg_base + IRQGEN_CTRL_REG_OFFSET)
# define IRQGEN_GENIRQ_REG    (irqgen_reg_base + IRQGEN_GENIRQ_REG_OFFSET)
# define IRQGEN_IRQ_COUNT_REG (irqgen_reg_base + IRQGEN_IRQ_COUNT_REG_OFFSET)
# define IRQGEN_LATENCY_REG   (irqgen_reg_base + IRQGEN_LATENCY_REG_OFFSET)

/* --- bitfield defines for HW registers' fields --- */
# include <linux/bitfield.h>         // bitfield macros for writing the HW registers

# define IRQGEN_CTRL_REG_F_ENABLE             BIT(0) // FIXED
# define IRQGEN_CTRL_REG_F_HANDLED            BIT(0) // FIXED
# define IRQGEN_CTRL_REG_F_ACK                GENMASK(1, 0) // FIXED

# define IRQGEN_GENIRQ_REG_F_LINE             GENMASK(3, 0) // FIXED
# define IRQGEN_GENIRQ_REG_F_DELAY            GENMASK(7, 4) // FIXED
# define IRQGEN_GENIRQ_REG_F_AMOUNT           GENMASK(15, 8) // FIXED

# define IRQGEN_MAX_LINE   (FIELD_GET(IRQGEN_GENIRQ_REG_F_LINE  , 0xFFFFFFFFL))
# define IRQGEN_MAX_DELAY  (FIELD_GET(IRQGEN_GENIRQ_REG_F_DELAY , 0xFFFFFFFFL))
# define IRQGEN_MAX_AMOUNT (FIELD_GET(IRQGEN_GENIRQ_REG_F_AMOUNT, 0xFFFFFFFFL))

#endif /* !defined(__IRQGEN_ADDRESSES_H) */

