##include "stm32f401xc.h"

#define FLASH_SECTOR_2_ADDRESS 0x08008000
#define KERNEL_ADDRESS         0x20008000

void loadKernel(void)
{
    uint32_t *src = (uint32_t *)FLASH_SECTOR_2_ADDRESS;
    uint32_t *dst = (uint32_t *)KERNEL_ADDRESS;
    uint32_t length = 1024; // Adjust the length based on your kernel size

    // Copy data from Flash to RAM
    for (uint32_t i = 0; i < length; i++)
    {
        dst[i] = src[i];
    }
}
