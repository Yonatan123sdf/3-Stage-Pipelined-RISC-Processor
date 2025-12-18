        addi x5, x0, 0x5
        lw x6 ,  0x7(x0)
        add x7, x5, x6
        addi x8, x0, 0xf
loopback:
        blt x7, x8, loop
        sub x9, x5, x6
loop:
        addi x7, x7, 0x1
        j loopback
