	.file	"Arduino-usbserial.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__  = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
	.section	.text.EVENT_CDC_Device_LineEncodingChanged,"ax",@progbits
.global	EVENT_CDC_Device_LineEncodingChanged
	.type	EVENT_CDC_Device_LineEncodingChanged, @function
EVENT_CDC_Device_LineEncodingChanged:
.LFB97:
.LSM0:
.LVL0:
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
	movw r30,r24
.LSM1:
	ldd r24,Z+20
.LVL1:
	cpi r24,lo8(1)
	breq .L3
	cpi r24,lo8(2)
	brne .L16
	rjmp .L18
.L3:
	ldi r20,lo8(48)
	mov r13,r20
.LVL2:
	rjmp .L5
.LVL3:
.L16:
	clr r13
.LVL4:
	rjmp .L5
.LVL5:
.L18:
	ldi r19,lo8(32)
	mov r13,r19
.LVL6:
.L5:
.LSM2:
	ldd r24,Z+19
	cpi r24,lo8(2)
	brne .L6
.LSM3:
	ldi r24,lo8(8)
	or r13,r24
.L6:
.LSM4:
	ldd r24,Z+21
	cpi r24,lo8(7)
	breq .L9
	cpi r24,lo8(8)
	breq .L10
	cpi r24,lo8(6)
	brne .L7
.LSM5:
	ldi r24,lo8(2)
	rjmp .L17
.L9:
.LSM6:
	ldi r24,lo8(4)
	rjmp .L17
.L10:
.LSM7:
	ldi r24,lo8(6)
.L17:
	or r13,r24
.L7:
.LSM8:
	sts 201,__zero_reg__
.LSM9:
	sts 200,__zero_reg__
.LSM10:
	sts 202,__zero_reg__
.LSM11:
	ldd r14,Z+15
	ldd r15,Z+16
	ldd r16,Z+17
	ldd r17,Z+18
	ldi r24,lo8(57600)
	cp r14,r24
	ldi r24,hi8(57600)
	cpc r15,r24
	ldi r24,hlo8(57600)
	cpc r16,r24
	ldi r24,hhi8(57600)
	cpc r17,r24
	brne .L11
	ldi r18,lo8(16)
	ldi r19,hi8(16)
	rjmp .L12
.L11:
	movw r24,r16
	movw r22,r14
	lsr r25
	ror r24
	ror r23
	ror r22
	subi r22,lo8(-(2000000))
	sbci r23,hi8(-(2000000))
	sbci r24,hlo8(-(2000000))
	sbci r25,hhi8(-(2000000))
	movw r20,r16
	movw r18,r14
	call __udivmodsi4
.LVL7:
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
.LVL8:
.L12:
	sts (204)+1,r19
	sts 204,r18
.LSM12:
	sts 202,r13
.LSM13:
	ldi r24,lo8(57600)
	cp r14,r24
	ldi r24,hi8(57600)
	cpc r15,r24
	ldi r24,hlo8(57600)
	cpc r16,r24
	ldi r24,hhi8(57600)
	cpc r17,r24
	breq .L13
	ldi r24,lo8(2)
	rjmp .L14
.L13:
	ldi r24,lo8(0)
.L14:
	sts 200,r24
.LSM14:
	ldi r24,lo8(-104)
	sts 201,r24
/* epilogue start */
.LSM15:
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
.LVL9:
	ret
.LFE97:
	.size	EVENT_CDC_Device_LineEncodingChanged, .-EVENT_CDC_Device_LineEncodingChanged
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB98:
.LSM16:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
.LSM17:
	lds r25,206
.LVL10:
.LSM18:
	in r24,62-32
	cpi r24,lo8(4)
	brne .L22
.LBB119:
.LBB120:
.LSM19:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,(USARTtoUSB_Buffer+128)+1
	st Z,r25
.LSM20:
	lds r30,USARTtoUSB_Buffer+128
	lds r31,(USARTtoUSB_Buffer+128)+1
	movw r24,r30
	adiw r24,1
	sts (USARTtoUSB_Buffer+128)+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L21
.LSM21:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L21:
.LBB121:
.LSM22:
	in r25,__SREG__
.LVL11:
.LBB122:
.LBB123:
.LSM23:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE123:
.LBE122:
.LSM24:
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LBB124:
.LBB125:
.LSM25:
	out __SREG__,r25
.LSM26:
.LVL12:
.L22:
/* epilogue start */
.LBE125:
.LBE124:
.LBE121:
.LBE120:
.LBE119:
.LSM27:
	pop r31
	pop r30
	pop r25
.LVL13:
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.LFE98:
	.size	__vector_23, .-__vector_23
	.section	.text.EVENT_CDC_Device_ControLineStateChanged,"ax",@progbits
.global	EVENT_CDC_Device_ControLineStateChanged
	.type	EVENT_CDC_Device_ControLineStateChanged, @function
EVENT_CDC_Device_ControLineStateChanged:
.LFB99:
.LSM28:
.LVL14:
/* prologue: function */
/* frame size = 0 */
.LSM29:
	movw r30,r24
	ldd r24,Z+13
.LVL15:
	sbrs r24,0
	rjmp .L24
.LSM30:
	cbi 37-32,0
	ret
.L24:
.LSM31:
	sbi 37-32,0
	ret
.LFE99:
	.size	EVENT_CDC_Device_ControLineStateChanged, .-EVENT_CDC_Device_ControLineStateChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB96:
.LSM32:
/* prologue: function */
/* frame size = 0 */
.LSM33:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ProcessControlRequest
/* epilogue start */
.LSM34:
	ret
.LFE96:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB95:
.LSM35:
/* prologue: function */
/* frame size = 0 */
.LSM36:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ConfigureEndpoints
/* epilogue start */
.LSM37:
	ret
.LFE95:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB94:
.LSM38:
/* prologue: function */
/* frame size = 0 */
.LSM39:
	in r24,84-32
	andi r24,lo8(-9)
	out 84-32,r24
.LSM40:
	ldi r18,lo8(24)
/* #APP */
 ;  143 "Arduino-usbserial.c" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r18
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* #NOAPP */
.LBB126:
.LBB127:
.LSM41:
	ldi r24,lo8(103)
	ldi r25,hi8(103)
	sts (204)+1,r25
	sts 204,r24
.LSM42:
	ldi r24,lo8(6)
	sts 202,r24
.LSM43:
	sts 200,__zero_reg__
.LSM44:
	sts 201,r18
.LSM45:
	sbi 42-32,3
.LSM46:
	sbi 43-32,2
.LBE127:
.LBE126:
.LBB128:
.LBB129:
.LSM47:
	in r24,42-32
	ori r24,lo8(48)
	out 42-32,r24
.LSM48:
	in r24,43-32
	ori r24,lo8(48)
	out 43-32,r24
.LBE129:
.LBE128:
.LSM49:
	call USB_Init
.LSM50:
	ldi r24,lo8(4)
	out 69-32,r24
.LSM51:
	sbi 37-32,0
.LSM52:
	sbi 36-32,0
/* epilogue start */
.LSM53:
	ret
.LFE94:
	.size	SetupHardware, .-SetupHardware
	.section	.text.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB93:
.LSM54:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
.LSM55:
	call SetupHardware
.LBB130:
.LBB131:
.LBB132:
.LSM56:
	in r18,__SREG__
.LBB133:
.LBB134:
.LSM57:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE134:
.LBE133:
.LSM58:
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	sts (USBtoUSART_Buffer+128)+1,r25
	sts USBtoUSART_Buffer+128,r24
.LSM59:
	sts (USBtoUSART_Buffer+130)+1,r25
	sts USBtoUSART_Buffer+130,r24
.LBB135:
.LBB136:
.LSM60:
	out __SREG__,r18
.LSM61:
.LBE136:
.LBE135:
.LBE132:
.LBE131:
.LBE130:
.LBB137:
.LBB138:
.LBB139:
.LSM62:
	in r18,__SREG__
.LBB140:
.LBB141:
.LSM63:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE141:
.LBE140:
.LSM64:
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts (USARTtoUSB_Buffer+128)+1,r25
	sts USARTtoUSB_Buffer+128,r24
.LSM65:
	sts (USARTtoUSB_Buffer+130)+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LBB142:
.LBB143:
.LSM66:
	out __SREG__,r18
.LSM67:
.LBE143:
.LBE142:
.LBE139:
.LBE138:
.LBE137:
.LSM68:
/* #APP */
 ;  87 "Arduino-usbserial.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB144:
.LBB145:
.LBB146:
.LBB147:
.LSM69:
	ldi r28,lo8(USBtoUSART_Buffer)
	ldi r29,hi8(USBtoUSART_Buffer)
.LBE147:
.LBE146:
.LBE145:
.LBB155:
.LBB156:
.LSM70:
	ldi r21,lo8(USARTtoUSB_Buffer)
	mov r14,r21
	ldi r21,hi8(USARTtoUSB_Buffer)
	mov r15,r21
.LBE156:
.LBE155:
.LSM71:
	ldi r16,lo8(3)
.LVL16:
.L45:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
.LSM72:
	in r24,__SREG__
.LBB168:
.LBB169:
.LSM73:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE169:
.LBE168:
.LSM74:
	lds r25,USBtoUSART_Buffer+132
.LVL17:
.LBB170:
.LBB171:
.LSM75:
	out __SREG__,r24
.LSM76:
.LBE171:
.LBE170:
.LBE167:
.LBE166:
.LBE165:
.LBE164:
.LBE163:
.LSM77:
	cpi r25,lo8(-128)
	breq .L34
.LBB172:
.LSM78:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ReceiveByte
.LVL18:
.LSM79:
	sbrc r25,7
	rjmp .L34
.LVL19:
.LBB154:
.LBB153:
.LSM80:
	lds r30,USBtoUSART_Buffer+128
	lds r31,(USBtoUSART_Buffer+128)+1
	st Z,r24
.LSM81:
	lds r30,USBtoUSART_Buffer+128
	lds r31,(USBtoUSART_Buffer+128)+1
	movw r24,r30
.LVL20:
	adiw r24,1
	sts (USBtoUSART_Buffer+128)+1,r25
	sts USBtoUSART_Buffer+128,r24
	subi r24,lo8(USBtoUSART_Buffer+128)
	sbci r25,hi8(USBtoUSART_Buffer+128)
	brne .L35
.LSM82:
	std Z+2,r29
	std Z+1,r28
.L35:
.LBB148:
.LSM83:
	in r25,__SREG__
.LBB149:
.LBB150:
.LSM84:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE150:
.LBE149:
.LSM85:
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(1))
	sts USBtoUSART_Buffer+132,r24
.LBB151:
.LBB152:
.LSM86:
	out __SREG__,r25
.LSM87:
.LVL21:
.L34:
.LBE152:
.LBE151:
.LBE148:
.LBE153:
.LBE154:
.LBE172:
.LBB173:
.LBB174:
.LBB175:
.LSM88:
	in r24,__SREG__
.LVL22:
.LBB176:
.LBB177:
.LSM89:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE177:
.LBE176:
.LSM90:
	lds r17,USARTtoUSB_Buffer+132
.LBB178:
.LBB179:
.LSM91:
	out __SREG__,r24
.LSM92:
.LBE179:
.LBE178:
.LBE175:
.LBE174:
.LBE173:
.LSM93:
	sbic 53-32,0
	rjmp .L36
	cpi r17,lo8(97)
	brsh .+2
	rjmp .L37
.L36:
.LSM94:
	sbi 53-32,0
.LSM95:
	lds r24,USARTtoUSB_Buffer+132
	tst r24
	breq .L48
.LBB180:
.LBB181:
.LSM96:
	cbi 43-32,5
.LBE181:
.LBE180:
.LSM97:
	sts PulseMSRemaining,r16
	rjmp .L48
.L40:
.LBB182:
.LBB162:
.LSM98:
	lds r30,USARTtoUSB_Buffer+130
	lds r31,(USARTtoUSB_Buffer+130)+1
	ld r22,Z+
.LVL23:
.LSM99:
	sts (USARTtoUSB_Buffer+130)+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L39
.LSM100:
	sts (USARTtoUSB_Buffer+130)+1,r15
	sts USARTtoUSB_Buffer+130,r14
.L39:
.LBB157:
.LSM101:
	in r25,__SREG__
.LVL24:
.LBB158:
.LBB159:
.LSM102:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE159:
.LBE158:
.LSM103:
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r24
.LBB160:
.LBB161:
.LSM104:
	out __SREG__,r25
.LSM105:
.LBE161:
.LBE160:
.LBE157:
.LBE162:
.LBE182:
.LSM106:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_SendByte
.LVL25:
	subi r17,lo8(-(-1))
.LVL26:
.L48:
.LSM107:
	tst r17
	brne .L40
.LSM108:
	lds r24,PulseMSRemaining
	tst r24
	breq .L41
	lds r24,PulseMSRemaining
	subi r24,lo8(-(-1))
	sts PulseMSRemaining,r24
	lds r24,PulseMSRemaining
	tst r24
	brne .L41
.LBB183:
.LBB184:
.LSM109:
	sbi 43-32,5
.L41:
.LBE184:
.LBE183:
.LSM110:
	lds r24,PulseMSRemaining+1
	tst r24
	breq .L37
	lds r24,PulseMSRemaining+1
	subi r24,lo8(-(-1))
	sts PulseMSRemaining+1,r24
	lds r24,PulseMSRemaining+1
	tst r24
	brne .L37
.LBB185:
.LBB186:
.LSM111:
	sbi 43-32,4
.L37:
.LBE186:
.LBE185:
.LBB187:
.LBB188:
.LBB189:
.LBB190:
.LBB191:
.LSM112:
	in r24,__SREG__
.LBB192:
.LBB193:
.LSM113:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE193:
.LBE192:
.LSM114:
	lds r25,USBtoUSART_Buffer+132
.LVL27:
.LBB194:
.LBB195:
.LSM115:
	out __SREG__,r24
.LSM116:
.LBE195:
.LBE194:
.LBE191:
.LBE190:
.LBE189:
.LBE188:
.LBE187:
.LSM117:
	tst r25
	breq .L42
.LBB196:
.LBB197:
.LSM118:
	lds r30,USBtoUSART_Buffer+130
	lds r31,(USBtoUSART_Buffer+130)+1
	ld r18,Z+
.LVL28:
.LSM119:
	sts (USBtoUSART_Buffer+130)+1,r31
	sts USBtoUSART_Buffer+130,r30
	subi r30,lo8(USBtoUSART_Buffer+128)
	sbci r31,hi8(USBtoUSART_Buffer+128)
	brne .L43
.LSM120:
	sts (USBtoUSART_Buffer+130)+1,r29
	sts USBtoUSART_Buffer+130,r28
.L43:
.LBB198:
.LSM121:
	in r25,__SREG__
.LVL29:
.LBB199:
.LBB200:
.LSM122:
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
/* #NOAPP */
.LBE200:
.LBE199:
.LSM123:
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(-1))
	sts USBtoUSART_Buffer+132,r24
.LBB201:
.LBB202:
.LSM124:
	out __SREG__,r25
.LSM125:
.L44:
.LBE202:
.LBE201:
.LBE198:
.LBE197:
.LBE196:
.LBB203:
.LBB204:
.LSM126:
	lds r24,200
	sbrs r24,5
	rjmp .L44
.LSM127:
	sts 206,r18
.LBE204:
.LBE203:
.LBB205:
.LBB206:
.LSM128:
	cbi 43-32,4
.LBE206:
.LBE205:
.LSM129:
	sts PulseMSRemaining+1,r16
.LVL30:
.L42:
.LSM130:
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_USBTask
.LVL31:
.LSM131:
	call USB_USBTask
	rjmp .L45
.LBE144:
.LFE93:
	.size	main, .-main
.global	VirtualSerial_CDC_Interface
	.data
	.type	VirtualSerial_CDC_Interface, @object
	.size	VirtualSerial_CDC_Interface, 22
VirtualSerial_CDC_Interface:
	.byte	0
	.byte	3
	.word	64
	.byte	0
	.byte	4
	.word	64
	.byte	0
	.byte	2
	.word	8
	.byte	0
	.skip 9,0
	.comm USBtoUSART_Buffer,133,1
	.comm USARTtoUSB_Buffer,133,1
	.comm PulseMSRemaining,3,1
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB98
	.long	.LFE98-.LFB98
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB99
	.long	.LFE99-.LFB99
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB96
	.long	.LFE96-.LFB96
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB95
	.long	.LFE95-.LFB95
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.p2align	2
.LEFDE12:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL7
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
	.long	.LFE97
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.word	0x1
	.byte	0x5d
	.long	.LVL4
	.long	.LVL5
	.word	0x1
	.byte	0x5d
	.long	.LVL6
	.long	.LVL9
	.word	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.word	0x1
	.byte	0x69
	.long	.LVL12
	.long	.LVL13
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL19
	.long	.LVL20
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL23
	.long	.LVL25
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	.LVL21
	.long	.LVL24
	.word	0x1
	.byte	0x69
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL27
	.long	.LVL29
	.word	0x1
	.byte	0x69
	.long	.LVL30
	.long	.LVL31
	.word	0x1
	.byte	0x69
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL28
	.long	.LVL31
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0xaac
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0x1
	.long	.LASF91
	.long	.LASF92
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x60
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x6
	.byte	0x7a
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x6
	.byte	0x7b
	.long	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x6
	.byte	0x7c
	.long	0x5f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x6
	.byte	0x7e
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0x7
	.byte	0x73
	.long	0xc4
	.uleb128 0x7
	.long	.LASF11
	.sleb128 0
	.uleb128 0x7
	.long	.LASF12
	.sleb128 1
	.uleb128 0x7
	.long	.LASF13
	.sleb128 2
	.uleb128 0x7
	.long	.LASF14
	.sleb128 3
	.uleb128 0x7
	.long	.LASF15
	.sleb128 4
	.uleb128 0x7
	.long	.LASF16
	.sleb128 5
	.byte	0x0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x8
	.byte	0x9c
	.long	0xe3
	.uleb128 0x7
	.long	.LASF19
	.sleb128 0
	.uleb128 0x7
	.long	.LASF20
	.sleb128 1
	.uleb128 0x7
	.long	.LASF21
	.sleb128 2
	.byte	0x0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x8
	.byte	0xa4
	.long	0x10e
	.uleb128 0x7
	.long	.LASF23
	.sleb128 0
	.uleb128 0x7
	.long	.LASF24
	.sleb128 1
	.uleb128 0x7
	.long	.LASF25
	.sleb128 2
	.uleb128 0x7
	.long	.LASF26
	.sleb128 3
	.uleb128 0x7
	.long	.LASF27
	.sleb128 4
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF28
	.uleb128 0x8
	.byte	0xd
	.byte	0x9
	.byte	0x65
	.long	0x1aa
	.uleb128 0x9
	.long	.LASF29
	.byte	0x9
	.byte	0x66
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x9
	.byte	0x68
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF31
	.byte	0x9
	.byte	0x69
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF32
	.byte	0x9
	.byte	0x6a
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF33
	.byte	0x9
	.byte	0x6c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.byte	0x6d
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF35
	.byte	0x9
	.byte	0x6e
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF36
	.byte	0x9
	.byte	0x70
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.long	.LASF37
	.byte	0x9
	.byte	0x71
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF38
	.byte	0x9
	.byte	0x72
	.long	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF39
	.uleb128 0x8
	.byte	0x2
	.byte	0x9
	.byte	0x79
	.long	0x1d6
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.byte	0x7a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x9
	.byte	0x7d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x8
	.byte	0x7
	.byte	0x9
	.byte	0x84
	.long	0x217
	.uleb128 0x9
	.long	.LASF42
	.byte	0x9
	.byte	0x85
	.long	0x6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x9
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF44
	.byte	0x9
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF45
	.byte	0x9
	.byte	0x8c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x8
	.byte	0x9
	.byte	0x9
	.byte	0x77
	.long	0x23c
	.uleb128 0x9
	.long	.LASF46
	.byte	0x9
	.byte	0x81
	.long	0x1b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF47
	.byte	0x9
	.byte	0x8d
	.long	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x8
	.byte	0x16
	.byte	0x9
	.byte	0x63
	.long	0x261
	.uleb128 0x9
	.long	.LASF48
	.byte	0x9
	.byte	0x73
	.long	0x261
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x9
	.byte	0x90
	.long	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xa
	.long	0x115
	.uleb128 0x3
	.long	.LASF50
	.byte	0x9
	.byte	0x93
	.long	0x23c
	.uleb128 0x8
	.byte	0x85
	.byte	0x2
	.byte	0x47
	.long	0x2b4
	.uleb128 0x9
	.long	.LASF51
	.byte	0x2
	.byte	0x48
	.long	0x2b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0xb
	.string	"In"
	.byte	0x2
	.byte	0x49
	.long	0x2c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xb
	.string	"Out"
	.byte	0x2
	.byte	0x4a
	.long	0x2c4
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF52
	.byte	0x2
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0x0
	.uleb128 0xc
	.long	0x30
	.long	0x2c4
	.uleb128 0xd
	.long	0x90
	.byte	0x7f
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF53
	.byte	0x2
	.byte	0x4c
	.long	0x271
	.uleb128 0x8
	.byte	0x3
	.byte	0x1
	.byte	0x2f
	.long	0x308
	.uleb128 0x9
	.long	.LASF54
	.byte	0x1
	.byte	0x30
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x1
	.byte	0x31
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF56
	.byte	0x1
	.byte	0x32
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xf
	.long	.LASF93
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x10
	.long	.LASF59
	.byte	0x3
	.byte	0x45
	.byte	0x1
	.byte	0x3
	.long	0x32e
	.uleb128 0x11
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0x32e
	.byte	0x0
	.uleb128 0xe
	.byte	0x2
	.long	0x334
	.uleb128 0xa
	.long	0x30
	.uleb128 0x12
	.long	.LASF66
	.byte	0x2
	.byte	0x6c
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x381
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0x6b
	.long	0x381
	.uleb128 0x14
	.long	.LASF52
	.byte	0x2
	.byte	0x6d
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2
	.byte	0x6f
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x2
	.byte	0x6f
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.long	0x386
	.uleb128 0xe
	.byte	0x2
	.long	0x2ca
	.uleb128 0x10
	.long	.LASF60
	.byte	0x2
	.byte	0xa0
	.byte	0x1
	.byte	0x3
	.long	0x3d0
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0x9e
	.long	0x381
	.uleb128 0x13
	.long	.LASF61
	.byte	0x2
	.byte	0x9f
	.long	0x334
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2
	.byte	0xa6
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x2
	.byte	0xa6
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x4
	.byte	0x65
	.byte	0x1
	.byte	0x3
	.long	0x3f4
	.uleb128 0x13
	.long	.LASF63
	.byte	0x4
	.byte	0x63
	.long	0x3f4
	.uleb128 0x13
	.long	.LASF64
	.byte	0x4
	.byte	0x64
	.long	0x3f9
	.byte	0x0
	.uleb128 0xa
	.long	0x6d
	.uleb128 0xa
	.long	0x1aa
	.uleb128 0x18
	.long	.LASF94
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.long	.LASF65
	.byte	0x2
	.byte	0x56
	.byte	0x1
	.byte	0x3
	.long	0x440
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0x55
	.long	0x381
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2
	.byte	0x57
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x2
	.byte	0x57
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.long	.LASF67
	.byte	0x2
	.byte	0x80
	.byte	0x1
	.long	0x1aa
	.byte	0x3
	.long	0x47a
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0x7f
	.long	0x381
	.uleb128 0x15
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF68
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.byte	0x3
	.long	0x493
	.uleb128 0x13
	.long	.LASF69
	.byte	0x5
	.byte	0x49
	.long	0x334
	.byte	0x0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0x4db
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0xb6
	.long	0x381
	.uleb128 0x14
	.long	.LASF61
	.byte	0x2
	.byte	0xb8
	.long	0x30
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2
	.byte	0xbd
	.long	0x30
	.uleb128 0x14
	.long	.LASF58
	.byte	0x2
	.byte	0xbd
	.long	0x30
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.byte	0x3
	.long	0x4f4
	.uleb128 0x13
	.long	.LASF69
	.byte	0x5
	.byte	0x4e
	.long	0x334
	.byte	0x0
	.uleb128 0x12
	.long	.LASF72
	.byte	0x2
	.byte	0x91
	.byte	0x1
	.long	0x1aa
	.byte	0x3
	.long	0x52e
	.uleb128 0x13
	.long	.LASF51
	.byte	0x2
	.byte	0x90
	.long	0x381
	.uleb128 0x15
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x15
	.uleb128 0x15
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x16
	.uleb128 0x15
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.long	.LASF73
	.byte	0x4
	.byte	0x8d
	.byte	0x1
	.byte	0x3
	.long	0x547
	.uleb128 0x13
	.long	.LASF74
	.byte	0x4
	.byte	0x8c
	.long	0x547
	.byte	0x0
	.uleb128 0xa
	.long	0x10e
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF75
	.byte	0x1
	.byte	0xaf
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x583
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0xae
	.long	0x583
	.long	.LLST1
	.uleb128 0x1c
	.long	.LASF77
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.long	.LLST2
	.byte	0x0
	.uleb128 0xa
	.long	0x588
	.uleb128 0xe
	.byte	0x2
	.long	0x266
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF76
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x608
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LLST4
	.uleb128 0x1d
	.long	0x38c
	.long	.LBB119
	.long	.LBE119
	.byte	0x1
	.byte	0xe3
	.uleb128 0x17
	.long	0x3a4
	.uleb128 0x17
	.long	0x399
	.uleb128 0x1e
	.long	.LBB121
	.long	.LBE121
	.uleb128 0x19
	.long	0x3b0
	.uleb128 0x19
	.long	0x3bb
	.uleb128 0x1f
	.long	0x308
	.long	.LBB122
	.long	.LBE122
	.byte	0x2
	.byte	0xa6
	.uleb128 0x1d
	.long	0x315
	.long	.LBB124
	.long	.LBE124
	.byte	0x2
	.byte	0xa6
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF79
	.byte	0x1
	.byte	0xeb
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x63b
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0xea
	.long	0x583
	.long	.LLST6
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0xec
	.long	0x1aa
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF82
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x20
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0x6a9
	.uleb128 0x21
	.long	0x3d0
	.long	.LBB126
	.long	.LBE126
	.byte	0x1
	.byte	0x92
	.long	0x699
	.uleb128 0x17
	.long	0x3e8
	.uleb128 0x17
	.long	0x3dd
	.byte	0x0
	.uleb128 0x1f
	.long	0x3fe
	.long	.LBB128
	.long	.LBE128
	.byte	0x1
	.byte	0x93
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF95
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0x4d
	.long	.LFB93
	.long	.LFE93
	.byte	0x2
	.byte	0x90
	.uleb128 0x20
	.long	0xa62
	.uleb128 0x21
	.long	0x407
	.long	.LBB130
	.long	.LBE130
	.byte	0x1
	.byte	0x54
	.long	0x716
	.uleb128 0x17
	.long	0x414
	.uleb128 0x1e
	.long	.LBB132
	.long	.LBE132
	.uleb128 0x19
	.long	0x420
	.uleb128 0x19
	.long	0x42b
	.uleb128 0x1f
	.long	0x308
	.long	.LBB133
	.long	.LBE133
	.byte	0x2
	.byte	0x57
	.uleb128 0x1d
	.long	0x315
	.long	.LBB135
	.long	.LBE135
	.byte	0x2
	.byte	0x57
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x407
	.long	.LBB137
	.long	.LBE137
	.byte	0x1
	.byte	0x55
	.long	0x767
	.uleb128 0x17
	.long	0x414
	.uleb128 0x1e
	.long	.LBB139
	.long	.LBE139
	.uleb128 0x19
	.long	0x420
	.uleb128 0x19
	.long	0x42b
	.uleb128 0x1f
	.long	0x308
	.long	.LBB140
	.long	.LBE140
	.byte	0x2
	.byte	0x57
	.uleb128 0x1d
	.long	0x315
	.long	.LBB142
	.long	.LBE142
	.byte	0x2
	.byte	0x57
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x23
	.long	.LASF85
	.byte	0x1
	.byte	0x66
	.long	0x30
	.byte	0x1
	.byte	0x61
	.uleb128 0x24
	.long	.Ldebug_ranges0+0x0
	.long	0x7e4
	.uleb128 0x1c
	.long	.LASF78
	.byte	0x1
	.byte	0x5e
	.long	0x42
	.long	.LLST11
	.uleb128 0x25
	.long	0x38c
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x62
	.uleb128 0x17
	.long	0x3a4
	.uleb128 0x17
	.long	0x399
	.uleb128 0x1e
	.long	.LBB148
	.long	.LBE148
	.uleb128 0x19
	.long	0x3b0
	.uleb128 0x19
	.long	0x3bb
	.uleb128 0x1f
	.long	0x308
	.long	.LBB149
	.long	.LBE149
	.byte	0x2
	.byte	0xa6
	.uleb128 0x1d
	.long	0x315
	.long	.LBB151
	.long	.LBE151
	.byte	0x2
	.byte	0xa6
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.long	0x493
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x72
	.long	0x840
	.uleb128 0x17
	.long	0x4a4
	.uleb128 0x27
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x28
	.long	0x4af
	.long	.LLST12
	.uleb128 0x1e
	.long	.LBB157
	.long	.LBE157
	.uleb128 0x19
	.long	0x4bb
	.uleb128 0x19
	.long	0x4c6
	.uleb128 0x1f
	.long	0x308
	.long	.LBB158
	.long	.LBE158
	.byte	0x2
	.byte	0xbd
	.uleb128 0x1d
	.long	0x315
	.long	.LBB160
	.long	.LBE160
	.byte	0x2
	.byte	0xbd
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x440
	.long	.LBB163
	.long	.LBE163
	.byte	0x1
	.byte	0x5c
	.long	0x8b4
	.uleb128 0x1d
	.long	0x339
	.long	.LBB165
	.long	.LBE165
	.byte	0x2
	.byte	0x81
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1e
	.long	.LBB166
	.long	.LBE166
	.uleb128 0x28
	.long	0x355
	.long	.LLST13
	.uleb128 0x1e
	.long	.LBB167
	.long	.LBE167
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1f
	.long	0x308
	.long	.LBB168
	.long	.LBE168
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1d
	.long	0x315
	.long	.LBB170
	.long	.LBE170
	.byte	0x2
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x339
	.long	.LBB173
	.long	.LBE173
	.byte	0x1
	.byte	0x66
	.long	0x90f
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1e
	.long	.LBB174
	.long	.LBE174
	.uleb128 0x1e
	.long	.LBB175
	.long	.LBE175
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1f
	.long	0x308
	.long	.LBB176
	.long	.LBE176
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1d
	.long	0x315
	.long	.LBB178
	.long	.LBE178
	.byte	0x2
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x47a
	.long	.LBB180
	.long	.LBE180
	.byte	0x1
	.byte	0x6c
	.long	0x928
	.uleb128 0x17
	.long	0x487
	.byte	0x0
	.uleb128 0x21
	.long	0x4db
	.long	.LBB183
	.long	.LBE183
	.byte	0x1
	.byte	0x76
	.long	0x941
	.uleb128 0x17
	.long	0x4e8
	.byte	0x0
	.uleb128 0x21
	.long	0x4db
	.long	.LBB185
	.long	.LBE185
	.byte	0x1
	.byte	0x7a
	.long	0x95a
	.uleb128 0x17
	.long	0x4e8
	.byte	0x0
	.uleb128 0x21
	.long	0x4f4
	.long	.LBB187
	.long	.LBE187
	.byte	0x1
	.byte	0x7e
	.long	0x9ce
	.uleb128 0x1d
	.long	0x339
	.long	.LBB189
	.long	.LBE189
	.byte	0x2
	.byte	0x92
	.uleb128 0x17
	.long	0x34a
	.uleb128 0x1e
	.long	.LBB190
	.long	.LBE190
	.uleb128 0x28
	.long	0x355
	.long	.LLST14
	.uleb128 0x1e
	.long	.LBB191
	.long	.LBE191
	.uleb128 0x19
	.long	0x361
	.uleb128 0x19
	.long	0x36c
	.uleb128 0x1f
	.long	0x308
	.long	.LBB192
	.long	.LBE192
	.byte	0x2
	.byte	0x6f
	.uleb128 0x1d
	.long	0x315
	.long	.LBB194
	.long	.LBE194
	.byte	0x2
	.byte	0x6f
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x493
	.long	.LBB196
	.long	.LBE196
	.byte	0x1
	.byte	0x7f
	.long	0xa32
	.uleb128 0x17
	.long	0x4a4
	.uleb128 0x1e
	.long	.LBB197
	.long	.LBE197
	.uleb128 0x28
	.long	0x4af
	.long	.LLST15
	.uleb128 0x1e
	.long	.LBB198
	.long	.LBE198
	.uleb128 0x19
	.long	0x4bb
	.uleb128 0x19
	.long	0x4c6
	.uleb128 0x1f
	.long	0x308
	.long	.LBB199
	.long	.LBE199
	.byte	0x2
	.byte	0xbd
	.uleb128 0x1d
	.long	0x315
	.long	.LBB201
	.long	.LBE201
	.byte	0x2
	.byte	0xbd
	.uleb128 0x17
	.long	0x322
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.long	0x52e
	.long	.LBB203
	.long	.LBE203
	.byte	0x1
	.byte	0x7f
	.long	0xa4b
	.uleb128 0x17
	.long	0x53b
	.byte	0x0
	.uleb128 0x1d
	.long	0x47a
	.long	.LBB205
	.long	.LBE205
	.byte	0x1
	.byte	0x81
	.uleb128 0x17
	.long	0x487
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.long	.LASF86
	.byte	0x1
	.byte	0x28
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x29
	.long	.LASF87
	.byte	0x1
	.byte	0x2b
	.long	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x29
	.long	.LASF88
	.byte	0x1
	.byte	0x33
	.long	0xa98
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PulseMSRemaining
	.uleb128 0x2a
	.long	0x2d5
	.uleb128 0x29
	.long	.LASF89
	.byte	0x1
	.byte	0x39
	.long	0x266
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x146
	.word	0x2
	.long	.Ldebug_info0
	.long	0xab0
	.long	0x54c
	.string	"EVENT_CDC_Device_LineEncodingChanged"
	.long	0x58e
	.string	"__vector_23"
	.long	0x608
	.string	"EVENT_CDC_Device_ControLineStateChanged"
	.long	0x63b
	.string	"EVENT_USB_Device_UnhandledControlRequest"
	.long	0x64f
	.string	"EVENT_USB_Device_ConfigurationChanged"
	.long	0x663
	.string	"SetupHardware"
	.long	0x6a9
	.string	"main"
	.long	0xa62
	.string	"USBtoUSART_Buffer"
	.long	0xa74
	.string	"USARTtoUSB_Buffer"
	.long	0xa86
	.string	"PulseMSRemaining"
	.long	0xa9d
	.string	"VirtualSerial_CDC_Interface"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB145
	.long	.LBE145
	.long	.LBB172
	.long	.LBE172
	.long	0x0
	.long	0x0
	.long	.LBB146
	.long	.LBE146
	.long	.LBB154
	.long	.LBE154
	.long	0x0
	.long	0x0
	.long	.LBB155
	.long	.LBE155
	.long	.LBB182
	.long	.LBE182
	.long	0x0
	.long	0x0
	.long	.LBB156
	.long	.LBE156
	.long	.LBB162
	.long	.LBE162
	.long	0x0
	.long	0x0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB96
	.long	.LFE96
	.long	.LFB95
	.long	.LFE95
	.long	.LFB94
	.long	.LFE94
	.long	.LFB93
	.long	.LFE93
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"..//LUFA/Drivers/Peripheral"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/Class/Device"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/Class/Device/../Common"
	.byte	0
	.ascii	"..//LUFA/Drivers/USB/HighLevel/../LowLevel"
	.byte	0
	.ascii	"/Applications/Arduino.app/Contents/Resources/Java/hardware/t"
	.ascii	"ools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include"
	.byte	0
	.ascii	"/Applications/Arduino.app/Contents/Resources/Java/hardware/t"
	.ascii	"ools/avr/bin/../lib/gcc/avr/4.3.2/../../../../avr/include/ut"
	.ascii	"il"
	.byte	0
	.ascii	"Lib"
	.byte	0
	.ascii	"Board"
	.byte	0
	.byte	0x0
	.string	"Arduino-usbserial.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"LightweightRingBuff.h"
	.uleb128 0x7
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/atomic.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"Serial.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"LEDs.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"Device.h"
	.uleb128 0x4
	.uleb128 0x0
	.uleb128 0x0
	.string	"../Common/CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"CDC.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0xc2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE97
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0xf2
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x4
	.uleb128 0x2
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x4
	.uleb128 0x1
	.byte	0xb1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE98
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x3
	.sleb128 234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE99
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM32
	.byte	0xb9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE96
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0xb3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE95
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x9f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x4
	.uleb128 0x4
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM45
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -40
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x4
	.uleb128 0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE94
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x64
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x4
	.uleb128 0x2
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM57
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM58
	.byte	0x4
	.uleb128 0x2
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM59
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM60
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM61
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM62
	.byte	0x4
	.uleb128 0x2
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM63
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM64
	.byte	0x4
	.uleb128 0x2
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM65
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM66
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM67
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM68
	.byte	0x4
	.uleb128 0x1
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM69
	.byte	0x4
	.uleb128 0x2
	.byte	0x61
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM70
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM71
	.byte	0x4
	.uleb128 0x1
	.byte	0x3
	.sleb128 -78
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM72
	.byte	0x4
	.uleb128 0x2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM73
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM74
	.byte	0x4
	.uleb128 0x2
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM75
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM77
	.byte	0x4
	.uleb128 0x1
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM79
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM80
	.byte	0x4
	.uleb128 0x2
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM81
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM83
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM84
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -116
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM85
	.byte	0x4
	.uleb128 0x2
	.byte	0x8a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM86
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM88
	.byte	0x4
	.uleb128 0x2
	.byte	0x3c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM89
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM90
	.byte	0x4
	.uleb128 0x2
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM91
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM92
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM93
	.byte	0x4
	.uleb128 0x1
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM94
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM95
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM96
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM97
	.byte	0x4
	.uleb128 0x1
	.byte	0x36
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM98
	.byte	0x4
	.uleb128 0x2
	.byte	0x5f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM99
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM101
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM102
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM103
	.byte	0x4
	.uleb128 0x2
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM104
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -121
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM106
	.byte	0x4
	.uleb128 0x1
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM107
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM108
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM109
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM110
	.byte	0x4
	.uleb128 0x1
	.byte	0x3d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM111
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM112
	.byte	0x4
	.uleb128 0x2
	.byte	0x33
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM113
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -61
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM114
	.byte	0x4
	.uleb128 0x2
	.byte	0x53
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM115
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM117
	.byte	0x4
	.uleb128 0x1
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM118
	.byte	0x4
	.uleb128 0x2
	.byte	0x4e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM119
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM121
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM122
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -139
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM123
	.byte	0x4
	.uleb128 0x2
	.byte	0xa1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM124
	.byte	0x4
	.uleb128 0x3
	.byte	0x3
	.sleb128 -121
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM126
	.byte	0x4
	.uleb128 0x4
	.byte	0x5b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM128
	.byte	0x4
	.uleb128 0x5
	.byte	0x3
	.sleb128 -68
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM129
	.byte	0x4
	.uleb128 0x1
	.byte	0x4b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM130
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE93
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF70:
	.string	"RingBuffer_Remove"
.LASF89:
	.string	"VirtualSerial_CDC_Interface"
.LASF94:
	.string	"LEDs_Init"
.LASF93:
	.string	"__iCliRetVal"
.LASF76:
	.string	"__vector_23"
.LASF92:
	.ascii	"/Volum"
	.string	"es/Data/3DPrinter/Release/Creatable_D2/16U2_FW/arduino-usbserial"
.LASF72:
	.string	"RingBuffer_IsEmpty"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF3:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"BaudRateBPS"
.LASF63:
	.string	"BaudRate"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"CDC_PARITY_None"
.LASF62:
	.string	"Serial_Init"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"RxLEDPulse"
.LASF54:
	.string	"TxLEDPulse"
.LASF43:
	.string	"CharFormat"
.LASF35:
	.string	"DataOUTEndpointDoubleBank"
.LASF4:
	.string	"uint16_t"
.LASF17:
	.string	"USB_Device_States_t"
.LASF30:
	.string	"DataINEndpointNumber"
.LASF69:
	.string	"LEDMask"
.LASF90:
	.string	"GNU C 4.3.2"
.LASF41:
	.string	"DeviceToHost"
.LASF58:
	.string	"__ToDo"
.LASF5:
	.string	"unsigned int"
.LASF87:
	.string	"USARTtoUSB_Buffer"
.LASF27:
	.string	"CDC_PARITY_Space"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"CDC_LineEncodingFormats_t"
.LASF26:
	.string	"CDC_PARITY_Mark"
.LASF57:
	.string	"sreg_save"
.LASF19:
	.string	"CDC_LINEENCODING_OneStopBit"
.LASF68:
	.string	"LEDs_TurnOnLEDs"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF22:
	.string	"CDC_LineEncodingParity_t"
.LASF48:
	.string	"Config"
.LASF82:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF60:
	.string	"RingBuffer_Insert"
.LASF34:
	.string	"DataOUTEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF29:
	.string	"ControlInterfaceNumber"
.LASF24:
	.string	"CDC_PARITY_Odd"
.LASF67:
	.string	"RingBuffer_IsFull"
.LASF31:
	.string	"DataINEndpointSize"
.LASF33:
	.string	"DataOUTEndpointNumber"
.LASF52:
	.string	"Count"
.LASF21:
	.string	"CDC_LINEENCODING_TwoStopBits"
.LASF36:
	.string	"NotificationEndpointNumber"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF32:
	.string	"DataINEndpointDoubleBank"
.LASF78:
	.string	"ReceivedByte"
.LASF77:
	.string	"ConfigMask"
.LASF84:
	.string	"SetupHardware"
.LASF85:
	.string	"BufferCount"
.LASF39:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF64:
	.string	"DoubleSpeed"
.LASF37:
	.string	"NotificationEndpointSize"
.LASF66:
	.string	"RingBuffer_GetCount"
.LASF71:
	.string	"LEDs_TurnOffLEDs"
.LASF7:
	.string	"uint32_t"
.LASF25:
	.string	"CDC_PARITY_Even"
.LASF28:
	.string	"char"
.LASF49:
	.string	"State"
.LASF81:
	.string	"CurrentDTRState"
.LASF86:
	.string	"USBtoUSART_Buffer"
.LASF20:
	.string	"CDC_LINEENCODING_OneAndAHalfStopBits"
.LASF79:
	.string	"EVENT_CDC_Device_ControLineStateChanged"
.LASF56:
	.string	"PingPongLEDPulse"
.LASF46:
	.string	"ControlLineStates"
.LASF88:
	.string	"PulseMSRemaining"
.LASF59:
	.string	"__iRestore"
.LASF65:
	.string	"RingBuffer_InitBuffer"
.LASF53:
	.string	"RingBuff_t"
.LASF91:
	.string	"Arduino-usbserial.c"
.LASF47:
	.string	"LineEncoding"
.LASF51:
	.string	"Buffer"
.LASF45:
	.string	"DataBits"
.LASF2:
	.string	"uint8_t"
.LASF61:
	.string	"Data"
.LASF38:
	.string	"NotificationEndpointDoubleBank"
.LASF83:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF80:
	.string	"CDCInterfaceInfo"
.LASF44:
	.string	"ParityType"
.LASF75:
	.string	"EVENT_CDC_Device_LineEncodingChanged"
.LASF74:
	.string	"DataByte"
.LASF95:
	.string	"main"
.LASF73:
	.string	"Serial_TxByte"
.LASF50:
	.string	"USB_ClassInfo_CDC_Device_t"
.LASF40:
	.string	"HostToDevice"
