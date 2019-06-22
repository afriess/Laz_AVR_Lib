
C:\Users\andi\AppData\Local\Temp\arduino_build_713914/Blink.ino.elf:     file format elf32-avr

Sections:
Idx Name          Size      VMA       LMA       File off  Algn
  0 .data         00000000  00800100  00800100  00000420  2**0
                  CONTENTS, ALLOC, LOAD, DATA
  1 .text         000003ac  00000000  00000000  00000074  2**1
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .bss          00000009  00800100  00800100  00000420  2**0
                  ALLOC
  3 .comment      00000011  00000000  00000000  00000420  2**0
                  CONTENTS, READONLY
  4 .note.gnu.avr.deviceinfo 00000040  00000000  00000000  00000434  2**2
                  CONTENTS, READONLY
  5 .debug_aranges 00000068  00000000  00000000  00000478  2**3
                  CONTENTS, READONLY, DEBUGGING
  6 .debug_info   00000e0f  00000000  00000000  000004e0  2**0
                  CONTENTS, READONLY, DEBUGGING
  7 .debug_abbrev 000007d2  00000000  00000000  000012ef  2**0
                  CONTENTS, READONLY, DEBUGGING
  8 .debug_line   0000048b  00000000  00000000  00001ac1  2**0
                  CONTENTS, READONLY, DEBUGGING
  9 .debug_frame  000000b4  00000000  00000000  00001f4c  2**2
                  CONTENTS, READONLY, DEBUGGING
 10 .debug_str    00000473  00000000  00000000  00002000  2**0
                  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc    0000049a  00000000  00000000  00002473  2**0
                  CONTENTS, READONLY, DEBUGGING
 12 .debug_ranges 00000018  00000000  00000000  0000290d  2**0
                  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 5c 00 	jmp	0xb8	; 0xb8 <__ctors_end>
   4:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
   8:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
   c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  10:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  14:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  18:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  1c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  20:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  24:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  28:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  2c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  30:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  34:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  38:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  3c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  40:	0c 94 16 01 	jmp	0x22c	; 0x22c <__vector_16>
  44:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  48:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  4c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  50:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  54:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  58:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  5c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  60:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
  64:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>

00000068 <__trampolines_end>:
  68:	00 00       	nop
  6a:	00 00       	nop
  6c:	24 00       	.word	0x0024	; ????
  6e:	27 00       	.word	0x0027	; ????
  70:	2a 00       	.word	0x002a	; ????

00000072 <port_to_output_PGM>:
  72:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

0000007c <digital_pin_to_port_PGM>:
  7c:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
  8c:	03 03 03 03                                         ....

00000090 <digital_pin_to_bit_mask_PGM>:
  90:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
  a0:	04 08 10 20                                         ... 

000000a4 <digital_pin_to_timer_PGM>:
  a4:	00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
  b4:	00 00 00 00                                         ....

000000b8 <__ctors_end>:
  b8:	11 24       	eor	r1, r1
  ba:	1f be       	out	0x3f, r1	; 63
  bc:	cf ef       	ldi	r28, 0xFF	; 255
  be:	d8 e0       	ldi	r29, 0x08	; 8
  c0:	de bf       	out	0x3e, r29	; 62
  c2:	cd bf       	out	0x3d, r28	; 61

000000c4 <__do_clear_bss>:
  c4:	21 e0       	ldi	r18, 0x01	; 1
  c6:	a0 e0       	ldi	r26, 0x00	; 0
  c8:	b1 e0       	ldi	r27, 0x01	; 1
  ca:	01 c0       	rjmp	.+2      	; 0xce <.do_clear_bss_start>

000000cc <.do_clear_bss_loop>:
  cc:	1d 92       	st	X+, r1

000000ce <.do_clear_bss_start>:
  ce:	a9 30       	cpi	r26, 0x09	; 9
  d0:	b2 07       	cpc	r27, r18
  d2:	e1 f7       	brne	.-8      	; 0xcc <.do_clear_bss_loop>
  d4:	0e 94 60 01 	call	0x2c0	; 0x2c0 <main>
  d8:	0c 94 d4 01 	jmp	0x3a8	; 0x3a8 <_exit>

000000dc <__bad_interrupt>:
  dc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000e0 <digitalWrite.constprop.0>:
	}
}

void digitalWrite(uint8_t pin, uint8_t val)
{
	uint8_t timer = digitalPinToTimer(pin);
  e0:	e1 eb       	ldi	r30, 0xB1	; 177
  e2:	f0 e0       	ldi	r31, 0x00	; 0
  e4:	94 91       	lpm	r25, Z
	uint8_t bit = digitalPinToBitMask(pin);
  e6:	ed e9       	ldi	r30, 0x9D	; 157
  e8:	f0 e0       	ldi	r31, 0x00	; 0
  ea:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
  ec:	e9 e8       	ldi	r30, 0x89	; 137
  ee:	f0 e0       	ldi	r31, 0x00	; 0
  f0:	e4 91       	lpm	r30, Z
	volatile uint8_t *out;

	if (port == NOT_A_PIN) return;
  f2:	ee 23       	and	r30, r30
  f4:	09 f4       	brne	.+2      	; 0xf8 <digitalWrite.constprop.0+0x18>
  f6:	3c c0       	rjmp	.+120    	; 0x170 <digitalWrite.constprop.0+0x90>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
  f8:	99 23       	and	r25, r25
  fa:	39 f1       	breq	.+78     	; 0x14a <digitalWrite.constprop.0+0x6a>
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
  fc:	93 30       	cpi	r25, 0x03	; 3
  fe:	91 f0       	breq	.+36     	; 0x124 <digitalWrite.constprop.0+0x44>
 100:	38 f4       	brcc	.+14     	; 0x110 <digitalWrite.constprop.0+0x30>
 102:	91 30       	cpi	r25, 0x01	; 1
 104:	a9 f0       	breq	.+42     	; 0x130 <digitalWrite.constprop.0+0x50>
 106:	92 30       	cpi	r25, 0x02	; 2
 108:	01 f5       	brne	.+64     	; 0x14a <digitalWrite.constprop.0+0x6a>
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
 10a:	94 b5       	in	r25, 0x24	; 36
 10c:	9f 7d       	andi	r25, 0xDF	; 223
 10e:	12 c0       	rjmp	.+36     	; 0x134 <digitalWrite.constprop.0+0x54>
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
 110:	97 30       	cpi	r25, 0x07	; 7
 112:	91 f0       	breq	.+36     	; 0x138 <digitalWrite.constprop.0+0x58>
 114:	98 30       	cpi	r25, 0x08	; 8
 116:	a1 f0       	breq	.+40     	; 0x140 <digitalWrite.constprop.0+0x60>
 118:	94 30       	cpi	r25, 0x04	; 4
 11a:	b9 f4       	brne	.+46     	; 0x14a <digitalWrite.constprop.0+0x6a>
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 11c:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 120:	9f 7d       	andi	r25, 0xDF	; 223
 122:	03 c0       	rjmp	.+6      	; 0x12a <digitalWrite.constprop.0+0x4a>
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
 124:	90 91 80 00 	lds	r25, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 128:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 12a:	90 93 80 00 	sts	0x0080, r25	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 12e:	0d c0       	rjmp	.+26     	; 0x14a <digitalWrite.constprop.0+0x6a>
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
 130:	94 b5       	in	r25, 0x24	; 36
 132:	9f 77       	andi	r25, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
 134:	94 bd       	out	0x24, r25	; 36
 136:	09 c0       	rjmp	.+18     	; 0x14a <digitalWrite.constprop.0+0x6a>
		#endif
		#if defined(TCCR2A) && defined(COM2A1)
		case  TIMER2A:  cbi(TCCR2A, COM2A1);    break;
 138:	90 91 b0 00 	lds	r25, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 13c:	9f 77       	andi	r25, 0x7F	; 127
 13e:	03 c0       	rjmp	.+6      	; 0x146 <digitalWrite.constprop.0+0x66>
		#endif
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 140:	90 91 b0 00 	lds	r25, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 144:	9f 7d       	andi	r25, 0xDF	; 223
 146:	90 93 b0 00 	sts	0x00B0, r25	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>

	// If the pin that support PWM output, we need to turn it off
	// before doing a digital write.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);

	out = portOutputRegister(port);
 14a:	f0 e0       	ldi	r31, 0x00	; 0
 14c:	ee 0f       	add	r30, r30
 14e:	ff 1f       	adc	r31, r31
 150:	ee 58       	subi	r30, 0x8E	; 142
 152:	ff 4f       	sbci	r31, 0xFF	; 255
 154:	a5 91       	lpm	r26, Z+
 156:	b4 91       	lpm	r27, Z

	uint8_t oldSREG = SREG;
 158:	9f b7       	in	r25, 0x3f	; 63
	cli();
 15a:	f8 94       	cli

	if (val == LOW) {
 15c:	81 11       	cpse	r24, r1
 15e:	04 c0       	rjmp	.+8      	; 0x168 <digitalWrite.constprop.0+0x88>
		*out &= ~bit;
 160:	8c 91       	ld	r24, X
 162:	20 95       	com	r18
 164:	28 23       	and	r18, r24
 166:	02 c0       	rjmp	.+4      	; 0x16c <digitalWrite.constprop.0+0x8c>
	} else {
		*out |= bit;
 168:	ec 91       	ld	r30, X
 16a:	2e 2b       	or	r18, r30
 16c:	2c 93       	st	X, r18
	}

	SREG = oldSREG;
 16e:	9f bf       	out	0x3f, r25	; 63
 170:	08 95       	ret

00000172 <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
 172:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
 174:	f8 94       	cli
	m = timer0_overflow_count;
 176:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 17a:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 17e:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 182:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
 186:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
 188:	a8 9b       	sbis	0x15, 0	; 21
 18a:	05 c0       	rjmp	.+10     	; 0x196 <micros+0x24>
 18c:	2f 3f       	cpi	r18, 0xFF	; 255
 18e:	19 f0       	breq	.+6      	; 0x196 <micros+0x24>
		m++;
 190:	01 96       	adiw	r24, 0x01	; 1
 192:	a1 1d       	adc	r26, r1
 194:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
 196:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
 198:	ba 2f       	mov	r27, r26
 19a:	a9 2f       	mov	r26, r25
 19c:	98 2f       	mov	r25, r24
 19e:	88 27       	eor	r24, r24
 1a0:	82 0f       	add	r24, r18
 1a2:	91 1d       	adc	r25, r1
 1a4:	a1 1d       	adc	r26, r1
 1a6:	b1 1d       	adc	r27, r1
 1a8:	bc 01       	movw	r22, r24
 1aa:	cd 01       	movw	r24, r26
 1ac:	42 e0       	ldi	r20, 0x02	; 2
 1ae:	66 0f       	add	r22, r22
 1b0:	77 1f       	adc	r23, r23
 1b2:	88 1f       	adc	r24, r24
 1b4:	99 1f       	adc	r25, r25
 1b6:	4a 95       	dec	r20
 1b8:	d1 f7       	brne	.-12     	; 0x1ae <micros+0x3c>
}
 1ba:	08 95       	ret

000001bc <delay.constprop.1>:

void delay(unsigned long ms)
 1bc:	8f 92       	push	r8
 1be:	9f 92       	push	r9
 1c0:	af 92       	push	r10
 1c2:	bf 92       	push	r11
 1c4:	cf 92       	push	r12
 1c6:	df 92       	push	r13
 1c8:	ef 92       	push	r14
 1ca:	ff 92       	push	r15
{
	uint32_t start = micros();
 1cc:	0e 94 b9 00 	call	0x172	; 0x172 <micros>
 1d0:	4b 01       	movw	r8, r22
 1d2:	5c 01       	movw	r10, r24
 1d4:	88 ee       	ldi	r24, 0xE8	; 232
 1d6:	c8 2e       	mov	r12, r24
 1d8:	83 e0       	ldi	r24, 0x03	; 3
 1da:	d8 2e       	mov	r13, r24
 1dc:	e1 2c       	mov	r14, r1
 1de:	f1 2c       	mov	r15, r1

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
 1e0:	0e 94 b9 00 	call	0x172	; 0x172 <micros>
 1e4:	dc 01       	movw	r26, r24
 1e6:	cb 01       	movw	r24, r22
 1e8:	88 19       	sub	r24, r8
 1ea:	99 09       	sbc	r25, r9
 1ec:	aa 09       	sbc	r26, r10
 1ee:	bb 09       	sbc	r27, r11
 1f0:	88 3e       	cpi	r24, 0xE8	; 232
 1f2:	93 40       	sbci	r25, 0x03	; 3
 1f4:	a1 05       	cpc	r26, r1
 1f6:	b1 05       	cpc	r27, r1
 1f8:	98 f3       	brcs	.-26     	; 0x1e0 <delay.constprop.1+0x24>
			ms--;
 1fa:	21 e0       	ldi	r18, 0x01	; 1
 1fc:	c2 1a       	sub	r12, r18
 1fe:	d1 08       	sbc	r13, r1
 200:	e1 08       	sbc	r14, r1
 202:	f1 08       	sbc	r15, r1
			start += 1000;
 204:	88 ee       	ldi	r24, 0xE8	; 232
 206:	88 0e       	add	r8, r24
 208:	83 e0       	ldi	r24, 0x03	; 3
 20a:	98 1e       	adc	r9, r24
 20c:	a1 1c       	adc	r10, r1
 20e:	b1 1c       	adc	r11, r1
{
	uint32_t start = micros();

	while (ms > 0) {
		yield();
		while ( ms > 0 && (micros() - start) >= 1000) {
 210:	c1 14       	cp	r12, r1
 212:	d1 04       	cpc	r13, r1
 214:	e1 04       	cpc	r14, r1
 216:	f1 04       	cpc	r15, r1
 218:	19 f7       	brne	.-58     	; 0x1e0 <delay.constprop.1+0x24>
			ms--;
			start += 1000;
		}
	}
}
 21a:	ff 90       	pop	r15
 21c:	ef 90       	pop	r14
 21e:	df 90       	pop	r13
 220:	cf 90       	pop	r12
 222:	bf 90       	pop	r11
 224:	af 90       	pop	r10
 226:	9f 90       	pop	r9
 228:	8f 90       	pop	r8
 22a:	08 95       	ret

0000022c <__vector_16>:
#if defined(TIM0_OVF_vect)
ISR(TIM0_OVF_vect)
#else
ISR(TIMER0_OVF_vect)
#endif
{
 22c:	1f 92       	push	r1
 22e:	0f 92       	push	r0
 230:	0f b6       	in	r0, 0x3f	; 63
 232:	0f 92       	push	r0
 234:	11 24       	eor	r1, r1
 236:	2f 93       	push	r18
 238:	3f 93       	push	r19
 23a:	8f 93       	push	r24
 23c:	9f 93       	push	r25
 23e:	af 93       	push	r26
 240:	bf 93       	push	r27
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
 242:	80 91 01 01 	lds	r24, 0x0101	; 0x800101 <timer0_millis>
 246:	90 91 02 01 	lds	r25, 0x0102	; 0x800102 <timer0_millis+0x1>
 24a:	a0 91 03 01 	lds	r26, 0x0103	; 0x800103 <timer0_millis+0x2>
 24e:	b0 91 04 01 	lds	r27, 0x0104	; 0x800104 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
 252:	30 91 00 01 	lds	r19, 0x0100	; 0x800100 <_edata>

	m += MILLIS_INC;
	f += FRACT_INC;
 256:	23 e0       	ldi	r18, 0x03	; 3
 258:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 25a:	2d 37       	cpi	r18, 0x7D	; 125
 25c:	20 f4       	brcc	.+8      	; 0x266 <__vector_16+0x3a>
	// copy these to local variables so they can be stored in registers
	// (volatile variables must be read from memory on every access)
	unsigned long m = timer0_millis;
	unsigned char f = timer0_fract;

	m += MILLIS_INC;
 25e:	01 96       	adiw	r24, 0x01	; 1
 260:	a1 1d       	adc	r26, r1
 262:	b1 1d       	adc	r27, r1
 264:	05 c0       	rjmp	.+10     	; 0x270 <__vector_16+0x44>
	f += FRACT_INC;
	if (f >= FRACT_MAX) {
		f -= FRACT_MAX;
 266:	26 e8       	ldi	r18, 0x86	; 134
 268:	23 0f       	add	r18, r19
		m += 1;
 26a:	02 96       	adiw	r24, 0x02	; 2
 26c:	a1 1d       	adc	r26, r1
 26e:	b1 1d       	adc	r27, r1
	}

	timer0_fract = f;
 270:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <_edata>
	timer0_millis = m;
 274:	80 93 01 01 	sts	0x0101, r24	; 0x800101 <timer0_millis>
 278:	90 93 02 01 	sts	0x0102, r25	; 0x800102 <timer0_millis+0x1>
 27c:	a0 93 03 01 	sts	0x0103, r26	; 0x800103 <timer0_millis+0x2>
 280:	b0 93 04 01 	sts	0x0104, r27	; 0x800104 <timer0_millis+0x3>
	timer0_overflow_count++;
 284:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 288:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 28c:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 290:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
 294:	01 96       	adiw	r24, 0x01	; 1
 296:	a1 1d       	adc	r26, r1
 298:	b1 1d       	adc	r27, r1
 29a:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <timer0_overflow_count>
 29e:	90 93 06 01 	sts	0x0106, r25	; 0x800106 <timer0_overflow_count+0x1>
 2a2:	a0 93 07 01 	sts	0x0107, r26	; 0x800107 <timer0_overflow_count+0x2>
 2a6:	b0 93 08 01 	sts	0x0108, r27	; 0x800108 <timer0_overflow_count+0x3>
}
 2aa:	bf 91       	pop	r27
 2ac:	af 91       	pop	r26
 2ae:	9f 91       	pop	r25
 2b0:	8f 91       	pop	r24
 2b2:	3f 91       	pop	r19
 2b4:	2f 91       	pop	r18
 2b6:	0f 90       	pop	r0
 2b8:	0f be       	out	0x3f, r0	; 63
 2ba:	0f 90       	pop	r0
 2bc:	1f 90       	pop	r1
 2be:	18 95       	reti

000002c0 <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
 2c0:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 2c2:	84 b5       	in	r24, 0x24	; 36
 2c4:	82 60       	ori	r24, 0x02	; 2
 2c6:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 2c8:	84 b5       	in	r24, 0x24	; 36
 2ca:	81 60       	ori	r24, 0x01	; 1
 2cc:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 2ce:	85 b5       	in	r24, 0x25	; 37
 2d0:	82 60       	ori	r24, 0x02	; 2
 2d2:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 2d4:	85 b5       	in	r24, 0x25	; 37
 2d6:	81 60       	ori	r24, 0x01	; 1
 2d8:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 2da:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
 2de:	81 60       	ori	r24, 0x01	; 1
 2e0:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 2e4:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 2e8:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 2ec:	82 60       	ori	r24, 0x02	; 2
 2ee:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 2f2:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
 2f6:	81 60       	ori	r24, 0x01	; 1
 2f8:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__TEXT_REGION_LENGTH__+0x7e0081>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 2fc:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>
 300:	81 60       	ori	r24, 0x01	; 1
 302:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__TEXT_REGION_LENGTH__+0x7e0080>

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 306:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>
 30a:	84 60       	ori	r24, 0x04	; 4
 30c:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__TEXT_REGION_LENGTH__+0x7e00b1>

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 310:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
 314:	81 60       	ori	r24, 0x01	; 1
 316:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__TEXT_REGION_LENGTH__+0x7e00b0>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
 31a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 31e:	84 60       	ori	r24, 0x04	; 4
 320:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		sbi(ADCSRA, ADPS1);
 324:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 328:	82 60       	ori	r24, 0x02	; 2
 32a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		sbi(ADCSRA, ADPS0);
 32e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 332:	81 60       	ori	r24, 0x01	; 1
 334:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 338:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
 33c:	80 68       	ori	r24, 0x80	; 128
 33e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__TEXT_REGION_LENGTH__+0x7e007a>
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 342:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
#include "wiring_private.h"
#include "pins_arduino.h"

void pinMode(uint8_t pin, uint8_t mode)
{
	uint8_t bit = digitalPinToBitMask(pin);
 346:	e3 ef       	ldi	r30, 0xF3	; 243
 348:	f0 e0       	ldi	r31, 0x00	; 0
 34a:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
 34c:	ef ed       	ldi	r30, 0xDF	; 223
 34e:	f0 e0       	ldi	r31, 0x00	; 0
 350:	84 91       	lpm	r24, Z
	volatile uint8_t *reg, *out;

	if (port == NOT_A_PIN) return;
 352:	88 23       	and	r24, r24
 354:	c1 f0       	breq	.+48     	; 0x386 <main+0xc6>

	// JWS: can I let the optimizer do this?
	reg = portModeRegister(port);
 356:	90 e0       	ldi	r25, 0x00	; 0
 358:	88 0f       	add	r24, r24
 35a:	99 1f       	adc	r25, r25
 35c:	fc 01       	movw	r30, r24
 35e:	e8 59       	subi	r30, 0x98	; 152
 360:	ff 4f       	sbci	r31, 0xFF	; 255
 362:	c5 91       	lpm	r28, Z+
 364:	d4 91       	lpm	r29, Z
	out = portOutputRegister(port);
 366:	fc 01       	movw	r30, r24
 368:	ee 58       	subi	r30, 0x8E	; 142
 36a:	ff 4f       	sbci	r31, 0xFF	; 255
 36c:	a5 91       	lpm	r26, Z+
 36e:	b4 91       	lpm	r27, Z

	if (mode == INPUT) { 
		uint8_t oldSREG = SREG;
 370:	9f b7       	in	r25, 0x3f	; 63
                cli();
 372:	f8 94       	cli
		*reg &= ~bit;
 374:	88 81       	ld	r24, Y
 376:	e2 2f       	mov	r30, r18
 378:	e0 95       	com	r30
 37a:	8e 23       	and	r24, r30
 37c:	88 83       	st	Y, r24
		*out &= ~bit;
 37e:	8c 91       	ld	r24, X
 380:	e8 23       	and	r30, r24
 382:	ec 93       	st	X, r30
		SREG = oldSREG;
 384:	9f bf       	out	0x3f, r25	; 63
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
 386:	c0 e0       	ldi	r28, 0x00	; 0
 388:	d0 e0       	ldi	r29, 0x00	; 0
  pinMode(99, INPUT);
}

// the loop function runs over and over again forever
void loop() {
  digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
 38a:	81 e0       	ldi	r24, 0x01	; 1
 38c:	0e 94 70 00 	call	0xe0	; 0xe0 <digitalWrite.constprop.0>
  delay(1000);                       // wait for a second
 390:	0e 94 de 00 	call	0x1bc	; 0x1bc <delay.constprop.1>
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
 394:	80 e0       	ldi	r24, 0x00	; 0
 396:	0e 94 70 00 	call	0xe0	; 0xe0 <digitalWrite.constprop.0>
  delay(1000);                       // wait for a second
 39a:	0e 94 de 00 	call	0x1bc	; 0x1bc <delay.constprop.1>
 39e:	20 97       	sbiw	r28, 0x00	; 0
 3a0:	a1 f3       	breq	.-24     	; 0x38a <main+0xca>
 3a2:	0e 94 00 00 	call	0	; 0x0 <__vectors>
 3a6:	f1 cf       	rjmp	.-30     	; 0x38a <main+0xca>

000003a8 <_exit>:
 3a8:	f8 94       	cli

000003aa <__stop_program>:
 3aa:	ff cf       	rjmp	.-2      	; 0x3aa <__stop_program>
