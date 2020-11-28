.global readU32
.global writeU32
.global readU16
.global writeU16

.text

@void writeU32(uint32_t * p, uint32_t x);
@					R0,         R1

writeU32:
	STR R1,[R0] @[] = contents of 
	BX LR
	

@ uint32_t readU32(uint32_t * p);
@		R0				R0
readU32:
	LDR R0, [R0]
	BX LR
	
@ void writeU16(uint16_t * p, uint16_t x);
@					R0,  		R1
writeU16:
	STRH R1,[R0] @[] = contents of 
	BX LR
	
@uint16_t readU16(uint16_t * p);
@ 	R0					R0
readU16:
		LDRH R0, [R0]
		BX LR
		
@void writeU8(uint8_t * p, uint8_t x);
@					R0,			R1
@
writeU8:
		STRB R1, [R0]
		BX LR

@uint8_t readU8(uint8_t * p);	
readU8:
		LDRB R0, [R0]
		BX LR
		
	