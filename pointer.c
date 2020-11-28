#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

extern void writeU32(uint32_t * p, uint32_t x);
extern uint32_t readU32(uint32_t * p);


@changing to 16 bit value
extern void writeU16(uint16_t * p, uint16_t x);
extern uint16_t readU16(uint16_t * p);

@changing to 8 bits value
extern void writeU8(uint8_t * p, uint8_t x);
extern uint8_t readU8(uint8_t * p);

int main(void)
{
	uint32_t a;
	writeU32(&a, 0x1234abcd);
	printf("a = %x\n", readU32(&a));
	
	
	uint16_t b;
	writeU16(&b, 0x12ab);
	printf("b = %x\n", readU16(&b));
	
	
	uint8_t c;
	writeU8(&c, 0x1a);
	printf("c = %x\n", readU8(&c));
	
	return EXIT_SUCCESS;
	
}