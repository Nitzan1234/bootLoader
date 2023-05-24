BITS 32 ; 

section bootloader
    org 0x08000000

    jmp main 

main:
	bl loadKernel
	
	b .

    ; Data section
    msg db 'this is Nitzan Lazerin writing to you, thank you very much for checking my os i hope it fits you well. ta ta', 0 ; The null-terminated message string

    times 16382-($-$$) db 0 ; Fill the remaining bytes of the boot sector with zeros
    dw 0xAA55 ; Boot signature

    ; Additional code or data sections can be added here if needed

times 16384-($-$$) db 0 ; Fill the rest of the 512-byte boot sector with zeros
