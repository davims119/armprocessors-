	sub r0, pc, pc			//R0 = 0
	tst r0, #0			//R0 AND 0, BIT BY BIT. FLAG Z = 1
	moveq r0, #4			//R0 = 4 IF Z = 1
	mov r1, #7			//R1 = 7
	sub r2, r1, r0			//R2 = R1 - R0. R2 = 3
	eor r3, r2, #0			//R3 = R2 XOR 0. R3 = R2
	cmp r2, r3			//R2 - R3 = 0. FLAG Z = 1
	addeq r4, r3, r0		//R4 = R3 + R0 IF Z = 1. R4 = 7
	str r4, [r0, #0x60]		//WRITE R4 IN ADRESS 100