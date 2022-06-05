opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

opt pagewidth 120

	opt lm

	processor	18F4620
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 51 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 536 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 1005 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 1137 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1269 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1640 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1856 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1861 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 2077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 2082 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2298 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2303 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2519 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2524 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2682 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2746 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2825 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2904 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2983 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 3048 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 3113 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 3178 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 3243 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 3249 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3255 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3261 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3267 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3272 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3476 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3481 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3773 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3778 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3784 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3789 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3795 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3925 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3931 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3937 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3943 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 4038 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 4116 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 4197 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 4266 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 4271 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4437 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4515 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4521 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4527 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4533 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4641 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4647 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4717 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4807 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4929 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4935 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4941 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4947 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 5008 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 5077 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5316 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5322 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5328 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5398 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5403 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5507 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5513 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5617 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5623 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5629 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5635 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5767 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5799 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 6063 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 6139 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 6215 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 6221 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 6227 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 6233 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6311 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6317 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6323 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6329 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6335 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6341 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6347 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6353 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6359 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6365 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6371 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6377 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6383 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6389 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6395 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6401 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6407 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6413 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6424 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6430 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6436 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6442 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6448 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6454 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6460 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6466 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6472 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6563 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6632 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6768 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6774 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6780 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6786 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6794 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6800 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6806 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6812 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6820 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6827 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6833 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6839 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6845 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6851 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6956 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6962 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6968 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6974 "C:\Program Files (x86)\Microchip\xc8\v1.34\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_DS1621_Read_Temp
	FNCALL	_main,_DS3231_Read_Alarm_Time
	FNCALL	_main,_DS3231_Read_Time
	FNCALL	_main,_DS3231_Turn_Off_Alarm
	FNCALL	_main,_Do_Beep_Bad
	FNCALL	_main,_Do_Beep_Good
	FNCALL	_main,_Do_Init
	FNCALL	_main,_Do_Setup_Alarm_Time
	FNCALL	_main,_Do_Setup_Time
	FNCALL	_main,_Initialize_Screen
	FNCALL	_main,_Monitor_Fan
	FNCALL	_main,_Setup_Temp_Fan
	FNCALL	_main,_Toggle_Fan_Monitor
	FNCALL	_main,_Update_Screen
	FNCALL	_main,___awdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_check_for_button_input
	FNCALL	_main,_get_RPM
	FNCALL	_main,_printf
	FNCALL	_main,_read_volt
	FNCALL	_main,_test_alarm
	FNCALL	_test_alarm,_Activate_Buzzer_4KHz
	FNCALL	_test_alarm,_DS3231_Turn_Off_Alarm
	FNCALL	_test_alarm,_DS3231_Turn_On_Alarm
	FNCALL	_test_alarm,_Deactivate_Buzzer
	FNCALL	_test_alarm,_Set_RGB_Color
	FNCALL	_test_alarm,___ftge
	FNCALL	_DS3231_Turn_On_Alarm,_DS3231_Init
	FNCALL	_DS3231_Turn_On_Alarm,_I2C_Write_Address_Read_One_Byte
	FNCALL	_DS3231_Turn_On_Alarm,_I2C_Write_Address_Write_One_Byte
	FNCALL	_DS3231_Turn_Off_Alarm,_DS3231_Init
	FNCALL	_DS3231_Turn_Off_Alarm,_I2C_Write_Address_Read_One_Byte
	FNCALL	_DS3231_Turn_Off_Alarm,_I2C_Write_Address_Write_One_Byte
	FNCALL	_DS3231_Init,_I2C_ReStart
	FNCALL	_DS3231_Init,_I2C_Read
	FNCALL	_DS3231_Init,_I2C_Start
	FNCALL	_DS3231_Init,_I2C_Stop
	FNCALL	_DS3231_Init,_I2C_Write
	FNCALL	_DS3231_Init,_I2C_Write_Address_Read_One_Byte
	FNCALL	_DS3231_Init,_I2C_Write_Address_Write_One_Byte
	FNCALL	_I2C_Write_Address_Write_One_Byte,_I2C_Start
	FNCALL	_I2C_Write_Address_Write_One_Byte,_I2C_Stop
	FNCALL	_I2C_Write_Address_Write_One_Byte,_I2C_Write
	FNCALL	_I2C_Write_Address_Read_One_Byte,_I2C_ReStart
	FNCALL	_I2C_Write_Address_Read_One_Byte,_I2C_Read
	FNCALL	_I2C_Write_Address_Read_One_Byte,_I2C_Start
	FNCALL	_I2C_Write_Address_Read_One_Byte,_I2C_Stop
	FNCALL	_I2C_Write_Address_Read_One_Byte,_I2C_Write
	FNCALL	_read_volt,___awtoft
	FNCALL	_read_volt,___ftdiv
	FNCALL	_read_volt,___wmul
	FNCALL	_read_volt,_get_full_ADC
	FNCALL	___awtoft,___ftpack
	FNCALL	_get_RPM,___awdiv
	FNCALL	_get_RPM,___wmul
	FNCALL	_Update_Screen,___awdiv
	FNCALL	_Update_Screen,___awmod
	FNCALL	_Update_Screen,___ftmul
	FNCALL	_Update_Screen,___fttol
	FNCALL	_Update_Screen,_drawtext
	FNCALL	_Update_Screen,_strcpy
	FNCALL	_Setup_Temp_Fan,_Decrease_Fan_Temp
	FNCALL	_Setup_Temp_Fan,_Do_Beep_Bad
	FNCALL	_Setup_Temp_Fan,_Do_Beep_Good
	FNCALL	_Setup_Temp_Fan,_Do_Save_New_Fan_Temp
	FNCALL	_Setup_Temp_Fan,_Exit_Setup_Fan_Temp
	FNCALL	_Setup_Temp_Fan,_Increase_Fan_Temp
	FNCALL	_Setup_Temp_Fan,_Initialize_Setup_Fan_Screen
	FNCALL	_Setup_Temp_Fan,_Update_Setup_Fan_Screen
	FNCALL	_Setup_Temp_Fan,_check_for_button_input
	FNCALL	_Initialize_Setup_Fan_Screen,_drawtext
	FNCALL	_Initialize_Setup_Fan_Screen,_fillScreen
	FNCALL	_Initialize_Setup_Fan_Screen,_strcpy
	FNCALL	_Increase_Fan_Temp,_Update_Setup_Fan_Screen
	FNCALL	_Exit_Setup_Fan_Temp,_DS3231_Read_Time
	FNCALL	_Exit_Setup_Fan_Temp,_Initialize_Screen
	FNCALL	_Do_Save_New_Fan_Temp,_DS3231_Read_Time
	FNCALL	_Do_Save_New_Fan_Temp,_Initialize_Screen
	FNCALL	_Decrease_Fan_Temp,_Update_Setup_Fan_Screen
	FNCALL	_Update_Setup_Fan_Screen,___awdiv
	FNCALL	_Update_Setup_Fan_Screen,___awmod
	FNCALL	_Update_Setup_Fan_Screen,_drawtext
	FNCALL	_Monitor_Fan,_do_update_pwm
	FNCALL	_Monitor_Fan,_get_duty_cycle
	FNCALL	_Do_Setup_Time,_DS3231_Read_Time
	FNCALL	_Do_Setup_Time,_Decrease_Time
	FNCALL	_Do_Setup_Time,_Do_Beep_Bad
	FNCALL	_Do_Setup_Time,_Do_Beep_Good
	FNCALL	_Do_Setup_Time,_Do_Save_New_Time
	FNCALL	_Do_Setup_Time,_Exit_Time_Setup
	FNCALL	_Do_Setup_Time,_Go_Next_Field
	FNCALL	_Do_Setup_Time,_Go_Prev_Field
	FNCALL	_Do_Setup_Time,_Increase_Time
	FNCALL	_Do_Setup_Time,_Initialize_Setup_Time_Screen
	FNCALL	_Do_Setup_Time,_Update_Setup_Time_Screen
	FNCALL	_Do_Setup_Time,_bcd_2_dec
	FNCALL	_Do_Setup_Time,_check_for_button_input
	FNCALL	_Initialize_Setup_Time_Screen,_drawtext
	FNCALL	_Initialize_Setup_Time_Screen,_fillRect
	FNCALL	_Initialize_Setup_Time_Screen,_fillScreen
	FNCALL	_Initialize_Setup_Time_Screen,_strcpy
	FNCALL	_Increase_Time,_Update_Setup_Time_Screen
	FNCALL	_Go_Prev_Field,_Update_Setup_Screen_Cursor_Backward
	FNCALL	_Go_Next_Field,_Update_Setup_Screen_Cursor_Forward
	FNCALL	_Exit_Time_Setup,_DS3231_Read_Time
	FNCALL	_Exit_Time_Setup,_Initialize_Screen
	FNCALL	_Do_Save_New_Time,_DS3231_Read_Time
	FNCALL	_Do_Save_New_Time,_DS3231_Write_Time
	FNCALL	_Do_Save_New_Time,_Initialize_Screen
	FNCALL	_DS3231_Write_Time,_I2C_Start
	FNCALL	_DS3231_Write_Time,_I2C_Stop
	FNCALL	_DS3231_Write_Time,_I2C_Write
	FNCALL	_DS3231_Write_Time,_dec_2_bcd
	FNCALL	_Decrease_Time,_Update_Setup_Time_Screen
	FNCALL	_Update_Setup_Time_Screen,___awdiv
	FNCALL	_Update_Setup_Time_Screen,___awmod
	FNCALL	_Update_Setup_Time_Screen,_drawtext
	FNCALL	_Do_Setup_Alarm_Time,_DS3231_Read_Alarm_Time
	FNCALL	_Do_Setup_Alarm_Time,_Decrease_Alarm_Time
	FNCALL	_Do_Setup_Alarm_Time,_Do_Beep_Bad
	FNCALL	_Do_Setup_Alarm_Time,_Do_Beep_Good
	FNCALL	_Do_Setup_Alarm_Time,_Do_Save_New_Alarm_Time
	FNCALL	_Do_Setup_Alarm_Time,_Exit_Setup_Alarm_Time
	FNCALL	_Do_Setup_Alarm_Time,_Go_Next_Alarm_Field
	FNCALL	_Do_Setup_Alarm_Time,_Go_Prev_Alarm_Field
	FNCALL	_Do_Setup_Alarm_Time,_Increase_Alarm_Time
	FNCALL	_Do_Setup_Alarm_Time,_Initialize_Setup_Alarm_Time_Screen
	FNCALL	_Do_Setup_Alarm_Time,_Update_Setup_Alarm_Time_Screen
	FNCALL	_Do_Setup_Alarm_Time,_bcd_2_dec
	FNCALL	_Do_Setup_Alarm_Time,_check_for_button_input
	FNCALL	_check_for_button_input,_printf
	FNCALL	_Initialize_Setup_Alarm_Time_Screen,_drawtext
	FNCALL	_Initialize_Setup_Alarm_Time_Screen,_fillRect
	FNCALL	_Initialize_Setup_Alarm_Time_Screen,_fillScreen
	FNCALL	_Initialize_Setup_Alarm_Time_Screen,_strcpy
	FNCALL	_Increase_Alarm_Time,_Update_Setup_Alarm_Time_Screen
	FNCALL	_Go_Prev_Alarm_Field,_Update_Setup_Screen_Cursor_Backward
	FNCALL	_Update_Setup_Screen_Cursor_Backward,_fillRect
	FNCALL	_Go_Next_Alarm_Field,_Update_Setup_Screen_Cursor_Forward
	FNCALL	_Update_Setup_Screen_Cursor_Forward,_fillRect
	FNCALL	_Exit_Setup_Alarm_Time,_DS3231_Read_Time
	FNCALL	_Exit_Setup_Alarm_Time,_Initialize_Screen
	FNCALL	_Do_Save_New_Alarm_Time,_DS3231_Read_Alarm_Time
	FNCALL	_Do_Save_New_Alarm_Time,_DS3231_Read_Time
	FNCALL	_Do_Save_New_Alarm_Time,_DS3231_Write_Alarm_Time
	FNCALL	_Do_Save_New_Alarm_Time,_Initialize_Screen
	FNCALL	_Initialize_Screen,_LCD_Reset
	FNCALL	_Initialize_Screen,_TFT_GreenTab_Initialize
	FNCALL	_Initialize_Screen,_drawCircle
	FNCALL	_Initialize_Screen,_drawtext
	FNCALL	_Initialize_Screen,_fillScreen
	FNCALL	_Initialize_Screen,_strcpy
	FNCALL	_fillScreen,_fillRectangle
	FNCALL	_fillRectangle,_setAddrWindow
	FNCALL	_fillRectangle,_spiwrite
	FNCALL	_drawCircle,_drawPixel
	FNCALL	_TFT_GreenTab_Initialize,_Rcmd1
	FNCALL	_TFT_GreenTab_Initialize,_Rcmd2red
	FNCALL	_TFT_GreenTab_Initialize,_Rcmd3
	FNCALL	_TFT_GreenTab_Initialize,_write_command
	FNCALL	_TFT_GreenTab_Initialize,_write_data
	FNCALL	_Rcmd3,_delay_ms
	FNCALL	_Rcmd3,_write_command
	FNCALL	_Rcmd3,_write_data
	FNCALL	_Rcmd2red,_write_command
	FNCALL	_Rcmd2red,_write_data
	FNCALL	_Rcmd1,_delay_ms
	FNCALL	_Rcmd1,_write_command
	FNCALL	_Rcmd1,_write_data
	FNCALL	_LCD_Reset,_delay_ms
	FNCALL	_delay_ms,___wmul
	FNCALL	_DS3231_Write_Alarm_Time,_DS3231_Read_Time
	FNCALL	_DS3231_Write_Alarm_Time,_I2C_Start
	FNCALL	_DS3231_Write_Alarm_Time,_I2C_Stop
	FNCALL	_DS3231_Write_Alarm_Time,_I2C_Write
	FNCALL	_DS3231_Write_Alarm_Time,_dec_2_bcd
	FNCALL	_dec_2_bcd,___awdiv
	FNCALL	_dec_2_bcd,___awmod
	FNCALL	_DS3231_Read_Time,_I2C_ReStart
	FNCALL	_DS3231_Read_Time,_I2C_Read
	FNCALL	_DS3231_Read_Time,_I2C_Start
	FNCALL	_DS3231_Read_Time,_I2C_Stop
	FNCALL	_DS3231_Read_Time,_I2C_Write
	FNCALL	_DS3231_Read_Alarm_Time,_I2C_ReStart
	FNCALL	_DS3231_Read_Alarm_Time,_I2C_Read
	FNCALL	_DS3231_Read_Alarm_Time,_I2C_Start
	FNCALL	_DS3231_Read_Alarm_Time,_I2C_Stop
	FNCALL	_DS3231_Read_Alarm_Time,_I2C_Write
	FNCALL	_Do_Beep_Good,_Activate_Buzzer_2KHz
	FNCALL	_Do_Beep_Good,_Deactivate_Buzzer
	FNCALL	_Do_Beep_Good,_Wait_One_Sec
	FNCALL	_Do_Beep_Good,_do_update_pwm
	FNCALL	_Do_Beep_Bad,_Activate_Buzzer_500Hz
	FNCALL	_Do_Beep_Bad,_Deactivate_Buzzer
	FNCALL	_Do_Beep_Bad,_Wait_One_Sec
	FNCALL	_Do_Beep_Bad,_do_update_pwm
	FNCALL	_do_update_pwm,___ftdiv
	FNCALL	_do_update_pwm,___ftmul
	FNCALL	_do_update_pwm,___fttol
	FNCALL	_do_update_pwm,___lbtoft
	FNCALL	___lbtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_Decrease_Alarm_Time,_Update_Setup_Alarm_Time_Screen
	FNCALL	_Update_Setup_Alarm_Time_Screen,___awdiv
	FNCALL	_Update_Setup_Alarm_Time_Screen,___awmod
	FNCALL	_Update_Setup_Alarm_Time_Screen,_drawtext
	FNCALL	_Update_Setup_Alarm_Time_Screen,_printf
	FNCALL	_printf,___awdiv
	FNCALL	_printf,___ftadd
	FNCALL	_printf,___ftge
	FNCALL	_printf,___ftmul
	FNCALL	_printf,___ftneg
	FNCALL	_printf,___ftsub
	FNCALL	_printf,___fttol
	FNCALL	_printf,___lldiv
	FNCALL	_printf,___llmod
	FNCALL	_printf,___lltoft
	FNCALL	_printf,___wmul
	FNCALL	_printf,__div_to_l_
	FNCALL	_printf,__tdiv_to_l_
	FNCALL	_printf,_fround
	FNCALL	_printf,_isdigit
	FNCALL	_printf,_putch
	FNCALL	_printf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___wmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___awmod
	FNCALL	_fround,___ftmul
	FNCALL	_fround,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	_drawtext,_drawChar
	FNCALL	_drawtext,_strlen
	FNCALL	_drawChar,___wmul
	FNCALL	_drawChar,_drawPixel
	FNCALL	_drawChar,_fillRect
	FNCALL	_fillRect,_drawFastVLine
	FNCALL	_drawFastVLine,_setAddrWindow
	FNCALL	_drawFastVLine,_spiwrite
	FNCALL	_drawPixel,_setAddrWindow
	FNCALL	_drawPixel,_write_data
	FNCALL	_setAddrWindow,_write_command
	FNCALL	_setAddrWindow,_write_data
	FNCALL	_write_data,_spiwrite
	FNCALL	_write_command,_spiwrite
	FNCALL	_Do_Init,_DS1621_Init
	FNCALL	_Do_Init,_I2C_Init
	FNCALL	_Do_Init,_Init_ADC
	FNCALL	_Do_Init,_Init_Interrupt
	FNCALL	_Do_Init,_Turn_Off_Fan
	FNCALL	_Do_Init,_init_UART
	FNCALL	_init_UART,_OpenUSART
	FNCALL	_I2C_Init,_i2cHighScl
	FNCALL	_I2C_Init,_i2cHighSda
	FNCALL	_DS1621_Init,_I2C_Write_Cmd_Only
	FNCALL	_DS1621_Init,_I2C_Write_Cmd_Write_Data
	FNCALL	_I2C_Write_Cmd_Write_Data,_I2C_Start
	FNCALL	_I2C_Write_Cmd_Write_Data,_I2C_Stop
	FNCALL	_I2C_Write_Cmd_Write_Data,_I2C_Write
	FNCALL	_I2C_Write_Cmd_Only,_I2C_Start
	FNCALL	_I2C_Write_Cmd_Only,_I2C_Stop
	FNCALL	_I2C_Write_Cmd_Only,_I2C_Write
	FNCALL	_DS1621_Read_Temp,_I2C_ReStart
	FNCALL	_DS1621_Read_Temp,_I2C_Read
	FNCALL	_DS1621_Read_Temp,_I2C_Start
	FNCALL	_DS1621_Read_Temp,_I2C_Stop
	FNCALL	_DS1621_Read_Temp,_I2C_Write
	FNCALL	_I2C_Write,_i2cHighScl
	FNCALL	_I2C_Write,_i2cHighSda
	FNCALL	_I2C_Write,_i2cLowScl
	FNCALL	_I2C_Write,_i2cLowSda
	FNCALL	_I2C_Stop,_i2cHighScl
	FNCALL	_I2C_Stop,_i2cHighSda
	FNCALL	_I2C_Stop,_i2cLowScl
	FNCALL	_I2C_Stop,_i2cLowSda
	FNCALL	_I2C_Start,_i2cHighScl
	FNCALL	_I2C_Start,_i2cHighSda
	FNCALL	_I2C_Start,_i2cLowScl
	FNCALL	_I2C_Start,_i2cLowSda
	FNCALL	_I2C_Read,_i2cAck
	FNCALL	_I2C_Read,_i2cHighScl
	FNCALL	_I2C_Read,_i2cHighSda
	FNCALL	_I2C_Read,_i2cLowScl
	FNCALL	_I2C_Read,_i2cNack
	FNCALL	_i2cNack,_i2cHighScl
	FNCALL	_i2cNack,_i2cLowScl
	FNCALL	_i2cAck,_i2cHighScl
	FNCALL	_i2cAck,_i2cHighSda
	FNCALL	_i2cAck,_i2cLowScl
	FNCALL	_i2cAck,_i2cLowSda
	FNCALL	_I2C_ReStart,_i2cHighScl
	FNCALL	_I2C_ReStart,_i2cHighSda
	FNCALL	_I2C_ReStart,_i2cLowScl
	FNCALL	_I2C_ReStart,_i2cLowSda
	FNROOT	_main
	FNCALL	_chkisr,_INT0_isr
	FNCALL	_chkisr,_INT2_isr
	FNCALL	_chkisr,_TIMER1_isr
	FNCALL	intlevel2,_chkisr
	global	intlevel2
	FNROOT	intlevel2
	global	_fan_set_temp
	global	_tempSecond
	global	_wrap
	global	_Fan_Set_Temp_Txt
	global	_RPM_Txt
	global	_setup_fan_set_text
	global	_Alarm_SW_Txt
	global	_DC_Txt
	global	_Fan_SW_Txt
	global	_tempC
	global	_tempF
	global	_RTC_ALARM_Txt
	global	_array1
	global	_alarm_time
	global	_date
	global	_setup_alarm_time
	global	_setup_date
	global	_setup_time
	global	_time
	global	_Volt_Txt
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"Main.c"
	line	38

;initializer for _fan_set_temp
	db	low(04Bh)
	line	33

;initializer for _tempSecond
	db	low(0FFh)
	file	"ST7735_TFT.c"
	line	8

;initializer for _wrap
	db	low(01h)
	file	"Main.c"
	line	62

;initializer for _Fan_Set_Temp_Txt
	db	low(030h)
	db	low(037h)
	db	low(035h)
	db	low(046h)
	db	low(0)
	line	70

;initializer for _RPM_Txt
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	75

;initializer for _setup_fan_set_text
	db	low(030h)
	db	low(037h)
	db	low(035h)
	db	low(046h)
	db	low(0)
	line	61

;initializer for _Alarm_SW_Txt
	db	low(04Fh)
	db	low(046h)
	db	low(046h)
	db	low(0)
	line	67

;initializer for _DC_Txt
	db	low(030h)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	63

;initializer for _Fan_SW_Txt
	db	low(04Fh)
	db	low(046h)
	db	low(046h)
	db	low(0)
	line	56

;initializer for _tempC
	db	low(02Bh)
	db	low(032h)
	db	low(035h)
	db	low(0)
	line	57

;initializer for _tempF
	db	low(02Bh)
	db	low(037h)
	db	low(037h)
	db	low(0)
	line	69

;initializer for _RTC_ALARM_Txt
	db	low(030h)
	db	low(0)
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	53

;initializer for _buffer
	db	low(020h)
	db	low(045h)
	db	low(043h)
	db	low(045h)
	db	low(033h)
	db	low(033h)
	db	low(030h)
	db	low(031h)
	db	low(04Ch)
	db	low(020h)
	db	low(053h)
	db	low(070h)
	db	low(027h)
	db	low(032h)
	db	low(031h)
	db	low(020h)
	db	low(046h)
	db	low(069h)
	db	low(06Eh)
	db	low(061h)
	db	low(06Ch)
	db	low(0)
	db	low(0)
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	64

;initializer for _array1
	db	low(0A2h)
	db	low(062h)
	db	low(0E2h)
	db	low(022h)
	db	low(02h)
	db	low(0C2h)
	db	low(0E0h)
	db	low(0A8h)
	db	low(090h)
	db	low(068h)
	db	low(098h)
	db	low(0B0h)
	db	low(030h)
	db	low(018h)
	db	low(07Ah)
	db	low(010h)
	db	low(038h)
	db	low(05Ah)
	db	low(042h)
	db	low(04Ah)
	db	low(052h)
	line	60

;initializer for _alarm_time
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	59

;initializer for _date
	db	low(030h)
	db	low(030h)
	db	low(02Fh)
	db	low(030h)
	db	low(030h)
	db	low(02Fh)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	74

;initializer for _setup_alarm_time
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	73

;initializer for _setup_date
	db	low(030h)
	db	low(031h)
	db	low(02Fh)
	db	low(030h)
	db	low(031h)
	db	low(02Fh)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	72

;initializer for _setup_time
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	58

;initializer for _time
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(03Ah)
	db	low(030h)
	db	low(030h)
	db	low(0)
	line	68

;initializer for _Volt_Txt
	db	low(030h)
	db	low(02Eh)
	db	low(030h)
	db	low(030h)
	db	low(056h)
	db	low(0)
	global	_font
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"ST7735_TFT.c"
	line	87
_font:
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(05Fh)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(07h)
	db	low(0)
	db	low(07h)
	db	low(0)
	db	low(014h)
	db	low(07Fh)
	db	low(014h)
	db	low(07Fh)
	db	low(014h)
	db	low(024h)
	db	low(02Ah)
	db	low(07Fh)
	db	low(02Ah)
	db	low(012h)
	db	low(023h)
	db	low(013h)
	db	low(08h)
	db	low(064h)
	db	low(062h)
	db	low(036h)
	db	low(049h)
	db	low(056h)
	db	low(020h)
	db	low(050h)
	db	low(0)
	db	low(08h)
	db	low(07h)
	db	low(03h)
	db	low(0)
	db	low(0)
	db	low(01Ch)
	db	low(022h)
	db	low(041h)
	db	low(0)
	db	low(0)
	db	low(041h)
	db	low(022h)
	db	low(01Ch)
	db	low(0)
	db	low(02Ah)
	db	low(01Ch)
	db	low(07Fh)
	db	low(01Ch)
	db	low(02Ah)
	db	low(08h)
	db	low(08h)
	db	low(03Eh)
	db	low(08h)
	db	low(08h)
	db	low(0)
	db	low(080h)
	db	low(070h)
	db	low(030h)
	db	low(0)
	db	low(08h)
	db	low(08h)
	db	low(08h)
	db	low(08h)
	db	low(08h)
	db	low(0)
	db	low(0)
	db	low(060h)
	db	low(060h)
	db	low(0)
	db	low(020h)
	db	low(010h)
	db	low(08h)
	db	low(04h)
	db	low(02h)
	db	low(03Eh)
	db	low(051h)
	db	low(049h)
	db	low(045h)
	db	low(03Eh)
	db	low(0)
	db	low(042h)
	db	low(07Fh)
	db	low(040h)
	db	low(0)
	db	low(072h)
	db	low(049h)
	db	low(049h)
	db	low(049h)
	db	low(046h)
	db	low(021h)
	db	low(041h)
	db	low(049h)
	db	low(04Dh)
	db	low(033h)
	db	low(018h)
	db	low(014h)
	db	low(012h)
	db	low(07Fh)
	db	low(010h)
	db	low(027h)
	db	low(045h)
	db	low(045h)
	db	low(045h)
	db	low(039h)
	db	low(03Ch)
	db	low(04Ah)
	db	low(049h)
	db	low(049h)
	db	low(031h)
	db	low(041h)
	db	low(021h)
	db	low(011h)
	db	low(09h)
	db	low(07h)
	db	low(036h)
	db	low(049h)
	db	low(049h)
	db	low(049h)
	db	low(036h)
	db	low(046h)
	db	low(049h)
	db	low(049h)
	db	low(029h)
	db	low(01Eh)
	db	low(0)
	db	low(0)
	db	low(014h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(040h)
	db	low(034h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(08h)
	db	low(014h)
	db	low(022h)
	db	low(041h)
	db	low(014h)
	db	low(014h)
	db	low(014h)
	db	low(014h)
	db	low(014h)
	db	low(0)
	db	low(041h)
	db	low(022h)
	db	low(014h)
	db	low(08h)
	db	low(02h)
	db	low(01h)
	db	low(059h)
	db	low(09h)
	db	low(06h)
	db	low(03Eh)
	db	low(041h)
	db	low(05Dh)
	db	low(059h)
	db	low(04Eh)
	db	low(07Ch)
	db	low(012h)
	db	low(011h)
	db	low(012h)
	db	low(07Ch)
	db	low(07Fh)
	db	low(049h)
	db	low(049h)
	db	low(049h)
	db	low(036h)
	db	low(03Eh)
	db	low(041h)
	db	low(041h)
	db	low(041h)
	db	low(022h)
	db	low(07Fh)
	db	low(041h)
	db	low(041h)
	db	low(041h)
	db	low(03Eh)
	db	low(07Fh)
	db	low(049h)
	db	low(049h)
	db	low(049h)
	db	low(041h)
	db	low(07Fh)
	db	low(09h)
	db	low(09h)
	db	low(09h)
	db	low(01h)
	db	low(03Eh)
	db	low(041h)
	db	low(041h)
	db	low(051h)
	db	low(073h)
	db	low(07Fh)
	db	low(08h)
	db	low(08h)
	db	low(08h)
	db	low(07Fh)
	db	low(0)
	db	low(041h)
	db	low(07Fh)
	db	low(041h)
	db	low(0)
	db	low(020h)
	db	low(040h)
	db	low(041h)
	db	low(03Fh)
	db	low(01h)
	db	low(07Fh)
	db	low(08h)
	db	low(014h)
	db	low(022h)
	db	low(041h)
	db	low(07Fh)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(07Fh)
	db	low(02h)
	db	low(01Ch)
	db	low(02h)
	db	low(07Fh)
	db	low(07Fh)
	db	low(04h)
	db	low(08h)
	db	low(010h)
	db	low(07Fh)
	db	low(03Eh)
	db	low(041h)
	db	low(041h)
	db	low(041h)
	db	low(03Eh)
	db	low(07Fh)
	db	low(09h)
	db	low(09h)
	db	low(09h)
	db	low(06h)
	db	low(03Eh)
	db	low(041h)
	db	low(051h)
	db	low(021h)
	db	low(05Eh)
	db	low(07Fh)
	db	low(09h)
	db	low(019h)
	db	low(029h)
	db	low(046h)
	global __end_of_font
__end_of_font:
	global	_font2
psect	mediumconst
	file	"ST7735_TFT.c"
	line	142
_font2:
	db	low(026h)
	db	low(049h)
	db	low(049h)
	db	low(049h)
	db	low(032h)
	db	low(03h)
	db	low(01h)
	db	low(07Fh)
	db	low(01h)
	db	low(03h)
	db	low(03Fh)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(03Fh)
	db	low(01Fh)
	db	low(020h)
	db	low(040h)
	db	low(020h)
	db	low(01Fh)
	db	low(03Fh)
	db	low(040h)
	db	low(038h)
	db	low(040h)
	db	low(03Fh)
	db	low(063h)
	db	low(014h)
	db	low(08h)
	db	low(014h)
	db	low(063h)
	db	low(03h)
	db	low(04h)
	db	low(078h)
	db	low(04h)
	db	low(03h)
	db	low(061h)
	db	low(059h)
	db	low(049h)
	db	low(04Dh)
	db	low(043h)
	db	low(0)
	db	low(07Fh)
	db	low(041h)
	db	low(041h)
	db	low(041h)
	db	low(02h)
	db	low(04h)
	db	low(08h)
	db	low(010h)
	db	low(020h)
	db	low(0)
	db	low(041h)
	db	low(041h)
	db	low(041h)
	db	low(07Fh)
	db	low(04h)
	db	low(02h)
	db	low(01h)
	db	low(02h)
	db	low(04h)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(040h)
	db	low(0)
	db	low(03h)
	db	low(07h)
	db	low(08h)
	db	low(0)
	db	low(020h)
	db	low(054h)
	db	low(054h)
	db	low(078h)
	db	low(040h)
	db	low(07Fh)
	db	low(028h)
	db	low(044h)
	db	low(044h)
	db	low(038h)
	db	low(038h)
	db	low(044h)
	db	low(044h)
	db	low(044h)
	db	low(028h)
	db	low(038h)
	db	low(044h)
	db	low(044h)
	db	low(028h)
	db	low(07Fh)
	db	low(038h)
	db	low(054h)
	db	low(054h)
	db	low(054h)
	db	low(018h)
	db	low(0)
	db	low(08h)
	db	low(07Eh)
	db	low(09h)
	db	low(02h)
	db	low(018h)
	db	low(0A4h)
	db	low(0A4h)
	db	low(09Ch)
	db	low(078h)
	db	low(07Fh)
	db	low(08h)
	db	low(04h)
	db	low(04h)
	db	low(078h)
	db	low(0)
	db	low(044h)
	db	low(07Dh)
	db	low(040h)
	db	low(0)
	db	low(020h)
	db	low(040h)
	db	low(040h)
	db	low(03Dh)
	db	low(0)
	db	low(07Fh)
	db	low(010h)
	db	low(028h)
	db	low(044h)
	db	low(0)
	db	low(0)
	db	low(041h)
	db	low(07Fh)
	db	low(040h)
	db	low(0)
	db	low(07Ch)
	db	low(04h)
	db	low(078h)
	db	low(04h)
	db	low(078h)
	db	low(07Ch)
	db	low(08h)
	db	low(04h)
	db	low(04h)
	db	low(078h)
	db	low(038h)
	db	low(044h)
	db	low(044h)
	db	low(044h)
	db	low(038h)
	db	low(0FCh)
	db	low(018h)
	db	low(024h)
	db	low(024h)
	db	low(018h)
	db	low(018h)
	db	low(024h)
	db	low(024h)
	db	low(018h)
	db	low(0FCh)
	db	low(07Ch)
	db	low(08h)
	db	low(04h)
	db	low(04h)
	db	low(08h)
	db	low(048h)
	db	low(054h)
	db	low(054h)
	db	low(054h)
	db	low(024h)
	db	low(04h)
	db	low(04h)
	db	low(03Fh)
	db	low(044h)
	db	low(024h)
	db	low(03Ch)
	db	low(040h)
	db	low(040h)
	db	low(020h)
	db	low(07Ch)
	db	low(01Ch)
	db	low(020h)
	db	low(040h)
	db	low(020h)
	db	low(01Ch)
	db	low(03Ch)
	db	low(040h)
	db	low(030h)
	db	low(040h)
	db	low(03Ch)
	db	low(044h)
	db	low(028h)
	db	low(010h)
	db	low(028h)
	db	low(044h)
	db	low(04Ch)
	db	low(090h)
	db	low(090h)
	db	low(090h)
	db	low(07Ch)
	db	low(044h)
	db	low(064h)
	db	low(054h)
	db	low(04Ch)
	db	low(044h)
	db	low(0)
	db	low(08h)
	db	low(036h)
	db	low(041h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(077h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(041h)
	db	low(036h)
	db	low(08h)
	db	low(0)
	db	low(02h)
	db	low(01h)
	db	low(02h)
	db	low(04h)
	db	low(02h)
	global __end_of_font2
__end_of_font2:
	global	_dpowers
psect	mediumconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	354
_dpowers:
	dw	(01h) & 0xffff
	dw	highword(01h)
	dw	(0Ah) & 0xffff
	dw	highword(0Ah)
	dw	(064h) & 0xffff
	dw	highword(064h)
	dw	(03E8h) & 0xffff
	dw	highword(03E8h)
	dw	(02710h) & 0xffff
	dw	highword(02710h)
	dw	(0186A0h) & 0xffff
	dw	highword(0186A0h)
	dw	(0F4240h) & 0xffff
	dw	highword(0F4240h)
	dw	(0989680h) & 0xffff
	dw	highword(0989680h)
	dw	(05F5E100h) & 0xffff
	dw	highword(05F5E100h)
	dw	(03B9ACA00h) & 0xffff
	dw	highword(03B9ACA00h)
	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	mediumconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\powers.c"
	line	39
__npowers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.10000000000000001))
	db	high(float24(0.10000000000000001))
	db	low highword(float24(0.10000000000000001))
	db	low(float24(0.010000000000000000))
	db	high(float24(0.010000000000000000))
	db	low highword(float24(0.010000000000000000))
	db	low(float24(0.0010000000000000000))
	db	high(float24(0.0010000000000000000))
	db	low highword(float24(0.0010000000000000000))
	db	low(float24(0.00010000000000000000))
	db	high(float24(0.00010000000000000000))
	db	low highword(float24(0.00010000000000000000))
	db	low(float24(1.0000000000000001e-005))
	db	high(float24(1.0000000000000001e-005))
	db	low highword(float24(1.0000000000000001e-005))
	db	low(float24(9.9999999999999995e-007))
	db	high(float24(9.9999999999999995e-007))
	db	low highword(float24(9.9999999999999995e-007))
	db	low(float24(9.9999999999999995e-008))
	db	high(float24(9.9999999999999995e-008))
	db	low highword(float24(9.9999999999999995e-008))
	db	low(float24(1.0000000000000000e-008))
	db	high(float24(1.0000000000000000e-008))
	db	low highword(float24(1.0000000000000000e-008))
	db	low(float24(1.0000000000000001e-009))
	db	high(float24(1.0000000000000001e-009))
	db	low highword(float24(1.0000000000000001e-009))
	db	low(float24(1.0000000000000000e-010))
	db	high(float24(1.0000000000000000e-010))
	db	low highword(float24(1.0000000000000000e-010))
	db	low(float24(9.9999999999999995e-021))
	db	high(float24(9.9999999999999995e-021))
	db	low highword(float24(9.9999999999999995e-021))
	db	low(float24(1.0000000000000001e-030))
	db	high(float24(1.0000000000000001e-030))
	db	low highword(float24(1.0000000000000001e-030))
	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	mediumconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\powers.c"
	line	7
__powers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(10.000000000000000))
	db	high(float24(10.000000000000000))
	db	low highword(float24(10.000000000000000))
	db	low(float24(100.00000000000000))
	db	high(float24(100.00000000000000))
	db	low highword(float24(100.00000000000000))
	db	low(float24(1000.0000000000000))
	db	high(float24(1000.0000000000000))
	db	low highword(float24(1000.0000000000000))
	db	low(float24(10000.000000000000))
	db	high(float24(10000.000000000000))
	db	low highword(float24(10000.000000000000))
	db	low(float24(100000.00000000000))
	db	high(float24(100000.00000000000))
	db	low highword(float24(100000.00000000000))
	db	low(float24(1000000.0000000000))
	db	high(float24(1000000.0000000000))
	db	low highword(float24(1000000.0000000000))
	db	low(float24(10000000.000000000))
	db	high(float24(10000000.000000000))
	db	low highword(float24(10000000.000000000))
	db	low(float24(100000000.00000000))
	db	high(float24(100000000.00000000))
	db	low highword(float24(100000000.00000000))
	db	low(float24(1000000000.0000000))
	db	high(float24(1000000000.0000000))
	db	low highword(float24(1000000000.0000000))
	db	low(float24(10000000000.000000))
	db	high(float24(10000000000.000000))
	db	low highword(float24(10000000000.000000))
	db	low(float24(1.0000000000000000e+020))
	db	high(float24(1.0000000000000000e+020))
	db	low highword(float24(1.0000000000000000e+020))
	db	low(float24(1.0000000000000000e+030))
	db	high(float24(1.0000000000000000e+030))
	db	low highword(float24(1.0000000000000000e+030))
	global __end_of__powers_
__end_of__powers_:
	global	_hexpowers
psect	mediumconst
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	362
_hexpowers:
	dw	(01h) & 0xffff
	dw	highword(01h)
	dw	(010h) & 0xffff
	dw	highword(010h)
	dw	(0100h) & 0xffff
	dw	highword(0100h)
	dw	(01000h) & 0xffff
	dw	highword(01000h)
	dw	(010000h) & 0xffff
	dw	highword(010000h)
	dw	(0100000h) & 0xffff
	dw	highword(0100000h)
	dw	(01000000h) & 0xffff
	dw	highword(01000000h)
	dw	(010000000h) & 0xffff
	dw	highword(010000000h)
	global __end_of_hexpowers
__end_of_hexpowers:
	global	_font
	global	_font2
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_hexpowers
	global	_Time_Elapsed
	global	_txt
	global	_alarm_hour
	global	_alarm_minute
	global	_alarm_second
	global	_day
	global	_duty_cycle
	global	_found
	global	_hour
	global	_minute
	global	_month
	global	_second
	global	_setup_day
	global	_setup_month
	global	_Nec_code
	global	_volt
	global	_ALARMEN
	global	_DS1621_tempC
	global	_DS1621_tempF
	global	_MATCHED
	global	_alarm_mode
	global	_color
	global	_nec_ok
	global	_rpm
	global	_FAN
	global	_INT2_flag
	global	_In_Alarm_Time_Setup
	global	_In_Fan_Temp_Setup
	global	_In_Time_Setup
	global	_Nec_code1
	global	_Nec_state
	global	_Select_Alarm_Field
	global	_Select_Field
	global	__tft_type
	global	_alarm_date
	global	_bit_count
	global	_colstart
	global	_dow
	global	_rowstart
	global	_setup_alarm_hour
	global	_setup_alarm_minute
	global	_setup_alarm_second
	global	_setup_fan_set_temp
	global	_setup_hour
	global	_setup_minute
	global	_setup_second
	global	_setup_year
	global	_year
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_CCP1CON
_CCP1CON	set	0xFBD
	global	_CCP2CON
_CCP2CON	set	0xFBA
	global	_CCPR1L
_CCPR1L	set	0xFBE
	global	_CCPR2L
_CCPR2L	set	0xFBB
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCON3bits
_INTCON3bits	set	0xFF0
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_PORTE
_PORTE	set	0xF84
	global	_PR2
_PR2	set	0xFCB
	global	_RCSTA
_RCSTA	set	0xFAB
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_SSPSTATbits
_SSPSTATbits	set	0xFC7
	global	_T0CON
_T0CON	set	0xFD5
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T1CON
_T1CON	set	0xFCD
	global	_T1CONbits
_T1CONbits	set	0xFCD
	global	_T2CON
_T2CON	set	0xFCA
	global	_T3CON
_T3CON	set	0xFB1
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TMR3L
_TMR3L	set	0xFB2
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_RBPU
_RBPU	set	0x7F8F
	global	_TRMT
_TRMT	set	0x7D61
	
STR_1:; BSR set to: 0

	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	58	;':'
	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	58	;':'
	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	32
	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	47
	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	47
	db	37
	db	48	;'0'
	db	50	;'2'
	db	120	;'x'
	db	0
	
STR_3:; BSR set to: 0

	db	97	;'a'
	db	108	;'l'
	db	97	;'a'
	db	114	;'r'
	db	109	;'m'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	109	;'m'
	db	97	;'a'
	db	116	;'t'
	db	99	;'c'
	db	104	;'h'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	0
	
STR_35:; BSR set to: 0

	db	67	;'C'
	db	97	;'a'
	db	110	;'n'
	db	110	;'n'
	db	111	;'o'
	db	116	;'t'
	db	32
	db	102	;'f'
	db	105	;'i'
	db	110	;'n'
	db	100	;'d'
	db	32
	db	98	;'b'
	db	117	;'u'
	db	116	;'t'
	db	116	;'t'
	db	111	;'o'
	db	110	;'n'
	db	32
	db	13
	db	10
	db	0
	
STR_6:; BSR set to: 0

	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	51	;'3'
	db	51	;'3'
	db	48	;'0'
	db	49	;'1'
	db	76	;'L'
	db	32
	db	83	;'S'
	db	112	;'p'
	db	50	;'2'
	db	49	;'1'
	db	32
	db	70	;'F'
	db	105	;'i'
	db	110	;'n'
	db	97	;'a'
	db	108	;'l'
	db	0
	db	0
	
STR_2:; BSR set to: 0

	db	32
	db	84	;'T'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	67	;'C'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	70	;'F'
	db	32
	db	0
	
STR_24:; BSR set to: 0

	db	69	;'E'
	db	67	;'C'
	db	69	;'E'
	db	51	;'3'
	db	51	;'3'
	db	48	;'0'
	db	49	;'1'
	db	76	;'L'
	db	32
	db	83	;'S'
	db	112	;'p'
	db	50	;'2'
	db	49	;'1'
	db	32
	db	70	;'F'
	db	105	;'i'
	db	110	;'n'
	db	97	;'a'
	db	108	;'l'
	db	0
	
STR_4:; BSR set to: 0

	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	32
	db	100	;'d'
	db	99	;'c'
	db	32
	db	61	;'='
	db	32
	db	37
	db	100	;'d'
	db	32
	db	0
	
STR_36:; BSR set to: 0

	db	48	;'0'
	db	49	;'1'
	db	50	;'2'
	db	51	;'3'
	db	52	;'4'
	db	53	;'5'
	db	54	;'6'
	db	55	;'7'
	db	56	;'8'
	db	57	;'9'
	db	97	;'a'
	db	98	;'b'
	db	99	;'c'
	db	100	;'d'
	db	101	;'e'
	db	102	;'f'
	db	0
	
STR_30:; BSR set to: 0

	db	32
	db	32
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	70	;'F'
	db	97	;'a'
	db	110	;'n'
	db	32
	db	84	;'T'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	0
	
STR_7:; BSR set to: 0

	db	84	;'T'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	101	;'e'
	db	114	;'r'
	db	97	;'a'
	db	116	;'t'
	db	117	;'u'
	db	114	;'r'
	db	101	;'e'
	db	58	;':'
	db	0
	
STR_14:; BSR set to: 0

	db	70	;'F'
	db	65	;'A'
	db	78	;'N'
	db	32
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	84	;'T'
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	0
	
STR_32:; BSR set to: 0

	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	117	;'u'
	db	112	;'p'
	db	0
	db	0
	
STR_29:; BSR set to: 0

	db	32
	db	70	;'F'
	db	97	;'a'
	db	110	;'n'
	db	32
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	117	;'u'
	db	112	;'p'
	db	0
	db	0
	
STR_5:; BSR set to: 0

	db	86	;'V'
	db	111	;'o'
	db	108	;'l'
	db	116	;'t'
	db	32
	db	61	;'='
	db	32
	db	37
	db	102	;'f'
	db	13
	db	10
	db	0
	
STR_27:; BSR set to: 0

	db	37
	db	120	;'x'
	db	58	;':'
	db	37
	db	120	;'x'
	db	58	;':'
	db	37
	db	120	;'x'
	db	13
	db	10
	db	0
	
STR_25:; BSR set to: 0

	db	65	;'A'
	db	108	;'l'
	db	114	;'r'
	db	109	;'m'
	db	32
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	117	;'u'
	db	112	;'p'
	db	0
	
STR_12:; BSR set to: 0

	db	65	;'A'
	db	108	;'l'
	db	97	;'a'
	db	114	;'r'
	db	109	;'m'
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	0
	
STR_13:; BSR set to: 0

	db	65	;'A'
	db	108	;'l'
	db	97	;'a'
	db	114	;'r'
	db	109	;'m'
	db	32
	db	83	;'S'
	db	87	;'W'
	db	0
	
STR_15:; BSR set to: 0

	db	70	;'F'
	db	97	;'a'
	db	110	;'n'
	db	32
	db	83	;'S'
	db	87	;'W'
	db	0
	
STR_11:; BSR set to: 0

	db	68	;'D'
	db	97	;'a'
	db	116	;'t'
	db	101	;'e'
	db	0
	
STR_18:; BSR set to: 0

	db	86	;'V'
	db	111	;'o'
	db	108	;'l'
	db	116	;'t'
	db	0
	
STR_20:; BSR set to: 0

	db	79	;'O'
	db	78	;'N'
	db	32
	db	0
	
STR_21:; BSR set to: 0

	db	79	;'O'
	db	70	;'F'
	db	70	;'F'
	db	0
	
STR_19:; BSR set to: 0

	db	82	;'R'
	db	80	;'P'
	db	77	;'M'
	db	0
	
STR_8:; BSR set to: 0

	db	67	;'C'
	db	47
	db	0
	
STR_16:; BSR set to: 0

	db	68	;'D'
	db	67	;'C'
	db	0
	
STR_17:; BSR set to: 0

	db	82	;'R'
	db	77	;'M'
	db	0
STR_34	equ	STR_11+0
STR_10	equ	STR_12+6
STR_26	equ	STR_12+6
STR_33	equ	STR_12+6
STR_23	equ	STR_21+0
STR_9	equ	STR_21+2
STR_22	equ	STR_20+0
STR_28	equ	STR_6+0
STR_31	equ	STR_6+0
; #config settings
global __CFG_OSC$INTIO67
__CFG_OSC$INTIO67 equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MX$PORTBE
__CFG_CCP2MX$PORTBE equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
	file	"dist/default/production\lab13.X.production.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_Time_Elapsed
_Time_Elapsed:
       ds      2
	global	_txt
_txt:
       ds      2
	global	_alarm_hour
_alarm_hour:
       ds      1
	global	_alarm_minute
_alarm_minute:
       ds      1
	global	_alarm_second
_alarm_second:
       ds      1
	global	_day
_day:
       ds      1
	global	_duty_cycle
_duty_cycle:
       ds      1
	global	_found
_found:
       ds      1
	global	_hour
_hour:
       ds      1
	global	_minute
_minute:
       ds      1
	global	_month
_month:
       ds      1
	global	_second
_second:
       ds      1
	global	_setup_day
_setup_day:
       ds      1
	global	_setup_month
_setup_month:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_Nec_code
_Nec_code:
       ds      4
	global	_volt
_volt:
       ds      3
	global	_ALARMEN
_ALARMEN:
       ds      2
	global	_DS1621_tempC
_DS1621_tempC:
       ds      2
	global	_DS1621_tempF
_DS1621_tempF:
       ds      2
	global	_MATCHED
_MATCHED:
       ds      2
	global	_alarm_mode
_alarm_mode:
       ds      2
	global	_color
_color:
       ds      2
	global	_nbr
_nbr:
       ds      2
	global	_nec_ok
_nec_ok:
       ds      2
	global	_rpm
_rpm:
       ds      2
	global	_rps
	global	_rps
_rps:
       ds      2
	global	_FAN
_FAN:
       ds      1
	global	_INT1_flag
	global	_INT1_flag
_INT1_flag:
       ds      1
	global	_INT2_flag
_INT2_flag:
       ds      1
	global	_In_Alarm_Time_Setup
_In_Alarm_Time_Setup:
       ds      1
	global	_In_Fan_Temp_Setup
_In_Fan_Temp_Setup:
       ds      1
	global	_In_Time_Setup
_In_Time_Setup:
       ds      1
	global	_Nec_code1
_Nec_code1:
       ds      1
	global	_Nec_state
_Nec_state:
       ds      1
	global	_Select_Alarm_Field
_Select_Alarm_Field:
       ds      1
	global	_Select_Fan_Temp_Field
	global	_Select_Fan_Temp_Field
_Select_Fan_Temp_Field:
       ds      1
	global	_Select_Field
_Select_Field:
       ds      1
	global	__tft_type
__tft_type:
       ds      1
	global	_alarm_date
_alarm_date:
       ds      1
	global	_bit_count
_bit_count:
       ds      1
	global	_colstart
_colstart:
       ds      1
	global	_dow
_dow:
       ds      1
	global	_rowstart
_rowstart:
       ds      1
	global	_setup_alarm_hour
_setup_alarm_hour:
       ds      1
	global	_setup_alarm_minute
_setup_alarm_minute:
       ds      1
	global	_setup_alarm_second
_setup_alarm_second:
       ds      1
	global	_setup_fan_set_temp
_setup_fan_set_temp:
       ds      1
	global	_setup_hour
_setup_hour:
       ds      1
	global	_setup_minute
_setup_minute:
       ds      1
	global	_setup_second
_setup_second:
       ds      1
	global	_setup_year
_setup_year:
       ds      1
	global	_year
_year:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"Main.c"
	line	38
	global	_fan_set_temp
_fan_set_temp:
       ds      1
psect	dataBANK0
	file	"Main.c"
	line	33
	global	_tempSecond
_tempSecond:
       ds      1
psect	dataBANK0
	file	"ST7735_TFT.c"
	line	8
	global	_wrap
_wrap:
       ds      1
psect	dataBANK0
	file	"Main.c"
	line	62
	global	_Fan_Set_Temp_Txt
_Fan_Set_Temp_Txt:
       ds      5
psect	dataBANK0
	file	"Main.c"
	line	70
	global	_RPM_Txt
_RPM_Txt:
       ds      5
psect	dataBANK0
	file	"Main.c"
	line	75
	global	_setup_fan_set_text
_setup_fan_set_text:
       ds      5
psect	dataBANK0
	file	"Main.c"
	line	61
	global	_Alarm_SW_Txt
_Alarm_SW_Txt:
       ds      4
psect	dataBANK0
	file	"Main.c"
	line	67
	global	_DC_Txt
_DC_Txt:
       ds      4
psect	dataBANK0
	file	"Main.c"
	line	63
	global	_Fan_SW_Txt
_Fan_SW_Txt:
       ds      4
psect	dataBANK0
	file	"Main.c"
	line	56
	global	_tempC
_tempC:
       ds      4
psect	dataBANK0
	file	"Main.c"
	line	57
	global	_tempF
_tempF:
       ds      4
psect	dataBANK0
	file	"Main.c"
	line	69
	global	_RTC_ALARM_Txt
_RTC_ALARM_Txt:
       ds      2
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"Main.c"
	line	53
	global	_buffer
	global	_buffer
_buffer:
       ds      31
psect	dataBANK1
	file	"Main.c"
	line	64
	global	_array1
_array1:
       ds      21
psect	dataBANK1
	file	"Main.c"
	line	60
	global	_alarm_time
_alarm_time:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	59
	global	_date
_date:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	74
	global	_setup_alarm_time
_setup_alarm_time:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	73
	global	_setup_date
_setup_date:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	72
	global	_setup_time
_setup_time:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	58
	global	_time
_time:
       ds      9
psect	dataBANK1
	file	"Main.c"
	line	68
	global	_Volt_Txt
_Volt_Txt:
       ds      6
	file	"dist/default/production\lab13.X.production.as"
	line	#
psect	cinit
; Clear objects allocated to BANK0 (53 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	53
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (16 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	16
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
	line	#
; Initialize objects allocated to BANK1 (112 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,112
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (40 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,40
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_printf$3057
_printf$3057:	; 3 bytes @ 0x0
	ds   3
	global	printf@idx
printf@idx:	; 1 bytes @ 0x3
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x4
	ds   2
	global	printf@prec
printf@prec:	; 2 bytes @ 0x6
	ds   2
	global	printf@tmpval
printf@tmpval:	; 4 bytes @ 0x8
	ds   4
	global	printf@width
printf@width:	; 2 bytes @ 0xC
	ds   2
	global	printf@exp
printf@exp:	; 2 bytes @ 0xE
	ds   2
	global	printf@val
printf@val:	; 4 bytes @ 0x10
	ds   4
	global	printf@flag
printf@flag:	; 2 bytes @ 0x14
	ds   2
	global	printf@fval
printf@fval:	; 3 bytes @ 0x16
	ds   3
	global	printf@c
printf@c:	; 1 bytes @ 0x19
	ds   1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	printf@f
printf@f:	; 2 bytes @ 0x0
	ds   14
??_printf:	; 0 bytes @ 0xE
	ds   6
	global	check_for_button_input@j
check_for_button_input@j:	; 2 bytes @ 0x14
	ds   2
??_Setup_Temp_Fan:	; 0 bytes @ 0x16
	ds   2
??_main:	; 0 bytes @ 0x18
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_do_update_pwm:	; 0 bytes @ 0x0
?_Turn_Off_Fan:	; 0 bytes @ 0x0
?_i2cHighScl:	; 0 bytes @ 0x0
?_i2cHighSda:	; 0 bytes @ 0x0
?_i2cLowScl:	; 0 bytes @ 0x0
?_i2cAck:	; 0 bytes @ 0x0
?_i2cNack:	; 0 bytes @ 0x0
?_i2cLowSda:	; 0 bytes @ 0x0
?_TIMER1_isr:	; 0 bytes @ 0x0
??_TIMER1_isr:	; 0 bytes @ 0x0
?_INT0_isr:	; 0 bytes @ 0x0
??_INT0_isr:	; 0 bytes @ 0x0
?_INT2_isr:	; 0 bytes @ 0x0
??_INT2_isr:	; 0 bytes @ 0x0
?_Init_ADC:	; 0 bytes @ 0x0
?_test_alarm:	; 0 bytes @ 0x0
?_Do_Beep_Good:	; 0 bytes @ 0x0
?_Do_Beep_Bad:	; 0 bytes @ 0x0
?_Set_RGB_Color:	; 0 bytes @ 0x0
?_Deactivate_Buzzer:	; 0 bytes @ 0x0
?_Activate_Buzzer_4KHz:	; 0 bytes @ 0x0
?_LCD_Reset:	; 0 bytes @ 0x0
?_TFT_GreenTab_Initialize:	; 0 bytes @ 0x0
?_Initialize_Setup_Alarm_Time_Screen:	; 0 bytes @ 0x0
?_Update_Setup_Alarm_Time_Screen:	; 0 bytes @ 0x0
?_Go_Prev_Alarm_Field:	; 0 bytes @ 0x0
?_Go_Next_Alarm_Field:	; 0 bytes @ 0x0
?_Do_Save_New_Alarm_Time:	; 0 bytes @ 0x0
?_Decrease_Alarm_Time:	; 0 bytes @ 0x0
?_Increase_Alarm_Time:	; 0 bytes @ 0x0
?_Exit_Setup_Alarm_Time:	; 0 bytes @ 0x0
?_Update_Setup_Screen_Cursor_Forward:	; 0 bytes @ 0x0
?_Update_Setup_Screen_Cursor_Backward:	; 0 bytes @ 0x0
?_Initialize_Setup_Fan_Screen:	; 0 bytes @ 0x0
?_Update_Setup_Fan_Screen:	; 0 bytes @ 0x0
?_Do_Save_New_Fan_Temp:	; 0 bytes @ 0x0
?_Decrease_Fan_Temp:	; 0 bytes @ 0x0
?_Increase_Fan_Temp:	; 0 bytes @ 0x0
?_Exit_Setup_Fan_Temp:	; 0 bytes @ 0x0
?_Initialize_Setup_Time_Screen:	; 0 bytes @ 0x0
?_Update_Setup_Time_Screen:	; 0 bytes @ 0x0
?_Go_Prev_Field:	; 0 bytes @ 0x0
?_Go_Next_Field:	; 0 bytes @ 0x0
?_Do_Save_New_Time:	; 0 bytes @ 0x0
?_Decrease_Time:	; 0 bytes @ 0x0
?_Increase_Time:	; 0 bytes @ 0x0
?_Exit_Time_Setup:	; 0 bytes @ 0x0
?_Wait_One_Sec:	; 0 bytes @ 0x0
?_Activate_Buzzer_2KHz:	; 0 bytes @ 0x0
?_Activate_Buzzer_500Hz:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_Monitor_Fan:	; 0 bytes @ 0x0
?_Toggle_Fan_Monitor:	; 0 bytes @ 0x0
?_I2C_Write:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
?_I2C_ReStart:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
?_DS1621_Init:	; 0 bytes @ 0x0
?_DS3231_Read_Time:	; 0 bytes @ 0x0
?_DS3231_Write_Time:	; 0 bytes @ 0x0
?_DS3231_Read_Alarm_Time:	; 0 bytes @ 0x0
?_DS3231_Init:	; 0 bytes @ 0x0
?_DS3231_Write_Alarm_Time:	; 0 bytes @ 0x0
?_DS3231_Turn_Off_Alarm:	; 0 bytes @ 0x0
?_DS3231_Turn_On_Alarm:	; 0 bytes @ 0x0
?_Init_Interrupt:	; 0 bytes @ 0x0
?_chkisr:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
?_init_UART:	; 0 bytes @ 0x0
?_Do_Init:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_spiwrite:	; 0 bytes @ 0x0
?_write_command:	; 0 bytes @ 0x0
?_write_data:	; 0 bytes @ 0x0
?_Rcmd1:	; 0 bytes @ 0x0
?_Rcmd2red:	; 0 bytes @ 0x0
?_Rcmd3:	; 0 bytes @ 0x0
?_check_for_button_input:	; 1 bytes @ 0x0
?_bcd_2_dec:	; 1 bytes @ 0x0
?_I2C_Read:	; 1 bytes @ 0x0
?_Initialize_Screen:	; 2 bytes @ 0x0
?_Update_Screen:	; 2 bytes @ 0x0
?_Do_Setup_Time:	; 2 bytes @ 0x0
?_Do_Setup_Alarm_Time:	; 2 bytes @ 0x0
?_Setup_Temp_Fan:	; 2 bytes @ 0x0
	ds   2
??_chkisr:	; 0 bytes @ 0x2
	ds   14
??_Turn_Off_Fan:	; 0 bytes @ 0x10
??_i2cHighScl:	; 0 bytes @ 0x10
??_i2cHighSda:	; 0 bytes @ 0x10
??_i2cLowScl:	; 0 bytes @ 0x10
??_i2cAck:	; 0 bytes @ 0x10
??_i2cNack:	; 0 bytes @ 0x10
??_i2cLowSda:	; 0 bytes @ 0x10
?_OpenUSART:	; 0 bytes @ 0x10
??_Init_ADC:	; 0 bytes @ 0x10
??_Set_RGB_Color:	; 0 bytes @ 0x10
??_Deactivate_Buzzer:	; 0 bytes @ 0x10
??_Activate_Buzzer_4KHz:	; 0 bytes @ 0x10
??_bcd_2_dec:	; 0 bytes @ 0x10
??_Wait_One_Sec:	; 0 bytes @ 0x10
??_Activate_Buzzer_2KHz:	; 0 bytes @ 0x10
??_Activate_Buzzer_500Hz:	; 0 bytes @ 0x10
??_isdigit:	; 0 bytes @ 0x10
??_Toggle_Fan_Monitor:	; 0 bytes @ 0x10
?_I2C_Init:	; 0 bytes @ 0x10
??_I2C_Read:	; 0 bytes @ 0x10
??_I2C_Write:	; 0 bytes @ 0x10
??_I2C_Start:	; 0 bytes @ 0x10
??_I2C_ReStart:	; 0 bytes @ 0x10
??_I2C_Stop:	; 0 bytes @ 0x10
??_Init_Interrupt:	; 0 bytes @ 0x10
??_putch:	; 0 bytes @ 0x10
??_spiwrite:	; 0 bytes @ 0x10
?___ftge:	; 1 bit 
?_strcpy:	; 2 bytes @ 0x10
	global	?_strlen
?_strlen:	; 2 bytes @ 0x10
	global	?_get_full_ADC
?_get_full_ADC:	; 2 bytes @ 0x10
	global	?_get_duty_cycle
?_get_duty_cycle:	; 2 bytes @ 0x10
	global	?___wmul
?___wmul:	; 2 bytes @ 0x10
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x10
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x10
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x10
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x10
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x10
	global	I2C_Read@ack
I2C_Read@ack:	; 1 bytes @ 0x10
	global	I2C_Write@outByte
I2C_Write@outByte:	; 1 bytes @ 0x10
	global	putch@c
putch@c:	; 1 bytes @ 0x10
	global	spiwrite@x
spiwrite@x:	; 1 bytes @ 0x10
	global	Set_RGB_Color@color
Set_RGB_Color@color:	; 1 bytes @ 0x10
	global	get_duty_cycle@temp
get_duty_cycle@temp:	; 2 bytes @ 0x10
	global	Wait_One_Sec@k
Wait_One_Sec@k:	; 2 bytes @ 0x10
	global	OpenUSART@spbrg
OpenUSART@spbrg:	; 2 bytes @ 0x10
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x10
	global	strcpy@to
strcpy@to:	; 2 bytes @ 0x10
	global	strlen@s
strlen@s:	; 2 bytes @ 0x10
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x10
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x10
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x10
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x10
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x10
	global	I2C_Init@c
I2C_Init@c:	; 4 bytes @ 0x10
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x10
	ds   1
	global	I2C_Read@n
I2C_Read@n:	; 1 bytes @ 0x11
	global	I2C_Write@n
I2C_Write@n:	; 1 bytes @ 0x11
	global	spiwrite@spidata
spiwrite@spidata:	; 1 bytes @ 0x11
	global	_isdigit$2691
_isdigit$2691:	; 1 bytes @ 0x11
	ds   1
??_OpenUSART:	; 0 bytes @ 0x12
??_strlen:	; 0 bytes @ 0x12
??_get_full_ADC:	; 0 bytes @ 0x12
?_I2C_Write_Address_Write_One_Byte:	; 0 bytes @ 0x12
?_I2C_Write_Cmd_Only:	; 0 bytes @ 0x12
?_I2C_Write_Cmd_Write_Data:	; 0 bytes @ 0x12
??_write_command:	; 0 bytes @ 0x12
??_write_data:	; 0 bytes @ 0x12
	global	I2C_Read@inByte
I2C_Read@inByte:	; 1 bytes @ 0x12
	global	I2C_Write_Address_Write_One_Byte@Address
I2C_Write_Address_Write_One_Byte@Address:	; 1 bytes @ 0x12
	global	I2C_Write_Cmd_Only@Cmd
I2C_Write_Cmd_Only@Cmd:	; 1 bytes @ 0x12
	global	I2C_Write_Cmd_Write_Data@Cmd
I2C_Write_Cmd_Write_Data@Cmd:	; 1 bytes @ 0x12
	global	write_command@cmd_
write_command@cmd_:	; 1 bytes @ 0x12
	global	write_data@data_
write_data@data_:	; 1 bytes @ 0x12
	global	OpenUSART@config
OpenUSART@config:	; 1 bytes @ 0x12
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x12
	global	get_duty_cycle@set_temp
get_duty_cycle@set_temp:	; 2 bytes @ 0x12
	global	bcd_2_dec@dec
bcd_2_dec@dec:	; 2 bytes @ 0x12
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x12
	global	strcpy@from
strcpy@from:	; 2 bytes @ 0x12
	ds   1
??_I2C_Write_Cmd_Only:	; 0 bytes @ 0x13
??_DS3231_Read_Time:	; 0 bytes @ 0x13
??_DS3231_Read_Alarm_Time:	; 0 bytes @ 0x13
??_init_UART:	; 0 bytes @ 0x13
??_Rcmd2red:	; 0 bytes @ 0x13
?_setAddrWindow:	; 0 bytes @ 0x13
??___ftneg:	; 0 bytes @ 0x13
?_I2C_Write_Address_Read_One_Byte:	; 1 bytes @ 0x13
	global	?_DS1621_Read_Temp
?_DS1621_Read_Temp:	; 2 bytes @ 0x13
	global	I2C_Write_Address_Read_One_Byte@Address
I2C_Write_Address_Read_One_Byte@Address:	; 1 bytes @ 0x13
	global	I2C_Write_Address_Write_One_Byte@Data_Out
I2C_Write_Address_Write_One_Byte@Data_Out:	; 1 bytes @ 0x13
	global	I2C_Write_Cmd_Only@Device
I2C_Write_Cmd_Only@Device:	; 1 bytes @ 0x13
	global	I2C_Write_Cmd_Write_Data@Data_Out
I2C_Write_Cmd_Write_Data@Data_Out:	; 1 bytes @ 0x13
	global	DS3231_Read_Time@Address
DS3231_Read_Time@Address:	; 1 bytes @ 0x13
	global	DS3231_Read_Alarm_Time@Address
DS3231_Read_Alarm_Time@Address:	; 1 bytes @ 0x13
	global	setAddrWindow@y0
setAddrWindow@y0:	; 1 bytes @ 0x13
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x13
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x13
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x13
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x13
	ds   1
??_strcpy:	; 0 bytes @ 0x14
??_get_duty_cycle:	; 0 bytes @ 0x14
??_I2C_Init:	; 0 bytes @ 0x14
??_I2C_Write_Address_Read_One_Byte:	; 0 bytes @ 0x14
??_I2C_Write_Address_Write_One_Byte:	; 0 bytes @ 0x14
??_I2C_Write_Cmd_Write_Data:	; 0 bytes @ 0x14
??___wmul:	; 0 bytes @ 0x14
	global	I2C_Write_Address_Read_One_Byte@Data_Ret
I2C_Write_Address_Read_One_Byte@Data_Ret:	; 1 bytes @ 0x14
	global	I2C_Write_Address_Write_One_Byte@Device
I2C_Write_Address_Write_One_Byte@Device:	; 1 bytes @ 0x14
	global	I2C_Write_Cmd_Write_Data@Device
I2C_Write_Cmd_Write_Data@Device:	; 1 bytes @ 0x14
	global	DS3231_Read_Time@Device
DS3231_Read_Time@Device:	; 1 bytes @ 0x14
	global	DS3231_Read_Alarm_Time@Device
DS3231_Read_Alarm_Time@Device:	; 1 bytes @ 0x14
	global	setAddrWindow@x1
setAddrWindow@x1:	; 1 bytes @ 0x14
	global	bcd_2_dec@bcd
bcd_2_dec@bcd:	; 1 bytes @ 0x14
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x14
	global	get_full_ADC@result
get_full_ADC@result:	; 2 bytes @ 0x14
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x14
	global	strcpy@cp
strcpy@cp:	; 2 bytes @ 0x14
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x14
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x14
	ds   1
??___ftpack:	; 0 bytes @ 0x15
??_DS1621_Init:	; 0 bytes @ 0x15
??_DS1621_Read_Temp:	; 0 bytes @ 0x15
	global	I2C_Write_Address_Read_One_Byte@Device
I2C_Write_Address_Read_One_Byte@Device:	; 1 bytes @ 0x15
	global	DS1621_Init@Device
DS1621_Init@Device:	; 1 bytes @ 0x15
	global	DS1621_Read_Temp@Cmd
DS1621_Read_Temp@Cmd:	; 1 bytes @ 0x15
	global	setAddrWindow@y1
setAddrWindow@y1:	; 1 bytes @ 0x15
	ds   1
??__tdiv_to_l_:	; 0 bytes @ 0x16
??__div_to_l_:	; 0 bytes @ 0x16
??_DS3231_Init:	; 0 bytes @ 0x16
??_Do_Init:	; 0 bytes @ 0x16
?_delay_ms:	; 0 bytes @ 0x16
??_setAddrWindow:	; 0 bytes @ 0x16
??___ftge:	; 0 bytes @ 0x16
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x16
	global	DS1621_Read_Temp@Data_Ret
DS1621_Read_Temp@Data_Ret:	; 1 bytes @ 0x16
	global	DS3231_Init@Address_7
DS3231_Init@Address_7:	; 1 bytes @ 0x16
	global	setAddrWindow@x0
setAddrWindow@x0:	; 1 bytes @ 0x16
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x16
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x16
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x16
	ds   1
?_drawPixel:	; 0 bytes @ 0x17
?_drawFastVLine:	; 0 bytes @ 0x17
?_fillRectangle:	; 0 bytes @ 0x17
	global	DS1621_Read_Temp@Device
DS1621_Read_Temp@Device:	; 1 bytes @ 0x17
	global	DS3231_Init@Address_E
DS3231_Init@Address_E:	; 1 bytes @ 0x17
	global	drawPixel@y
drawPixel@y:	; 1 bytes @ 0x17
	global	drawFastVLine@y
drawFastVLine@y:	; 1 bytes @ 0x17
	global	fillRectangle@y
fillRectangle@y:	; 1 bytes @ 0x17
	ds   1
??_delay_ms:	; 0 bytes @ 0x18
??___lldiv:	; 0 bytes @ 0x18
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x18
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0x18
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x18
	global	DS3231_Init@control_E
DS3231_Init@control_E:	; 1 bytes @ 0x18
	global	drawFastVLine@h
drawFastVLine@h:	; 1 bytes @ 0x18
	global	fillRectangle@w
fillRectangle@w:	; 1 bytes @ 0x18
	global	drawPixel@color
drawPixel@color:	; 2 bytes @ 0x18
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x18
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x18
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x18
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x18
	ds   1
	global	DS3231_Init@Device
DS3231_Init@Device:	; 1 bytes @ 0x19
	global	fillRectangle@h
fillRectangle@h:	; 1 bytes @ 0x19
	global	drawFastVLine@color
drawFastVLine@color:	; 2 bytes @ 0x19
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x19
	ds   1
??_DS3231_Turn_Off_Alarm:	; 0 bytes @ 0x1A
??_DS3231_Turn_On_Alarm:	; 0 bytes @ 0x1A
??_drawPixel:	; 0 bytes @ 0x1A
??___awdiv:	; 0 bytes @ 0x1A
	global	DS3231_Turn_Off_Alarm@Address_E
DS3231_Turn_Off_Alarm@Address_E:	; 1 bytes @ 0x1A
	global	DS3231_Turn_On_Alarm@Address_E
DS3231_Turn_On_Alarm@Address_E:	; 1 bytes @ 0x1A
	global	drawPixel@x
drawPixel@x:	; 1 bytes @ 0x1A
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1A
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x1A
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x1A
	global	fillRectangle@color
fillRectangle@color:	; 2 bytes @ 0x1A
	ds   1
?_drawCircle:	; 0 bytes @ 0x1B
??_drawFastVLine:	; 0 bytes @ 0x1B
??___awtoft:	; 0 bytes @ 0x1B
??___lbtoft:	; 0 bytes @ 0x1B
	global	DS3231_Turn_Off_Alarm@Address_F
DS3231_Turn_Off_Alarm@Address_F:	; 1 bytes @ 0x1B
	global	DS3231_Turn_On_Alarm@Address_F
DS3231_Turn_On_Alarm@Address_F:	; 1 bytes @ 0x1B
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1B
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x1B
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x1B
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x1B
	global	drawCircle@x0
drawCircle@x0:	; 2 bytes @ 0x1B
	ds   1
??_LCD_Reset:	; 0 bytes @ 0x1C
??_TFT_GreenTab_Initialize:	; 0 bytes @ 0x1C
??_Rcmd1:	; 0 bytes @ 0x1C
??_Rcmd3:	; 0 bytes @ 0x1C
??_fillRectangle:	; 0 bytes @ 0x1C
??___lltoft:	; 0 bytes @ 0x1C
	global	DS3231_Turn_Off_Alarm@control_E
DS3231_Turn_Off_Alarm@control_E:	; 1 bytes @ 0x1C
	global	DS3231_Turn_On_Alarm@control_E
DS3231_Turn_On_Alarm@control_E:	; 1 bytes @ 0x1C
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x1C
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x1C
	ds   1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x1D
	global	DS3231_Turn_Off_Alarm@control_F
DS3231_Turn_Off_Alarm@control_F:	; 1 bytes @ 0x1D
	global	DS3231_Turn_On_Alarm@control_F
DS3231_Turn_On_Alarm@control_F:	; 1 bytes @ 0x1D
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x1D
	global	drawCircle@y0
drawCircle@y0:	; 2 bytes @ 0x1D
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x1D
	ds   1
	global	?_get_RPM
?_get_RPM:	; 2 bytes @ 0x1E
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1E
	global	DS3231_Turn_Off_Alarm@Device
DS3231_Turn_Off_Alarm@Device:	; 1 bytes @ 0x1E
	global	DS3231_Turn_On_Alarm@Device
DS3231_Turn_On_Alarm@Device:	; 1 bytes @ 0x1E
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x1E
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1E
	ds   1
??_test_alarm:	; 0 bytes @ 0x1F
	global	drawFastVLine@hi
drawFastVLine@hi:	; 1 bytes @ 0x1F
	global	drawCircle@r
drawCircle@r:	; 2 bytes @ 0x1F
	ds   1
??_get_RPM:	; 0 bytes @ 0x20
	global	drawFastVLine@lo
drawFastVLine@lo:	; 1 bytes @ 0x20
	global	fillRectangle@hi
fillRectangle@hi:	; 1 bytes @ 0x20
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x20
	global	get_RPM@RPS
get_RPM@RPS:	; 2 bytes @ 0x20
	ds   1
	global	drawFastVLine@x
drawFastVLine@x:	; 1 bytes @ 0x21
	global	fillRectangle@lo
fillRectangle@lo:	; 1 bytes @ 0x21
	global	drawCircle@color
drawCircle@color:	; 2 bytes @ 0x21
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x21
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x21
	ds   1
?_fillRect:	; 0 bytes @ 0x22
	global	fillRect@y
fillRect@y:	; 1 bytes @ 0x22
	global	fillRectangle@x
fillRectangle@x:	; 1 bytes @ 0x22
	ds   1
?_fillScreen:	; 0 bytes @ 0x23
??_drawCircle:	; 0 bytes @ 0x23
	global	fillRect@w
fillRect@w:	; 1 bytes @ 0x23
	global	fillScreen@color
fillScreen@color:	; 2 bytes @ 0x23
	ds   1
??___ftmul:	; 0 bytes @ 0x24
	global	fillRect@h
fillRect@h:	; 1 bytes @ 0x24
	ds   1
??_fillScreen:	; 0 bytes @ 0x25
??___llmod:	; 0 bytes @ 0x25
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x25
	global	fillRect@color
fillRect@color:	; 2 bytes @ 0x25
	global	drawCircle@ddF_x
drawCircle@ddF_x:	; 2 bytes @ 0x25
	ds   2
??_fillRect:	; 0 bytes @ 0x27
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x27
	global	drawCircle@ddF_y
drawCircle@ddF_y:	; 2 bytes @ 0x27
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x28
	ds   1
	global	drawCircle@f
drawCircle@f:	; 2 bytes @ 0x29
	ds   1
	global	fillRect@x
fillRect@x:	; 1 bytes @ 0x2A
	ds   1
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2B
	global	fillRect@i
fillRect@i:	; 2 bytes @ 0x2B
	global	drawCircle@x
drawCircle@x:	; 2 bytes @ 0x2B
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x2C
	ds   1
??_Update_Setup_Screen_Cursor_Forward:	; 0 bytes @ 0x2D
??_Update_Setup_Screen_Cursor_Backward:	; 0 bytes @ 0x2D
?_drawChar:	; 0 bytes @ 0x2D
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x2D
	global	?___fttol
?___fttol:	; 4 bytes @ 0x2D
	global	drawChar@y
drawChar@y:	; 1 bytes @ 0x2D
	global	Update_Setup_Screen_Cursor_Forward@field
Update_Setup_Screen_Cursor_Forward@field:	; 1 bytes @ 0x2D
	global	Update_Setup_Screen_Cursor_Backward@field
Update_Setup_Screen_Cursor_Backward@field:	; 1 bytes @ 0x2D
	global	drawCircle@y
drawCircle@y:	; 2 bytes @ 0x2D
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x2D
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x2D
	ds   1
	global	drawChar@c
drawChar@c:	; 1 bytes @ 0x2E
	global	Update_Setup_Screen_Cursor_Forward@yinc
Update_Setup_Screen_Cursor_Forward@yinc:	; 1 bytes @ 0x2E
	global	Update_Setup_Screen_Cursor_Backward@yinc
Update_Setup_Screen_Cursor_Backward@yinc:	; 1 bytes @ 0x2E
	ds   1
	global	Update_Setup_Screen_Cursor_Forward@xinc
Update_Setup_Screen_Cursor_Forward@xinc:	; 1 bytes @ 0x2F
	global	Update_Setup_Screen_Cursor_Backward@xinc
Update_Setup_Screen_Cursor_Backward@xinc:	; 1 bytes @ 0x2F
	global	drawChar@color
drawChar@color:	; 2 bytes @ 0x2F
	ds   1
??_Go_Prev_Alarm_Field:	; 0 bytes @ 0x30
??_Go_Next_Alarm_Field:	; 0 bytes @ 0x30
??_Go_Prev_Field:	; 0 bytes @ 0x30
??_Go_Next_Field:	; 0 bytes @ 0x30
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x30
	ds   1
??___fttol:	; 0 bytes @ 0x31
	global	drawChar@bg
drawChar@bg:	; 2 bytes @ 0x31
	ds   2
??___ftdiv:	; 0 bytes @ 0x33
	global	drawChar@size
drawChar@size:	; 1 bytes @ 0x33
	ds   1
??_drawChar:	; 0 bytes @ 0x34
	global	drawChar@line
drawChar@line:	; 1 bytes @ 0x34
	ds   1
	global	drawChar@x
drawChar@x:	; 1 bytes @ 0x35
	ds   1
	global	drawChar@j
drawChar@j:	; 1 bytes @ 0x36
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x36
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x36
	ds   1
	global	drawChar@i
drawChar@i:	; 1 bytes @ 0x37
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x37
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x37
	ds   1
?_drawtext:	; 0 bytes @ 0x38
	global	drawtext@y
drawtext@y:	; 1 bytes @ 0x38
	ds   1
	global	drawtext@_text
drawtext@_text:	; 2 bytes @ 0x39
	ds   1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x3A
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x3B
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x3B
	global	drawtext@color
drawtext@color:	; 2 bytes @ 0x3B
	ds   1
??_do_update_pwm:	; 0 bytes @ 0x3C
	global	?___awmod
?___awmod:	; 2 bytes @ 0x3C
	global	?_read_volt
?_read_volt:	; 3 bytes @ 0x3C
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x3C
	ds   1
	global	drawtext@bg
drawtext@bg:	; 2 bytes @ 0x3D
	ds   1
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x3E
	ds   1
??_read_volt:	; 0 bytes @ 0x3F
	global	drawtext@size
drawtext@size:	; 1 bytes @ 0x3F
	global	do_update_pwm@dc_f
do_update_pwm@dc_f:	; 3 bytes @ 0x3F
	global	read_volt@volt
read_volt@volt:	; 3 bytes @ 0x3F
	ds   1
??_drawtext:	; 0 bytes @ 0x40
??___awmod:	; 0 bytes @ 0x40
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x40
	ds   1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x41
	ds   1
	global	?_dec_2_bcd
?_dec_2_bcd:	; 2 bytes @ 0x42
	global	?_fround
?_fround:	; 3 bytes @ 0x42
	global	?_scale
?_scale:	; 3 bytes @ 0x42
	global	drawtext@x
drawtext@x:	; 1 bytes @ 0x42
	global	do_update_pwm@duty_cycle
do_update_pwm@duty_cycle:	; 1 bytes @ 0x42
	global	read_volt@nStep
read_volt@nStep:	; 2 bytes @ 0x42
	ds   1
	global	drawtext@textsize
drawtext@textsize:	; 2 bytes @ 0x43
	global	do_update_pwm@dc_I
do_update_pwm@dc_I:	; 2 bytes @ 0x43
	ds   1
??_dec_2_bcd:	; 0 bytes @ 0x44
	ds   1
??_Do_Beep_Good:	; 0 bytes @ 0x45
??_Do_Beep_Bad:	; 0 bytes @ 0x45
??_Monitor_Fan:	; 0 bytes @ 0x45
??_fround:	; 0 bytes @ 0x45
??_scale:	; 0 bytes @ 0x45
	global	drawtext@i
drawtext@i:	; 2 bytes @ 0x45
	global	_fround$3055
_fround$3055:	; 3 bytes @ 0x45
	global	_scale$3056
_scale$3056:	; 3 bytes @ 0x45
	ds   1
	global	dec_2_bcd@bcd
dec_2_bcd@bcd:	; 2 bytes @ 0x46
	ds   1
	global	drawtext@cursor_y
drawtext@cursor_y:	; 1 bytes @ 0x47
	ds   1
	global	drawtext@cursor_x
drawtext@cursor_x:	; 1 bytes @ 0x48
	global	dec_2_bcd@dec
dec_2_bcd@dec:	; 1 bytes @ 0x48
	global	scale@scl
scale@scl:	; 1 bytes @ 0x48
	global	_fround$3054
_fround$3054:	; 3 bytes @ 0x48
	ds   1
??_Initialize_Screen:	; 0 bytes @ 0x49
??_Update_Screen:	; 0 bytes @ 0x49
??_Initialize_Setup_Alarm_Time_Screen:	; 0 bytes @ 0x49
??_Exit_Setup_Alarm_Time:	; 0 bytes @ 0x49
??_Initialize_Setup_Fan_Screen:	; 0 bytes @ 0x49
??_Update_Setup_Fan_Screen:	; 0 bytes @ 0x49
??_Do_Save_New_Fan_Temp:	; 0 bytes @ 0x49
??_Exit_Setup_Fan_Temp:	; 0 bytes @ 0x49
??_Initialize_Setup_Time_Screen:	; 0 bytes @ 0x49
??_Update_Setup_Time_Screen:	; 0 bytes @ 0x49
??_Decrease_Time:	; 0 bytes @ 0x49
??_Increase_Time:	; 0 bytes @ 0x49
??_Exit_Time_Setup:	; 0 bytes @ 0x49
??_DS3231_Write_Time:	; 0 bytes @ 0x49
??_DS3231_Write_Alarm_Time:	; 0 bytes @ 0x49
	global	DS3231_Write_Time@Device
DS3231_Write_Time@Device:	; 1 bytes @ 0x49
	global	DS3231_Write_Alarm_Time@Device
DS3231_Write_Alarm_Time@Device:	; 1 bytes @ 0x49
	global	Update_Setup_Fan_Screen@dc_char1
Update_Setup_Fan_Screen@dc_char1:	; 1 bytes @ 0x49
	ds   1
	global	DS3231_Write_Time@Address
DS3231_Write_Time@Address:	; 1 bytes @ 0x4A
	global	DS3231_Write_Alarm_Time@Address
DS3231_Write_Alarm_Time@Address:	; 1 bytes @ 0x4A
	global	Update_Setup_Fan_Screen@dc_char2
Update_Setup_Fan_Screen@dc_char2:	; 1 bytes @ 0x4A
	ds   1
??_Do_Save_New_Alarm_Time:	; 0 bytes @ 0x4B
??_Do_Save_New_Time:	; 0 bytes @ 0x4B
	global	Update_Setup_Fan_Screen@dc_char3
Update_Setup_Fan_Screen@dc_char3:	; 1 bytes @ 0x4B
	global	fround@prec
fround@prec:	; 1 bytes @ 0x4B
	global	Update_Screen@neg_tempF
Update_Screen@neg_tempF:	; 2 bytes @ 0x4B
	ds   1
??_Decrease_Fan_Temp:	; 0 bytes @ 0x4C
??_Increase_Fan_Temp:	; 0 bytes @ 0x4C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x4C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x4C
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x4F
	ds   3
??___ftadd:	; 0 bytes @ 0x52
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x55
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x56
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x57
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x58
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x58
	ds   3
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x5B
	ds   3
??_check_for_button_input:	; 0 bytes @ 0x5E
??_Update_Setup_Alarm_Time_Screen:	; 0 bytes @ 0x5E
??_Decrease_Alarm_Time:	; 0 bytes @ 0x5E
??_Increase_Alarm_Time:	; 0 bytes @ 0x5E
??___ftsub:	; 0 bytes @ 0x5E
	ds   1
??_Do_Setup_Time:	; 0 bytes @ 0x5F
??_Do_Setup_Alarm_Time:	; 0 bytes @ 0x5F
;!
;!Data Sizes:
;!    Strings     330
;!    Constant    625
;!    Data        152
;!    BSS         69
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          127     95     111
;!    BANK0           128     25     118
;!    BANK1           256     26     138
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          256      0       0
;!    BANK15          128      0       0

;!
;!Pointer List with Targets:
;!
;!    nbr	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 9
;!		 -> NULL(NULL[0]), setup_date(BANK1[9]), setup_time(BANK1[9]), setup_fan_set_text(BANK0[5]), 
;!		 -> setup_alarm_time(BANK1[9]), RPM_Txt(BANK0[5]), Volt_Txt(BANK1[6]), DC_Txt(BANK0[4]), 
;!		 -> RTC_ALARM_Txt(BANK0[2]), Fan_SW_Txt(BANK0[4]), Fan_Set_Temp_Txt(BANK0[5]), Alarm_SW_Txt(BANK0[4]), 
;!		 -> alarm_time(BANK1[9]), date(BANK1[9]), time(BANK1[9]), tempF(BANK0[4]), 
;!		 -> tempC(BANK0[4]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 9
;!		 -> NULL(NULL[0]), setup_date(BANK1[9]), setup_time(BANK1[9]), setup_fan_set_text(BANK0[5]), 
;!		 -> setup_alarm_time(BANK1[9]), RPM_Txt(BANK0[5]), Volt_Txt(BANK1[6]), DC_Txt(BANK0[4]), 
;!		 -> RTC_ALARM_Txt(BANK0[2]), Fan_SW_Txt(BANK0[4]), Fan_Set_Temp_Txt(BANK0[5]), Alarm_SW_Txt(BANK0[4]), 
;!		 -> alarm_time(BANK1[9]), date(BANK1[9]), time(BANK1[9]), tempF(BANK0[4]), 
;!		 -> tempC(BANK0[4]), 
;!
;!    strcpy@from	PTR const unsigned char  size(2) Largest target is 21
;!		 -> STR_34(CODE[5]), STR_33(CODE[5]), STR_32(CODE[12]), STR_31(CODE[21]), 
;!		 -> STR_30(CODE[15]), STR_29(CODE[12]), STR_28(CODE[21]), STR_26(CODE[5]), 
;!		 -> STR_25(CODE[11]), STR_24(CODE[20]), STR_23(CODE[4]), STR_22(CODE[4]), 
;!		 -> STR_21(CODE[4]), STR_20(CODE[4]), STR_19(CODE[4]), STR_18(CODE[5]), 
;!		 -> STR_17(CODE[3]), STR_16(CODE[3]), STR_15(CODE[7]), STR_14(CODE[13]), 
;!		 -> STR_13(CODE[9]), STR_12(CODE[11]), STR_11(CODE[5]), STR_10(CODE[5]), 
;!		 -> STR_9(CODE[2]), STR_8(CODE[3]), STR_7(CODE[13]), STR_6(CODE[21]), 
;!
;!    strcpy@to	PTR unsigned char  size(2) Largest target is 4
;!		 -> NULL(NULL[0]), Fan_SW_Txt(BANK0[4]), Alarm_SW_Txt(BANK0[4]), 
;!
;!    strcpy@cp	PTR unsigned char  size(2) Largest target is 4
;!		 -> NULL(NULL[0]), Fan_SW_Txt(BANK0[4]), Alarm_SW_Txt(BANK0[4]), 
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 30
;!		 -> STR_35(CODE[22]), STR_27(CODE[11]), STR_5(CODE[12]), STR_4(CODE[19]), 
;!		 -> STR_3(CODE[23]), STR_2(CODE[21]), STR_1(CODE[30]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!
;!    drawtext@_text	PTR unsigned char  size(2) Largest target is 9
;!		 -> NULL(NULL[0]), setup_date(BANK1[9]), setup_time(BANK1[9]), setup_fan_set_text(BANK0[5]), 
;!		 -> setup_alarm_time(BANK1[9]), RPM_Txt(BANK0[5]), Volt_Txt(BANK1[6]), DC_Txt(BANK0[4]), 
;!		 -> RTC_ALARM_Txt(BANK0[2]), Fan_SW_Txt(BANK0[4]), Fan_Set_Temp_Txt(BANK0[5]), Alarm_SW_Txt(BANK0[4]), 
;!		 -> alarm_time(BANK1[9]), date(BANK1[9]), time(BANK1[9]), tempF(BANK0[4]), 
;!		 -> tempC(BANK0[4]), 
;!
;!    sp__strcpy	PTR unsigned char  size(2) Largest target is 4
;!		 -> NULL(NULL[0]), Fan_SW_Txt(BANK0[4]), Alarm_SW_Txt(BANK0[4]), 
;!
;!    txt	PTR unsigned char  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_check_for_button_input
;!    _test_alarm->_DS3231_Turn_Off_Alarm
;!    _test_alarm->_DS3231_Turn_On_Alarm
;!    _DS3231_Turn_On_Alarm->_DS3231_Init
;!    _DS3231_Turn_Off_Alarm->_DS3231_Init
;!    _DS3231_Init->_I2C_Write_Address_Read_One_Byte
;!    _I2C_Write_Address_Write_One_Byte->_I2C_Write
;!    _I2C_Write_Address_Read_One_Byte->_I2C_Read
;!    _read_volt->___ftdiv
;!    ___awtoft->___ftpack
;!    _get_RPM->___awdiv
;!    _Update_Screen->_drawtext
;!    _Setup_Temp_Fan->_check_for_button_input
;!    _Initialize_Setup_Fan_Screen->_drawtext
;!    _Increase_Fan_Temp->_Update_Setup_Fan_Screen
;!    _Decrease_Fan_Temp->_Update_Setup_Fan_Screen
;!    _Update_Setup_Fan_Screen->_drawtext
;!    _Monitor_Fan->_do_update_pwm
;!    _Do_Setup_Time->_check_for_button_input
;!    _Initialize_Setup_Time_Screen->_drawtext
;!    _Go_Prev_Field->_Update_Setup_Screen_Cursor_Backward
;!    _Go_Next_Field->_Update_Setup_Screen_Cursor_Forward
;!    _Do_Save_New_Time->_DS3231_Write_Time
;!    _DS3231_Write_Time->_dec_2_bcd
;!    _Update_Setup_Time_Screen->_drawtext
;!    _Do_Setup_Alarm_Time->_check_for_button_input
;!    _Initialize_Setup_Alarm_Time_Screen->_drawtext
;!    _Go_Prev_Alarm_Field->_Update_Setup_Screen_Cursor_Backward
;!    _Update_Setup_Screen_Cursor_Backward->_fillRect
;!    _Go_Next_Alarm_Field->_Update_Setup_Screen_Cursor_Forward
;!    _Update_Setup_Screen_Cursor_Forward->_fillRect
;!    _Do_Save_New_Alarm_Time->_DS3231_Write_Alarm_Time
;!    _Initialize_Screen->_drawtext
;!    _fillScreen->_fillRectangle
;!    _fillRectangle->_setAddrWindow
;!    _drawCircle->_drawPixel
;!    _Rcmd3->_delay_ms
;!    _Rcmd2red->_write_command
;!    _Rcmd2red->_write_data
;!    _Rcmd1->_delay_ms
;!    _LCD_Reset->_delay_ms
;!    _delay_ms->___wmul
;!    _DS3231_Write_Alarm_Time->_dec_2_bcd
;!    _dec_2_bcd->___awmod
;!    _DS3231_Read_Time->_I2C_Read
;!    _DS3231_Read_Alarm_Time->_I2C_Read
;!    _Do_Beep_Good->_do_update_pwm
;!    _Do_Beep_Bad->_do_update_pwm
;!    _do_update_pwm->___ftdiv
;!    _do_update_pwm->___fttol
;!    ___lbtoft->___ftpack
;!    ___ftdiv->___ftmul
;!    _printf->___ftsub
;!    _scale->___awmod
;!    _fround->___awmod
;!    ___ftmul->___awdiv
;!    ___awmod->___fttol
;!    ___awdiv->___wmul
;!    ___lltoft->___ftpack
;!    ___llmod->___lldiv
;!    ___fttol->___ftmul
;!    ___ftsub->___ftadd
;!    ___ftadd->_fround
;!    _drawtext->_drawChar
;!    _drawChar->_fillRect
;!    _fillRect->_drawFastVLine
;!    _drawFastVLine->_setAddrWindow
;!    _drawPixel->_setAddrWindow
;!    _setAddrWindow->_write_command
;!    _setAddrWindow->_write_data
;!    _write_data->_spiwrite
;!    _write_command->_spiwrite
;!    _Do_Init->_DS1621_Init
;!    _init_UART->_OpenUSART
;!    _DS1621_Init->_I2C_Write_Cmd_Write_Data
;!    _I2C_Write_Cmd_Write_Data->_I2C_Write
;!    _I2C_Write_Cmd_Only->_I2C_Write
;!    _DS1621_Read_Temp->_I2C_Read
;!
;!Critical Paths under _chkisr in COMRAM
;!
;!    _chkisr->_INT0_isr
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Setup_Temp_Fan
;!    _Setup_Temp_Fan->_check_for_button_input
;!    _Do_Setup_Time->_check_for_button_input
;!    _Do_Setup_Alarm_Time->_check_for_button_input
;!    _check_for_button_input->_printf
;!    _Update_Setup_Alarm_Time_Screen->_printf
;!
;!Critical Paths under _chkisr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_printf
;!    _check_for_button_input->_printf
;!    _Update_Setup_Alarm_Time_Screen->_printf
;!
;!Critical Paths under _chkisr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _chkisr in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0 1682080
;!                                             24 BANK0      1     1      0
;!                   _DS1621_Read_Temp
;!             _DS3231_Read_Alarm_Time
;!                   _DS3231_Read_Time
;!              _DS3231_Turn_Off_Alarm
;!                        _Do_Beep_Bad
;!                       _Do_Beep_Good
;!                            _Do_Init
;!                _Do_Setup_Alarm_Time
;!                      _Do_Setup_Time
;!                  _Initialize_Screen
;!                        _Monitor_Fan
;!                     _Setup_Temp_Fan
;!                 _Toggle_Fan_Monitor
;!                      _Update_Screen
;!                            ___awdiv
;!                             ___wmul
;!             _check_for_button_input
;!                            _get_RPM
;!                             _printf
;!                          _read_volt
;!                         _test_alarm
;! ---------------------------------------------------------------------------------
;! (1) _test_alarm                                           0     0      0    7371
;!               _Activate_Buzzer_4KHz
;!              _DS3231_Turn_Off_Alarm
;!               _DS3231_Turn_On_Alarm
;!                  _Deactivate_Buzzer
;!                      _Set_RGB_Color
;!                             ___ftge
;! ---------------------------------------------------------------------------------
;! (2) _Set_RGB_Color                                        1     1      0      45
;!                                             16 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _DS3231_Turn_On_Alarm                                 5     5      0    3304
;!                                             26 COMRAM     5     5      0
;!                        _DS3231_Init
;!    _I2C_Write_Address_Read_One_Byte
;!   _I2C_Write_Address_Write_One_Byte
;! ---------------------------------------------------------------------------------
;! (2) _DS3231_Turn_Off_Alarm                                5     5      0    3304
;!                                             26 COMRAM     5     5      0
;!                        _DS3231_Init
;!    _I2C_Write_Address_Read_One_Byte
;!   _I2C_Write_Address_Write_One_Byte
;! ---------------------------------------------------------------------------------
;! (3) _DS3231_Init                                          4     4      0    1765
;!                                             22 COMRAM     4     4      0
;!                        _I2C_ReStart
;!                           _I2C_Read
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;!    _I2C_Write_Address_Read_One_Byte
;!   _I2C_Write_Address_Write_One_Byte
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Write_Address_Write_One_Byte                     3     1      2     687
;!                                             18 COMRAM     3     1      2
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Write_Address_Read_One_Byte                      3     2      1     581
;!                                             19 COMRAM     3     2      1
;!                        _I2C_ReStart
;!                           _I2C_Read
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (2) _Activate_Buzzer_4KHz                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _read_volt                                            8     5      3    8657
;!                                             60 COMRAM     8     5      3
;!                           ___awtoft
;!                            ___ftdiv
;!                             ___wmul
;!                       _get_full_ADC
;! ---------------------------------------------------------------------------------
;! (2) _get_full_ADC                                         6     4      2      23
;!                                             16 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             4     1      3    2386
;!                                             24 COMRAM     4     1      3
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _get_RPM                                              4     2      2    8251
;!                                             30 COMRAM     4     2      2
;!                            ___awdiv
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) _Update_Screen                                        4     4      0   49991
;!                                             73 COMRAM     4     4      0
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                            ___fttol
;!                           _drawtext
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (1) _Toggle_Fan_Monitor                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Setup_Temp_Fan                                       2     2      0  361069
;!                                             22 BANK0      2     2      0
;!                  _Decrease_Fan_Temp
;!                        _Do_Beep_Bad
;!                       _Do_Beep_Good
;!               _Do_Save_New_Fan_Temp
;!                _Exit_Setup_Fan_Temp
;!                  _Increase_Fan_Temp
;!        _Initialize_Setup_Fan_Screen
;!            _Update_Setup_Fan_Screen
;!             _check_for_button_input
;! ---------------------------------------------------------------------------------
;! (2) _Initialize_Setup_Fan_Screen                          0     0      0   36095
;!                           _drawtext
;!                         _fillScreen
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _Increase_Fan_Temp                                    0     0      0   41183
;!            _Update_Setup_Fan_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Exit_Setup_Fan_Temp                                  0     0      0   54746
;!                   _DS3231_Read_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Do_Save_New_Fan_Temp                                 0     0      0   54746
;!                   _DS3231_Read_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Decrease_Fan_Temp                                    0     0      0   41183
;!            _Update_Setup_Fan_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Update_Setup_Fan_Screen                              3     3      0   41183
;!                                             73 COMRAM     3     3      0
;!                            ___awdiv
;!                            ___awmod
;!                           _drawtext
;! ---------------------------------------------------------------------------------
;! (1) _Monitor_Fan                                          0     0      0   11368
;!                      _do_update_pwm
;!                     _get_duty_cycle
;! ---------------------------------------------------------------------------------
;! (2) _get_duty_cycle                                       5     1      4     194
;!                                             16 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (1) _Do_Setup_Time                                        0     0      0  398854
;!                   _DS3231_Read_Time
;!                      _Decrease_Time
;!                        _Do_Beep_Bad
;!                       _Do_Beep_Good
;!                   _Do_Save_New_Time
;!                    _Exit_Time_Setup
;!                      _Go_Next_Field
;!                      _Go_Prev_Field
;!                      _Increase_Time
;!       _Initialize_Setup_Time_Screen
;!           _Update_Setup_Time_Screen
;!                          _bcd_2_dec
;!             _check_for_button_input
;! ---------------------------------------------------------------------------------
;! (2) _Initialize_Setup_Time_Screen                         0     0      0   45075
;!                           _drawtext
;!                           _fillRect
;!                         _fillScreen
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _Increase_Time                                        0     0      0   41081
;!           _Update_Setup_Time_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Go_Prev_Field                                        0     0      0    9312
;!_Update_Setup_Screen_Cursor_Backward
;! ---------------------------------------------------------------------------------
;! (2) _Go_Next_Field                                        0     0      0    9334
;! _Update_Setup_Screen_Cursor_Forward
;! ---------------------------------------------------------------------------------
;! (2) _Exit_Time_Setup                                      0     0      0   54746
;!                   _DS3231_Read_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Do_Save_New_Time                                     0     0      0   64849
;!                   _DS3231_Read_Time
;!                  _DS3231_Write_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (3) _DS3231_Write_Time                                    2     2      0   10103
;!                                             73 COMRAM     2     2      0
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;!                          _dec_2_bcd
;! ---------------------------------------------------------------------------------
;! (2) _Decrease_Time                                        0     0      0   41081
;!           _Update_Setup_Time_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Update_Setup_Time_Screen                             0     0      0   41081
;!                            ___awdiv
;!                            ___awmod
;!                           _drawtext
;! ---------------------------------------------------------------------------------
;! (1) _Do_Setup_Alarm_Time                                  0     0      0  607524
;!             _DS3231_Read_Alarm_Time
;!                _Decrease_Alarm_Time
;!                        _Do_Beep_Bad
;!                       _Do_Beep_Good
;!             _Do_Save_New_Alarm_Time
;!              _Exit_Setup_Alarm_Time
;!                _Go_Next_Alarm_Field
;!                _Go_Prev_Alarm_Field
;!                _Increase_Alarm_Time
;! _Initialize_Setup_Alarm_Time_Screen
;!     _Update_Setup_Alarm_Time_Screen
;!                          _bcd_2_dec
;!             _check_for_button_input
;! ---------------------------------------------------------------------------------
;! (1) _check_for_button_input                               3     3      0   69493
;!                                             94 COMRAM     1     1      0
;!                                             20 BANK0      2     2      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (2) _bcd_2_dec                                            5     5      0      67
;!                                             16 COMRAM     5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _Initialize_Setup_Alarm_Time_Screen                   0     0      0   45075
;!                           _drawtext
;!                           _fillRect
;!                         _fillScreen
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _Increase_Alarm_Time                                  0     0      0  110441
;!     _Update_Setup_Alarm_Time_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Go_Prev_Alarm_Field                                  0     0      0    9312
;!_Update_Setup_Screen_Cursor_Backward
;! ---------------------------------------------------------------------------------
;! (3) _Update_Setup_Screen_Cursor_Backward                  3     3      0    9312
;!                                             45 COMRAM     3     3      0
;!                           _fillRect
;! ---------------------------------------------------------------------------------
;! (2) _Go_Next_Alarm_Field                                  0     0      0    9334
;! _Update_Setup_Screen_Cursor_Forward
;! ---------------------------------------------------------------------------------
;! (3) _Update_Setup_Screen_Cursor_Forward                   3     3      0    9334
;!                                             45 COMRAM     3     3      0
;!                           _fillRect
;! ---------------------------------------------------------------------------------
;! (2) _Exit_Setup_Alarm_Time                                0     0      0   54746
;!                   _DS3231_Read_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Do_Save_New_Alarm_Time                               0     0      0   65439
;!             _DS3231_Read_Alarm_Time
;!                   _DS3231_Read_Time
;!            _DS3231_Write_Alarm_Time
;!                  _Initialize_Screen
;! ---------------------------------------------------------------------------------
;! (3) _Initialize_Screen                                    0     0      0   54451
;!                          _LCD_Reset
;!            _TFT_GreenTab_Initialize
;!                         _drawCircle
;!                           _drawtext
;!                         _fillScreen
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (2) _strcpy                                               6     2      4    3043
;!                                             16 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (3) _fillScreen                                           2     0      2    1819
;!                                             35 COMRAM     2     0      2
;!                      _fillRectangle
;! ---------------------------------------------------------------------------------
;! (4) _fillRectangle                                       12     7      5    1585
;!                                             23 COMRAM    12     7      5
;!                      _setAddrWindow
;!                           _spiwrite
;! ---------------------------------------------------------------------------------
;! (4) _drawCircle                                          20    12      8    5210
;!                                             27 COMRAM    20    12      8
;!                          _drawPixel
;! ---------------------------------------------------------------------------------
;! (4) _TFT_GreenTab_Initialize                              0     0      0    8884
;!                              _Rcmd1
;!                           _Rcmd2red
;!                              _Rcmd3
;!                      _write_command
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (5) _Rcmd3                                                0     0      0    4352
;!                           _delay_ms
;!                      _write_command
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (5) _Rcmd2red                                             0     0      0      90
;!                      _write_command
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (5) _Rcmd1                                                0     0      0    4352
;!                           _delay_ms
;!                      _write_command
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (4) _LCD_Reset                                            0     0      0    4262
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (6) _delay_ms                                             6     4      2    4262
;!                                             22 COMRAM     6     4      2
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) _DS3231_Write_Alarm_Time                              2     2      0   10398
;!                                             73 COMRAM     2     2      0
;!                   _DS3231_Read_Time
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;!                          _dec_2_bcd
;! ---------------------------------------------------------------------------------
;! (4) _dec_2_bcd                                            7     5      2    9944
;!                                             66 COMRAM     7     5      2
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) _DS3231_Read_Time                                     2     2      0     295
;!                                             19 COMRAM     2     2      0
;!                        _I2C_ReStart
;!                           _I2C_Read
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (3) _DS3231_Read_Alarm_Time                               2     2      0     295
;!                                             19 COMRAM     2     2      0
;!                        _I2C_ReStart
;!                           _I2C_Read
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (2) _Do_Beep_Good                                         0     0      0   11220
;!               _Activate_Buzzer_2KHz
;!                  _Deactivate_Buzzer
;!                       _Wait_One_Sec
;!                      _do_update_pwm
;! ---------------------------------------------------------------------------------
;! (3) _Activate_Buzzer_2KHz                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Do_Beep_Bad                                          0     0      0   11220
;!              _Activate_Buzzer_500Hz
;!                  _Deactivate_Buzzer
;!                       _Wait_One_Sec
;!                      _do_update_pwm
;! ---------------------------------------------------------------------------------
;! (3) _do_update_pwm                                        9     9      0   11174
;!                                             60 COMRAM     9     9      0
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                           ___lbtoft
;! ---------------------------------------------------------------------------------
;! (4) ___lbtoft                                             4     1      3    2219
;!                                             24 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    2958
;!                                             45 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _Wait_One_Sec                                         2     2      0      46
;!                                             16 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _Deactivate_Buzzer                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _Activate_Buzzer_500Hz                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Decrease_Alarm_Time                                  0     0      0  110441
;!     _Update_Setup_Alarm_Time_Screen
;! ---------------------------------------------------------------------------------
;! (2) _Update_Setup_Alarm_Time_Screen                       0     0      0  110441
;!                            ___awdiv
;!                            ___awmod
;!                           _drawtext
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              52    38     14   69360
;!                                              0 BANK0     20     6     14
;!                                              0 BANK1     26    26      0
;!                            ___awdiv
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _putch
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               10     7      3   18743
;!                                             66 COMRAM     7     4      3
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                            ___fttol (ARG)
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      31
;!                                             16 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              3     3      0      99
;!                                             16 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              13    10      3   18464
;!                                             66 COMRAM    10     7      3
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    4976
;!                                             30 COMRAM    15     9      6
;!                            ___awdiv (ARG)
;!                           ___ftpack
;!                           ___lbtoft (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4    4853
;!                                             60 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;!                            ___ftmul (ARG)
;!                            ___fttol (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4    4995
;!                                             22 COMRAM     8     4      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         15     9      6     584
;!                                             16 COMRAM    15     9      6
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          12     6      6     803
;!                                             16 COMRAM    12     6      6
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             9     5      4    2355
;!                                             24 COMRAM     9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                              9     1      8     752
;!                                             29 COMRAM     9     1      8
;!                            ___lldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     761
;!                                             16 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     826
;!                                             45 COMRAM    15    11      4
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    4079
;!                                             88 COMRAM     6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    3763
;!                                             76 COMRAM    12     6      6
;!                           ___ftpack
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2188
;!                                             16 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     130
;!                                             16 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6     718
;!                                             16 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (2) _drawtext                                            17     9      8   31233
;!                                             56 COMRAM    17     9      8
;!                           _drawChar
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (3) _strlen                                               6     4      2     143
;!                                             16 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (3) _drawChar                                            11     4      7   17378
;!                                             45 COMRAM    11     4      7
;!                             ___wmul
;!                          _drawPixel
;!                           _fillRect
;! ---------------------------------------------------------------------------------
;! (4) _fillRect                                            11     6      5    8980
;!                                             34 COMRAM    11     6      5
;!                      _drawFastVLine
;! ---------------------------------------------------------------------------------
;! (5) _drawFastVLine                                       11     7      4    2442
;!                                             23 COMRAM    11     7      4
;!                      _setAddrWindow
;!                           _spiwrite
;! ---------------------------------------------------------------------------------
;! (4) _drawPixel                                            4     1      3    3367
;!                                             23 COMRAM     4     1      3
;!                      _setAddrWindow
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (6) _setAddrWindow                                        4     1      3     814
;!                                             19 COMRAM     4     1      3
;!                      _write_command
;!                         _write_data
;! ---------------------------------------------------------------------------------
;! (7) _write_data                                           1     1      0      45
;!                                             18 COMRAM     1     1      0
;!                           _spiwrite
;! ---------------------------------------------------------------------------------
;! (7) _write_command                                        1     1      0      45
;!                                             18 COMRAM     1     1      0
;!                           _spiwrite
;! ---------------------------------------------------------------------------------
;! (6) _spiwrite                                             2     2      0      23
;!                                             16 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4    3222
;!                                             16 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Do_Init                                              0     0      0     822
;!                        _DS1621_Init
;!                           _I2C_Init
;!                           _Init_ADC
;!                     _Init_Interrupt
;!                       _Turn_Off_Fan
;!                          _init_UART
;! ---------------------------------------------------------------------------------
;! (2) _init_UART                                            0     0      0     273
;!                          _OpenUSART
;! ---------------------------------------------------------------------------------
;! (3) _OpenUSART                                            3     1      2     273
;!                                             16 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _Turn_Off_Fan                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_ADC                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Init                                             4     0      4      53
;!                                             16 COMRAM     4     0      4
;!                         _i2cHighScl
;!                         _i2cHighSda
;! ---------------------------------------------------------------------------------
;! (2) _DS1621_Init                                          1     1      0     496
;!                                             21 COMRAM     1     1      0
;!                 _I2C_Write_Cmd_Only
;!           _I2C_Write_Cmd_Write_Data
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Write_Cmd_Write_Data                             3     1      2     263
;!                                             18 COMRAM     3     1      2
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (3) _I2C_Write_Cmd_Only                                   2     1      1     188
;!                                             18 COMRAM     2     1      1
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (1) _DS1621_Read_Temp                                     5     3      2     318
;!                                             19 COMRAM     5     3      2
;!                        _I2C_ReStart
;!                           _I2C_Read
;!                          _I2C_Start
;!                           _I2C_Stop
;!                          _I2C_Write
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Write                                            2     2      0      91
;!                                             16 COMRAM     2     2      0
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                          _i2cLowSda
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Stop                                             0     0      0       0
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                          _i2cLowSda
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Start                                            0     0      0       0
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                          _i2cLowSda
;! ---------------------------------------------------------------------------------
;! (4) _I2C_Read                                             3     3      0     136
;!                                             16 COMRAM     3     3      0
;!                             _i2cAck
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                            _i2cNack
;! ---------------------------------------------------------------------------------
;! (5) _i2cNack                                              0     0      0       0
;!                         _i2cHighScl
;!                          _i2cLowScl
;! ---------------------------------------------------------------------------------
;! (5) _i2cAck                                               0     0      0       0
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                          _i2cLowSda
;! ---------------------------------------------------------------------------------
;! (4) _I2C_ReStart                                          0     0      0       0
;!                         _i2cHighScl
;!                         _i2cHighSda
;!                          _i2cLowScl
;!                          _i2cLowSda
;! ---------------------------------------------------------------------------------
;! (5) _i2cLowSda                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2cLowScl                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2cHighSda                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2cHighScl                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (11) _chkisr                                             14    14      0       0
;!                                              2 COMRAM    14    14      0
;!                           _INT0_isr
;!                           _INT2_isr
;!                         _TIMER1_isr
;! ---------------------------------------------------------------------------------
;! (12) _TIMER1_isr                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _INT2_isr                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (12) _INT0_isr                                            2     2      0       0
;!                                              0 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 12
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _DS1621_Read_Temp
;!     _I2C_ReStart
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Read
;!       _i2cAck
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cNack
;!         _i2cHighScl
;!         _i2cLowScl
;!     _I2C_Start
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Stop
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Write
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!   _DS3231_Read_Alarm_Time
;!     _I2C_ReStart
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Read
;!       _i2cAck
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cNack
;!         _i2cHighScl
;!         _i2cLowScl
;!     _I2C_Start
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Stop
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Write
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!   _DS3231_Read_Time
;!     _I2C_ReStart
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Read
;!       _i2cAck
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cNack
;!         _i2cHighScl
;!         _i2cLowScl
;!     _I2C_Start
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Stop
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!     _I2C_Write
;!       _i2cHighScl
;!       _i2cHighSda
;!       _i2cLowScl
;!       _i2cLowSda
;!   _DS3231_Turn_Off_Alarm
;!     _DS3231_Init
;!       _I2C_ReStart
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Read
;!         _i2cAck
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cNack
;!           _i2cHighScl
;!           _i2cLowScl
;!       _I2C_Start
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Stop
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write_Address_Read_One_Byte
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _I2C_Write_Address_Write_One_Byte
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!     _I2C_Write_Address_Read_One_Byte
;!       _I2C_ReStart
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Read
;!         _i2cAck
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cNack
;!           _i2cHighScl
;!           _i2cLowScl
;!       _I2C_Start
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Stop
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!     _I2C_Write_Address_Write_One_Byte
;!       _I2C_Start
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Stop
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!   _Do_Beep_Bad
;!     _Activate_Buzzer_500Hz
;!     _Deactivate_Buzzer
;!     _Wait_One_Sec
;!     _do_update_pwm
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___lbtoft
;!         ___ftpack
;!   _Do_Beep_Good
;!     _Activate_Buzzer_2KHz
;!     _Deactivate_Buzzer
;!     _Wait_One_Sec
;!     _do_update_pwm
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___lbtoft
;!         ___ftpack
;!   _Do_Init
;!     _DS1621_Init
;!       _I2C_Write_Cmd_Only
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _I2C_Write_Cmd_Write_Data
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!     _I2C_Init
;!       _i2cHighScl
;!       _i2cHighSda
;!     _Init_ADC
;!     _Init_Interrupt
;!     _Turn_Off_Fan
;!     _init_UART
;!       _OpenUSART
;!   _Do_Setup_Alarm_Time
;!     _DS3231_Read_Alarm_Time
;!       _I2C_ReStart
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Read
;!         _i2cAck
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cNack
;!           _i2cHighScl
;!           _i2cLowScl
;!       _I2C_Start
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Stop
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!     _Decrease_Alarm_Time
;!       _Update_Setup_Alarm_Time_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _printf
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___ftge
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftneg
;!           ___ftsub
;!             ___ftadd
;!               ___ftpack
;!               _fround (ARG)
;!                 ___awdiv
;!                   ___wmul (ARG)
;!                 ___awmod
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                   ___fttol (ARG)
;!                     ___ftmul (ARG)
;!                       ___awdiv (ARG)
;!                         ___wmul (ARG)
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___wmul (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___wmul
;!             ___lltoft (ARG)
;!               ___ftpack
;!           ___fttol
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___lldiv
;!           ___llmod
;!             ___lldiv (ARG)
;!           ___lltoft
;!             ___ftpack
;!           ___wmul
;!           __div_to_l_
;!           __tdiv_to_l_
;!           _fround
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!           _isdigit
;!           _putch
;!           _scale
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!     _Do_Beep_Bad
;!       _Activate_Buzzer_500Hz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Beep_Good
;!       _Activate_Buzzer_2KHz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Save_New_Alarm_Time
;!       _DS3231_Read_Alarm_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _DS3231_Write_Alarm_Time
;!         _DS3231_Read_Time
;!           _I2C_ReStart
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Read
;!             _i2cAck
;!               _i2cHighScl
;!               _i2cHighSda
;!               _i2cLowScl
;!               _i2cLowSda
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cNack
;!               _i2cHighScl
;!               _i2cLowScl
;!           _I2C_Start
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Stop
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Write
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _dec_2_bcd
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Exit_Setup_Alarm_Time
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Go_Next_Alarm_Field
;!       _Update_Setup_Screen_Cursor_Forward
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!     _Go_Prev_Alarm_Field
;!       _Update_Setup_Screen_Cursor_Backward
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!     _Increase_Alarm_Time
;!       _Update_Setup_Alarm_Time_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _printf
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___ftge
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftneg
;!           ___ftsub
;!             ___ftadd
;!               ___ftpack
;!               _fround (ARG)
;!                 ___awdiv
;!                   ___wmul (ARG)
;!                 ___awmod
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                   ___fttol (ARG)
;!                     ___ftmul (ARG)
;!                       ___awdiv (ARG)
;!                         ___wmul (ARG)
;!                       ___ftpack (ARG)
;!                       ___lbtoft (ARG)
;!                         ___ftpack
;!                       ___wmul (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___wmul
;!             ___lltoft (ARG)
;!               ___ftpack
;!           ___fttol
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___lldiv
;!           ___llmod
;!             ___lldiv (ARG)
;!           ___lltoft
;!             ___ftpack
;!           ___wmul
;!           __div_to_l_
;!           __tdiv_to_l_
;!           _fround
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!           _isdigit
;!           _putch
;!           _scale
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!     _Initialize_Setup_Alarm_Time_Screen
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!       _fillRect
;!         _drawFastVLine
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _spiwrite
;!       _fillScreen
;!         _fillRectangle
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _spiwrite
;!       _strcpy
;!     _Update_Setup_Alarm_Time_Screen
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___awmod
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!       _printf
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___ftadd
;!           ___ftpack
;!           _fround (ARG)
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftneg
;!         ___ftsub
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lldiv
;!         ___llmod
;!           ___lldiv (ARG)
;!         ___lltoft
;!           ___ftpack
;!         ___wmul
;!         __div_to_l_
;!         __tdiv_to_l_
;!         _fround
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!         _isdigit
;!         _putch
;!         _scale
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!     _bcd_2_dec
;!     _check_for_button_input
;!       _printf
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___ftadd
;!           ___ftpack
;!           _fround (ARG)
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftneg
;!         ___ftsub
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lldiv
;!         ___llmod
;!           ___lldiv (ARG)
;!         ___lltoft
;!           ___ftpack
;!         ___wmul
;!         __div_to_l_
;!         __tdiv_to_l_
;!         _fround
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!         _isdigit
;!         _putch
;!         _scale
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!   _Do_Setup_Time
;!     _DS3231_Read_Time
;!       _I2C_ReStart
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Read
;!         _i2cAck
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cNack
;!           _i2cHighScl
;!           _i2cLowScl
;!       _I2C_Start
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Stop
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!       _I2C_Write
;!         _i2cHighScl
;!         _i2cHighSda
;!         _i2cLowScl
;!         _i2cLowSda
;!     _Decrease_Time
;!       _Update_Setup_Time_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!     _Do_Beep_Bad
;!       _Activate_Buzzer_500Hz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Beep_Good
;!       _Activate_Buzzer_2KHz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Save_New_Time
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _DS3231_Write_Time
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _dec_2_bcd
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Exit_Time_Setup
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Go_Next_Field
;!       _Update_Setup_Screen_Cursor_Forward
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!     _Go_Prev_Field
;!       _Update_Setup_Screen_Cursor_Backward
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!     _Increase_Time
;!       _Update_Setup_Time_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!     _Initialize_Setup_Time_Screen
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!       _fillRect
;!         _drawFastVLine
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _spiwrite
;!       _fillScreen
;!         _fillRectangle
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _spiwrite
;!       _strcpy
;!     _Update_Setup_Time_Screen
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___awmod
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!     _bcd_2_dec
;!     _check_for_button_input
;!       _printf
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___ftadd
;!           ___ftpack
;!           _fround (ARG)
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftneg
;!         ___ftsub
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lldiv
;!         ___llmod
;!           ___lldiv (ARG)
;!         ___lltoft
;!           ___ftpack
;!         ___wmul
;!         __div_to_l_
;!         __tdiv_to_l_
;!         _fround
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!         _isdigit
;!         _putch
;!         _scale
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!   _Initialize_Screen
;!     _LCD_Reset
;!       _delay_ms
;!         ___wmul
;!     _TFT_GreenTab_Initialize
;!       _Rcmd1
;!         _delay_ms
;!           ___wmul
;!         _write_command
;!           _spiwrite
;!         _write_data
;!           _spiwrite
;!       _Rcmd2red
;!         _write_command
;!           _spiwrite
;!         _write_data
;!           _spiwrite
;!       _Rcmd3
;!         _delay_ms
;!           ___wmul
;!         _write_command
;!           _spiwrite
;!         _write_data
;!           _spiwrite
;!       _write_command
;!         _spiwrite
;!       _write_data
;!         _spiwrite
;!     _drawCircle
;!       _drawPixel
;!         _setAddrWindow
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _write_data
;!           _spiwrite
;!     _drawtext
;!       _drawChar
;!         ___wmul
;!         _drawPixel
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_data
;!             _spiwrite
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!       _strlen
;!     _fillScreen
;!       _fillRectangle
;!         _setAddrWindow
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _spiwrite
;!     _strcpy
;!   _Monitor_Fan
;!     _do_update_pwm
;!       ___ftdiv
;!         ___awtoft (ARG)
;!           ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___lbtoft
;!         ___ftpack
;!     _get_duty_cycle
;!   _Setup_Temp_Fan
;!     _Decrease_Fan_Temp
;!       _Update_Setup_Fan_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!     _Do_Beep_Bad
;!       _Activate_Buzzer_500Hz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Beep_Good
;!       _Activate_Buzzer_2KHz
;!       _Deactivate_Buzzer
;!       _Wait_One_Sec
;!       _do_update_pwm
;!         ___ftdiv
;!           ___awtoft (ARG)
;!             ___ftpack
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lbtoft
;!           ___ftpack
;!     _Do_Save_New_Fan_Temp
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Exit_Setup_Fan_Temp
;!       _DS3231_Read_Time
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _Initialize_Screen
;!         _LCD_Reset
;!           _delay_ms
;!             ___wmul
;!         _TFT_GreenTab_Initialize
;!           _Rcmd1
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd2red
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _Rcmd3
;!             _delay_ms
;!               ___wmul
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_command
;!             _spiwrite
;!           _write_data
;!             _spiwrite
;!         _drawCircle
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!         _fillScreen
;!           _fillRectangle
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!         _strcpy
;!     _Increase_Fan_Temp
;!       _Update_Setup_Fan_Screen
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         _drawtext
;!           _drawChar
;!             ___wmul
;!             _drawPixel
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _fillRect
;!               _drawFastVLine
;!                 _setAddrWindow
;!                   _write_command
;!                     _spiwrite
;!                   _write_data
;!                     _spiwrite
;!                 _spiwrite
;!           _strlen
;!     _Initialize_Setup_Fan_Screen
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!       _fillScreen
;!         _fillRectangle
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _spiwrite
;!       _strcpy
;!     _Update_Setup_Fan_Screen
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___awmod
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!       _drawtext
;!         _drawChar
;!           ___wmul
;!           _drawPixel
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _write_data
;!               _spiwrite
;!           _fillRect
;!             _drawFastVLine
;!               _setAddrWindow
;!                 _write_command
;!                   _spiwrite
;!                 _write_data
;!                   _spiwrite
;!               _spiwrite
;!         _strlen
;!     _check_for_button_input
;!       _printf
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___ftadd
;!           ___ftpack
;!           _fround (ARG)
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!         ___ftge
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___ftneg
;!         ___ftsub
;!           ___ftadd
;!             ___ftpack
;!             _fround (ARG)
;!               ___awdiv
;!                 ___wmul (ARG)
;!               ___awmod
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!                 ___fttol (ARG)
;!                   ___ftmul (ARG)
;!                     ___awdiv (ARG)
;!                       ___wmul (ARG)
;!                     ___ftpack (ARG)
;!                     ___lbtoft (ARG)
;!                       ___ftpack
;!                     ___wmul (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___wmul
;!           ___lltoft (ARG)
;!             ___ftpack
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___lldiv
;!         ___llmod
;!           ___lldiv (ARG)
;!         ___lltoft
;!           ___ftpack
;!         ___wmul
;!         __div_to_l_
;!         __tdiv_to_l_
;!         _fround
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!         _isdigit
;!         _putch
;!         _scale
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!   _Toggle_Fan_Monitor
;!   _Update_Screen
;!     ___awdiv
;!       ___wmul (ARG)
;!     ___awmod
;!       ___awdiv (ARG)
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___wmul (ARG)
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!     _drawtext
;!       _drawChar
;!         ___wmul
;!         _drawPixel
;!           _setAddrWindow
;!             _write_command
;!               _spiwrite
;!             _write_data
;!               _spiwrite
;!           _write_data
;!             _spiwrite
;!         _fillRect
;!           _drawFastVLine
;!             _setAddrWindow
;!               _write_command
;!                 _spiwrite
;!               _write_data
;!                 _spiwrite
;!             _spiwrite
;!       _strlen
;!     _strcpy
;!   ___awdiv
;!     ___wmul (ARG)
;!   ___wmul
;!   _check_for_button_input
;!     _printf
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___ftadd
;!         ___ftpack
;!         _fround (ARG)
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!       ___ftge
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___ftneg
;!       ___ftsub
;!         ___ftadd
;!           ___ftpack
;!           _fround (ARG)
;!             ___awdiv
;!               ___wmul (ARG)
;!             ___awmod
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awdiv (ARG)
;!                     ___wmul (ARG)
;!                   ___ftpack (ARG)
;!                   ___lbtoft (ARG)
;!                     ___ftpack
;!                   ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___ftmul
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___wmul
;!         ___lltoft (ARG)
;!           ___ftpack
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___lldiv
;!       ___llmod
;!         ___lldiv (ARG)
;!       ___lltoft
;!         ___ftpack
;!       ___wmul
;!       __div_to_l_
;!       __tdiv_to_l_
;!       _fround
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___wmul
;!       _isdigit
;!       _putch
;!       _scale
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!   _get_RPM
;!     ___awdiv
;!       ___wmul (ARG)
;!     ___wmul
;!   _printf
;!     ___awdiv
;!       ___wmul (ARG)
;!     ___ftadd
;!       ___ftpack
;!       _fround (ARG)
;!         ___awdiv
;!           ___wmul (ARG)
;!         ___awmod
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___wmul
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___wmul (ARG)
;!     ___ftneg
;!     ___ftsub
;!       ___ftadd
;!         ___ftpack
;!         _fround (ARG)
;!           ___awdiv
;!             ___wmul (ARG)
;!           ___awmod
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftmul (ARG)
;!               ___awdiv (ARG)
;!                 ___wmul (ARG)
;!               ___ftpack (ARG)
;!               ___lbtoft (ARG)
;!                 ___ftpack
;!               ___wmul (ARG)
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___ftpack (ARG)
;!                 ___lbtoft (ARG)
;!                   ___ftpack
;!                 ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!           ___wmul
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!     ___lldiv
;!     ___llmod
;!       ___lldiv (ARG)
;!     ___lltoft
;!       ___ftpack
;!     ___wmul
;!     __div_to_l_
;!     __tdiv_to_l_
;!     _fround
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___awmod
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___wmul
;!     _isdigit
;!     _putch
;!     _scale
;!       ___awdiv
;!         ___wmul (ARG)
;!       ___awmod
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awdiv (ARG)
;!               ___wmul (ARG)
;!             ___ftpack (ARG)
;!             ___lbtoft (ARG)
;!               ___ftpack
;!             ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___fttol (ARG)
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___wmul (ARG)
;!           ___ftpack (ARG)
;!           ___lbtoft (ARG)
;!             ___ftpack
;!           ___wmul (ARG)
;!       ___wmul (ARG)
;!   _read_volt
;!     ___awtoft
;!       ___ftpack
;!       ___wmul (ARG)
;!     ___ftdiv
;!       ___awtoft (ARG)
;!         ___ftpack
;!         ___wmul (ARG)
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___wmul (ARG)
;!         ___ftpack (ARG)
;!         ___lbtoft (ARG)
;!           ___ftpack
;!         ___wmul (ARG)
;!       ___ftpack (ARG)
;!       ___lbtoft (ARG)
;!         ___ftpack
;!       ___wmul (ARG)
;!     ___wmul
;!     _get_full_ADC
;!   _test_alarm
;!     _Activate_Buzzer_4KHz
;!     _DS3231_Turn_Off_Alarm
;!       _DS3231_Init
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write_Address_Read_One_Byte
;!           _I2C_ReStart
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Read
;!             _i2cAck
;!               _i2cHighScl
;!               _i2cHighSda
;!               _i2cLowScl
;!               _i2cLowSda
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cNack
;!               _i2cHighScl
;!               _i2cLowScl
;!           _I2C_Start
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Stop
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Write
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!         _I2C_Write_Address_Write_One_Byte
;!           _I2C_Start
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Stop
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Write
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!       _I2C_Write_Address_Read_One_Byte
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _I2C_Write_Address_Write_One_Byte
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!     _DS3231_Turn_On_Alarm
;!       _DS3231_Init
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write_Address_Read_One_Byte
;!           _I2C_ReStart
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Read
;!             _i2cAck
;!               _i2cHighScl
;!               _i2cHighSda
;!               _i2cLowScl
;!               _i2cLowSda
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cNack
;!               _i2cHighScl
;!               _i2cLowScl
;!           _I2C_Start
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Stop
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Write
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!         _I2C_Write_Address_Write_One_Byte
;!           _I2C_Start
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Stop
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _I2C_Write
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!       _I2C_Write_Address_Read_One_Byte
;!         _I2C_ReStart
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Read
;!           _i2cAck
;!             _i2cHighScl
;!             _i2cHighSda
;!             _i2cLowScl
;!             _i2cLowSda
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cNack
;!             _i2cHighScl
;!             _i2cLowScl
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!       _I2C_Write_Address_Write_One_Byte
;!         _I2C_Start
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Stop
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!         _I2C_Write
;!           _i2cHighScl
;!           _i2cHighSda
;!           _i2cLowScl
;!           _i2cLowSda
;!     _Deactivate_Buzzer
;!     _Set_RGB_Color
;!     ___ftge
;!
;! _chkisr (ROOT)
;!   _INT0_isr
;!   _INT2_isr
;!   _TIMER1_isr
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             F7F      0       0      37        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK14          100      0       0      32        0.0%
;!BANK14             100      0       0      33        0.0%
;!BITBANK13          100      0       0      30        0.0%
;!BANK13             100      0       0      31        0.0%
;!BITBANK12          100      0       0      28        0.0%
;!BANK12             100      0       0      29        0.0%
;!BITBANK11          100      0       0      26        0.0%
;!BANK11             100      0       0      27        0.0%
;!BITBANK10          100      0       0      24        0.0%
;!BANK10             100      0       0      25        0.0%
;!BITBANK9           100      0       0      22        0.0%
;!BANK9              100      0       0      23        0.0%
;!BITBANK8           100      0       0      20        0.0%
;!BANK8              100      0       0      21        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     1A      8A       7       53.9%
;!BITBANK15           80      0       0      35        0.0%
;!BANK15              80      0       0      36        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     19      76       5       92.2%
;!BITCOMRAM           7F      0       0       0        0.0%
;!COMRAM              7F     5F      6F       1       87.4%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     16F      34        0.0%
;!DATA                 0      0     16F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 120 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:   12
;; This function calls:
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Read_Time
;;		_DS3231_Turn_Off_Alarm
;;		_Do_Beep_Bad
;;		_Do_Beep_Good
;;		_Do_Init
;;		_Do_Setup_Alarm_Time
;;		_Do_Setup_Time
;;		_Initialize_Screen
;;		_Monitor_Fan
;;		_Setup_Temp_Fan
;;		_Toggle_Fan_Monitor
;;		_Update_Screen
;;		___awdiv
;;		___wmul
;;		_check_for_button_input
;;		_get_RPM
;;		_printf
;;		_read_volt
;;		_test_alarm
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"Main.c"
	line	120
global __ptext0
__ptext0:
psect	text0
	file	"Main.c"
	line	120
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	122
	
l10840:
	call	_Do_Init	;wreg free
	line	123
	
l10842:
	call	_Initialize_Screen	;wreg free
	line	124
	
l10844:
	call	_DS3231_Turn_Off_Alarm	;wreg free
	line	125
	
l10846:
	call	_DS3231_Read_Alarm_Time	;wreg free
	line	126
	
l10848:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_ALARMEN+1))&0ffh
	movlw	low(0)
	movwf	((_ALARMEN))&0ffh
	line	127
	
l10850:; BSR set to: 0

	movlb	0	; () banked
	setf	((_tempSecond))&0ffh
	goto	l10852
	line	128
	
l527:; BSR set to: 0

	line	130
	
l10852:; BSR set to: 0

	call	_DS3231_Read_Time	;wreg free
	line	131
	
l10854:
	movf	((c:_second)),c,w
	movlb	0	; () banked
xorwf	((_tempSecond))&0ffh,w
	btfsc	status,2
	goto	u9161
	goto	u9160

u9161:
	goto	l10880
u9160:
	line	133
	
l10856:; BSR set to: 0

	movff	(c:_second),(_tempSecond)
	line	134
	
l10858:; BSR set to: 0

	call	_get_RPM	;wreg free
	movff	0+?_get_RPM,(_rpm)
	movff	1+?_get_RPM,(_rpm+1)
	line	135
	call	_read_volt	;wreg free
	movff	0+?_read_volt,(_volt)
	movff	1+?_read_volt,(_volt+1)
	movff	2+?_read_volt,(_volt+2)
	line	136
	
l10860:
	call	_DS1621_Read_Temp	;wreg free
	movff	0+?_DS1621_Read_Temp,(_DS1621_tempC)
	movff	1+?_DS1621_Read_Temp,(_DS1621_tempC+1)
	line	137
	
l10862:
	movff	(_DS1621_tempC),(c:___wmul@multiplier)
	movff	(_DS1621_tempC+1),(c:___wmul@multiplier+1)
	movlw	high(09h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(09h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:___awdiv@dividend)
	movff	1+?___wmul,(c:___awdiv@dividend+1)
	movlw	high(05h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(05h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movlw	low(020h)
	addwf	(0+?___awdiv),c,w
	movlb	0	; () banked
	movwf	((_DS1621_tempF))&0ffh
	movlw	high(020h)
	addwfc	(1+?___awdiv),c,w
	movlb	0	; () banked
	movwf	1+((_DS1621_tempF))&0ffh
	line	139
	
l10864:; BSR set to: 0

		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(c:_hour),0+(?_printf+02h)
	movlb	0	; () banked
	clrf	(1+(?_printf+02h))&0ffh
	movff	(c:_minute),0+(?_printf+04h)
	movlb	0	; () banked
	clrf	(1+(?_printf+04h))&0ffh
	movff	(c:_second),0+(?_printf+06h)
	movlb	0	; () banked
	clrf	(1+(?_printf+06h))&0ffh
	movff	(c:_month),0+(?_printf+08h)
	movlb	0	; () banked
	clrf	(1+(?_printf+08h))&0ffh
	movff	(c:_day),0+(?_printf+0Ah)
	movlb	0	; () banked
	clrf	(1+(?_printf+0Ah))&0ffh
	movff	(_year),0+(?_printf+0Ch)
	movlb	0	; () banked
	clrf	(1+(?_printf+0Ch))&0ffh
	call	_printf	;wreg free
	line	140
	
l10866:
		movlw	low(STR_2)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_2)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_DS1621_tempC),0+(?_printf+02h)
	movff	(_DS1621_tempC+1),1+(?_printf+02h)
	movff	(_DS1621_tempF),0+(?_printf+04h)
	movff	(_DS1621_tempF+1),1+(?_printf+04h)
	call	_printf	;wreg free
	line	141
	
l10868:
		movlw	low(STR_3)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_3)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	btfsc	((c:3969)),c,5	;volatile
	goto	u9171
	goto	u9170
u9171:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9178
u9170:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9178:
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_printf+02h))&0ffh
	clrf	(1+(?_printf+02h))&0ffh
	movff	(_MATCHED),0+(?_printf+04h)
	movff	(_MATCHED+1),1+(?_printf+04h)
	call	_printf	;wreg free
	line	142
	
l10870:
		movlw	low(STR_4)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_4)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_rpm),0+(?_printf+02h)
	movff	(_rpm+1),1+(?_printf+02h)
	movff	(c:_duty_cycle),0+(?_printf+04h)
	movlb	0	; () banked
	clrf	(1+(?_printf+04h))&0ffh
	call	_printf	;wreg free
	line	143
	
l10872:
		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_volt),0+(?_printf+02h)
	movff	(_volt+1),1+(?_printf+02h)
	movff	(_volt+2),2+(?_printf+02h)
	call	_printf	;wreg free
	line	144
	
l10874:
	call	_Monitor_Fan	;wreg free
	line	145
	
l10876:
	call	_test_alarm	;wreg free
	line	146
	
l10878:
	call	_Update_Screen	;wreg free
	goto	l10880
	line	147
	
l528:
	line	149
	
l10880:
	call	_check_for_button_input	;wreg free
	decf	wreg
	btfss	status,2
	goto	u9181
	goto	u9180
u9181:
	goto	l10906
u9180:
	line	151
	
l10882:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_nec_ok+1))&0ffh
	movlw	low(0)
	movwf	((_nec_ok))&0ffh
	line	152
	goto	l10904
	line	154
	
l531:; BSR set to: 0

	line	155
	
l10884:
	call	_Do_Beep_Good	;wreg free
	line	156
	
l10886:
	call	_Do_Setup_Time	;wreg free
	line	157
	goto	l10906
	line	159
	
l533:
	line	160
	
l10888:
	call	_Do_Beep_Good	;wreg free
	line	161
	
l10890:
	call	_Do_Setup_Alarm_Time	;wreg free
	line	162
	goto	l10906
	line	164
	
l534:
	line	165
	
l10892:
	call	_Do_Beep_Good	;wreg free
	line	166
	
l10894:
	call	_Setup_Temp_Fan	;wreg free
	line	167
	goto	l10906
	line	169
	
l535:
	line	170
	
l10896:
	call	_Do_Beep_Good	;wreg free
	line	171
	
l10898:
	call	_Toggle_Fan_Monitor	;wreg free
	line	172
	goto	l10906
	line	174
	
l536:
	line	175
	
l10900:
	call	_Do_Beep_Bad	;wreg free
	line	176
	goto	l10906
	line	177
	
l10902:
	goto	l10906
	line	152
	
l530:
	
l10904:
	movf	((c:_found)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l10884
	xorlw	1^0	; case 1
	skipnz
	goto	l10888
	xorlw	2^1	; case 2
	skipnz
	goto	l10892
	xorlw	5^2	; case 5
	skipnz
	goto	l10896
	goto	l10900

	line	177
	
l532:
	goto	l10906
	line	178
	
l529:
	line	179
	
l10906:
	movlb	0	; () banked
		decf	((_INT2_flag))&0ffh,w
	btfss	status,2
	goto	u9191
	goto	u9190

u9191:
	goto	l10852
u9190:
	line	181
	
l10908:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_INT2_flag))&0ffh
	line	182
	
l10910:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ALARMEN))&0ffh,w
	movlb	0	; () banked
iorwf	((_ALARMEN+1))&0ffh,w
	btfss	status,2
	goto	u9201
	goto	u9200

u9201:
	goto	l10914
u9200:
	
l10912:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_ALARMEN+1))&0ffh
	movlw	low(01h)
	movwf	((_ALARMEN))&0ffh
	goto	l10852
	line	183
	
l538:; BSR set to: 0

	
l10914:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_ALARMEN+1))&0ffh
	movlw	low(0)
	movwf	((_ALARMEN))&0ffh
	goto	l10852
	
l539:; BSR set to: 0

	goto	l10852
	line	184
	
l537:; BSR set to: 0

	goto	l10852
	line	186
	
l540:; BSR set to: 0

	line	128
	goto	l10852
	
l541:; BSR set to: 0

	line	187
	
l542:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_test_alarm

;; *************** function _test_alarm *****************
;; Defined at:
;;		line 189 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Activate_Buzzer_4KHz
;;		_DS3231_Turn_Off_Alarm
;;		_DS3231_Turn_On_Alarm
;;		_Deactivate_Buzzer
;;		_Set_RGB_Color
;;		___ftge
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	189
global __ptext1
__ptext1:
psect	text1
	file	"Main.c"
	line	189
	global	__size_of_test_alarm
	__size_of_test_alarm	equ	__end_of_test_alarm-_test_alarm
	
_test_alarm:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	194
	
l10438:
	movlb	0	; () banked
	movf	((_alarm_mode))&0ffh,w
	movlb	0	; () banked
iorwf	((_alarm_mode+1))&0ffh,w
	btfss	status,2
	goto	u8731
	goto	u8730

u8731:
	goto	l10448
u8730:
	line	196
	
l10440:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ALARMEN))&0ffh,w
	movlb	0	; () banked
iorwf	((_ALARMEN+1))&0ffh,w
	btfss	status,2
	goto	u8741
	goto	u8740

u8741:
	goto	l10446
u8740:
	line	198
	
l10442:; BSR set to: 0

	call	_DS3231_Turn_On_Alarm	;wreg free
	line	199
	
l10444:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_alarm_mode+1))&0ffh
	movlw	low(01h)
	movwf	((_alarm_mode))&0ffh
	line	200
	goto	l10448
	
l546:; BSR set to: 0

	line	202
	
l10446:; BSR set to: 0

	call	_DS3231_Turn_Off_Alarm	;wreg free
	goto	l10448
	line	203
	
l547:
	goto	l10448
	line	204
	
l545:
	line	206
	
l10448:
	movlb	0	; () banked
		decf	((_MATCHED))&0ffh,w
	movlb	0	; () banked
iorwf	((_MATCHED+1))&0ffh,w
	btfss	status,2
	goto	u8751
	goto	u8750

u8751:
	goto	l10460
u8750:
	line	210
	
l10450:; BSR set to: 0

	movlw	low(float24(3.0000000000000000))
	movwf	((c:___ftge@ff1)),c
	movlw	high(float24(3.0000000000000000))
	movwf	((c:___ftge@ff1+1)),c
	movlw	low highword(float24(3.0000000000000000))
	movwf	((c:___ftge@ff1+2)),c

	movff	(_volt),(c:___ftge@ff2)
	movff	(_volt+1),(c:___ftge@ff2+1)
	movff	(_volt+2),(c:___ftge@ff2+2)
	call	___ftge	;wreg free
	btfsc	status,0
	goto	u8761
	goto	u8760
u8761:
	goto	l10460
u8760:
	line	212
	
l10452:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_MATCHED+1))&0ffh
	movlw	low(0)
	movwf	((_MATCHED))&0ffh
	line	213
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_color+1))&0ffh
	movlw	low(0)
	movwf	((_color))&0ffh
	line	214
	
l10454:; BSR set to: 0

	movlb	0	; () banked
	movf	((_color))&0ffh,w
	
	call	_Set_RGB_Color
	line	215
	
l10456:
	call	_Deactivate_Buzzer	;wreg free
	line	216
	
l10458:
	call	_DS3231_Turn_Off_Alarm	;wreg free
	goto	l10460
	line	217
	
l549:
	goto	l10460
	line	218
	
l548:
	line	220
	
l10460:
	movlb	0	; () banked
		decf	((_alarm_mode))&0ffh,w
	movlb	0	; () banked
iorwf	((_alarm_mode+1))&0ffh,w
	btfss	status,2
	goto	u8771
	goto	u8770

u8771:
	goto	l554
u8770:
	line	222
	
l10462:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ALARMEN))&0ffh,w
	movlb	0	; () banked
iorwf	((_ALARMEN+1))&0ffh,w
	btfss	status,2
	goto	u8781
	goto	u8780

u8781:
	goto	l10474
u8780:
	line	224
	
l10464:; BSR set to: 0

	btfsc	((c:3969)),c,5	;volatile
	goto	u8791
	goto	u8790
u8791:
	goto	l554
u8790:
	line	226
	
l10466:; BSR set to: 0

	movlb	0	; () banked
	movf	((_color))&0ffh,w
	
	call	_Set_RGB_Color
	
l10468:
	movlb	0	; () banked
	infsnz	((_color))&0ffh
	incf	((_color+1))&0ffh
	line	227
	
l10470:; BSR set to: 0

	call	_Activate_Buzzer_4KHz	;wreg free
	line	228
	
l10472:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_MATCHED+1))&0ffh
	movlw	low(01h)
	movwf	((_MATCHED))&0ffh
	goto	l554
	line	230
	
l552:; BSR set to: 0

	line	231
	goto	l554
	line	232
	
l551:; BSR set to: 0

	line	234
	
l10474:; BSR set to: 0

	call	_DS3231_Turn_Off_Alarm	;wreg free
	line	235
	
l10476:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_alarm_mode+1))&0ffh
	movlw	low(0)
	movwf	((_alarm_mode))&0ffh
	line	236
	
l10478:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_color+1))&0ffh
	movlw	low(0)
	movwf	((_color))&0ffh
	line	237
	movlb	0	; () banked
	movf	((_color))&0ffh,w
	
	call	_Set_RGB_Color
	line	238
	
l10480:
	call	_Deactivate_Buzzer	;wreg free
	line	239
	
l10482:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_MATCHED+1))&0ffh
	movlw	low(0)
	movwf	((_MATCHED))&0ffh
	goto	l554
	line	240
	
l553:; BSR set to: 0

	goto	l554
	line	241
	
l550:; BSR set to: 0

	line	249
	
l554:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_test_alarm
	__end_of_test_alarm:
	signat	_test_alarm,88
	global	_Set_RGB_Color

;; *************** function _Set_RGB_Color *****************
;; Defined at:
;;		line 150 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  color           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  color           1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_test_alarm
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	150
global __ptext2
__ptext2:
psect	text2
	file	"utils.c"
	line	150
	global	__size_of_Set_RGB_Color
	__size_of_Set_RGB_Color	equ	__end_of_Set_RGB_Color-_Set_RGB_Color
	
_Set_RGB_Color:; BSR set to: 0

;incstack = 0
	opt	stack 27
	movwf	((c:Set_RGB_Color@color)),c
	line	153
	
l7460:
		movlw	8
	xorwf	((c:Set_RGB_Color@color)),c,w
	btfss	status,2
	goto	u5521
	goto	u5520

u5521:
	goto	l7464
u5520:
	
l7462:
	movlw	low(0)
	movwf	((c:Set_RGB_Color@color)),c
	goto	l7464
	
l1381:
	line	154
	
l7464:
	movff	(c:Set_RGB_Color@color),(c:3972)	;volatile
	line	155
	
l1382:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Set_RGB_Color
	__end_of_Set_RGB_Color:
	signat	_Set_RGB_Color,4216
	global	_DS3231_Turn_On_Alarm

;; *************** function _DS3231_Turn_On_Alarm *****************
;; Defined at:
;;		line 234 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   30[COMRAM] unsigned char 
;;  control_F       1   29[COMRAM] unsigned char 
;;  control_E       1   28[COMRAM] unsigned char 
;;  Address_F       1   27[COMRAM] unsigned char 
;;  Address_E       1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DS3231_Init
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;; This function is called by:
;;		_test_alarm
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	234
global __ptext3
__ptext3:
psect	text3
	file	"I2C_Support.c"
	line	234
	global	__size_of_DS3231_Turn_On_Alarm
	__size_of_DS3231_Turn_On_Alarm	equ	__end_of_DS3231_Turn_On_Alarm-_DS3231_Turn_On_Alarm
	
_DS3231_Turn_On_Alarm:
;incstack = 0
	opt	stack 22
	line	236
	
l7376:
	movlw	low(068h)
	movwf	((c:DS3231_Turn_On_Alarm@Device)),c
	line	237
	movlw	low(0Eh)
	movwf	((c:DS3231_Turn_On_Alarm@Address_E)),c
	line	238
	movlw	low(0Fh)
	movwf	((c:DS3231_Turn_On_Alarm@Address_F)),c
	line	242
	
l7378:
	movff	(c:DS3231_Turn_On_Alarm@Address_E),(c:I2C_Write_Address_Read_One_Byte@Address)
	movf	((c:DS3231_Turn_On_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Read_One_Byte
	movwf	((c:DS3231_Turn_On_Alarm@control_E)),c
	line	243
	
l7380:
	movf	((c:DS3231_Turn_On_Alarm@control_E)),c,w
	iorlw	low(01h)
	movwf	((c:DS3231_Turn_On_Alarm@control_E)),c
	line	244
	
l7382:
	movff	(c:DS3231_Turn_On_Alarm@Address_E),(c:I2C_Write_Address_Write_One_Byte@Address)
	movff	(c:DS3231_Turn_On_Alarm@control_E),(c:I2C_Write_Address_Write_One_Byte@Data_Out)
	movf	((c:DS3231_Turn_On_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Write_One_Byte
	line	246
	
l7384:
	movff	(c:DS3231_Turn_On_Alarm@Address_F),(c:I2C_Write_Address_Read_One_Byte@Address)
	movf	((c:DS3231_Turn_On_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Read_One_Byte
	movwf	((c:DS3231_Turn_On_Alarm@control_F)),c
	line	247
	
l7386:
	movf	((c:DS3231_Turn_On_Alarm@control_F)),c,w
	andlw	low(0FEh)
	movwf	((c:DS3231_Turn_On_Alarm@control_F)),c
	line	248
	
l7388:
	movff	(c:DS3231_Turn_On_Alarm@Address_F),(c:I2C_Write_Address_Write_One_Byte@Address)
	movff	(c:DS3231_Turn_On_Alarm@control_F),(c:I2C_Write_Address_Write_One_Byte@Data_Out)
	movf	((c:DS3231_Turn_On_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Write_One_Byte
	line	249
	
l7390:
	call	_DS3231_Init	;wreg free
	line	251
	
l232:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Turn_On_Alarm
	__end_of_DS3231_Turn_On_Alarm:
	signat	_DS3231_Turn_On_Alarm,88
	global	_DS3231_Turn_Off_Alarm

;; *************** function _DS3231_Turn_Off_Alarm *****************
;; Defined at:
;;		line 217 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   30[COMRAM] unsigned char 
;;  control_F       1   29[COMRAM] unsigned char 
;;  control_E       1   28[COMRAM] unsigned char 
;;  Address_F       1   27[COMRAM] unsigned char 
;;  Address_E       1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DS3231_Init
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;; This function is called by:
;;		_main
;;		_test_alarm
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	217
global __ptext4
__ptext4:
psect	text4
	file	"I2C_Support.c"
	line	217
	global	__size_of_DS3231_Turn_Off_Alarm
	__size_of_DS3231_Turn_Off_Alarm	equ	__end_of_DS3231_Turn_Off_Alarm-_DS3231_Turn_Off_Alarm
	
_DS3231_Turn_Off_Alarm:
;incstack = 0
	opt	stack 22
	line	219
	
l7360:
	movlw	low(068h)
	movwf	((c:DS3231_Turn_Off_Alarm@Device)),c
	line	220
	movlw	low(0Eh)
	movwf	((c:DS3231_Turn_Off_Alarm@Address_E)),c
	line	221
	movlw	low(0Fh)
	movwf	((c:DS3231_Turn_Off_Alarm@Address_F)),c
	line	225
	
l7362:
	movff	(c:DS3231_Turn_Off_Alarm@Address_E),(c:I2C_Write_Address_Read_One_Byte@Address)
	movf	((c:DS3231_Turn_Off_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Read_One_Byte
	movwf	((c:DS3231_Turn_Off_Alarm@control_E)),c
	line	226
	
l7364:
	movf	((c:DS3231_Turn_Off_Alarm@control_E)),c,w
	andlw	low(0FEh)
	movwf	((c:DS3231_Turn_Off_Alarm@control_E)),c
	line	227
	
l7366:
	movff	(c:DS3231_Turn_Off_Alarm@Address_E),(c:I2C_Write_Address_Write_One_Byte@Address)
	movff	(c:DS3231_Turn_Off_Alarm@control_E),(c:I2C_Write_Address_Write_One_Byte@Data_Out)
	movf	((c:DS3231_Turn_Off_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Write_One_Byte
	line	228
	
l7368:
	movff	(c:DS3231_Turn_Off_Alarm@Address_F),(c:I2C_Write_Address_Read_One_Byte@Address)
	movf	((c:DS3231_Turn_Off_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Read_One_Byte
	movwf	((c:DS3231_Turn_Off_Alarm@control_F)),c
	line	229
	
l7370:
	movf	((c:DS3231_Turn_Off_Alarm@control_F)),c,w
	andlw	low(0FEh)
	movwf	((c:DS3231_Turn_Off_Alarm@control_F)),c
	line	230
	
l7372:
	movff	(c:DS3231_Turn_Off_Alarm@Address_F),(c:I2C_Write_Address_Write_One_Byte@Address)
	movff	(c:DS3231_Turn_Off_Alarm@control_F),(c:I2C_Write_Address_Write_One_Byte@Data_Out)
	movf	((c:DS3231_Turn_Off_Alarm@Device)),c,w
	
	call	_I2C_Write_Address_Write_One_Byte
	line	231
	
l7374:
	call	_DS3231_Init	;wreg free
	line	232
	
l229:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Turn_Off_Alarm
	__end_of_DS3231_Turn_Off_Alarm:
	signat	_DS3231_Turn_Off_Alarm,88
	global	_DS3231_Init

;; *************** function _DS3231_Init *****************
;; Defined at:
;;		line 156 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   25[COMRAM] unsigned char 
;;  control_E       1   24[COMRAM] unsigned char 
;;  Address_E       1   23[COMRAM] unsigned char 
;;  Address_7       1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_I2C_ReStart
;;		_I2C_Read
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;; This function is called by:
;;		_DS3231_Turn_Off_Alarm
;;		_DS3231_Turn_On_Alarm
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	156
global __ptext5
__ptext5:
psect	text5
	file	"I2C_Support.c"
	line	156
	global	__size_of_DS3231_Init
	__size_of_DS3231_Init	equ	__end_of_DS3231_Init-_DS3231_Init
	
_DS3231_Init:
;incstack = 0
	opt	stack 22
	line	158
	
l7052:
	movlw	low(068h)
	movwf	((c:DS3231_Init@Device)),c
	line	159
	movlw	low(07h)
	movwf	((c:DS3231_Init@Address_7)),c
	line	160
	movlw	low(0Eh)
	movwf	((c:DS3231_Init@Address_E)),c
	line	163
	
l7054:
	movff	(c:DS3231_Init@Address_E),(c:I2C_Write_Address_Read_One_Byte@Address)
	movf	((c:DS3231_Init@Device)),c,w
	
	call	_I2C_Write_Address_Read_One_Byte
	movwf	((c:DS3231_Init@control_E)),c
	line	164
	
l7056:
	movf	((c:DS3231_Init@control_E)),c,w
	andlw	low(01h)
	movwf	((c:DS3231_Init@control_E)),c
	line	165
	
l7058:
	movf	((c:DS3231_Init@control_E)),c,w
	iorlw	low(025h)
	movwf	((c:DS3231_Init@control_E)),c
	line	166
	
l7060:
	movff	(c:DS3231_Init@Address_E),(c:I2C_Write_Address_Write_One_Byte@Address)
	movff	(c:DS3231_Init@control_E),(c:I2C_Write_Address_Write_One_Byte@Data_Out)
	movf	((c:DS3231_Init@Device)),c,w
	
	call	_I2C_Write_Address_Write_One_Byte
	line	167
	
l7062:
	call	_I2C_Start	;wreg free
	line	168
	
l7064:
	movf	((c:DS3231_Init@Device)),c,w
	addwf	((c:DS3231_Init@Device)),c,w
	
	call	_I2C_Write
	line	169
	
l7066:
	movf	((c:DS3231_Init@Address_7)),c,w
	
	call	_I2C_Write
	line	170
	
l7068:
	call	_I2C_ReStart	;wreg free
	line	171
	
l7070:
	bsf	status,0
	
	rlcf	((c:DS3231_Init@Device)),c,w
	
	call	_I2C_Write
	line	172
	
l7072:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_second)),c
	line	173
	
l7074:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_minute)),c
	line	174
	
l7076:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_hour)),c
	line	175
	
l7078:
	movlw	(0)&0ffh
	
	call	_I2C_Read
	movlb	0	; () banked
	movwf	((_alarm_date))&0ffh
	line	177
	
l7080:; BSR set to: 0

	movf	((c:_alarm_second)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_second)),c
	line	178
	
l7082:; BSR set to: 0

	movf	((c:_alarm_minute)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_minute)),c
	line	179
	
l7084:; BSR set to: 0

	movf	((c:_alarm_hour)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_hour)),c
	line	180
	
l7086:; BSR set to: 0

	movlb	0	; () banked
	movf	((_alarm_date))&0ffh,w
	iorlw	low(080h)
	movlb	0	; () banked
	movwf	((_alarm_date))&0ffh
	line	182
	
l7088:; BSR set to: 0

	call	_I2C_Start	;wreg free
	line	183
	
l7090:
	movf	((c:DS3231_Init@Device)),c,w
	addwf	((c:DS3231_Init@Device)),c,w
	
	call	_I2C_Write
	line	184
	
l7092:
	movf	((c:DS3231_Init@Address_7)),c,w
	
	call	_I2C_Write
	line	186
	
l7094:
	movf	((c:_alarm_second)),c,w
	
	call	_I2C_Write
	line	187
	
l7096:
	movf	((c:_alarm_minute)),c,w
	
	call	_I2C_Write
	line	188
	
l7098:
	movf	((c:_alarm_hour)),c,w
	
	call	_I2C_Write
	line	189
	
l7100:
	movlb	0	; () banked
	movf	((_alarm_date))&0ffh,w
	
	call	_I2C_Write
	line	190
	
l7102:
	call	_I2C_Stop	;wreg free
	line	191
	
l223:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Init
	__end_of_DS3231_Init:
	signat	_DS3231_Init,88
	global	_I2C_Write_Address_Write_One_Byte

;; *************** function _I2C_Write_Address_Write_One_Byte *****************
;; Defined at:
;;		line 135 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  Device          1    wreg     unsigned char 
;;  Address         1   18[COMRAM] unsigned char 
;;  Data_Out        1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Device          1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_DS3231_Init
;;		_DS3231_Turn_Off_Alarm
;;		_DS3231_Turn_On_Alarm
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"I2C_Soft.c"
	line	135
global __ptext6
__ptext6:
psect	text6
	file	"I2C_Soft.c"
	line	135
	global	__size_of_I2C_Write_Address_Write_One_Byte
	__size_of_I2C_Write_Address_Write_One_Byte	equ	__end_of_I2C_Write_Address_Write_One_Byte-_I2C_Write_Address_Write_One_Byte
	
_I2C_Write_Address_Write_One_Byte:
;incstack = 0
	opt	stack 24
	movwf	((c:I2C_Write_Address_Write_One_Byte@Device)),c
	line	137
	
l6472:
	call	_I2C_Start	;wreg free
	line	138
	
l6474:
	movf	((c:I2C_Write_Address_Write_One_Byte@Device)),c,w
	addwf	((c:I2C_Write_Address_Write_One_Byte@Device)),c,w
	
	call	_I2C_Write
	line	139
	
l6476:
	movf	((c:I2C_Write_Address_Write_One_Byte@Address)),c,w
	
	call	_I2C_Write
	line	140
	
l6478:
	movf	((c:I2C_Write_Address_Write_One_Byte@Data_Out)),c,w
	
	call	_I2C_Write
	line	141
	
l6480:
	call	_I2C_Stop	;wreg free
	line	142
	
l130:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Write_Address_Write_One_Byte
	__end_of_I2C_Write_Address_Write_One_Byte:
	signat	_I2C_Write_Address_Write_One_Byte,12408
	global	_I2C_Write_Address_Read_One_Byte

;; *************** function _I2C_Write_Address_Read_One_Byte *****************
;; Defined at:
;;		line 122 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  Device          1    wreg     unsigned char 
;;  Address         1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Device          1   21[COMRAM] unsigned char 
;;  Data_Ret        1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_ReStart
;;		_I2C_Read
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_DS3231_Init
;;		_DS3231_Turn_Off_Alarm
;;		_DS3231_Turn_On_Alarm
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	122
global __ptext7
__ptext7:
psect	text7
	file	"I2C_Soft.c"
	line	122
	global	__size_of_I2C_Write_Address_Read_One_Byte
	__size_of_I2C_Write_Address_Read_One_Byte	equ	__end_of_I2C_Write_Address_Read_One_Byte-_I2C_Write_Address_Read_One_Byte
	
_I2C_Write_Address_Read_One_Byte:
;incstack = 0
	opt	stack 23
	movwf	((c:I2C_Write_Address_Read_One_Byte@Device)),c
	line	125
	
l6458:
	call	_I2C_Start	;wreg free
	line	126
	
l6460:
	movf	((c:I2C_Write_Address_Read_One_Byte@Device)),c,w
	addwf	((c:I2C_Write_Address_Read_One_Byte@Device)),c,w
	
	call	_I2C_Write
	line	127
	
l6462:
	movf	((c:I2C_Write_Address_Read_One_Byte@Address)),c,w
	
	call	_I2C_Write
	line	128
	call	_I2C_ReStart	;wreg free
	line	129
	
l6464:
	bsf	status,0
	
	rlcf	((c:I2C_Write_Address_Read_One_Byte@Device)),c,w
	
	call	_I2C_Write
	line	130
	
l6466:
	movlw	(0)&0ffh
	
	call	_I2C_Read
	movwf	((c:I2C_Write_Address_Read_One_Byte@Data_Ret)),c
	line	131
	call	_I2C_Stop	;wreg free
	line	132
	
l6468:
	movf	((c:I2C_Write_Address_Read_One_Byte@Data_Ret)),c,w
	goto	l127
	
l6470:
	line	133
	
l127:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Write_Address_Read_One_Byte
	__end_of_I2C_Write_Address_Read_One_Byte:
	signat	_I2C_Write_Address_Read_One_Byte,8313
	global	_Activate_Buzzer_4KHz

;; *************** function _Activate_Buzzer_4KHz *****************
;; Defined at:
;;		line 122 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_test_alarm
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	122
global __ptext8
__ptext8:
psect	text8
	file	"utils.c"
	line	122
	global	__size_of_Activate_Buzzer_4KHz
	__size_of_Activate_Buzzer_4KHz	equ	__end_of_Activate_Buzzer_4KHz-_Activate_Buzzer_4KHz
	
_Activate_Buzzer_4KHz:
;incstack = 0
	opt	stack 27
	line	125
	
l7466:
	movlw	low(07Ch)
	movwf	((c:4043)),c	;volatile
	line	126
	movlw	low(05h)
	movwf	((c:4042)),c	;volatile
	line	127
	movlw	low(03Eh)
	movwf	((c:4027)),c	;volatile
	line	128
	movlw	low(01Ch)
	movwf	((c:4026)),c	;volatile
	line	129
	
l1371:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Activate_Buzzer_4KHz
	__end_of_Activate_Buzzer_4KHz:
	signat	_Activate_Buzzer_4KHz,88
	global	_read_volt

;; *************** function _read_volt *****************
;; Defined at:
;;		line 157 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  volt            3   63[COMRAM] float 
;;  nStep           2   66[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  3   60[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtoft
;;		___ftdiv
;;		___wmul
;;		_get_full_ADC
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	157
global __ptext9
__ptext9:
psect	text9
	file	"utils.c"
	line	157
	global	__size_of_read_volt
	__size_of_read_volt	equ	__end_of_read_volt-_read_volt
	
_read_volt:
;incstack = 0
	opt	stack 26
	line	159
	
l10430:
	call	_get_full_ADC	;wreg free
	movff	0+?_get_full_ADC,(c:read_volt@nStep)
	movff	1+?_get_full_ADC,(c:read_volt@nStep+1)
	line	160
	
l10432:
	movff	(c:read_volt@nStep),(c:___wmul@multiplier)
	movff	(c:read_volt@nStep+1),(c:___wmul@multiplier+1)
	movlw	high(05h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(05h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:___awtoft@c)
	movff	1+?___wmul,(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftdiv@f1)
	movff	1+?___awtoft,(c:___ftdiv@f1+1)
	movff	2+?___awtoft,(c:___ftdiv@f1+2)
	movlw	low(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(1024.0000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:read_volt@volt)
	movff	1+?___ftdiv,(c:read_volt@volt+1)
	movff	2+?___ftdiv,(c:read_volt@volt+2)
	line	161
	
l10434:
	movff	(c:read_volt@volt),(c:?_read_volt)
	movff	(c:read_volt@volt+1),(c:?_read_volt+1)
	movff	(c:read_volt@volt+2),(c:?_read_volt+2)
	goto	l1385
	
l10436:
	line	163
	
l1385:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_read_volt
	__end_of_read_volt:
	signat	_read_volt,91
	global	_get_full_ADC

;; *************** function _get_full_ADC *****************
;; Defined at:
;;		line 165 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2   20[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   16[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_volt
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	165
global __ptext10
__ptext10:
psect	text10
	file	"utils.c"
	line	165
	global	__size_of_get_full_ADC
	__size_of_get_full_ADC	equ	__end_of_get_full_ADC-_get_full_ADC
	
_get_full_ADC:
;incstack = 0
	opt	stack 27
	line	169
	
l7776:
	bsf	((c:4034)),c,1	;volatile
	line	170
	goto	l1388
	
l1389:
	
l1388:
	btfsc	((c:4034)),c,1	;volatile
	goto	u5811
	goto	u5810
u5811:
	goto	l1388
u5810:
	goto	l7778
	
l1390:
	line	171
	
l7778:
	movf	((c:4036)),c,w	;volatile
	movwf	(??_get_full_ADC+0+0+1)&0ffh,c
	clrf	(??_get_full_ADC+0+0)&0ffh,c
	movf	((c:4035)),c,w	;volatile
	addwf	(??_get_full_ADC+0+0),c,w
	movwf	((c:get_full_ADC@result)),c
	movlw	0
	addwfc	(??_get_full_ADC+0+1),c,w
	movwf	1+((c:get_full_ADC@result)),c
	line	173
	
l7780:
	movff	(c:get_full_ADC@result),(c:?_get_full_ADC)
	movff	(c:get_full_ADC@result+1),(c:?_get_full_ADC+1)
	goto	l1391
	
l7782:
	line	174
	
l1391:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_get_full_ADC
	__end_of_get_full_ADC:
	signat	_get_full_ADC,90
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   24[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   24[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_read_volt
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtoft.c"
	line	32
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 26
	line	36
	
l10400:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l10402:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u8700
	goto	u8701

u8701:
	goto	l10408
u8700:
	line	38
	
l10404:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l10406:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l10408
	line	40
	
l1789:
	line	41
	
l10408:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	goto	l1790
	
l10410:
	line	42
	
l1790:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	_get_RPM

;; *************** function _get_RPM *****************
;; Defined at:
;;		line 58 in file "Fan_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  RPS             2   32[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   30[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"Fan_Support.c"
	line	58
global __ptext12
__ptext12:
psect	text12
	file	"Fan_Support.c"
	line	58
	global	__size_of_get_RPM
	__size_of_get_RPM	equ	__end_of_get_RPM-_get_RPM
	
_get_RPM:
;incstack = 0
	opt	stack 27
	line	61
	
l10422:
	movff	(c:4018),(c:___awdiv@dividend)	;volatile
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:get_RPM@RPS)
	movff	1+?___awdiv,(c:get_RPM@RPS+1)
	line	63
	
l10424:
	movlw	low(0)
	movwf	((c:4018)),c	;volatile
	line	65
	
l10426:
	movff	(c:get_RPM@RPS),(c:___wmul@multiplier)
	movff	(c:get_RPM@RPS+1),(c:___wmul@multiplier+1)
	movlw	high(03Ch)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03Ch)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:?_get_RPM)
	movff	1+?___wmul,(c:?_get_RPM+1)
	goto	l39
	
l10428:
	line	66
	
l39:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_get_RPM
	__end_of_get_RPM:
	signat	_get_RPM,90
	global	_Update_Screen

;; *************** function _Update_Screen *****************
;; Defined at:
;;		line 76 in file "Main_Screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  neg_tempF       2   75[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2  372[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___fttol
;;		_drawtext
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"Main_Screen.c"
	line	76
global __ptext13
__ptext13:
psect	text13
	file	"Main_Screen.c"
	line	76
	global	__size_of_Update_Screen
	__size_of_Update_Screen	equ	__end_of_Update_Screen-_Update_Screen
	
_Update_Screen:
;incstack = 0
	opt	stack 21
	line	78
	
l10484:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_DS1621_tempC))&0ffh,(7)&7
	goto	u8801
	goto	u8800
u8801:
	goto	l10492
u8800:
	line	80
	
l10486:; BSR set to: 0

	movlw	low(02Dh)
	movlb	0	; () banked
	movwf	((_tempC))&0ffh
	line	81
	
l10488:; BSR set to: 0

	movlw	07Fh
	movlb	0	; () banked
	andwf	((_DS1621_tempC))&0ffh,w
	movwf	((c:___awdiv@dividend)),c
	clrf	1+((c:___awdiv@dividend)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempC+01h))&0ffh
	line	82
	
l10490:; BSR set to: 0

	movlw	07Fh
	movlb	0	; () banked
	andwf	((_DS1621_tempC))&0ffh,w
	movwf	((c:___awmod@dividend)),c
	clrf	1+((c:___awmod@dividend)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempC+02h))&0ffh
	line	83
	goto	l10498
	line	84
	
l634:; BSR set to: 0

	line	86
	
l10492:; BSR set to: 0

	movlw	low(02Bh)
	movlb	0	; () banked
	movwf	((_tempC))&0ffh
	line	87
	
l10494:; BSR set to: 0

	movff	(_DS1621_tempC),(c:___awdiv@dividend)
	movff	(_DS1621_tempC+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempC+01h))&0ffh
	line	88
	
l10496:; BSR set to: 0

	movff	(_DS1621_tempC),(c:___awmod@dividend)
	movff	(_DS1621_tempC+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempC+02h))&0ffh
	goto	l10498
	line	89
	
l635:; BSR set to: 0

	line	91
	
l10498:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_DS1621_tempF+1))&0ffh,7
	goto	u8810
	goto	u8811

u8811:
	goto	l10508
u8810:
	line	93
	
l10500:; BSR set to: 0

	movlw	low(02Dh)
	movlb	0	; () banked
	movwf	((_tempF))&0ffh
	line	94
	
l10502:; BSR set to: 0

	movff	(_DS1621_tempF),??_Update_Screen+0+0
	movff	(_DS1621_tempF+1),??_Update_Screen+0+0+1
	comf	(??_Update_Screen+0+0),c
	comf	(??_Update_Screen+0+1),c
	infsnz	(??_Update_Screen+0+0),c
	incf	(??_Update_Screen+0+1),c
	movff	??_Update_Screen+0+0,(c:Update_Screen@neg_tempF)
	movff	??_Update_Screen+0+1,(c:Update_Screen@neg_tempF+1)
	line	95
	
l10504:; BSR set to: 0

	movff	(c:Update_Screen@neg_tempF),(c:___awdiv@dividend)
	movff	(c:Update_Screen@neg_tempF+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempF+01h))&0ffh
	line	96
	
l10506:; BSR set to: 0

	movff	(c:Update_Screen@neg_tempF),(c:___awmod@dividend)
	movff	(c:Update_Screen@neg_tempF+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempF+02h))&0ffh
	line	97
	goto	l10514
	line	98
	
l636:; BSR set to: 0

	line	100
	
l10508:; BSR set to: 0

	movlw	low(02Bh)
	movlb	0	; () banked
	movwf	((_tempF))&0ffh
	line	101
	
l10510:; BSR set to: 0

	movff	(_DS1621_tempF),(c:___awdiv@dividend)
	movff	(_DS1621_tempF+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempF+01h))&0ffh
	line	102
	
l10512:; BSR set to: 0

	movff	(_DS1621_tempF),(c:___awmod@dividend)
	movff	(_DS1621_tempF+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_tempF+02h))&0ffh
	goto	l10514
	line	103
	
l637:; BSR set to: 0

	line	104
	
l10514:; BSR set to: 0

	swapf	((c:_hour)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_time))&0ffh
	line	105
	
l10516:; BSR set to: 1

	movf	((c:_hour)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_time+01h))&0ffh
	line	108
	
l10518:; BSR set to: 1

	swapf	((c:_minute)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_time+03h))&0ffh
	line	109
	
l10520:; BSR set to: 1

	movf	((c:_minute)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_time+04h))&0ffh
	line	111
	
l10522:; BSR set to: 1

	swapf	((c:_second)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_time+06h))&0ffh
	line	112
	
l10524:; BSR set to: 1

	movf	((c:_second)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_time+07h))&0ffh
	line	114
	
l10526:; BSR set to: 1

	swapf	((c:_month)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_date))&0ffh
	line	115
	
l10528:; BSR set to: 1

	movf	((c:_month)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_date+01h))&0ffh
	line	116
	
l10530:; BSR set to: 1

	swapf	((c:_day)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_date+03h))&0ffh
	line	117
	
l10532:; BSR set to: 1

	movf	((c:_day)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_date+04h))&0ffh
	line	118
	
l10534:; BSR set to: 1

	movlb	0	; () banked
	swapf	((_year))&0ffh,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_date+06h))&0ffh
	line	119
	
l10536:; BSR set to: 1

	movlb	0	; () banked
	movf	((_year))&0ffh,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_date+07h))&0ffh
	line	120
	
l10538:; BSR set to: 1

	swapf	((c:_alarm_hour)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_alarm_time))&0ffh
	line	121
	
l10540:; BSR set to: 1

	movf	((c:_alarm_hour)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_alarm_time+01h))&0ffh
	line	122
	
l10542:; BSR set to: 1

	swapf	((c:_alarm_minute)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_alarm_time+03h))&0ffh
	line	123
	
l10544:; BSR set to: 1

	movf	((c:_alarm_minute)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_alarm_time+04h))&0ffh
	line	124
	
l10546:; BSR set to: 1

	swapf	((c:_alarm_second)),c,w
	andlw	(0ffh shr 4) & 0ffh
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_alarm_time+06h))&0ffh
	line	125
	
l10548:; BSR set to: 1

	movf	((c:_alarm_second)),c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_alarm_time+07h))&0ffh
	line	127
	
l10550:; BSR set to: 1

	movlb	0	; () banked
		decf	((_ALARMEN))&0ffh,w
	movlb	0	; () banked
iorwf	((_ALARMEN+1))&0ffh,w
	btfss	status,2
	goto	u8821
	goto	u8820

u8821:
	goto	l10554
u8820:
	line	129
	
l10552:; BSR set to: 0

		movlw	low(_Alarm_SW_Txt)
	movwf	((c:strcpy@to)),c
	movlw	high(_Alarm_SW_Txt)
	movwf	((c:strcpy@to+1)),c

		movlw	low(STR_20)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_20)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	130
	goto	l10556
	line	131
	
l638:
	line	133
	
l10554:
		movlw	low(_Alarm_SW_Txt)
	movwf	((c:strcpy@to)),c
	movlw	high(_Alarm_SW_Txt)
	movwf	((c:strcpy@to+1)),c

		movlw	low(STR_21)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_21)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	goto	l10556
	line	134
	
l639:
	line	136
	
l10556:
	movff	(_fan_set_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_Fan_Set_Temp_Txt))&0ffh
	line	137
	
l10558:; BSR set to: 0

	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(_fan_set_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_Fan_Set_Temp_Txt+01h))&0ffh
	line	138
	
l10560:; BSR set to: 0

	movff	(_fan_set_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_Fan_Set_Temp_Txt+02h))&0ffh
	line	140
	
l10562:; BSR set to: 0

	movlb	0	; () banked
		decf	((_FAN))&0ffh,w
	btfss	status,2
	goto	u8831
	goto	u8830

u8831:
	goto	l10566
u8830:
	line	142
	
l10564:; BSR set to: 0

		movlw	low(_Fan_SW_Txt)
	movwf	((c:strcpy@to)),c
	movlw	high(_Fan_SW_Txt)
	movwf	((c:strcpy@to+1)),c

		movlw	low(STR_22)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_22)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	143
	goto	l10568
	line	144
	
l640:
	line	146
	
l10566:
		movlw	low(_Fan_SW_Txt)
	movwf	((c:strcpy@to)),c
	movlw	high(_Fan_SW_Txt)
	movwf	((c:strcpy@to+1)),c

		movlw	low(STR_23)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_23)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	goto	l10568
	line	147
	
l641:
	line	149
	
l10568:
	btfsc	((c:3969)),c,5	;volatile
	goto	u8841
	goto	u8840
u8841:
	goto	l10572
u8840:
	
l10570:
	movlw	low(031h)
	movlb	0	; () banked
	movwf	((_RTC_ALARM_Txt))&0ffh
	goto	l10574
	line	150
	
l642:; BSR set to: 0

	
l10572:
	movlw	low(030h)
	movlb	0	; () banked
	movwf	((_RTC_ALARM_Txt))&0ffh
	goto	l10574
	
l643:; BSR set to: 0

	line	153
	
l10574:; BSR set to: 0

	movff	(c:_duty_cycle),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_DC_Txt))&0ffh
	line	155
	
l10576:; BSR set to: 0

	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:_duty_cycle),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_DC_Txt+01h))&0ffh
	line	156
	
l10578:; BSR set to: 0

	movff	(c:_duty_cycle),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_DC_Txt+02h))&0ffh
	line	158
	
l10580:; BSR set to: 0

	movff	(_volt),(c:___fttol@f1)
	movff	(_volt+1),(c:___fttol@f1+1)
	movff	(_volt+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movf	(0+?___fttol),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_Volt_Txt))&0ffh
	line	159
	
l10582:; BSR set to: 1

	movlw	low(float24(10.000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(10.000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_volt),(c:___ftmul@f1)
	movff	(_volt+1),(c:___ftmul@f1+1)
	movff	(_volt+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___fttol@f1)
	movff	1+?___ftmul,(c:___fttol@f1+1)
	movff	2+?___ftmul,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:___awmod@dividend)
	movff	1+?___fttol,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_Volt_Txt+02h))&0ffh
	line	160
	
l10584:; BSR set to: 1

	movlw	low(float24(100.00000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(100.00000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movff	(_volt),(c:___ftmul@f1)
	movff	(_volt+1),(c:___ftmul@f1+1)
	movff	(_volt+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___fttol@f1)
	movff	1+?___ftmul,(c:___fttol@f1+1)
	movff	2+?___ftmul,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:___awmod@dividend)
	movff	1+?___fttol,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_Volt_Txt+03h))&0ffh
	line	162
	
l10586:; BSR set to: 1

	movff	(_rpm),(c:___awdiv@dividend)
	movff	(_rpm+1),(c:___awdiv@dividend+1)
	movlw	high(03E8h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(03E8h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_RPM_Txt))&0ffh
	line	164
	
l10588:; BSR set to: 0

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rpm),(c:___awdiv@dividend)
	movff	(_rpm+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_RPM_Txt+01h))&0ffh
	line	165
	
l10590:; BSR set to: 0

	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rpm),(c:___awdiv@dividend)
	movff	(_rpm+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_RPM_Txt+02h))&0ffh
	line	166
	
l10592:; BSR set to: 0

	movff	(_rpm),(c:___awmod@dividend)
	movff	(_rpm+1),(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_RPM_Txt+03h))&0ffh
	line	168
	
l10594:; BSR set to: 0

	movlw	low(017h)
	movwf	((c:drawtext@y)),c
		movlw	low(_tempC)
	movwf	((c:drawtext@_text)),c
	movlw	high(_tempC)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	169
	
l10596:
	movlw	low(017h)
	movwf	((c:drawtext@y)),c
		movlw	low(_tempF)
	movwf	((c:drawtext@_text)),c
	movlw	high(_tempF)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(046h)&0ffh
	
	call	_drawtext
	line	170
	
l10598:
	movlw	low(034h)
	movwf	((c:drawtext@y)),c
		movlw	low(_time)
	movwf	((c:drawtext@_text)),c
	movlw	high(_time)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	171
	
l10600:
	movlw	low(052h)
	movwf	((c:drawtext@y)),c
		movlw	low(_date)
	movwf	((c:drawtext@_text)),c
	movlw	high(_date)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	172
	
l10602:
	movlw	low(06Eh)
	movwf	((c:drawtext@y)),c
		movlw	low(_alarm_time)
	movwf	((c:drawtext@_text)),c
	movlw	high(_alarm_time)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(0Ah)&0ffh
	
	call	_drawtext
	line	173
	
l10604:
	movlw	low(06Eh)
	movwf	((c:drawtext@y)),c
		movlw	low(_Alarm_SW_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_Alarm_SW_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(05Fh)&0ffh
	
	call	_drawtext
	line	174
	
l10606:
	movlw	low(082h)
	movwf	((c:drawtext@y)),c
		movlw	low(_Fan_Set_Temp_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_Fan_Set_Temp_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(0F800h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F800h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(023h)&0ffh
	
	call	_drawtext
	line	175
	
l10608:
	movlw	low(082h)
	movwf	((c:drawtext@y)),c
		movlw	low(_Fan_SW_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_Fan_SW_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(0F800h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F800h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(05Fh)&0ffh
	
	call	_drawtext
	line	176
	
l10610:
	movlw	low(096h)
	movwf	((c:drawtext@y)),c
		movlw	low(_DC_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_DC_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(0Ah)&0ffh
	
	call	_drawtext
	line	177
	
l10612:
	movlw	low(096h)
	movwf	((c:drawtext@y)),c
		movlw	low(_RTC_ALARM_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_RTC_ALARM_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(023h)&0ffh
	
	call	_drawtext
	line	178
	
l10614:
	movlw	low(096h)
	movwf	((c:drawtext@y)),c
		movlw	low(_Volt_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_Volt_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	179
	
l10616:
	movlw	low(096h)
	movwf	((c:drawtext@y)),c
		movlw	low(_RPM_Txt)
	movwf	((c:drawtext@_text)),c
	movlw	high(_RPM_Txt)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(05Dh)&0ffh
	
	call	_drawtext
	line	180
	
l644:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Screen
	__end_of_Update_Screen:
	signat	_Update_Screen,90
	global	_Toggle_Fan_Monitor

;; *************** function _Toggle_Fan_Monitor *****************
;; Defined at:
;;		line 43 in file "Fan_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"Fan_Support.c"
	line	43
global __ptext14
__ptext14:
psect	text14
	file	"Fan_Support.c"
	line	43
	global	__size_of_Toggle_Fan_Monitor
	__size_of_Toggle_Fan_Monitor	equ	__end_of_Toggle_Fan_Monitor-_Toggle_Fan_Monitor
	
_Toggle_Fan_Monitor:
;incstack = 0
	opt	stack 28
	line	48
	
l7806:
	movlb	0	; () banked
	movf	((_FAN))&0ffh,w
	btfss	status,2
	goto	u5851
	goto	u5850
u5851:
	goto	l7810
u5850:
	line	50
	
l7808:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_FAN))&0ffh
	line	51
	goto	l36
	
l34:; BSR set to: 0

	line	53
	
l7810:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_FAN))&0ffh
	goto	l36
	line	54
	
l35:; BSR set to: 0

	line	56
	
l36:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Toggle_Fan_Monitor
	__end_of_Toggle_Fan_Monitor:
	signat	_Toggle_Fan_Monitor,88
	global	_Setup_Temp_Fan

;; *************** function _Setup_Temp_Fan *****************
;; Defined at:
;;		line 24 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  382[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_Decrease_Fan_Temp
;;		_Do_Beep_Bad
;;		_Do_Beep_Good
;;		_Do_Save_New_Fan_Temp
;;		_Exit_Setup_Fan_Temp
;;		_Increase_Fan_Temp
;;		_Initialize_Setup_Fan_Screen
;;		_Update_Setup_Fan_Screen
;;		_check_for_button_input
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"Setup_Fan_Temp.c"
	line	24
global __ptext15
__ptext15:
psect	text15
	file	"Setup_Fan_Temp.c"
	line	24
	global	__size_of_Setup_Temp_Fan
	__size_of_Setup_Temp_Fan	equ	__end_of_Setup_Temp_Fan-_Setup_Temp_Fan
	
_Setup_Temp_Fan:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	27
	
l10736:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_In_Fan_Temp_Setup))&0ffh
	line	28
	
l10738:; BSR set to: 0

	movff	(_fan_set_temp),(_setup_fan_set_temp)
	line	29
	
l10740:; BSR set to: 0

	call	_Initialize_Setup_Fan_Screen	;wreg free
	line	30
	
l10742:
	call	_Update_Setup_Fan_Screen	;wreg free
	line	32
	goto	l10774
	
l1032:
	line	34
	
l10744:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	(??_Setup_Temp_Fan+0+0)&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movwf	1+(??_Setup_Temp_Fan+0+0)&0ffh
	call	_check_for_button_input	;wreg free
	movlb	0	; () banked
	xorwf	(??_Setup_Temp_Fan+0+0)&0ffh,w
	iorwf	(??_Setup_Temp_Fan+0+1)&0ffh,w

	btfss	status,2
	goto	u9051
	goto	u9050
u9051:
	goto	l10774
u9050:
	line	36
	
l10746:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_nec_ok+1))&0ffh
	movlw	low(0)
	movwf	((_nec_ok))&0ffh
	line	37
	
l10748:; BSR set to: 0

		movlw	05h-1
	cpfsgt	((c:_found)),c
	goto	u9061
	goto	u9060

u9061:
	goto	l10772
u9060:
	
l10750:; BSR set to: 0

		movlw	09h-0
	cpfslt	((c:_found)),c
	goto	u9071
	goto	u9070

u9071:
	goto	l10772
u9070:
	line	39
	
l10752:; BSR set to: 0

	call	_Do_Beep_Good	;wreg free
	line	41
	
l10754:
		movlw	5
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9081
	goto	u9080

u9081:
	goto	l10758
u9080:
	
l10756:
	call	_Do_Save_New_Fan_Temp	;wreg free
	goto	l10758
	
l1035:
	line	42
	
l10758:
		movlw	6
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9091
	goto	u9090

u9091:
	goto	l10762
u9090:
	
l10760:
	call	_Decrease_Fan_Temp	;wreg free
	goto	l10762
	
l1036:
	line	43
	
l10762:
		movlw	7
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9101
	goto	u9100

u9101:
	goto	l10766
u9100:
	
l10764:
	call	_Increase_Fan_Temp	;wreg free
	goto	l10766
	
l1037:
	line	44
	
l10766:
		movlw	8
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9111
	goto	u9110

u9111:
	goto	l10770
u9110:
	
l10768:
	call	_Exit_Setup_Fan_Temp	;wreg free
	goto	l10770
	
l1038:
	line	46
	
l10770:
	setf	((c:_found)),c
	line	47
	goto	l10774
	line	48
	
l1034:
	line	50
	
l10772:
	call	_Do_Beep_Bad	;wreg free
	goto	l10774
	line	51
	
l1039:
	goto	l10774
	line	52
	
l1033:
	goto	l10774
	line	53
	
l1031:
	line	32
	
l10774:
	movlb	0	; () banked
		decf	((_In_Fan_Temp_Setup))&0ffh,w
	btfsc	status,2
	goto	u9121
	goto	u9120

u9121:
	goto	l10744
u9120:
	goto	l1041
	
l1040:; BSR set to: 0

	line	54
	
l1041:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Setup_Temp_Fan
	__end_of_Setup_Temp_Fan:
	signat	_Setup_Temp_Fan,90
	global	_Initialize_Setup_Fan_Screen

;; *************** function _Initialize_Setup_Fan_Screen *****************
;; Defined at:
;;		line 92 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_drawtext
;;		_fillScreen
;;		_strcpy
;; This function is called by:
;;		_Setup_Temp_Fan
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	line	92
global __ptext16
__ptext16:
psect	text16
	file	"Setup_Fan_Temp.c"
	line	92
	global	__size_of_Initialize_Setup_Fan_Screen
	__size_of_Initialize_Setup_Fan_Screen	equ	__end_of_Initialize_Setup_Fan_Screen-_Initialize_Setup_Fan_Screen
	
_Initialize_Setup_Fan_Screen:; BSR set to: 0

;incstack = 0
	opt	stack 20
	line	94
	
l10210:
	movlw	high(0)
	movwf	((c:fillScreen@color+1)),c
	movlw	low(0)
	movwf	((c:fillScreen@color)),c
	call	_fillScreen	;wreg free
	line	96
	
l10212:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_28)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_28)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	97
	
l10214:
	movlw	low(01h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	99
	
l10216:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_29)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_29)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	100
	
l10218:
	movlw	low(01Ah)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	102
	
l10220:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_30)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_30)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	103
	
l10222:
	movlw	low(03Ch)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	104
	
l1058:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Initialize_Setup_Fan_Screen
	__end_of_Initialize_Setup_Fan_Screen:
	signat	_Initialize_Setup_Fan_Screen,88
	global	_Increase_Fan_Temp

;; *************** function _Increase_Fan_Temp *****************
;; Defined at:
;;		line 56 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Fan_Screen
;; This function is called by:
;;		_Setup_Temp_Fan
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	line	56
global __ptext17
__ptext17:
psect	text17
	file	"Setup_Fan_Temp.c"
	line	56
	global	__size_of_Increase_Fan_Temp
	__size_of_Increase_Fan_Temp	equ	__end_of_Increase_Fan_Temp-_Increase_Fan_Temp
	
_Increase_Fan_Temp:
;incstack = 0
	opt	stack 19
	line	60
	
l10240:
	movlb	0	; () banked
	incf	((_setup_fan_set_temp))&0ffh
	line	61
	
l10242:; BSR set to: 0

		movlw	06Fh-1
	movlb	0	; () banked
	cpfsgt	((_setup_fan_set_temp))&0ffh
	goto	u8531
	goto	u8530

u8531:
	goto	l10246
u8530:
	
l10244:; BSR set to: 0

	movlw	low(06Eh)
	movlb	0	; () banked
	movwf	((_setup_fan_set_temp))&0ffh
	goto	l10246
	
l1044:; BSR set to: 0

	line	62
	
l10246:; BSR set to: 0

	call	_Update_Setup_Fan_Screen	;wreg free
	line	64
	
l1045:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Increase_Fan_Temp
	__end_of_Increase_Fan_Temp:
	signat	_Increase_Fan_Temp,88
	global	_Exit_Setup_Fan_Temp

;; *************** function _Exit_Setup_Fan_Temp *****************
;; Defined at:
;;		line 77 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Setup_Temp_Fan
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	77
global __ptext18
__ptext18:
psect	text18
	file	"Setup_Fan_Temp.c"
	line	77
	global	__size_of_Exit_Setup_Fan_Temp
	__size_of_Exit_Setup_Fan_Temp	equ	__end_of_Exit_Setup_Fan_Temp-_Exit_Setup_Fan_Temp
	
_Exit_Setup_Fan_Temp:
;incstack = 0
	opt	stack 19
	line	79
	
l10248:
	call	_DS3231_Read_Time	;wreg free
	line	80
	
l10250:
	call	_Initialize_Screen	;wreg free
	line	81
	
l10252:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Fan_Temp_Setup))&0ffh
	line	82
	
l1052:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Exit_Setup_Fan_Temp
	__end_of_Exit_Setup_Fan_Temp:
	signat	_Exit_Setup_Fan_Temp,88
	global	_Do_Save_New_Fan_Temp

;; *************** function _Do_Save_New_Fan_Temp *****************
;; Defined at:
;;		line 84 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Setup_Temp_Fan
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	84
global __ptext19
__ptext19:
psect	text19
	file	"Setup_Fan_Temp.c"
	line	84
	global	__size_of_Do_Save_New_Fan_Temp
	__size_of_Do_Save_New_Fan_Temp	equ	__end_of_Do_Save_New_Fan_Temp-_Do_Save_New_Fan_Temp
	
_Do_Save_New_Fan_Temp:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	86
	
l10224:
	movff	(_setup_fan_set_temp),(_fan_set_temp)
	line	87
	
l10226:
	call	_DS3231_Read_Time	;wreg free
	line	88
	
l10228:
	call	_Initialize_Screen	;wreg free
	line	89
	
l10230:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Fan_Temp_Setup))&0ffh
	line	90
	
l1055:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Save_New_Fan_Temp
	__end_of_Do_Save_New_Fan_Temp:
	signat	_Do_Save_New_Fan_Temp,88
	global	_Decrease_Fan_Temp

;; *************** function _Decrease_Fan_Temp *****************
;; Defined at:
;;		line 66 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Fan_Screen
;; This function is called by:
;;		_Setup_Temp_Fan
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	66
global __ptext20
__ptext20:
psect	text20
	file	"Setup_Fan_Temp.c"
	line	66
	global	__size_of_Decrease_Fan_Temp
	__size_of_Decrease_Fan_Temp	equ	__end_of_Decrease_Fan_Temp-_Decrease_Fan_Temp
	
_Decrease_Fan_Temp:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	70
	
l10232:
	movlb	0	; () banked
	decf	((_setup_fan_set_temp))&0ffh
	line	71
	
l10234:; BSR set to: 0

		movlw	032h-0
	movlb	0	; () banked
	cpfslt	((_setup_fan_set_temp))&0ffh
	goto	u8521
	goto	u8520

u8521:
	goto	l10238
u8520:
	
l10236:; BSR set to: 0

	movlw	low(032h)
	movlb	0	; () banked
	movwf	((_setup_fan_set_temp))&0ffh
	goto	l10238
	
l1048:; BSR set to: 0

	line	72
	
l10238:; BSR set to: 0

	call	_Update_Setup_Fan_Screen	;wreg free
	line	75
	
l1049:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Decrease_Fan_Temp
	__end_of_Decrease_Fan_Temp:
	signat	_Decrease_Fan_Temp,88
	global	_Update_Setup_Fan_Screen

;; *************** function _Update_Setup_Fan_Screen *****************
;; Defined at:
;;		line 106 in file "Setup_Fan_Temp.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dc_char3        1   75[COMRAM] unsigned char 
;;  dc_char2        1   74[COMRAM] unsigned char 
;;  dc_char1        1   73[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_drawtext
;; This function is called by:
;;		_Setup_Temp_Fan
;;		_Increase_Fan_Temp
;;		_Decrease_Fan_Temp
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	106
global __ptext21
__ptext21:
psect	text21
	file	"Setup_Fan_Temp.c"
	line	106
	global	__size_of_Update_Setup_Fan_Screen
	__size_of_Update_Setup_Fan_Screen	equ	__end_of_Update_Setup_Fan_Screen-_Update_Setup_Fan_Screen
	
_Update_Setup_Fan_Screen:
;incstack = 0
	opt	stack 20
	line	108
	
l10064:
	movff	(_setup_fan_set_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:Update_Setup_Fan_Screen@dc_char1)),c
	line	109
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(_setup_fan_set_temp),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(c:___awmod@dividend)
	movff	1+?___awdiv,(c:___awmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:Update_Setup_Fan_Screen@dc_char2)),c
	line	110
	movff	(_setup_fan_set_temp),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	movwf	((c:Update_Setup_Fan_Screen@dc_char3)),c
	line	111
	
l10066:
	movf	((c:Update_Setup_Fan_Screen@dc_char1)),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_setup_fan_set_text))&0ffh
	line	112
	
l10068:; BSR set to: 0

	movf	((c:Update_Setup_Fan_Screen@dc_char2)),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_setup_fan_set_text+01h))&0ffh
	line	113
	
l10070:; BSR set to: 0

	movf	((c:Update_Setup_Fan_Screen@dc_char3)),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_setup_fan_set_text+02h))&0ffh
	line	114
	
l10072:; BSR set to: 0

	movlw	low(04Ah)
	movwf	((c:drawtext@y)),c
		movlw	low(_setup_fan_set_text)
	movwf	((c:drawtext@_text)),c
	movlw	high(_setup_fan_set_text)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(0F800h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F800h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(028h)&0ffh
	
	call	_drawtext
	line	115
	
l1061:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Setup_Fan_Screen
	__end_of_Update_Setup_Fan_Screen:
	signat	_Update_Setup_Fan_Screen,88
	global	_Monitor_Fan

;; *************** function _Monitor_Fan *****************
;; Defined at:
;;		line 27 in file "Fan_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_do_update_pwm
;;		_get_duty_cycle
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"Fan_Support.c"
	line	27
global __ptext22
__ptext22:
psect	text22
	file	"Fan_Support.c"
	line	27
	global	__size_of_Monitor_Fan
	__size_of_Monitor_Fan	equ	__end_of_Monitor_Fan-_Monitor_Fan
	
_Monitor_Fan:
;incstack = 0
	opt	stack 25
	line	29
	
l10412:
	movff	(_DS1621_tempF),(c:get_duty_cycle@temp)
	movff	(_DS1621_tempF+1),(c:get_duty_cycle@temp+1)
	movff	(_fan_set_temp),(c:get_duty_cycle@set_temp)
	clrf	((c:get_duty_cycle@set_temp+1)),c
	call	_get_duty_cycle	;wreg free
	movf	(0+?_get_duty_cycle),c,w
	movwf	((c:_duty_cycle)),c
	line	30
	movf	((c:_duty_cycle)),c,w
	
	call	_do_update_pwm
	line	33
	
l10414:
	movlb	0	; () banked
		decf	((_FAN))&0ffh,w
	btfss	status,2
	goto	u8711
	goto	u8710

u8711:
	goto	l28
u8710:
	line	35
	
l10416:; BSR set to: 0

	bsf	((c:3968)),c,5	;volatile
	line	36
	goto	l10418
	line	37
	
l28:; BSR set to: 0

	bcf	((c:3968)),c,5	;volatile
	goto	l10418
	
l29:; BSR set to: 0

	line	39
	
l10418:; BSR set to: 0

	movf	((c:_duty_cycle)),c,w
	btfss	status,2
	goto	u8721
	goto	u8720
u8721:
	goto	l31
u8720:
	line	40
	
l10420:; BSR set to: 0

	bcf	((c:3968)),c,5	;volatile
	goto	l31
	
l30:; BSR set to: 0

	line	41
	
l31:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Monitor_Fan
	__end_of_Monitor_Fan:
	signat	_Monitor_Fan,88
	global	_get_duty_cycle

;; *************** function _get_duty_cycle *****************
;; Defined at:
;;		line 11 in file "Fan_Support.c"
;; Parameters:    Size  Location     Type
;;  temp            2   16[COMRAM] int 
;;  set_temp        2   18[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   16[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Monitor_Fan
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	11
global __ptext23
__ptext23:
psect	text23
	file	"Fan_Support.c"
	line	11
	global	__size_of_get_duty_cycle
	__size_of_get_duty_cycle	equ	__end_of_get_duty_cycle-_get_duty_cycle
	
_get_duty_cycle:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	16
	
l7334:
		movf	((c:get_duty_cycle@temp)),c,w
	subwf	((c:get_duty_cycle@set_temp)),c,w
	movf	((c:get_duty_cycle@set_temp+1)),c,w
	xorlw	80h
	movwf	(??_get_duty_cycle+0+0)&0ffh,c
	movf	((c:get_duty_cycle@temp+1)),c,w
	xorlw	80h
	subwfb	(??_get_duty_cycle+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u5461
	goto	u5460

u5461:
	goto	l7338
u5460:
	line	18
	
l7336:
	movlw	low(0)
	movwf	((c:_duty_cycle)),c
	line	19
	goto	l7340
	line	20
	
l23:
	line	22
	
l7338:
	movf	((c:get_duty_cycle@temp)),c,w
	sublw	0
	addwf	((c:get_duty_cycle@set_temp)),c,w
	movwf	(??_get_duty_cycle+0+0)&0ffh,c
	bcf	status,0
	rlcf	((??_get_duty_cycle+0+0)),c,w
	movwf	((c:_duty_cycle)),c
	goto	l7340
	line	23
	
l24:
	line	24
	
l7340:
	movff	(c:_duty_cycle),(c:?_get_duty_cycle)
	clrf	((c:?_get_duty_cycle+1)),c
	goto	l25
	
l7342:
	line	25
	
l25:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_get_duty_cycle
	__end_of_get_duty_cycle:
	signat	_get_duty_cycle,8314
	global	_Do_Setup_Time

;; *************** function _Do_Setup_Time *****************
;; Defined at:
;;		line 33 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  378[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_DS3231_Read_Time
;;		_Decrease_Time
;;		_Do_Beep_Bad
;;		_Do_Beep_Good
;;		_Do_Save_New_Time
;;		_Exit_Time_Setup
;;		_Go_Next_Field
;;		_Go_Prev_Field
;;		_Increase_Time
;;		_Initialize_Setup_Time_Screen
;;		_Update_Setup_Time_Screen
;;		_bcd_2_dec
;;		_check_for_button_input
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"Setup_Time.c"
	line	33
global __ptext24
__ptext24:
psect	text24
	file	"Setup_Time.c"
	line	33
	global	__size_of_Do_Setup_Time
	__size_of_Do_Setup_Time	equ	__end_of_Do_Setup_Time-_Do_Setup_Time
	
_Do_Setup_Time:
;incstack = 0
	opt	stack 19
	line	36
	
l10618:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Select_Field))&0ffh
	line	38
	
l10620:; BSR set to: 0

	call	_DS3231_Read_Time	;wreg free
	line	39
	
l10622:
	movf	((c:_second)),c,w
	
	call	_bcd_2_dec
	movlb	0	; () banked
	movwf	((_setup_second))&0ffh
	line	40
	
l10624:; BSR set to: 0

	movf	((c:_minute)),c,w
	
	call	_bcd_2_dec
	movlb	0	; () banked
	movwf	((_setup_minute))&0ffh
	line	41
	
l10626:; BSR set to: 0

	movf	((c:_hour)),c,w
	
	call	_bcd_2_dec
	movlb	0	; () banked
	movwf	((_setup_hour))&0ffh
	line	42
	
l10628:; BSR set to: 0

	movf	((c:_day)),c,w
	
	call	_bcd_2_dec
	movwf	((c:_setup_day)),c
	line	43
	
l10630:
	movf	((c:_month)),c,w
	
	call	_bcd_2_dec
	movwf	((c:_setup_month)),c
	line	44
	
l10632:
	movlb	0	; () banked
	movf	((_year))&0ffh,w
	
	call	_bcd_2_dec
	movlb	0	; () banked
	movwf	((_setup_year))&0ffh
	line	46
	
l10634:; BSR set to: 0

	call	_Initialize_Setup_Time_Screen	;wreg free
	line	47
	
l10636:
	call	_Update_Setup_Time_Screen	;wreg free
	line	48
	
l10638:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_In_Time_Setup))&0ffh
	line	50
	goto	l10676
	
l1143:; BSR set to: 0

	line	52
	
l10640:; BSR set to: 0

	call	_check_for_button_input	;wreg free
	decf	wreg
	btfss	status,2
	goto	u8851
	goto	u8850
u8851:
	goto	l10676
u8850:
	line	55
	
l10642:
		movlw	03h-1
	cpfsgt	((c:_found)),c
	goto	u8861
	goto	u8860

u8861:
	goto	l10674
u8860:
	
l10644:
		movlw	09h-0
	cpfslt	((c:_found)),c
	goto	u8871
	goto	u8870

u8871:
	goto	l10674
u8870:
	line	57
	
l10646:
	call	_Do_Beep_Good	;wreg free
	line	58
	
l10648:
		movlw	3
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8881
	goto	u8880

u8881:
	goto	l10652
u8880:
	
l10650:
	call	_Go_Prev_Field	;wreg free
	goto	l10652
	
l1146:
	line	59
	
l10652:
		movlw	4
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8891
	goto	u8890

u8891:
	goto	l10656
u8890:
	
l10654:
	call	_Go_Next_Field	;wreg free
	goto	l10656
	
l1147:
	line	60
	
l10656:
		movlw	5
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8901
	goto	u8900

u8901:
	goto	l10660
u8900:
	
l10658:
	call	_Do_Save_New_Time	;wreg free
	goto	l10660
	
l1148:
	line	61
	
l10660:
		movlw	6
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8911
	goto	u8910

u8911:
	goto	l10664
u8910:
	
l10662:
	call	_Decrease_Time	;wreg free
	goto	l10664
	
l1149:
	line	62
	
l10664:
		movlw	7
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8921
	goto	u8920

u8921:
	goto	l10668
u8920:
	
l10666:
	call	_Increase_Time	;wreg free
	goto	l10668
	
l1150:
	line	63
	
l10668:
		movlw	8
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8931
	goto	u8930

u8931:
	goto	l10672
u8930:
	
l10670:
	call	_Exit_Time_Setup	;wreg free
	goto	l10672
	
l1151:
	line	69
	
l10672:
	setf	((c:_found)),c
	line	70
	goto	l10676
	line	71
	
l1145:
	line	73
	
l10674:
	call	_Do_Beep_Bad	;wreg free
	goto	l10676
	line	74
	
l1152:
	goto	l10676
	line	75
	
l1144:
	goto	l10676
	line	76
	
l1142:
	line	50
	
l10676:
	movlb	0	; () banked
		decf	((_In_Time_Setup))&0ffh,w
	btfsc	status,2
	goto	u8941
	goto	u8940

u8941:
	goto	l10640
u8940:
	goto	l1154
	
l1153:; BSR set to: 0

	line	77
	
l1154:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Setup_Time
	__end_of_Do_Setup_Time:
	signat	_Do_Setup_Time,90
	global	_Initialize_Setup_Time_Screen

;; *************** function _Initialize_Setup_Time_Screen *****************
;; Defined at:
;;		line 239 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_drawtext
;;		_fillRect
;;		_fillScreen
;;		_strcpy
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	239
global __ptext25
__ptext25:
psect	text25
	file	"Setup_Time.c"
	line	239
	global	__size_of_Initialize_Setup_Time_Screen
	__size_of_Initialize_Setup_Time_Screen	equ	__end_of_Initialize_Setup_Time_Screen-_Initialize_Setup_Time_Screen
	
_Initialize_Setup_Time_Screen:; BSR set to: 0

;incstack = 0
	opt	stack 20
	line	241
	
l10254:
	movlw	high(0)
	movwf	((c:fillScreen@color+1)),c
	movlw	low(0)
	movwf	((c:fillScreen@color)),c
	call	_fillScreen	;wreg free
	line	243
	
l10256:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_31)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_31)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	244
	
l10258:
	movlw	low(01h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	247
	
l10260:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_32)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_32)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	248
	
l10262:
	movlw	low(010h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0F81Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F81Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(04h)&0ffh
	
	call	_drawtext
	line	250
	
l10264:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_33)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_33)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	251
	
l10266:
	movlw	low(028h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(01Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(01Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	253
	
l10268:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	254
	
l10270:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_34)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_34)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	255
	movlw	low(047h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0F800h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F800h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	256
	
l1247:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Initialize_Setup_Time_Screen
	__end_of_Initialize_Setup_Time_Screen:
	signat	_Initialize_Setup_Time_Screen,88
	global	_Increase_Time

;; *************** function _Increase_Time *****************
;; Defined at:
;;		line 79 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Time_Screen
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	79
global __ptext26
__ptext26:
psect	text26
	file	"Setup_Time.c"
	line	79
	global	__size_of_Increase_Time
	__size_of_Increase_Time	equ	__end_of_Increase_Time-_Increase_Time
	
_Increase_Time:
;incstack = 0
	opt	stack 19
	line	81
	
l10336:
	goto	l10390
	line	83
	
l1158:
	line	84
	
l10338:
	movlb	0	; () banked
	incf	((_setup_hour))&0ffh
	line	85
	
l10340:; BSR set to: 0

		movlw	24
	movlb	0	; () banked
	xorwf	((_setup_hour))&0ffh,w
	btfss	status,2
	goto	u8621
	goto	u8620

u8621:
	goto	l10392
u8620:
	
l10342:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_hour))&0ffh
	goto	l10392
	
l1159:; BSR set to: 0

	line	86
	goto	l10392
	line	88
	
l1161:; BSR set to: 0

	line	89
	
l10344:; BSR set to: 0

	movlb	0	; () banked
	incf	((_setup_minute))&0ffh
	line	90
	
l10346:; BSR set to: 0

		movlw	60
	movlb	0	; () banked
	xorwf	((_setup_minute))&0ffh,w
	btfss	status,2
	goto	u8631
	goto	u8630

u8631:
	goto	l10392
u8630:
	
l10348:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_minute))&0ffh
	goto	l10392
	
l1162:; BSR set to: 0

	line	91
	goto	l10392
	line	94
	
l1163:; BSR set to: 0

	line	95
	
l10350:; BSR set to: 0

	movlb	0	; () banked
	incf	((_setup_second))&0ffh
	line	96
	
l10352:; BSR set to: 0

		movlw	60
	movlb	0	; () banked
	xorwf	((_setup_second))&0ffh,w
	btfss	status,2
	goto	u8641
	goto	u8640

u8641:
	goto	l10392
u8640:
	
l10354:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_second))&0ffh
	goto	l10392
	
l1164:; BSR set to: 0

	line	97
	goto	l10392
	line	100
	
l1165:; BSR set to: 0

	line	101
	
l10356:; BSR set to: 0

	incf	((c:_setup_month)),c
	line	102
	
l10358:; BSR set to: 0

		movlw	13
	xorwf	((c:_setup_month)),c,w
	btfss	status,2
	goto	u8651
	goto	u8650

u8651:
	goto	l10392
u8650:
	
l10360:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:_setup_month)),c
	goto	l10392
	
l1166:; BSR set to: 0

	line	103
	goto	l10392
	line	105
	
l1167:; BSR set to: 0

	line	106
	
l10362:; BSR set to: 0

	incf	((c:_setup_day)),c
	line	108
	goto	l10380
	line	110
	
l1169:; BSR set to: 0

	goto	l10364
	line	111
	
l1170:; BSR set to: 0

	goto	l10364
	line	112
	
l1171:; BSR set to: 0

	goto	l10364
	line	113
	
l1172:; BSR set to: 0

	goto	l10364
	line	114
	
l1173:; BSR set to: 0

	goto	l10364
	line	115
	
l1174:; BSR set to: 0

	goto	l10364
	line	116
	
l1175:; BSR set to: 0

	line	117
	
l10364:
		movlw	32
	xorwf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8661
	goto	u8660

u8661:
	goto	l10392
u8660:
	
l10366:
	movlw	low(01h)
	movwf	((c:_setup_day)),c
	goto	l10392
	
l1176:
	line	118
	goto	l10392
	line	119
	
l1178:
	line	120
	
l10368:
		movlw	29
	xorwf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8671
	goto	u8670

u8671:
	goto	l10392
u8670:
	
l10370:
	movlw	low(01h)
	movwf	((c:_setup_day)),c
	goto	l10392
	
l1179:
	line	121
	goto	l10392
	line	122
	
l1180:
	goto	l10372
	line	123
	
l1181:
	goto	l10372
	line	124
	
l1182:
	goto	l10372
	line	125
	
l1183:
	line	126
	
l10372:
		movlw	31
	xorwf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8681
	goto	u8680

u8681:
	goto	l10392
u8680:
	
l10374:
	movlw	low(01h)
	movwf	((c:_setup_day)),c
	goto	l10392
	
l1184:
	line	127
	goto	l10392
	line	129
	
l1185:
	line	130
	
l10376:
	movlw	low(0)
	movwf	((c:_setup_day)),c
	line	131
	goto	l10392
	line	132
	
l10378:
	goto	l10392
	line	108
	
l1168:
	
l10380:
	movf	((c:_setup_month)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l10364
	xorlw	2^1	; case 2
	skipnz
	goto	l10368
	xorlw	3^2	; case 3
	skipnz
	goto	l10364
	xorlw	4^3	; case 4
	skipnz
	goto	l10372
	xorlw	5^4	; case 5
	skipnz
	goto	l10364
	xorlw	6^5	; case 6
	skipnz
	goto	l10372
	xorlw	7^6	; case 7
	skipnz
	goto	l10364
	xorlw	8^7	; case 8
	skipnz
	goto	l10364
	xorlw	9^8	; case 9
	skipnz
	goto	l10372
	xorlw	10^9	; case 10
	skipnz
	goto	l10364
	xorlw	11^10	; case 11
	skipnz
	goto	l10372
	xorlw	12^11	; case 12
	skipnz
	goto	l10364
	goto	l10376

	line	132
	
l1177:
	line	133
	goto	l10392
	line	136
	
l1186:
	line	137
	
l10382:
	movlb	0	; () banked
	incf	((_setup_year))&0ffh
	line	138
	
l10384:; BSR set to: 0

		movlw	100
	movlb	0	; () banked
	xorwf	((_setup_year))&0ffh,w
	btfss	status,2
	goto	u8691
	goto	u8690

u8691:
	goto	l10392
u8690:
	
l10386:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_year))&0ffh
	goto	l10392
	
l1187:; BSR set to: 0

	line	139
	goto	l10392
	line	142
	
l1188:; BSR set to: 0

	line	143
	goto	l10392
	line	144
	
l10388:; BSR set to: 0

	goto	l10392
	line	81
	
l1157:; BSR set to: 0

	
l10390:
	movlb	0	; () banked
	movf	((_Select_Field))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l10338
	xorlw	1^0	; case 1
	skipnz
	goto	l10344
	xorlw	2^1	; case 2
	skipnz
	goto	l10350
	xorlw	3^2	; case 3
	skipnz
	goto	l10356
	xorlw	4^3	; case 4
	skipnz
	goto	l10362
	xorlw	5^4	; case 5
	skipnz
	goto	l10382
	goto	l10392

	line	144
	
l1160:; BSR set to: 0

	line	145
	
l10392:
	call	_Update_Setup_Time_Screen	;wreg free
	line	146
	
l1189:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Increase_Time
	__end_of_Increase_Time:
	signat	_Increase_Time,88
	global	_Go_Prev_Field

;; *************** function _Go_Prev_Field *****************
;; Defined at:
;;		line 218 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Update_Setup_Screen_Cursor_Backward
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	218
global __ptext27
__ptext27:
psect	text27
	file	"Setup_Time.c"
	line	218
	global	__size_of_Go_Prev_Field
	__size_of_Go_Prev_Field	equ	__end_of_Go_Prev_Field-_Go_Prev_Field
	
_Go_Prev_Field:
;incstack = 0
	opt	stack 21
	line	220
	
l7632:
	movlb	0	; () banked
	movf	((_Select_Field))&0ffh,w
	btfss	status,2
	goto	u5631
	goto	u5630
u5631:
	goto	l7636
u5630:
	
l7634:; BSR set to: 0

	movlw	low(05h)
	movlb	0	; () banked
	movwf	((_Select_Field))&0ffh
	goto	l7638
	line	221
	
l1236:; BSR set to: 0

	
l7636:; BSR set to: 0

	movlb	0	; () banked
	decf	((_Select_Field))&0ffh
	goto	l7638
	
l1237:; BSR set to: 0

	line	222
	
l7638:; BSR set to: 0

	movlb	0	; () banked
	movf	((_Select_Field))&0ffh,w
	
	call	_Update_Setup_Screen_Cursor_Backward
	line	223
	
l1238:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Go_Prev_Field
	__end_of_Go_Prev_Field:
	signat	_Go_Prev_Field,88
	global	_Go_Next_Field

;; *************** function _Go_Next_Field *****************
;; Defined at:
;;		line 209 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Update_Setup_Screen_Cursor_Forward
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	209
global __ptext28
__ptext28:
psect	text28
	file	"Setup_Time.c"
	line	209
	global	__size_of_Go_Next_Field
	__size_of_Go_Next_Field	equ	__end_of_Go_Next_Field-_Go_Next_Field
	
_Go_Next_Field:
;incstack = 0
	opt	stack 21
	line	212
	
l7640:
	movlb	0	; () banked
	incf	((_Select_Field))&0ffh
	line	213
	
l7642:; BSR set to: 0

		movlw	6
	movlb	0	; () banked
	xorwf	((_Select_Field))&0ffh,w
	btfss	status,2
	goto	u5641
	goto	u5640

u5641:
	goto	l7646
u5640:
	
l7644:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Select_Field))&0ffh
	goto	l7646
	
l1232:; BSR set to: 0

	line	214
	
l7646:; BSR set to: 0

	movlb	0	; () banked
	movf	((_Select_Field))&0ffh,w
	
	call	_Update_Setup_Screen_Cursor_Forward
	line	216
	
l1233:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Go_Next_Field
	__end_of_Go_Next_Field:
	signat	_Go_Next_Field,88
	global	_Exit_Time_Setup

;; *************** function _Exit_Time_Setup *****************
;; Defined at:
;;		line 233 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	233
global __ptext29
__ptext29:
psect	text29
	file	"Setup_Time.c"
	line	233
	global	__size_of_Exit_Time_Setup
	__size_of_Exit_Time_Setup	equ	__end_of_Exit_Time_Setup-_Exit_Time_Setup
	
_Exit_Time_Setup:
;incstack = 0
	opt	stack 19
	line	235
	
l10394:
	call	_DS3231_Read_Time	;wreg free
	line	236
	
l10396:
	call	_Initialize_Screen	;wreg free
	line	237
	
l10398:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Time_Setup))&0ffh
	line	238
	
l1244:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Exit_Time_Setup
	__end_of_Exit_Time_Setup:
	signat	_Exit_Time_Setup,88
	global	_Do_Save_New_Time

;; *************** function _Do_Save_New_Time *****************
;; Defined at:
;;		line 225 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Time
;;		_DS3231_Write_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	225
global __ptext30
__ptext30:
psect	text30
	file	"Setup_Time.c"
	line	225
	global	__size_of_Do_Save_New_Time
	__size_of_Do_Save_New_Time	equ	__end_of_Do_Save_New_Time-_Do_Save_New_Time
	
_Do_Save_New_Time:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	227
	
l10272:
	call	_DS3231_Write_Time	;wreg free
	line	228
	call	_DS3231_Read_Time	;wreg free
	line	229
	
l10274:
	call	_Initialize_Screen	;wreg free
	line	230
	
l10276:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Time_Setup))&0ffh
	line	231
	
l1241:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Save_New_Time
	__end_of_Do_Save_New_Time:
	signat	_Do_Save_New_Time,88
	global	_DS3231_Write_Time

;; *************** function _DS3231_Write_Time *****************
;; Defined at:
;;		line 90 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Address         1   74[COMRAM] unsigned char 
;;  Device          1   73[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;;		_dec_2_bcd
;; This function is called by:
;;		_Do_Save_New_Time
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	90
global __ptext31
__ptext31:
psect	text31
	file	"I2C_Support.c"
	line	90
	global	__size_of_DS3231_Write_Time
	__size_of_DS3231_Write_Time	equ	__end_of_DS3231_Write_Time-_DS3231_Write_Time
	
_DS3231_Write_Time:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	92
	
l9940:
	movlw	low(068h)
	movwf	((c:DS3231_Write_Time@Device)),c
	line	93
	movlw	low(0)
	movwf	((c:DS3231_Write_Time@Address)),c
	line	94
	
l9942:
	movlb	0	; () banked
	movf	((_setup_second))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_second)),c
	line	95
	
l9944:
	movlb	0	; () banked
	movf	((_setup_minute))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_minute)),c
	line	96
	
l9946:
	movlb	0	; () banked
	movf	((_setup_hour))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_hour)),c
	line	97
	
l9948:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_dow))&0ffh
	line	98
	movf	((c:_setup_day)),c,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_day)),c
	line	99
	movf	((c:_setup_month)),c,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_month)),c
	line	100
	movlb	0	; () banked
	movf	((_setup_year))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movlb	0	; () banked
	movwf	((_year))&0ffh
	line	101
	
l9950:; BSR set to: 0

	call	_I2C_Start	;wreg free
	line	102
	
l9952:
	movf	((c:DS3231_Write_Time@Device)),c,w
	addwf	((c:DS3231_Write_Time@Device)),c,w
	
	call	_I2C_Write
	line	103
	
l9954:
	movf	((c:DS3231_Write_Time@Address)),c,w
	
	call	_I2C_Write
	line	104
	
l9956:
	movf	((c:_second)),c,w
	
	call	_I2C_Write
	line	105
	
l9958:
	movf	((c:_minute)),c,w
	
	call	_I2C_Write
	line	106
	
l9960:
	movf	((c:_hour)),c,w
	
	call	_I2C_Write
	line	107
	
l9962:
	movlb	0	; () banked
	movf	((_dow))&0ffh,w
	
	call	_I2C_Write
	line	108
	
l9964:
	movf	((c:_day)),c,w
	
	call	_I2C_Write
	line	109
	
l9966:
	movf	((c:_month)),c,w
	
	call	_I2C_Write
	line	110
	
l9968:
	movlb	0	; () banked
	movf	((_year))&0ffh,w
	
	call	_I2C_Write
	line	111
	call	_I2C_Stop	;wreg free
	line	112
	
l214:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Write_Time
	__end_of_DS3231_Write_Time:
	signat	_DS3231_Write_Time,88
	global	_Decrease_Time

;; *************** function _Decrease_Time *****************
;; Defined at:
;;		line 148 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Time_Screen
;; This function is called by:
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"Setup_Time.c"
	line	148
global __ptext32
__ptext32:
psect	text32
	file	"Setup_Time.c"
	line	148
	global	__size_of_Decrease_Time
	__size_of_Decrease_Time	equ	__end_of_Decrease_Time-_Decrease_Time
	
_Decrease_Time:
;incstack = 0
	opt	stack 19
	line	150
	
l10278:
	goto	l10332
	line	152
	
l1193:
	line	153
	
l10280:
	movlb	0	; () banked
	movf	((_setup_hour))&0ffh,w
	btfss	status,2
	goto	u8541
	goto	u8540
u8541:
	goto	l10284
u8540:
	
l10282:; BSR set to: 0

	movlw	low(017h)
	movlb	0	; () banked
	movwf	((_setup_hour))&0ffh
	goto	l10334
	line	154
	
l1194:; BSR set to: 0

	
l10284:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_hour))&0ffh
	goto	l10334
	
l1195:; BSR set to: 0

	line	155
	goto	l10334
	line	156
	
l1197:; BSR set to: 0

	line	157
	
l10286:; BSR set to: 0

	movlb	0	; () banked
	movf	((_setup_minute))&0ffh,w
	btfss	status,2
	goto	u8551
	goto	u8550
u8551:
	goto	l10290
u8550:
	
l10288:; BSR set to: 0

	movlw	low(03Bh)
	movlb	0	; () banked
	movwf	((_setup_minute))&0ffh
	goto	l10334
	line	158
	
l1198:; BSR set to: 0

	
l10290:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_minute))&0ffh
	goto	l10334
	
l1199:; BSR set to: 0

	line	159
	goto	l10334
	line	160
	
l1200:; BSR set to: 0

	line	161
	
l10292:; BSR set to: 0

	movlb	0	; () banked
	movf	((_setup_second))&0ffh,w
	btfss	status,2
	goto	u8561
	goto	u8560
u8561:
	goto	l10296
u8560:
	
l10294:; BSR set to: 0

	movlw	low(03Bh)
	movlb	0	; () banked
	movwf	((_setup_second))&0ffh
	goto	l10334
	line	162
	
l1201:; BSR set to: 0

	
l10296:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_second))&0ffh
	goto	l10334
	
l1202:; BSR set to: 0

	line	163
	goto	l10334
	line	164
	
l1203:; BSR set to: 0

	line	165
	
l10298:; BSR set to: 0

		decf	((c:_setup_month)),c,w
	btfss	status,2
	goto	u8571
	goto	u8570

u8571:
	goto	l10302
u8570:
	
l10300:; BSR set to: 0

	movlw	low(0Ch)
	movwf	((c:_setup_month)),c
	goto	l10334
	line	166
	
l1204:; BSR set to: 0

	
l10302:; BSR set to: 0

	decf	((c:_setup_month)),c
	goto	l10334
	
l1205:; BSR set to: 0

	line	167
	goto	l10334
	line	168
	
l1206:; BSR set to: 0

	line	170
	
l10304:; BSR set to: 0

	decf	((c:_setup_day)),c
	line	172
	goto	l10322
	line	174
	
l1208:; BSR set to: 0

	goto	l10306
	line	175
	
l1209:; BSR set to: 0

	goto	l10306
	line	176
	
l1210:; BSR set to: 0

	goto	l10306
	line	177
	
l1211:; BSR set to: 0

	goto	l10306
	line	178
	
l1212:; BSR set to: 0

	goto	l10306
	line	179
	
l1213:; BSR set to: 0

	goto	l10306
	line	180
	
l1214:; BSR set to: 0

	line	181
	
l10306:
	movf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8581
	goto	u8580
u8581:
	goto	l10334
u8580:
	
l10308:
	movlw	low(01Fh)
	movwf	((c:_setup_day)),c
	goto	l10334
	
l1215:
	line	182
	goto	l10334
	line	183
	
l1217:
	line	184
	
l10310:
	movf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8591
	goto	u8590
u8591:
	goto	l10334
u8590:
	
l10312:
	movlw	low(01Ch)
	movwf	((c:_setup_day)),c
	goto	l10334
	
l1218:
	line	185
	goto	l10334
	line	186
	
l1219:
	goto	l10314
	line	187
	
l1220:
	goto	l10314
	line	188
	
l1221:
	goto	l10314
	line	189
	
l1222:
	line	190
	
l10314:
	movf	((c:_setup_day)),c,w
	btfss	status,2
	goto	u8601
	goto	u8600
u8601:
	goto	l10334
u8600:
	
l10316:
	movlw	low(01Eh)
	movwf	((c:_setup_day)),c
	goto	l10334
	
l1223:
	line	191
	goto	l10334
	line	193
	
l1224:
	line	194
	
l10318:
	movlw	low(0)
	movwf	((c:_setup_day)),c
	line	195
	goto	l10334
	line	196
	
l10320:
	goto	l10334
	line	172
	
l1207:
	
l10322:
	movf	((c:_setup_month)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 1 to 12
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l10306
	xorlw	2^1	; case 2
	skipnz
	goto	l10310
	xorlw	3^2	; case 3
	skipnz
	goto	l10306
	xorlw	4^3	; case 4
	skipnz
	goto	l10314
	xorlw	5^4	; case 5
	skipnz
	goto	l10306
	xorlw	6^5	; case 6
	skipnz
	goto	l10314
	xorlw	7^6	; case 7
	skipnz
	goto	l10306
	xorlw	8^7	; case 8
	skipnz
	goto	l10306
	xorlw	9^8	; case 9
	skipnz
	goto	l10314
	xorlw	10^9	; case 10
	skipnz
	goto	l10306
	xorlw	11^10	; case 11
	skipnz
	goto	l10314
	xorlw	12^11	; case 12
	skipnz
	goto	l10306
	goto	l10318

	line	196
	
l1216:
	line	197
	goto	l10334
	line	199
	
l1225:
	line	200
	
l10324:
	movlb	0	; () banked
	movf	((_setup_year))&0ffh,w
	btfss	status,2
	goto	u8611
	goto	u8610
u8611:
	goto	l10328
u8610:
	
l10326:; BSR set to: 0

	movlw	low(063h)
	movlb	0	; () banked
	movwf	((_setup_year))&0ffh
	goto	l10334
	line	201
	
l1226:; BSR set to: 0

	
l10328:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_year))&0ffh
	goto	l10334
	
l1227:; BSR set to: 0

	line	202
	goto	l10334
	line	203
	
l1228:; BSR set to: 0

	line	204
	goto	l10334
	line	205
	
l10330:; BSR set to: 0

	goto	l10334
	line	150
	
l1192:; BSR set to: 0

	
l10332:
	movlb	0	; () banked
	movf	((_Select_Field))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l10280
	xorlw	1^0	; case 1
	skipnz
	goto	l10286
	xorlw	2^1	; case 2
	skipnz
	goto	l10292
	xorlw	3^2	; case 3
	skipnz
	goto	l10298
	xorlw	4^3	; case 4
	skipnz
	goto	l10304
	xorlw	5^4	; case 5
	skipnz
	goto	l10324
	goto	l10334

	line	205
	
l1196:; BSR set to: 0

	line	206
	
l10334:
	call	_Update_Setup_Time_Screen	;wreg free
	line	207
	
l1229:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Decrease_Time
	__end_of_Decrease_Time:
	signat	_Decrease_Time,88
	global	_Update_Setup_Time_Screen

;; *************** function _Update_Setup_Time_Screen *****************
;; Defined at:
;;		line 258 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_drawtext
;; This function is called by:
;;		_Do_Setup_Time
;;		_Increase_Time
;;		_Decrease_Time
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	258
global __ptext33
__ptext33:
psect	text33
	file	"Setup_Time.c"
	line	258
	global	__size_of_Update_Setup_Time_Screen
	__size_of_Update_Setup_Time_Screen	equ	__end_of_Update_Setup_Time_Screen-_Update_Setup_Time_Screen
	
_Update_Setup_Time_Screen:
;incstack = 0
	opt	stack 20
	line	260
	
l10074:
	movff	(_setup_hour),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_setup_time))&0ffh
	line	261
	movff	(_setup_hour),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_time+01h))&0ffh
	line	262
	movff	(_setup_minute),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_time+03h))&0ffh
	line	263
	movff	(_setup_minute),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_time+04h))&0ffh
	line	264
	movff	(_setup_second),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_time+06h))&0ffh
	line	265
	movff	(_setup_second),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_time+07h))&0ffh
	line	267
	movff	(c:_setup_month),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_setup_date))&0ffh
	line	268
	movff	(c:_setup_month),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_date+01h))&0ffh
	line	269
	movff	(c:_setup_day),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_date+03h))&0ffh
	line	270
	movff	(c:_setup_day),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_date+04h))&0ffh
	line	271
	movff	(_setup_year),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_date+06h))&0ffh
	line	272
	movff	(_setup_year),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_date+07h))&0ffh
	line	274
	
l10076:; BSR set to: 1

	movlw	low(034h)
	movwf	((c:drawtext@y)),c
		movlw	low(_setup_time)
	movwf	((c:drawtext@_text)),c
	movlw	high(_setup_time)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	275
	
l10078:
	movlw	low(052h)
	movwf	((c:drawtext@y)),c
		movlw	low(_setup_date)
	movwf	((c:drawtext@_text)),c
	movlw	high(_setup_date)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07E0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(07E0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	276
	
l1250:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Setup_Time_Screen
	__end_of_Update_Setup_Time_Screen:
	signat	_Update_Setup_Time_Screen,88
	global	_Do_Setup_Alarm_Time

;; *************** function _Do_Setup_Alarm_Time *****************
;; Defined at:
;;		line 24 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  380[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   11
;; This function calls:
;;		_DS3231_Read_Alarm_Time
;;		_Decrease_Alarm_Time
;;		_Do_Beep_Bad
;;		_Do_Beep_Good
;;		_Do_Save_New_Alarm_Time
;;		_Exit_Setup_Alarm_Time
;;		_Go_Next_Alarm_Field
;;		_Go_Prev_Alarm_Field
;;		_Increase_Alarm_Time
;;		_Initialize_Setup_Alarm_Time_Screen
;;		_Update_Setup_Alarm_Time_Screen
;;		_bcd_2_dec
;;		_check_for_button_input
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"Setup_Alarm_Time.c"
	line	24
global __ptext34
__ptext34:
psect	text34
	file	"Setup_Alarm_Time.c"
	line	24
	global	__size_of_Do_Setup_Alarm_Time
	__size_of_Do_Setup_Alarm_Time	equ	__end_of_Do_Setup_Alarm_Time-_Do_Setup_Alarm_Time
	
_Do_Setup_Alarm_Time:
;incstack = 0
	opt	stack 19
	line	26
	
l10678:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Select_Alarm_Field))&0ffh
	line	27
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_In_Alarm_Time_Setup))&0ffh
	line	28
	
l10680:; BSR set to: 0

	call	_DS3231_Read_Alarm_Time	;wreg free
	line	29
	
l10682:
	movf	((c:_alarm_second)),c,w
	
	call	_bcd_2_dec
	movwf	((c:_alarm_second)),c
	line	30
	
l10684:
	movf	((c:_alarm_minute)),c,w
	
	call	_bcd_2_dec
	movwf	((c:_alarm_minute)),c
	line	31
	
l10686:
	movf	((c:_alarm_hour)),c,w
	
	call	_bcd_2_dec
	movwf	((c:_alarm_hour)),c
	line	32
	
l10688:
	movff	(c:_alarm_second),(_setup_alarm_second)
	line	33
	
l10690:
	movff	(c:_alarm_minute),(_setup_alarm_minute)
	line	34
	
l10692:
	movff	(c:_alarm_hour),(_setup_alarm_hour)
	line	35
	
l10694:
	call	_Initialize_Setup_Alarm_Time_Screen	;wreg free
	line	36
	
l10696:
	call	_Update_Setup_Alarm_Time_Screen	;wreg free
	line	37
	goto	l10734
	
l925:
	line	39
	
l10698:
	call	_check_for_button_input	;wreg free
	decf	wreg
	btfss	status,2
	goto	u8951
	goto	u8950
u8951:
	goto	l10734
u8950:
	line	41
	
l10700:
		movlw	03h-1
	cpfsgt	((c:_found)),c
	goto	u8961
	goto	u8960

u8961:
	goto	l10732
u8960:
	
l10702:
		movlw	09h-0
	cpfslt	((c:_found)),c
	goto	u8971
	goto	u8970

u8971:
	goto	l10732
u8970:
	line	43
	
l10704:
	call	_Do_Beep_Good	;wreg free
	line	44
	
l10706:
		movlw	3
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8981
	goto	u8980

u8981:
	goto	l10710
u8980:
	
l10708:
	call	_Go_Prev_Alarm_Field	;wreg free
	goto	l10710
	
l928:
	line	45
	
l10710:
		movlw	4
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u8991
	goto	u8990

u8991:
	goto	l10714
u8990:
	
l10712:
	call	_Go_Next_Alarm_Field	;wreg free
	goto	l10714
	
l929:
	line	46
	
l10714:
		movlw	5
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9001
	goto	u9000

u9001:
	goto	l10718
u9000:
	
l10716:
	call	_Do_Save_New_Alarm_Time	;wreg free
	goto	l10718
	
l930:
	line	47
	
l10718:
		movlw	6
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9011
	goto	u9010

u9011:
	goto	l10722
u9010:
	
l10720:
	call	_Decrease_Alarm_Time	;wreg free
	goto	l10722
	
l931:
	line	48
	
l10722:
		movlw	7
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9021
	goto	u9020

u9021:
	goto	l10726
u9020:
	
l10724:
	call	_Increase_Alarm_Time	;wreg free
	goto	l10726
	
l932:
	line	49
	
l10726:
		movlw	8
	xorwf	((c:_found)),c,w
	btfss	status,2
	goto	u9031
	goto	u9030

u9031:
	goto	l10730
u9030:
	
l10728:
	call	_Exit_Setup_Alarm_Time	;wreg free
	goto	l10730
	
l933:
	line	51
	
l10730:
	setf	((c:_found)),c
	line	52
	goto	l10734
	line	53
	
l927:
	line	55
	
l10732:
	call	_Do_Beep_Bad	;wreg free
	goto	l10734
	line	56
	
l934:
	goto	l10734
	line	57
	
l926:
	goto	l10734
	line	58
	
l924:
	line	37
	
l10734:
	movlb	0	; () banked
		decf	((_In_Alarm_Time_Setup))&0ffh,w
	btfsc	status,2
	goto	u9041
	goto	u9040

u9041:
	goto	l10698
u9040:
	goto	l936
	
l935:; BSR set to: 0

	line	59
	
l936:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Setup_Alarm_Time
	__end_of_Do_Setup_Alarm_Time:
	signat	_Do_Setup_Alarm_Time,90
	global	_check_for_button_input

;; *************** function _check_for_button_input *****************
;; Defined at:
;;		line 14 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2   20[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_printf
;; This function is called by:
;;		_main
;;		_Do_Setup_Alarm_Time
;;		_Setup_Temp_Fan
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	14
global __ptext35
__ptext35:
psect	text35
	file	"utils.c"
	line	14
	global	__size_of_check_for_button_input
	__size_of_check_for_button_input	equ	__end_of_check_for_button_input-_check_for_button_input
	
_check_for_button_input:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	16
	
l10080:
	movlb	0	; () banked
		decf	((_nec_ok))&0ffh,w
	movlb	0	; () banked
iorwf	((_nec_ok+1))&0ffh,w
	btfss	status,2
	goto	u8411
	goto	u8410

u8411:
	goto	l1338
u8410:
	line	18
	
l10082:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_nec_ok+1))&0ffh
	movlw	low(0)
	movwf	((_nec_ok))&0ffh
	line	22
	
l10084:; BSR set to: 0

	bsf	((c:4082)),c,4	;volatile
	line	23
	
l10086:; BSR set to: 0

	bcf	((c:4081)),c,6	;volatile
	line	25
	
l10088:; BSR set to: 0

	setf	((c:_found)),c
	line	26
	movlw	high(0)
	movlb	0	; () banked
	movwf	((check_for_button_input@j+1))&0ffh
	movlw	low(0)
	movwf	((check_for_button_input@j))&0ffh
	
l10090:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((check_for_button_input@j+1))&0ffh,7
	goto	u8421
	movlb	0	; () banked
	movf	((check_for_button_input@j+1))&0ffh,w
	bnz	u8420
	movlw	21
	movlb	0	; () banked
	subwf	 ((check_for_button_input@j))&0ffh,w
	btfss	status,0
	goto	u8421
	goto	u8420

u8421:
	goto	l10094
u8420:
	goto	l10104
	
l10092:; BSR set to: 0

	goto	l10104
	line	27
	
l1334:; BSR set to: 0

	line	28
	
l10094:; BSR set to: 0

	movlw	low(_array1)
	movlb	0	; () banked
	addwf	((check_for_button_input@j))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_array1)
	movlb	0	; () banked
	addwfc	((check_for_button_input@j+1))&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	((_Nec_code1))&0ffh,w
xorwf	postinc2,w
	btfss	status,2
	goto	u8431
	goto	u8430

u8431:
	goto	l10100
u8430:
	line	30
	
l10096:; BSR set to: 0

	movff	(check_for_button_input@j),(c:_found)
	line	31
	
l10098:; BSR set to: 0

	movlw	high(015h)
	movlb	0	; () banked
	movwf	((check_for_button_input@j+1))&0ffh
	movlw	low(015h)
	movwf	((check_for_button_input@j))&0ffh
	goto	l10100
	line	32
	
l1336:; BSR set to: 0

	line	26
	
l10100:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((check_for_button_input@j))&0ffh
	incf	((check_for_button_input@j+1))&0ffh
	
l10102:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((check_for_button_input@j+1))&0ffh,7
	goto	u8441
	movlb	0	; () banked
	movf	((check_for_button_input@j+1))&0ffh,w
	bnz	u8440
	movlw	21
	movlb	0	; () banked
	subwf	 ((check_for_button_input@j))&0ffh,w
	btfss	status,0
	goto	u8441
	goto	u8440

u8441:
	goto	l10094
u8440:
	goto	l10104
	
l1335:; BSR set to: 0

	line	35
	
l10104:; BSR set to: 0

		incf	((c:_found)),c,w
	btfss	status,2
	goto	u8451
	goto	u8450

u8451:
	goto	l10114
u8450:
	line	37
	
l10106:; BSR set to: 0

		movlw	low(STR_35)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_35)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	38
	
l10108:
	movlw	(0)&0ffh
	goto	l1338
	
l10110:
	goto	l1338
	line	39
	
l10112:
	goto	l1338
	line	40
	
l1337:
	line	42
	
l10114:
	movlw	(01h)&0ffh
	goto	l1338
	
l10116:
	goto	l1338
	line	43
	
l1339:
	goto	l1338
	line	44
	
l1333:
	line	45
	
l1338:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_check_for_button_input
	__end_of_check_for_button_input:
	signat	_check_for_button_input,89
	global	_bcd_2_dec

;; *************** function _bcd_2_dec *****************
;; Defined at:
;;		line 47 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  bcd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd             1   20[COMRAM] unsigned char 
;;  dec             2   18[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	line	47
global __ptext36
__ptext36:
psect	text36
	file	"utils.c"
	line	47
	global	__size_of_bcd_2_dec
	__size_of_bcd_2_dec	equ	__end_of_bcd_2_dec-_bcd_2_dec
	
_bcd_2_dec:
;incstack = 0
	opt	stack 27
	movwf	((c:bcd_2_dec@bcd)),c
	line	50
	
l7468:
	movff	(c:bcd_2_dec@bcd),??_bcd_2_dec+0+0
	movlw	0Fh
	andwf	(??_bcd_2_dec+0+0),c
	movff	(c:bcd_2_dec@bcd),??_bcd_2_dec+1+0
	swapf	(??_bcd_2_dec+1+0),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	(??_bcd_2_dec+1+0),c
	movf	(??_bcd_2_dec+1+0),c,w
	mullw	0Ah
	movf	(??_bcd_2_dec+0+0),c,w
	addwf	(prodl),c,w
	movwf	((c:bcd_2_dec@dec)),c
	movlw	0
	addwfc	(prodh),c,w
	movwf	1+((c:bcd_2_dec@dec)),c
	line	51
	
l7470:
	movf	((c:bcd_2_dec@dec)),c,w
	goto	l1342
	
l7472:
	line	52
	
l1342:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_bcd_2_dec
	__end_of_bcd_2_dec:
	signat	_bcd_2_dec,4217
	global	_Initialize_Setup_Alarm_Time_Screen

;; *************** function _Initialize_Setup_Alarm_Time_Screen *****************
;; Defined at:
;;		line 149 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_drawtext
;;		_fillRect
;;		_fillScreen
;;		_strcpy
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"Setup_Alarm_Time.c"
	line	149
global __ptext37
__ptext37:
psect	text37
	file	"Setup_Alarm_Time.c"
	line	149
	global	__size_of_Initialize_Setup_Alarm_Time_Screen
	__size_of_Initialize_Setup_Alarm_Time_Screen	equ	__end_of_Initialize_Setup_Alarm_Time_Screen-_Initialize_Setup_Alarm_Time_Screen
	
_Initialize_Setup_Alarm_Time_Screen:
;incstack = 0
	opt	stack 20
	line	151
	
l10130:
	movlw	high(0)
	movwf	((c:fillScreen@color+1)),c
	movlw	low(0)
	movwf	((c:fillScreen@color)),c
	call	_fillScreen	;wreg free
	line	153
	
l10132:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_24)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_24)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	154
	
l10134:
	movlw	low(01h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	157
	
l10136:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_25)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_25)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	158
	
l10138:
	movlw	low(015h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0F81Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F81Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(06h)&0ffh
	
	call	_drawtext
	line	160
	
l10140:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_26)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_26)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	161
	
l10142:
	movlw	low(028h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(01Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(01Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	162
	
l10144:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	163
	
l981:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Initialize_Setup_Alarm_Time_Screen
	__end_of_Initialize_Setup_Alarm_Time_Screen:
	signat	_Initialize_Setup_Alarm_Time_Screen,88
	global	_Increase_Alarm_Time

;; *************** function _Increase_Alarm_Time *****************
;; Defined at:
;;		line 61 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Alarm_Time_Screen
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	line	61
global __ptext38
__ptext38:
psect	text38
	file	"Setup_Alarm_Time.c"
	line	61
	global	__size_of_Increase_Alarm_Time
	__size_of_Increase_Alarm_Time	equ	__end_of_Increase_Alarm_Time-_Increase_Alarm_Time
	
_Increase_Alarm_Time:
;incstack = 0
	opt	stack 19
	line	63
	
l10178:
	goto	l10200
	line	65
	
l940:
	line	66
	
l10180:
	movlb	0	; () banked
	incf	((_setup_alarm_hour))&0ffh
	line	67
	
l10182:; BSR set to: 0

		movlw	24
	movlb	0	; () banked
	xorwf	((_setup_alarm_hour))&0ffh,w
	btfss	status,2
	goto	u8491
	goto	u8490

u8491:
	goto	l10202
u8490:
	
l10184:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_alarm_hour))&0ffh
	goto	l10202
	
l941:; BSR set to: 0

	line	68
	goto	l10202
	line	70
	
l943:; BSR set to: 0

	line	72
	
l10186:; BSR set to: 0

	movlb	0	; () banked
	incf	((_setup_alarm_minute))&0ffh
	line	73
	
l10188:; BSR set to: 0

		movlw	60
	movlb	0	; () banked
	xorwf	((_setup_alarm_minute))&0ffh,w
	btfss	status,2
	goto	u8501
	goto	u8500

u8501:
	goto	l10202
u8500:
	
l10190:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_alarm_minute))&0ffh
	goto	l10202
	
l944:; BSR set to: 0

	line	74
	goto	l10202
	line	75
	
l945:; BSR set to: 0

	line	77
	
l10192:; BSR set to: 0

	movlb	0	; () banked
	incf	((_setup_alarm_second))&0ffh
	line	78
	
l10194:; BSR set to: 0

		movlw	60
	movlb	0	; () banked
	xorwf	((_setup_alarm_second))&0ffh,w
	btfss	status,2
	goto	u8511
	goto	u8510

u8511:
	goto	l10202
u8510:
	
l10196:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_setup_alarm_second))&0ffh
	goto	l10202
	
l946:; BSR set to: 0

	line	79
	goto	l10202
	line	82
	
l947:; BSR set to: 0

	line	83
	goto	l10202
	line	84
	
l10198:; BSR set to: 0

	goto	l10202
	line	63
	
l939:; BSR set to: 0

	
l10200:
	movlb	0	; () banked
	movf	((_Select_Alarm_Field))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l10180
	xorlw	1^0	; case 1
	skipnz
	goto	l10186
	xorlw	2^1	; case 2
	skipnz
	goto	l10192
	goto	l10202

	line	84
	
l942:; BSR set to: 0

	line	85
	
l10202:; BSR set to: 0

	call	_Update_Setup_Alarm_Time_Screen	;wreg free
	line	87
	
l948:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Increase_Alarm_Time
	__end_of_Increase_Alarm_Time:
	signat	_Increase_Alarm_Time,88
	global	_Go_Prev_Alarm_Field

;; *************** function _Go_Prev_Alarm_Field *****************
;; Defined at:
;;		line 126 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Update_Setup_Screen_Cursor_Backward
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	line	126
global __ptext39
__ptext39:
psect	text39
	file	"Setup_Alarm_Time.c"
	line	126
	global	__size_of_Go_Prev_Alarm_Field
	__size_of_Go_Prev_Alarm_Field	equ	__end_of_Go_Prev_Alarm_Field-_Go_Prev_Alarm_Field
	
_Go_Prev_Alarm_Field:
;incstack = 0
	opt	stack 21
	line	128
	
l7490:
	movlb	0	; () banked
	movf	((_Select_Alarm_Field))&0ffh,w
	btfss	status,2
	goto	u5531
	goto	u5530
u5531:
	goto	l7494
u5530:
	
l7492:; BSR set to: 0

	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_Select_Alarm_Field))&0ffh
	goto	l7496
	line	129
	
l970:; BSR set to: 0

	
l7494:; BSR set to: 0

	movlb	0	; () banked
	decf	((_Select_Alarm_Field))&0ffh
	goto	l7496
	
l971:; BSR set to: 0

	line	130
	
l7496:; BSR set to: 0

	movlb	0	; () banked
	movf	((_Select_Alarm_Field))&0ffh,w
	
	call	_Update_Setup_Screen_Cursor_Backward
	line	131
	
l972:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Go_Prev_Alarm_Field
	__end_of_Go_Prev_Alarm_Field:
	signat	_Go_Prev_Alarm_Field,88
	global	_Update_Setup_Screen_Cursor_Backward

;; *************** function _Update_Setup_Screen_Cursor_Backward *****************
;; Defined at:
;;		line 317 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;  field           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  field           1   45[COMRAM] unsigned char 
;;  xinc            1   47[COMRAM] unsigned char 
;;  yinc            1   46[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_fillRect
;; This function is called by:
;;		_Go_Prev_Alarm_Field
;;		_Go_Prev_Field
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2
	file	"Setup_Time.c"
	line	317
global __ptext40
__ptext40:
psect	text40
	file	"Setup_Time.c"
	line	317
	global	__size_of_Update_Setup_Screen_Cursor_Backward
	__size_of_Update_Setup_Screen_Cursor_Backward	equ	__end_of_Update_Setup_Screen_Cursor_Backward-_Update_Setup_Screen_Cursor_Backward
	
_Update_Setup_Screen_Cursor_Backward:
;incstack = 0
	opt	stack 21
	movwf	((c:Update_Setup_Screen_Cursor_Backward@field)),c
	line	319
	
l7278:
	movlw	low(024h)
	movwf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c
	line	320
	movlw	low(01Eh)
	movwf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c
	line	321
	goto	l7302
	line	323
	
l1265:
	line	324
	
l7280:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	325
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	326
	goto	l1272
	line	328
	
l1267:
	line	329
	
l7282:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	330
	
l7284:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	331
	goto	l1272
	line	333
	
l1268:
	line	334
	
l7286:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	335
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	336
	
l7288:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	337
	goto	l1272
	line	339
	
l1269:
	line	340
	
l7290:
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	341
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	342
	goto	l1272
	line	344
	
l1270:
	line	345
	
l7292:
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	346
	
l7294:
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	347
	goto	l1272
	line	349
	
l1271:
	line	350
	
l7296:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	351
	
l7298:
	movf	((c:Update_Setup_Screen_Cursor_Backward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Backward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	352
	goto	l1272
	line	353
	
l7300:
	goto	l1272
	line	321
	
l1264:
	
l7302:
	movf	((c:Update_Setup_Screen_Cursor_Backward@field)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l7280
	xorlw	1^0	; case 1
	skipnz
	goto	l7282
	xorlw	2^1	; case 2
	skipnz
	goto	l7286
	xorlw	3^2	; case 3
	skipnz
	goto	l7290
	xorlw	4^3	; case 4
	skipnz
	goto	l7292
	xorlw	5^4	; case 5
	skipnz
	goto	l7296
	goto	l1272

	line	353
	
l1266:
	line	354
	
l1272:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Setup_Screen_Cursor_Backward
	__end_of_Update_Setup_Screen_Cursor_Backward:
	signat	_Update_Setup_Screen_Cursor_Backward,4216
	global	_Go_Next_Alarm_Field

;; *************** function _Go_Next_Alarm_Field *****************
;; Defined at:
;;		line 117 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Update_Setup_Screen_Cursor_Forward
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2
	file	"Setup_Alarm_Time.c"
	line	117
global __ptext41
__ptext41:
psect	text41
	file	"Setup_Alarm_Time.c"
	line	117
	global	__size_of_Go_Next_Alarm_Field
	__size_of_Go_Next_Alarm_Field	equ	__end_of_Go_Next_Alarm_Field-_Go_Next_Alarm_Field
	
_Go_Next_Alarm_Field:
;incstack = 0
	opt	stack 21
	line	120
	
l7498:
	movlb	0	; () banked
	incf	((_Select_Alarm_Field))&0ffh
	line	121
	
l7500:; BSR set to: 0

		movlw	3
	movlb	0	; () banked
	xorwf	((_Select_Alarm_Field))&0ffh,w
	btfss	status,2
	goto	u5541
	goto	u5540

u5541:
	goto	l7504
u5540:
	
l7502:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Select_Alarm_Field))&0ffh
	goto	l7504
	
l966:; BSR set to: 0

	line	122
	
l7504:; BSR set to: 0

	movlb	0	; () banked
	movf	((_Select_Alarm_Field))&0ffh,w
	
	call	_Update_Setup_Screen_Cursor_Forward
	line	124
	
l967:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Go_Next_Alarm_Field
	__end_of_Go_Next_Alarm_Field:
	signat	_Go_Next_Alarm_Field,88
	global	_Update_Setup_Screen_Cursor_Forward

;; *************** function _Update_Setup_Screen_Cursor_Forward *****************
;; Defined at:
;;		line 278 in file "Setup_Time.c"
;; Parameters:    Size  Location     Type
;;  field           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  field           1   45[COMRAM] unsigned char 
;;  xinc            1   47[COMRAM] unsigned char 
;;  yinc            1   46[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_fillRect
;; This function is called by:
;;		_Go_Next_Alarm_Field
;;		_Go_Next_Field
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2
	file	"Setup_Time.c"
	line	278
global __ptext42
__ptext42:
psect	text42
	file	"Setup_Time.c"
	line	278
	global	__size_of_Update_Setup_Screen_Cursor_Forward
	__size_of_Update_Setup_Screen_Cursor_Forward	equ	__end_of_Update_Setup_Screen_Cursor_Forward-_Update_Setup_Screen_Cursor_Forward
	
_Update_Setup_Screen_Cursor_Forward:
;incstack = 0
	opt	stack 21
	movwf	((c:Update_Setup_Screen_Cursor_Forward@field)),c
	line	280
	
l7252:
	movlw	low(024h)
	movwf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c
	line	281
	movlw	low(01Eh)
	movwf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c
	line	282
	goto	l7276
	line	284
	
l1254:
	line	285
	
l7254:
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	286
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	287
	
l7256:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	288
	goto	l1261
	line	290
	
l1256:
	line	291
	
l7258:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	292
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	293
	goto	l1261
	line	295
	
l1257:
	line	296
	
l7260:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	297
	
l7262:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	298
	goto	l1261
	line	300
	
l1258:
	line	301
	
l7264:
	movlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	302
	
l7266:
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	303
	goto	l1261
	line	305
	
l1259:
	line	306
	
l7268:
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movlw	(0Eh)&0ffh
	
	call	_fillRect
	line	307
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	308
	goto	l1261
	line	310
	
l1260:
	line	311
	
l7270:
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(0)
	movwf	((c:fillRect@color+1)),c
	movlw	low(0)
	movwf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	312
	
l7272:
	movf	((c:Update_Setup_Screen_Cursor_Forward@yinc)),c,w
	addlw	low(044h)
	movwf	((c:fillRect@y)),c
	movlw	low(019h)
	movwf	((c:fillRect@w)),c
	movlw	low(02h)
	movwf	((c:fillRect@h)),c
	movlw	high(07FFh)
	movwf	((c:fillRect@color+1)),c
	setf	((c:fillRect@color)),c
	movf	((c:Update_Setup_Screen_Cursor_Forward@xinc)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(0Eh)
	
	call	_fillRect
	line	313
	goto	l1261
	line	314
	
l7274:
	goto	l1261
	line	282
	
l1253:
	
l7276:
	movf	((c:Update_Setup_Screen_Cursor_Forward@field)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 0 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l7254
	xorlw	1^0	; case 1
	skipnz
	goto	l7258
	xorlw	2^1	; case 2
	skipnz
	goto	l7260
	xorlw	3^2	; case 3
	skipnz
	goto	l7264
	xorlw	4^3	; case 4
	skipnz
	goto	l7268
	xorlw	5^4	; case 5
	skipnz
	goto	l7270
	goto	l1261

	line	314
	
l1255:
	line	315
	
l1261:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Setup_Screen_Cursor_Forward
	__end_of_Update_Setup_Screen_Cursor_Forward:
	signat	_Update_Setup_Screen_Cursor_Forward,4216
	global	_Exit_Setup_Alarm_Time

;; *************** function _Exit_Setup_Alarm_Time *****************
;; Defined at:
;;		line 133 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2
	file	"Setup_Alarm_Time.c"
	line	133
global __ptext43
__ptext43:
psect	text43
	file	"Setup_Alarm_Time.c"
	line	133
	global	__size_of_Exit_Setup_Alarm_Time
	__size_of_Exit_Setup_Alarm_Time	equ	__end_of_Exit_Setup_Alarm_Time-_Exit_Setup_Alarm_Time
	
_Exit_Setup_Alarm_Time:
;incstack = 0
	opt	stack 19
	line	135
	
l10204:
	call	_DS3231_Read_Time	;wreg free
	line	136
	
l10206:
	call	_Initialize_Screen	;wreg free
	line	137
	
l10208:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Alarm_Time_Setup))&0ffh
	line	138
	
l975:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Exit_Setup_Alarm_Time
	__end_of_Exit_Setup_Alarm_Time:
	signat	_Exit_Setup_Alarm_Time,88
	global	_Do_Save_New_Alarm_Time

;; *************** function _Do_Save_New_Alarm_Time *****************
;; Defined at:
;;		line 140 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Read_Time
;;		_DS3231_Write_Alarm_Time
;;		_Initialize_Screen
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2
	line	140
global __ptext44
__ptext44:
psect	text44
	file	"Setup_Alarm_Time.c"
	line	140
	global	__size_of_Do_Save_New_Alarm_Time
	__size_of_Do_Save_New_Alarm_Time	equ	__end_of_Do_Save_New_Alarm_Time-_Do_Save_New_Alarm_Time
	
_Do_Save_New_Alarm_Time:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	142
	
l10146:
	call	_DS3231_Write_Alarm_Time	;wreg free
	line	143
	call	_DS3231_Read_Alarm_Time	;wreg free
	line	144
	call	_DS3231_Read_Time	;wreg free
	line	145
	
l10148:
	call	_Initialize_Screen	;wreg free
	line	146
	
l10150:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_In_Alarm_Time_Setup))&0ffh
	line	147
	
l978:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Save_New_Alarm_Time
	__end_of_Do_Save_New_Alarm_Time:
	signat	_Do_Save_New_Alarm_Time,88
	global	_Initialize_Screen

;; *************** function _Initialize_Screen *****************
;; Defined at:
;;		line 36 in file "Main_Screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  350[None  ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		_LCD_Reset
;;		_TFT_GreenTab_Initialize
;;		_drawCircle
;;		_drawtext
;;		_fillScreen
;;		_strcpy
;; This function is called by:
;;		_main
;;		_Exit_Setup_Alarm_Time
;;		_Do_Save_New_Alarm_Time
;;		_Exit_Setup_Fan_Temp
;;		_Do_Save_New_Fan_Temp
;;		_Do_Save_New_Time
;;		_Exit_Time_Setup
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2
	file	"Main_Screen.c"
	line	36
global __ptext45
__ptext45:
psect	text45
	file	"Main_Screen.c"
	line	36
	global	__size_of_Initialize_Screen
	__size_of_Initialize_Screen	equ	__end_of_Initialize_Screen-_Initialize_Screen
	
_Initialize_Screen:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	38
	
l10002:
	call	_LCD_Reset	;wreg free
	line	39
	call	_TFT_GreenTab_Initialize	;wreg free
	line	40
	
l10004:
	movlw	high(0)
	movwf	((c:fillScreen@color+1)),c
	movlw	low(0)
	movwf	((c:fillScreen@color)),c
	call	_fillScreen	;wreg free
	line	42
	
l10006:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_6)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_6)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	43
	movlw	low(01h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(01h)&0ffh
	
	call	_drawtext
	line	45
	
l10008:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_7)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_7)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	46
	
l10010:
	movlw	low(0Bh)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0F81Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F81Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(018h)&0ffh
	
	call	_drawtext
	line	47
	
l10012:
	movlw	high(028h)
	movwf	((c:drawCircle@x0+1)),c
	movlw	low(028h)
	movwf	((c:drawCircle@x0)),c
	movlw	high(017h)
	movwf	((c:drawCircle@y0+1)),c
	movlw	low(017h)
	movwf	((c:drawCircle@y0)),c
	movlw	high(02h)
	movwf	((c:drawCircle@r+1)),c
	movlw	low(02h)
	movwf	((c:drawCircle@r)),c
	movlw	high(0FFE0h)
	movwf	((c:drawCircle@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawCircle@color)),c
	call	_drawCircle	;wreg free
	line	48
	
l10014:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_8)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_8)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	49
	
l10016:
	movlw	low(017h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(02Dh)&0ffh
	
	call	_drawtext
	line	50
	
l10018:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_9)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_9)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	51
	
l10020:
	movlw	high(06Eh)
	movwf	((c:drawCircle@x0+1)),c
	movlw	low(06Eh)
	movwf	((c:drawCircle@x0)),c
	movlw	high(017h)
	movwf	((c:drawCircle@y0+1)),c
	movlw	low(017h)
	movwf	((c:drawCircle@y0)),c
	movlw	high(02h)
	movwf	((c:drawCircle@r+1)),c
	movlw	low(02h)
	movwf	((c:drawCircle@r)),c
	movlw	high(0FFE0h)
	movwf	((c:drawCircle@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawCircle@color)),c
	call	_drawCircle	;wreg free
	line	52
	
l10022:
	movlw	low(017h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(073h)&0ffh
	
	call	_drawtext
	line	53
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_10)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_10)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	54
	
l10024:
	movlw	low(028h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(01Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(01Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	55
	
l10026:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_11)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_11)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	56
	movlw	low(047h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0F800h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0F800h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	57
	
l10028:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_12)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_12)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	58
	
l10030:
	movlw	low(064h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(04h)&0ffh
	
	call	_drawtext
	line	59
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_13)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_13)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	60
	
l10032:
	movlw	low(064h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFE0h)
	movwf	((c:drawtext@color+1)),c
	movlw	low(0FFE0h)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(04Dh)&0ffh
	
	call	_drawtext
	line	61
	
l10034:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_14)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_14)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	62
	movlw	low(078h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(01Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(01Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(06h)&0ffh
	
	call	_drawtext
	line	63
	
l10036:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_15)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_15)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	64
	
l10038:
	movlw	low(078h)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(01Fh)
	movwf	((c:drawtext@color+1)),c
	movlw	low(01Fh)
	movwf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(055h)&0ffh
	
	call	_drawtext
	line	65
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_16)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_16)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	66
	
l10040:
	movlw	low(08Ch)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(0Ch)&0ffh
	
	call	_drawtext
	line	67
	
l10042:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_17)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_17)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	68
	movlw	low(08Ch)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(021h)&0ffh
	
	call	_drawtext
	line	69
	
l10044:
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_18)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_18)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	70
	
l10046:
	movlw	low(08Ch)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(032h)&0ffh
	
	call	_drawtext
	line	71
		movff	(c:_txt),(c:strcpy@to)
	movff	(c:_txt+1),(c:strcpy@to+1)

		movlw	low(STR_19)
	movwf	((c:strcpy@from)),c
	movlw	high(STR_19)
	movwf	((c:strcpy@from+1)),c

	call	_strcpy	;wreg free
	line	72
	
l10048:
	movlw	low(08Ch)
	movwf	((c:drawtext@y)),c
		movff	(c:_txt),(c:drawtext@_text)
	movff	(c:_txt+1),(c:drawtext@_text+1)

	movlw	high(0FFFFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(01h)
	movwf	((c:drawtext@size)),c
	movlw	(05Fh)&0ffh
	
	call	_drawtext
	line	74
	
l631:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Initialize_Screen
	__end_of_Initialize_Screen:
	signat	_Initialize_Screen,90
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              2   16[COMRAM] PTR unsigned char 
;;		 -> NULL(0), Fan_SW_Txt(4), Alarm_SW_Txt(4), 
;;  from            2   18[COMRAM] PTR const unsigned char 
;;		 -> STR_34(5), STR_33(5), STR_32(12), STR_31(21), 
;;		 -> STR_30(15), STR_29(12), STR_28(21), STR_26(5), 
;;		 -> STR_25(11), STR_24(20), STR_23(4), STR_22(4), 
;;		 -> STR_21(4), STR_20(4), STR_19(4), STR_18(5), 
;;		 -> STR_17(3), STR_16(3), STR_15(7), STR_14(13), 
;;		 -> STR_13(9), STR_12(11), STR_11(5), STR_10(5), 
;;		 -> STR_9(2), STR_8(3), STR_7(13), STR_6(21), 
;; Auto vars:     Size  Location     Type
;;  cp              2   20[COMRAM] PTR unsigned char 
;;		 -> NULL(0), Fan_SW_Txt(4), Alarm_SW_Txt(4), 
;; Return value:  Size  Location     Type
;;                  2   16[COMRAM] PTR unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Initialize_Screen
;;		_Update_Screen
;;		_Initialize_Setup_Alarm_Time_Screen
;;		_Initialize_Setup_Fan_Screen
;;		_Initialize_Setup_Time_Screen
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strcpy.c"
	line	8
global __ptext46
__ptext46:
psect	text46
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strcpy.c"
	line	8
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:
;incstack = 0
	opt	stack 27
	line	18
	
l6830:
		movff	(c:strcpy@to),(c:strcpy@cp)
	movff	(c:strcpy@to+1),(c:strcpy@cp+1)

	line	19
	goto	l6834
	
l2164:
	line	20
	
l6832:
	infsnz	((c:strcpy@cp)),c
	incf	((c:strcpy@cp+1)),c
	line	21
	infsnz	((c:strcpy@from)),c
	incf	((c:strcpy@from+1)),c
	goto	l6834
	line	22
	
l2163:
	line	19
	
l6834:
	movff	(c:strcpy@from),tblptrl
	movff	(c:strcpy@from+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	movff	(c:strcpy@cp),fsr2l
	movff	(c:strcpy@cp+1),fsr2h
	tblrd	*
	
	movff	tablat,indf2
	movf	indf2,w
	btfss	status,2
	goto	u5191
	goto	u5190
u5191:
	goto	l6832
u5190:
	goto	l2166
	
l2165:
	line	24
;	Return value of _strcpy is never used
	
l2166:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8314
	global	_fillScreen

;; *************** function _fillScreen *****************
;; Defined at:
;;		line 620 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  color           2   35[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_fillRectangle
;; This function is called by:
;;		_Initialize_Screen
;;		_Initialize_Setup_Alarm_Time_Screen
;;		_Initialize_Setup_Fan_Screen
;;		_Initialize_Setup_Time_Screen
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2
	file	"ST7735_TFT.c"
	line	620
global __ptext47
__ptext47:
psect	text47
	file	"ST7735_TFT.c"
	line	620
	global	__size_of_fillScreen
	__size_of_fillScreen	equ	__end_of_fillScreen-_fillScreen
	
_fillScreen:
;incstack = 0
	opt	stack 22
	line	622
	
l6828:
	movlw	low(0)
	movwf	((c:fillRectangle@y)),c
	movlw	low(080h)
	movwf	((c:fillRectangle@w)),c
	movlw	low(0A0h)
	movwf	((c:fillRectangle@h)),c
	movff	(c:fillScreen@color),(c:fillRectangle@color)
	movff	(c:fillScreen@color+1),(c:fillRectangle@color+1)
	movlw	(0)&0ffh
	
	call	_fillRectangle
	line	623
	
l831:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fillScreen
	__end_of_fillScreen:
	signat	_fillScreen,4216
	global	_fillRectangle

;; *************** function _fillRectangle *****************
;; Defined at:
;;		line 504 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   23[COMRAM] unsigned char 
;;  w               1   24[COMRAM] unsigned char 
;;  h               1   25[COMRAM] unsigned char 
;;  color           2   26[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1   34[COMRAM] unsigned char 
;;  lo              1   33[COMRAM] unsigned char 
;;  hi              1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setAddrWindow
;;		_spiwrite
;; This function is called by:
;;		_fillScreen
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2
	line	504
global __ptext48
__ptext48:
psect	text48
	file	"ST7735_TFT.c"
	line	504
	global	__size_of_fillRectangle
	__size_of_fillRectangle	equ	__end_of_fillRectangle-_fillRectangle
	
_fillRectangle:
;incstack = 0
	opt	stack 22
	movwf	((c:fillRectangle@x)),c
	line	507
	
l6106:
		movlw	080h-0
	cpfslt	((c:fillRectangle@x)),c
	goto	u4141
	goto	u4140

u4141:
	goto	l792
u4140:
	
l6108:
		movlw	0A0h-1
	cpfsgt	((c:fillRectangle@y)),c
	goto	u4151
	goto	u4150

u4151:
	goto	l6110
u4150:
	goto	l792
	
l791:
	line	508
	goto	l792
	
l789:
	line	509
	
l6110:
	movlw	low(-1)
	movwf	(??_fillRectangle+0+0)&0ffh,c
	movlw	high(-1)
	movwf	1+(??_fillRectangle+0+0)&0ffh,c
	movf	((c:fillRectangle@w)),c,w
	movff	(c:fillRectangle@x),??_fillRectangle+2+0
	clrf	(??_fillRectangle+2+0+1)&0ffh,c
	addwf	(??_fillRectangle+2+0),c
	movlw	0
	addwfc	(??_fillRectangle+2+1),c
	movf	(??_fillRectangle+0+0),c,w
	addwf	(??_fillRectangle+2+0),c
	movf	(??_fillRectangle+0+1),c,w
	addwfc	(??_fillRectangle+2+1),c
	btfsc	(??_fillRectangle+2+1),c,7
	goto	u4161
	movf	(??_fillRectangle+2+1),c,w
	bnz	u4160
	movlw	128
	subwf	 (??_fillRectangle+2+0),c,w
	btfss	status,0
	goto	u4161
	goto	u4160

u4161:
	goto	l793
u4160:
	line	510
	
l6112:
	movf	((c:fillRectangle@x)),c,w
	sublw	0
	addlw	low(080h)
	movwf	((c:fillRectangle@w)),c
	
l793:
	line	511
	movlw	low(-1)
	movwf	(??_fillRectangle+0+0)&0ffh,c
	movlw	high(-1)
	movwf	1+(??_fillRectangle+0+0)&0ffh,c
	movf	((c:fillRectangle@h)),c,w
	movff	(c:fillRectangle@y),??_fillRectangle+2+0
	clrf	(??_fillRectangle+2+0+1)&0ffh,c
	addwf	(??_fillRectangle+2+0),c
	movlw	0
	addwfc	(??_fillRectangle+2+1),c
	movf	(??_fillRectangle+0+0),c,w
	addwf	(??_fillRectangle+2+0),c
	movf	(??_fillRectangle+0+1),c,w
	addwfc	(??_fillRectangle+2+1),c
	btfsc	(??_fillRectangle+2+1),c,7
	goto	u4171
	movf	(??_fillRectangle+2+1),c,w
	bnz	u4170
	movlw	160
	subwf	 (??_fillRectangle+2+0),c,w
	btfss	status,0
	goto	u4171
	goto	u4170

u4171:
	goto	l6116
u4170:
	line	512
	
l6114:
	movf	((c:fillRectangle@y)),c,w
	sublw	0
	addlw	low(0A0h)
	movwf	((c:fillRectangle@h)),c
	goto	l6116
	
l794:
	line	513
	
l6116:
	movff	(c:fillRectangle@y),(c:setAddrWindow@y0)
	movf	((c:fillRectangle@x)),c,w
	addwf	((c:fillRectangle@w)),c,w
	movwf	(??_fillRectangle+0+0)&0ffh,c
	decf	((??_fillRectangle+0+0)),c,w
	movwf	((c:setAddrWindow@x1)),c
	movf	((c:fillRectangle@y)),c,w
	addwf	((c:fillRectangle@h)),c,w
	movwf	(??_fillRectangle+1+0)&0ffh,c
	decf	((??_fillRectangle+1+0)),c,w
	movwf	((c:setAddrWindow@y1)),c
	movf	((c:fillRectangle@x)),c,w
	
	call	_setAddrWindow
	line	514
	
l6118:
	movf	((c:fillRectangle@color+1)),c,w
	movwf	((c:fillRectangle@hi)),c
	
l6120:
	movff	(c:fillRectangle@color),(c:fillRectangle@lo)
	line	515
	
l6122:
	bsf	((c:3971)),c,3	;volatile
	line	516
	
l6124:
	bcf	((c:3971)),c,4	;volatile
	line	518
	
l6126:
	movff	(c:fillRectangle@h),(c:fillRectangle@y)
	
l6128:
	movf	((c:fillRectangle@y)),c,w
	btfss	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l795
u4180:
	goto	l796
	
l6130:
	goto	l796
	
l795:
	line	519
	movff	(c:fillRectangle@w),(c:fillRectangle@x)
	
l6132:
	movf	((c:fillRectangle@x)),c,w
	btfss	status,2
	goto	u4191
	goto	u4190
u4191:
	goto	l6136
u4190:
	goto	l6142
	
l6134:
	goto	l6142
	
l797:
	line	520
	
l6136:
	movf	((c:fillRectangle@hi)),c,w
	
	call	_spiwrite
	line	521
	movf	((c:fillRectangle@lo)),c,w
	
	call	_spiwrite
	line	519
	
l6138:
	decf	((c:fillRectangle@x)),c
	
l6140:
	movf	((c:fillRectangle@x)),c,w
	btfss	status,2
	goto	u4201
	goto	u4200
u4201:
	goto	l6136
u4200:
	goto	l6142
	
l798:
	line	518
	
l6142:
	decf	((c:fillRectangle@y)),c
	
l6144:
	movf	((c:fillRectangle@y)),c,w
	btfss	status,2
	goto	u4211
	goto	u4210
u4211:
	goto	l795
u4210:
	
l796:
	line	524
	bsf	((c:3971)),c,4	;volatile
	line	527
	
l792:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fillRectangle
	__end_of_fillRectangle:
	signat	_fillRectangle,20600
	global	_drawCircle

;; *************** function _drawCircle *****************
;; Defined at:
;;		line 529 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x0              2   27[COMRAM] int 
;;  y0              2   29[COMRAM] int 
;;  r               2   31[COMRAM] int 
;;  color           2   33[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  y               2   45[COMRAM] int 
;;  x               2   43[COMRAM] int 
;;  f               2   41[COMRAM] int 
;;  ddF_y           2   39[COMRAM] int 
;;  ddF_x           2   37[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_drawPixel
;; This function is called by:
;;		_Initialize_Screen
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2
	line	529
global __ptext49
__ptext49:
psect	text49
	file	"ST7735_TFT.c"
	line	529
	global	__size_of_drawCircle
	__size_of_drawCircle	equ	__end_of_drawCircle-_drawCircle
	
_drawCircle:
;incstack = 0
	opt	stack 21
	line	532
	
l6872:
	movff	(c:drawCircle@r),??_drawCircle+0+0
	movff	(c:drawCircle@r+1),??_drawCircle+0+0+1
	comf	(??_drawCircle+0+0),c
	comf	(??_drawCircle+0+1),c
	infsnz	(??_drawCircle+0+0),c
	incf	(??_drawCircle+0+1),c
	movlw	low(01h)
	addwf	(??_drawCircle+0+0),c,w
	movwf	((c:drawCircle@f)),c
	movlw	high(01h)
	addwfc	(??_drawCircle+0+1),c,w
	movwf	1+((c:drawCircle@f)),c
	
l6874:
	movlw	high(01h)
	movwf	((c:drawCircle@ddF_x+1)),c
	movlw	low(01h)
	movwf	((c:drawCircle@ddF_x)),c
	
l6876:
	movff	(c:drawCircle@r),??_drawCircle+0+0
	movff	(c:drawCircle@r+1),??_drawCircle+0+0+1
	bcf	status,0
	rlcf	(??_drawCircle+0+0),c,f
	rlcf	(??_drawCircle+0+1),c,f
	comf	(??_drawCircle+0+0),c
	comf	(??_drawCircle+0+1),c
	infsnz	(??_drawCircle+0+0),c
	incf	(??_drawCircle+0+1),c
	movff	??_drawCircle+0+0,(c:drawCircle@ddF_y)
	movff	??_drawCircle+0+1,(c:drawCircle@ddF_y+1)
	
l6878:
	movlw	high(0)
	movwf	((c:drawCircle@x+1)),c
	movlw	low(0)
	movwf	((c:drawCircle@x)),c
	
l6880:
	movff	(c:drawCircle@r),(c:drawCircle@y)
	movff	(c:drawCircle@r+1),(c:drawCircle@y+1)
	line	533
	
l6882:
	movf	((c:drawCircle@y0)),c,w
	addwf	((c:drawCircle@r)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	534
	
l6884:
	movf	((c:drawCircle@r)),c,w
	sublw	0
	addwf	((c:drawCircle@y0)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	535
	
l6886:
	movff	(c:drawCircle@y0),(c:drawPixel@y)
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	addwf	((c:drawCircle@r)),c,w
	
	call	_drawPixel
	line	536
	
l6888:
	movff	(c:drawCircle@y0),(c:drawPixel@y)
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@r)),c,w
	sublw	0
	addwf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	537
	goto	l6918
	
l802:
	line	538
	
l6890:
	btfsc	((c:drawCircle@f+1)),c,7
	goto	u5261
	goto	u5260

u5261:
	goto	l803
u5260:
	line	539
	
l6892:
	decf	((c:drawCircle@y)),c
	btfss	status,0
	decf	((c:drawCircle@y+1)),c
	line	540
	
l6894:
	movlw	02h
	addwf	((c:drawCircle@ddF_y)),c
	movlw	0
	addwfc	((c:drawCircle@ddF_y+1)),c
	line	541
	
l6896:
	movf	((c:drawCircle@ddF_y)),c,w
	addwf	((c:drawCircle@f)),c
	movf	((c:drawCircle@ddF_y+1)),c,w
	addwfc	((c:drawCircle@f+1)),c

	line	542
	
l803:
	line	543
	infsnz	((c:drawCircle@x)),c
	incf	((c:drawCircle@x+1)),c
	line	544
	
l6898:
	movlw	02h
	addwf	((c:drawCircle@ddF_x)),c
	movlw	0
	addwfc	((c:drawCircle@ddF_x+1)),c
	line	545
	
l6900:
	movf	((c:drawCircle@ddF_x)),c,w
	addwf	((c:drawCircle@f)),c
	movf	((c:drawCircle@ddF_x+1)),c,w
	addwfc	((c:drawCircle@f+1)),c

	line	546
	
l6902:
	movf	((c:drawCircle@y0)),c,w
	addwf	((c:drawCircle@y)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	addwf	((c:drawCircle@x)),c,w
	
	call	_drawPixel
	line	547
	
l6904:
	movf	((c:drawCircle@y0)),c,w
	addwf	((c:drawCircle@y)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x)),c,w
	sublw	0
	addwf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	548
	
l6906:
	movf	((c:drawCircle@y)),c,w
	sublw	0
	addwf	((c:drawCircle@y0)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	addwf	((c:drawCircle@x)),c,w
	
	call	_drawPixel
	line	549
	
l6908:
	movf	((c:drawCircle@y)),c,w
	sublw	0
	addwf	((c:drawCircle@y0)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x)),c,w
	sublw	0
	addwf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	550
	
l6910:
	movf	((c:drawCircle@y0)),c,w
	addwf	((c:drawCircle@x)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	addwf	((c:drawCircle@y)),c,w
	
	call	_drawPixel
	line	551
	
l6912:
	movf	((c:drawCircle@y0)),c,w
	addwf	((c:drawCircle@x)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@y)),c,w
	sublw	0
	addwf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	line	552
	
l6914:
	movf	((c:drawCircle@x)),c,w
	sublw	0
	addwf	((c:drawCircle@y0)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@x0)),c,w
	addwf	((c:drawCircle@y)),c,w
	
	call	_drawPixel
	line	553
	
l6916:
	movf	((c:drawCircle@x)),c,w
	sublw	0
	addwf	((c:drawCircle@y0)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawCircle@color),(c:drawPixel@color)
	movff	(c:drawCircle@color+1),(c:drawPixel@color+1)
	movf	((c:drawCircle@y)),c,w
	sublw	0
	addwf	((c:drawCircle@x0)),c,w
	
	call	_drawPixel
	goto	l6918
	line	554
	
l801:
	line	537
	
l6918:
		movf	((c:drawCircle@y)),c,w
	subwf	((c:drawCircle@x)),c,w
	movf	((c:drawCircle@x+1)),c,w
	xorlw	80h
	movwf	(??_drawCircle+0+0)&0ffh,c
	movf	((c:drawCircle@y+1)),c,w
	xorlw	80h
	subwfb	(??_drawCircle+0+0)&0ffh,c,w
	btfss	status,0
	goto	u5271
	goto	u5270

u5271:
	goto	l6890
u5270:
	goto	l805
	
l804:
	line	555
	
l805:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_drawCircle
	__end_of_drawCircle:
	signat	_drawCircle,16504
	global	_TFT_GreenTab_Initialize

;; *************** function _TFT_GreenTab_Initialize *****************
;; Defined at:
;;		line 645 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Rcmd1
;;		_Rcmd2red
;;		_Rcmd3
;;		_write_command
;;		_write_data
;; This function is called by:
;;		_Initialize_Screen
;; This function uses a non-reentrant model
;;
psect	text50,class=CODE,space=0,reloc=2
	line	645
global __ptext50
__ptext50:
psect	text50
	file	"ST7735_TFT.c"
	line	645
	global	__size_of_TFT_GreenTab_Initialize
	__size_of_TFT_GreenTab_Initialize	equ	__end_of_TFT_GreenTab_Initialize-_TFT_GreenTab_Initialize
	
_TFT_GreenTab_Initialize:
;incstack = 0
	opt	stack 22
	line	647
	
l9824:
	bsf	((c:3971)),c,4	;volatile
	line	648
	bcf	((c:3971)),c,3	;volatile
	line	650
	
l9826:
	movlw	low(080h)
	movwf	((c:4039)),c	;volatile
	line	651
	movlw	low(030h)
	movwf	((c:4038)),c	;volatile
	line	654
	
l9828:
	call	_Rcmd1	;wreg free
	line	655
	
l9830:
	call	_Rcmd2red	;wreg free
	line	656
	
l9832:
	call	_Rcmd3	;wreg free
	line	657
	
l9834:
	movlw	(036h)&0ffh
	
	call	_write_command
	line	658
	
l9836:
	movlw	(0C0h)&0ffh
	
	call	_write_data
	line	659
	
l9838:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((__tft_type))&0ffh
	line	660
	
l844:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TFT_GreenTab_Initialize
	__end_of_TFT_GreenTab_Initialize:
	signat	_TFT_GreenTab_Initialize,88
	global	_Rcmd3

;; *************** function _Rcmd3 *****************
;; Defined at:
;;		line 339 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_write_command
;;		_write_data
;; This function is called by:
;;		_TFT_GreenTab_Initialize
;;		_TFT_BlackTab_Initialize
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2
	line	339
global __ptext51
__ptext51:
psect	text51
	file	"ST7735_TFT.c"
	line	339
	global	__size_of_Rcmd3
	__size_of_Rcmd3	equ	__end_of_Rcmd3-_Rcmd3
	
_Rcmd3:; BSR set to: 0

;incstack = 0
	opt	stack 22
	line	341
	
l9150:
	movlw	(0E0h)&0ffh
	
	call	_write_command
	line	342
	movlw	(02h)&0ffh
	
	call	_write_data
	movlw	(01Ch)&0ffh
	
	call	_write_data
	movlw	(07h)&0ffh
	
	call	_write_data
	movlw	(012h)&0ffh
	
	call	_write_data
	line	343
	movlw	(037h)&0ffh
	
	call	_write_data
	movlw	(032h)&0ffh
	
	call	_write_data
	movlw	(029h)&0ffh
	
	call	_write_data
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	344
	movlw	(029h)&0ffh
	
	call	_write_data
	movlw	(025h)&0ffh
	
	call	_write_data
	movlw	(02Bh)&0ffh
	
	call	_write_data
	movlw	(039h)&0ffh
	
	call	_write_data
	line	345
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(01h)&0ffh
	
	call	_write_data
	movlw	(03h)&0ffh
	
	call	_write_data
	movlw	(010h)&0ffh
	
	call	_write_data
	line	346
	movlw	(0E1h)&0ffh
	
	call	_write_command
	line	347
	movlw	(03h)&0ffh
	
	call	_write_data
	movlw	(01Dh)&0ffh
	
	call	_write_data
	movlw	(07h)&0ffh
	
	call	_write_data
	movlw	(06h)&0ffh
	
	call	_write_data
	line	348
	movlw	(02Eh)&0ffh
	
	call	_write_data
	movlw	(02Ch)&0ffh
	
	call	_write_data
	movlw	(029h)&0ffh
	
	call	_write_data
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	349
	movlw	(02Eh)&0ffh
	
	call	_write_data
	movlw	(02Eh)&0ffh
	
	call	_write_data
	movlw	(037h)&0ffh
	
	call	_write_data
	movlw	(03Fh)&0ffh
	
	call	_write_data
	line	350
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(02h)&0ffh
	
	call	_write_data
	movlw	(010h)&0ffh
	
	call	_write_data
	line	351
	movlw	(013h)&0ffh
	
	call	_write_command
	line	352
	
l9152:
	movlw	high(0Ah)
	movwf	((c:delay_ms@ms+1)),c
	movlw	low(0Ah)
	movwf	((c:delay_ms@ms)),c
	call	_delay_ms	;wreg free
	line	353
	
l9154:
	movlw	(029h)&0ffh
	
	call	_write_command
	line	354
	movlw	high(064h)
	movwf	((c:delay_ms@ms+1)),c
	movlw	low(064h)
	movwf	((c:delay_ms@ms)),c
	call	_delay_ms	;wreg free
	line	355
	
l713:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Rcmd3
	__end_of_Rcmd3:
	signat	_Rcmd3,88
	global	_Rcmd2red

;; *************** function _Rcmd2red *****************
;; Defined at:
;;		line 329 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_write_command
;;		_write_data
;; This function is called by:
;;		_TFT_GreenTab_Initialize
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2
	line	329
global __ptext52
__ptext52:
psect	text52
	file	"ST7735_TFT.c"
	line	329
	global	__size_of_Rcmd2red
	__size_of_Rcmd2red	equ	__end_of_Rcmd2red-_Rcmd2red
	
_Rcmd2red:
;incstack = 0
	opt	stack 22
	line	331
	
l6034:
	movlw	(02Ah)&0ffh
	
	call	_write_command
	line	332
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(0)&0ffh
	
	call	_write_data
	line	333
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(07Fh)&0ffh
	
	call	_write_data
	line	334
	movlw	(02Bh)&0ffh
	
	call	_write_command
	line	335
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(0)&0ffh
	
	call	_write_data
	line	336
	movlw	(0)&0ffh
	
	call	_write_data
	movlw	(09Fh)&0ffh
	
	call	_write_data
	line	337
	
l710:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Rcmd2red
	__end_of_Rcmd2red:
	signat	_Rcmd2red,88
	global	_Rcmd1

;; *************** function _Rcmd1 *****************
;; Defined at:
;;		line 282 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;;		_write_command
;;		_write_data
;; This function is called by:
;;		_TFT_GreenTab_Initialize
;;		_TFT_BlackTab_Initialize
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2
	line	282
global __ptext53
__ptext53:
psect	text53
	file	"ST7735_TFT.c"
	line	282
	global	__size_of_Rcmd1
	__size_of_Rcmd1	equ	__end_of_Rcmd1-_Rcmd1
	
_Rcmd1:
;incstack = 0
	opt	stack 22
	line	284
	
l9066:
	movlw	(01h)&0ffh
	
	call	_write_command
	line	285
	
l9068:
	movlw	high(096h)
	movwf	((c:delay_ms@ms+1)),c
	movlw	low(096h)
	movwf	((c:delay_ms@ms)),c
	call	_delay_ms	;wreg free
	line	286
	
l9070:
	movlw	(011h)&0ffh
	
	call	_write_command
	line	287
	movlw	high(01F4h)
	movwf	((c:delay_ms@ms+1)),c
	movlw	low(01F4h)
	movwf	((c:delay_ms@ms)),c
	call	_delay_ms	;wreg free
	line	288
	
l9072:
	movlw	(0B1h)&0ffh
	
	call	_write_command
	line	289
	
l9074:
	movlw	(01h)&0ffh
	
	call	_write_data
	line	290
	
l9076:
	movlw	(02Ch)&0ffh
	
	call	_write_data
	line	291
	
l9078:
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	292
	
l9080:
	movlw	(0B2h)&0ffh
	
	call	_write_command
	line	293
	
l9082:
	movlw	(01h)&0ffh
	
	call	_write_data
	line	294
	
l9084:
	movlw	(02Ch)&0ffh
	
	call	_write_data
	line	295
	
l9086:
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	296
	
l9088:
	movlw	(0B3h)&0ffh
	
	call	_write_command
	line	297
	
l9090:
	movlw	(01h)&0ffh
	
	call	_write_data
	line	298
	
l9092:
	movlw	(02Ch)&0ffh
	
	call	_write_data
	line	299
	
l9094:
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	300
	
l9096:
	movlw	(01h)&0ffh
	
	call	_write_data
	line	301
	
l9098:
	movlw	(02Ch)&0ffh
	
	call	_write_data
	line	302
	
l9100:
	movlw	(02Dh)&0ffh
	
	call	_write_data
	line	303
	
l9102:
	movlw	(0B4h)&0ffh
	
	call	_write_command
	line	304
	
l9104:
	movlw	(07h)&0ffh
	
	call	_write_data
	line	305
	
l9106:
	movlw	(0C0h)&0ffh
	
	call	_write_command
	line	306
	
l9108:
	movlw	(0A2h)&0ffh
	
	call	_write_data
	line	307
	
l9110:
	movlw	(02h)&0ffh
	
	call	_write_data
	line	308
	
l9112:
	movlw	(084h)&0ffh
	
	call	_write_data
	line	309
	
l9114:
	movlw	(0C1h)&0ffh
	
	call	_write_command
	line	310
	
l9116:
	movlw	(0C5h)&0ffh
	
	call	_write_data
	line	311
	
l9118:
	movlw	(0C2h)&0ffh
	
	call	_write_command
	line	312
	
l9120:
	movlw	(0Ah)&0ffh
	
	call	_write_data
	line	313
	
l9122:
	movlw	(0)&0ffh
	
	call	_write_data
	line	314
	
l9124:
	movlw	(0C3h)&0ffh
	
	call	_write_command
	line	315
	
l9126:
	movlw	(08Ah)&0ffh
	
	call	_write_data
	line	316
	
l9128:
	movlw	(02Ah)&0ffh
	
	call	_write_data
	line	317
	
l9130:
	movlw	(0C4h)&0ffh
	
	call	_write_command
	line	318
	
l9132:
	movlw	(08Ah)&0ffh
	
	call	_write_data
	line	319
	
l9134:
	movlw	(0EEh)&0ffh
	
	call	_write_data
	line	320
	
l9136:
	movlw	(0C5h)&0ffh
	
	call	_write_command
	line	321
	
l9138:
	movlw	(0Eh)&0ffh
	
	call	_write_data
	line	322
	
l9140:
	movlw	(020h)&0ffh
	
	call	_write_command
	line	323
	
l9142:
	movlw	(036h)&0ffh
	
	call	_write_command
	line	324
	
l9144:
	movlw	(0C8h)&0ffh
	
	call	_write_data
	line	325
	
l9146:
	movlw	(03Ah)&0ffh
	
	call	_write_command
	line	326
	
l9148:
	movlw	(05h)&0ffh
	
	call	_write_data
	line	327
	
l707:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Rcmd1
	__end_of_Rcmd1:
	signat	_Rcmd1,88
	global	_LCD_Reset

;; *************** function _LCD_Reset *****************
;; Defined at:
;;		line 218 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_Initialize_Screen
;; This function uses a non-reentrant model
;;
psect	text54,class=CODE,space=0,reloc=2
	line	218
global __ptext54
__ptext54:
psect	text54
	file	"ST7735_TFT.c"
	line	218
	global	__size_of_LCD_Reset
	__size_of_LCD_Reset	equ	__end_of_LCD_Reset-_LCD_Reset
	
_LCD_Reset:
;incstack = 0
	opt	stack 23
	line	220
	
l9818:
	bcf	((c:3971)),c,5	;volatile
	line	221
	
l9820:
	movlw	high(064h)
	movwf	((c:delay_ms@ms+1)),c
	movlw	low(064h)
	movwf	((c:delay_ms@ms)),c
	call	_delay_ms	;wreg free
	line	222
	
l9822:
	bsf	((c:3971)),c,5	;volatile
	line	223
	
l701:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Reset
	__end_of_LCD_Reset:
	signat	_LCD_Reset,88
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 65 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  ms              2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  count           2   26[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_LCD_Reset
;;		_Rcmd1
;;		_Rcmd3
;;		_Bcmd
;; This function uses a non-reentrant model
;;
psect	text55,class=CODE,space=0,reloc=2
	line	65
global __ptext55
__ptext55:
psect	text55
	file	"ST7735_TFT.c"
	line	65
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:
;incstack = 0
	opt	stack 22
	line	72
	
l8850:
	movff	(c:delay_ms@ms),(c:___wmul@multiplier)
	movff	(c:delay_ms@ms+1),(c:___wmul@multiplier+1)
	movlw	high(07Dh)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(07Dh)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:delay_ms@count)
	movff	1+?___wmul,(c:delay_ms@count+1)
	line	73
	
l8852:
	movff	(c:delay_ms@count),??_delay_ms+0+0
	movff	(c:delay_ms@count+1),??_delay_ms+0+0+1
	comf	(??_delay_ms+0+0),c
	comf	(??_delay_ms+0+1),c
	infsnz	(??_delay_ms+0+0),c
	incf	(??_delay_ms+0+1),c
	movlw	low(0FFFFh)
	addwf	(??_delay_ms+0+0),c,w
	movwf	((c:delay_ms@count)),c
	movlw	high(0FFFFh)
	addwfc	(??_delay_ms+0+1),c,w
	movwf	1+((c:delay_ms@count)),c
	line	75
	
l8854:
	movlw	low(03h)
	movwf	((c:4053)),c	;volatile
	line	77
	
l8856:
	movff	(c:delay_ms@count),(c:4054)	;volatile
	line	78
	
l8858:
	movf	((c:delay_ms@count+1)),c,w
	movwf	((c:4055)),c	;volatile
	line	80
	
l8860:
	bcf	((c:4082)),c,2	;volatile
	line	81
	
l8862:
	bsf	((c:4053)),c,7	;volatile
	line	83
	goto	l679
	
l680:
	
l679:
	btfss	((c:4082)),c,2	;volatile
	goto	u6771
	goto	u6770
u6771:
	goto	l679
u6770:
	
l681:
	line	84
	bcf	((c:4053)),c,7	;volatile
	line	85
	
l682:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_DS3231_Write_Alarm_Time

;; *************** function _DS3231_Write_Alarm_Time *****************
;; Defined at:
;;		line 193 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Address         1   74[COMRAM] unsigned char 
;;  Device          1   73[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DS3231_Read_Time
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;;		_dec_2_bcd
;; This function is called by:
;;		_Do_Save_New_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text56,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	193
global __ptext56
__ptext56:
psect	text56
	file	"I2C_Support.c"
	line	193
	global	__size_of_DS3231_Write_Alarm_Time
	__size_of_DS3231_Write_Alarm_Time	equ	__end_of_DS3231_Write_Alarm_Time-_DS3231_Write_Alarm_Time
	
_DS3231_Write_Alarm_Time:
;incstack = 0
	opt	stack 22
	line	195
	
l9970:
	call	_DS3231_Read_Time	;wreg free
	line	196
	
l9972:
	movff	(c:_day),(_alarm_date)
	line	197
	
l9974:
	movlw	low(068h)
	movwf	((c:DS3231_Write_Alarm_Time@Device)),c
	line	198
	
l9976:
	movlw	low(07h)
	movwf	((c:DS3231_Write_Alarm_Time@Address)),c
	line	199
	movlb	0	; () banked
	movf	((_setup_alarm_hour))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_alarm_hour)),c
	line	200
	movlb	0	; () banked
	movf	((_setup_alarm_minute))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_alarm_minute)),c
	line	201
	movlb	0	; () banked
	movf	((_setup_alarm_second))&0ffh,w
	
	call	_dec_2_bcd
	movf	(0+?_dec_2_bcd),c,w
	movwf	((c:_alarm_second)),c
	line	202
	
l9978:
	movf	((c:_alarm_second)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_second)),c
	line	203
	
l9980:
	movf	((c:_alarm_minute)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_minute)),c
	line	204
	
l9982:
	movf	((c:_alarm_hour)),c,w
	andlw	low(07Fh)
	movwf	((c:_alarm_hour)),c
	line	205
	
l9984:
	movlb	0	; () banked
	movf	((_alarm_date))&0ffh,w
	iorlw	low(080h)
	movlb	0	; () banked
	movwf	((_alarm_date))&0ffh
	line	206
	
l9986:; BSR set to: 0

	call	_I2C_Start	;wreg free
	line	207
	
l9988:
	movf	((c:DS3231_Write_Alarm_Time@Device)),c,w
	addwf	((c:DS3231_Write_Alarm_Time@Device)),c,w
	
	call	_I2C_Write
	line	208
	
l9990:
	movf	((c:DS3231_Write_Alarm_Time@Address)),c,w
	
	call	_I2C_Write
	line	210
	
l9992:
	movf	((c:_alarm_second)),c,w
	
	call	_I2C_Write
	line	211
	
l9994:
	movf	((c:_alarm_minute)),c,w
	
	call	_I2C_Write
	line	212
	
l9996:
	movf	((c:_alarm_hour)),c,w
	
	call	_I2C_Write
	line	213
	
l9998:
	movlb	0	; () banked
	movf	((_alarm_date))&0ffh,w
	
	call	_I2C_Write
	line	214
	
l10000:
	call	_I2C_Stop	;wreg free
	line	215
	
l226:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Write_Alarm_Time
	__end_of_DS3231_Write_Alarm_Time:
	signat	_DS3231_Write_Alarm_Time,88
	global	_dec_2_bcd

;; *************** function _dec_2_bcd *****************
;; Defined at:
;;		line 54 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  dec             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dec             1   72[COMRAM] unsigned char 
;;  bcd             2   70[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   66[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_DS3231_Write_Time
;;		_DS3231_Write_Alarm_Time
;;		_DS3231_Write_Initial_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text57,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	54
global __ptext57
__ptext57:
psect	text57
	file	"utils.c"
	line	54
	global	__size_of_dec_2_bcd
	__size_of_dec_2_bcd	equ	__end_of_dec_2_bcd-_dec_2_bcd
	
_dec_2_bcd:
;incstack = 0
	opt	stack 24
	movwf	((c:dec_2_bcd@dec)),c
	line	57
	
l9522:
	movff	(c:dec_2_bcd@dec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_dec_2_bcd+0+0
	movff	1+?___awdiv,??_dec_2_bcd+0+0+1
	swapf	(??_dec_2_bcd+0+0),c
	swapf	(??_dec_2_bcd+0+1),c
	movlw	0f0h
	andwf	(??_dec_2_bcd+0+1),c
	movf	(??_dec_2_bcd+0+0),c,w
	andlw	0fh
	iorwf	(??_dec_2_bcd+0+1),c
	movlw	0f0h
	andwf	(??_dec_2_bcd+0+0),c
	movff	(c:dec_2_bcd@dec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addwf	(??_dec_2_bcd+0+0),c,w
	movwf	((c:dec_2_bcd@bcd)),c
	movf	(1+?___awmod),c,w
	addwfc	(??_dec_2_bcd+0+1),c,w
	movwf	1+((c:dec_2_bcd@bcd)),c
	line	58
	
l9524:
	movff	(c:dec_2_bcd@bcd),(c:?_dec_2_bcd)
	movff	(c:dec_2_bcd@bcd+1),(c:?_dec_2_bcd+1)
	goto	l1345
	
l9526:
	line	59
	
l1345:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_dec_2_bcd
	__end_of_dec_2_bcd:
	signat	_dec_2_bcd,4218
	global	_DS3231_Read_Time

;; *************** function _DS3231_Read_Time *****************
;; Defined at:
;;		line 45 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   20[COMRAM] unsigned char 
;;  Address         1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_ReStart
;;		_I2C_Read
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_DS3231_Write_Alarm_Time
;;		_main
;;		_Exit_Setup_Alarm_Time
;;		_Do_Save_New_Alarm_Time
;;		_Exit_Setup_Fan_Temp
;;		_Do_Save_New_Fan_Temp
;;		_Do_Setup_Time
;;		_Do_Save_New_Time
;;		_Exit_Time_Setup
;;		_DS3231_Write_Initial_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text58,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	45
global __ptext58
__ptext58:
psect	text58
	file	"I2C_Support.c"
	line	45
	global	__size_of_DS3231_Read_Time
	__size_of_DS3231_Read_Time	equ	__end_of_DS3231_Read_Time-_DS3231_Read_Time
	
_DS3231_Read_Time:
;incstack = 0
	opt	stack 23
	line	47
	
l6482:
	movlw	low(068h)
	movwf	((c:DS3231_Read_Time@Device)),c
	line	48
	movlw	low(0)
	movwf	((c:DS3231_Read_Time@Address)),c
	line	50
	
l6484:
	call	_I2C_Start	;wreg free
	line	51
	
l6486:
	movf	((c:DS3231_Read_Time@Device)),c,w
	addwf	((c:DS3231_Read_Time@Device)),c,w
	
	call	_I2C_Write
	line	52
	
l6488:
	movf	((c:DS3231_Read_Time@Address)),c,w
	
	call	_I2C_Write
	line	53
	
l6490:
	call	_I2C_ReStart	;wreg free
	line	54
	
l6492:
	bsf	status,0
	
	rlcf	((c:DS3231_Read_Time@Device)),c,w
	
	call	_I2C_Write
	line	55
	
l6494:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_second)),c
	line	56
	
l6496:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_minute)),c
	line	57
	
l6498:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_hour)),c
	line	58
	
l6500:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movlb	0	; () banked
	movwf	((_dow))&0ffh
	line	59
	
l6502:; BSR set to: 0

	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_day)),c
	line	60
	
l6504:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_month)),c
	line	61
	
l6506:
	movlw	(0)&0ffh
	
	call	_I2C_Read
	movlb	0	; () banked
	movwf	((_year))&0ffh
	line	62
	
l6508:; BSR set to: 0

	call	_I2C_Stop	;wreg free
	line	64
	
l208:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Read_Time
	__end_of_DS3231_Read_Time:
	signat	_DS3231_Read_Time,88
	global	_DS3231_Read_Alarm_Time

;; *************** function _DS3231_Read_Alarm_Time *****************
;; Defined at:
;;		line 139 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   20[COMRAM] unsigned char 
;;  Address         1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_ReStart
;;		_I2C_Read
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_main
;;		_Do_Setup_Alarm_Time
;;		_Do_Save_New_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text59,class=CODE,space=0,reloc=2
	line	139
global __ptext59
__ptext59:
psect	text59
	file	"I2C_Support.c"
	line	139
	global	__size_of_DS3231_Read_Alarm_Time
	__size_of_DS3231_Read_Alarm_Time	equ	__end_of_DS3231_Read_Alarm_Time-_DS3231_Read_Alarm_Time
	
_DS3231_Read_Alarm_Time:
;incstack = 0
	opt	stack 23
	line	141
	
l7030:
	movlw	low(068h)
	movwf	((c:DS3231_Read_Alarm_Time@Device)),c
	line	142
	movlw	low(07h)
	movwf	((c:DS3231_Read_Alarm_Time@Address)),c
	line	143
	
l7032:
	call	_I2C_Start	;wreg free
	line	144
	
l7034:
	movf	((c:DS3231_Read_Alarm_Time@Device)),c,w
	addwf	((c:DS3231_Read_Alarm_Time@Device)),c,w
	
	call	_I2C_Write
	line	145
	
l7036:
	movf	((c:DS3231_Read_Alarm_Time@Address)),c,w
	
	call	_I2C_Write
	line	146
	
l7038:
	call	_I2C_ReStart	;wreg free
	line	147
	
l7040:
	bsf	status,0
	
	rlcf	((c:DS3231_Read_Alarm_Time@Device)),c,w
	
	call	_I2C_Write
	line	148
	
l7042:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_second)),c
	line	149
	
l7044:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_minute)),c
	line	150
	
l7046:
	movlw	(01h)&0ffh
	
	call	_I2C_Read
	movwf	((c:_alarm_hour)),c
	line	151
	
l7048:
	movlw	(0)&0ffh
	
	call	_I2C_Read
	movlb	0	; () banked
	movwf	((_alarm_date))&0ffh
	line	152
	
l7050:; BSR set to: 0

	call	_I2C_Stop	;wreg free
	line	153
	
l220:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS3231_Read_Alarm_Time
	__end_of_DS3231_Read_Alarm_Time:
	signat	_DS3231_Read_Alarm_Time,88
	global	_Do_Beep_Good

;; *************** function _Do_Beep_Good *****************
;; Defined at:
;;		line 70 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Activate_Buzzer_2KHz
;;		_Deactivate_Buzzer
;;		_Wait_One_Sec
;;		_do_update_pwm
;; This function is called by:
;;		_main
;;		_Do_Setup_Alarm_Time
;;		_Setup_Temp_Fan
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text60,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	70
global __ptext60
__ptext60:
psect	text60
	file	"utils.c"
	line	70
	global	__size_of_Do_Beep_Good
	__size_of_Do_Beep_Good	equ	__end_of_Do_Beep_Good-_Do_Beep_Good
	
_Do_Beep_Good:
;incstack = 0
	opt	stack 24
	line	73
	
l10118:
	call	_Activate_Buzzer_2KHz	;wreg free
	line	74
	
l10120:
	call	_Wait_One_Sec	;wreg free
	line	75
	
l10122:
	call	_Deactivate_Buzzer	;wreg free
	line	76
	call	_Wait_One_Sec	;wreg free
	line	77
	movf	((c:_duty_cycle)),c,w
	
	call	_do_update_pwm
	line	78
	
l1351:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Beep_Good
	__end_of_Do_Beep_Good:
	signat	_Do_Beep_Good,88
	global	_Activate_Buzzer_2KHz

;; *************** function _Activate_Buzzer_2KHz *****************
;; Defined at:
;;		line 113 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Beep_Good
;; This function uses a non-reentrant model
;;
psect	text61,class=CODE,space=0,reloc=2
	line	113
global __ptext61
__ptext61:
psect	text61
	file	"utils.c"
	line	113
	global	__size_of_Activate_Buzzer_2KHz
	__size_of_Activate_Buzzer_2KHz	equ	__end_of_Activate_Buzzer_2KHz-_Activate_Buzzer_2KHz
	
_Activate_Buzzer_2KHz:
;incstack = 0
	opt	stack 26
	line	116
	
l7330:
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	117
	movlw	low(05h)
	movwf	((c:4042)),c	;volatile
	line	118
	movlw	low(07Ch)
	movwf	((c:4027)),c	;volatile
	line	119
	movlw	low(03Ch)
	movwf	((c:4026)),c	;volatile
	line	120
	
l1368:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Activate_Buzzer_2KHz
	__end_of_Activate_Buzzer_2KHz:
	signat	_Activate_Buzzer_2KHz,88
	global	_Do_Beep_Bad

;; *************** function _Do_Beep_Bad *****************
;; Defined at:
;;		line 80 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Activate_Buzzer_500Hz
;;		_Deactivate_Buzzer
;;		_Wait_One_Sec
;;		_do_update_pwm
;; This function is called by:
;;		_main
;;		_Do_Setup_Alarm_Time
;;		_Setup_Temp_Fan
;;		_Do_Setup_Time
;; This function uses a non-reentrant model
;;
psect	text62,class=CODE,space=0,reloc=2
	line	80
global __ptext62
__ptext62:
psect	text62
	file	"utils.c"
	line	80
	global	__size_of_Do_Beep_Bad
	__size_of_Do_Beep_Bad	equ	__end_of_Do_Beep_Bad-_Do_Beep_Bad
	
_Do_Beep_Bad:
;incstack = 0
	opt	stack 24
	line	83
	
l10124:
	call	_Activate_Buzzer_500Hz	;wreg free
	line	84
	
l10126:
	call	_Wait_One_Sec	;wreg free
	line	85
	
l10128:
	call	_Deactivate_Buzzer	;wreg free
	line	86
	call	_Wait_One_Sec	;wreg free
	line	87
	movf	((c:_duty_cycle)),c,w
	
	call	_do_update_pwm
	line	89
	
l1354:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Beep_Bad
	__end_of_Do_Beep_Bad:
	signat	_Do_Beep_Bad,88
	global	_do_update_pwm

;; *************** function _do_update_pwm *****************
;; Defined at:
;;		line 137 in file "utils.c"
;; Parameters:    Size  Location     Type
;;  duty_cycle      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  duty_cycle      1   66[COMRAM] unsigned char 
;;  dc_f            3   63[COMRAM] float 
;;  dc_I            2   67[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___lbtoft
;; This function is called by:
;;		_Monitor_Fan
;;		_Do_Beep_Good
;;		_Do_Beep_Bad
;;		_Turn_On_Fan
;;		_Do_Beep
;; This function uses a non-reentrant model
;;
psect	text63,class=CODE,space=0,reloc=2
	line	137
global __ptext63
__ptext63:
psect	text63
	file	"utils.c"
	line	137
	global	__size_of_do_update_pwm
	__size_of_do_update_pwm	equ	__end_of_do_update_pwm-_do_update_pwm
	
_do_update_pwm:
;incstack = 0
	opt	stack 24
	line	138
	movwf	((c:do_update_pwm@duty_cycle)),c
	line	141
	
l9926:
	movlw	low(04h)
	movwf	((c:4043)),c	;volatile
	line	142
	movlw	low(07h)
	movwf	((c:4042)),c	;volatile
	line	143
	
l9928:
	movlw	low(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(4.0000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	movf	((c:do_update_pwm@duty_cycle)),c,w
	
	call	___lbtoft
	movff	0+?___lbtoft,(c:___ftmul@f1)
	movff	1+?___lbtoft,(c:___ftmul@f1+1)
	movff	2+?___lbtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftdiv@f1)
	movff	1+?___ftmul,(c:___ftdiv@f1+1)
	movff	2+?___ftmul,(c:___ftdiv@f1+2)
	movlw	low(float24(20.000000000000000))
	movwf	((c:___ftdiv@f2)),c
	movlw	high(float24(20.000000000000000))
	movwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(float24(20.000000000000000))
	movwf	((c:___ftdiv@f2+2)),c

	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:do_update_pwm@dc_f)
	movff	1+?___ftdiv,(c:do_update_pwm@dc_f+1)
	movff	2+?___ftdiv,(c:do_update_pwm@dc_f+2)
	line	144
	
l9930:
	movff	(c:do_update_pwm@dc_f),(c:___fttol@f1)
	movff	(c:do_update_pwm@dc_f+1),(c:___fttol@f1+1)
	movff	(c:do_update_pwm@dc_f+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:do_update_pwm@dc_I)
	movff	1+?___fttol,(c:do_update_pwm@dc_I+1)
	line	145
	
l9932:
	movf	((c:do_update_pwm@duty_cycle)),c,w
	movwf	(??_do_update_pwm+0+0)&0ffh,c
	clrf	(??_do_update_pwm+0+0+1)&0ffh,c

		movf	((c:do_update_pwm@dc_I)),c,w
	subwf	(??_do_update_pwm+0+0),c,w
	movf	(??_do_update_pwm+0+1),c,w
	xorlw	80h
	movwf	(??_do_update_pwm+2+0)&0ffh,c
	movf	((c:do_update_pwm@dc_I+1)),c,w
	xorlw	80h
	subwfb	(??_do_update_pwm+2+0)&0ffh,c,w
	btfsc	status,0
	goto	u8401
	goto	u8400

u8401:
	goto	l9936
u8400:
	
l9934:
	infsnz	((c:do_update_pwm@dc_I)),c
	incf	((c:do_update_pwm@dc_I+1)),c
	goto	l9936
	
l1377:
	line	146
	
l9936:
	movff	(c:do_update_pwm@dc_I),??_do_update_pwm+0+0
	movlw	03h
	andwf	(??_do_update_pwm+0+0),c
	swapf	(??_do_update_pwm+0+0),c,w
	andlw	(0ffh shl 4) & 0ffh
	iorlw	low(0Ch)
	movwf	((c:4029)),c	;volatile
	line	147
	
l9938:
	movff	(c:do_update_pwm@dc_I),??_do_update_pwm+0+0
	movff	(c:do_update_pwm@dc_I+1),??_do_update_pwm+0+0+1
	rlcf	(??_do_update_pwm+0+1),c,w
	rrcf	(??_do_update_pwm+0+1),c
	rrcf	(??_do_update_pwm+0+0),c
	rlcf	(??_do_update_pwm+0+1),c,w
	rrcf	(??_do_update_pwm+0+1),c
	rrcf	(??_do_update_pwm+0+0),c
	movf	(??_do_update_pwm+0+0),c,w
	movwf	((c:4030)),c	;volatile
	line	148
	
l1378:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_do_update_pwm
	__end_of_do_update_pwm:
	signat	_do_update_pwm,4216
	global	___lbtoft

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 27 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   24[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_do_update_pwm
;; This function uses a non-reentrant model
;;
psect	text64,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lbtoft.c"
	line	27
global __ptext64
__ptext64:
psect	text64
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lbtoft.c"
	line	27
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:
;incstack = 0
	opt	stack 24
	movwf	((c:___lbtoft@c)),c
	line	29
	
l9922:
	movf	((c:___lbtoft@c)),c,w
	movwf	((c:___ftpack@arg)),c
	clrf	((c:___ftpack@arg+1)),c
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lbtoft)
	movff	1+?___ftpack,(c:?___lbtoft+1)
	movff	2+?___ftpack,(c:?___lbtoft+2)
	goto	l2063
	
l9924:
	line	30
	
l2063:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
	signat	___lbtoft,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[COMRAM] float 
;;  f2              3   48[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   55[COMRAM] float 
;;  sign            1   59[COMRAM] unsigned char 
;;  exp             1   58[COMRAM] unsigned char 
;;  cntr            1   54[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   45[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_do_update_pwm
;;		_read_volt
;; This function uses a non-reentrant model
;;
psect	text65,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdiv.c"
	line	54
global __ptext65
__ptext65:
psect	text65
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdiv.c"
	line	54
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:
;incstack = 0
	opt	stack 26
	line	63
	
l9876:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f1+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u8351
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u8351:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@exp)),c
	movf	((c:___ftdiv@exp)),c,w
	btfss	status,2
	goto	u8361
	goto	u8360
u8361:
	goto	l9882
u8360:
	line	64
	
l9878:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l1969
	
l9880:
	goto	l1969
	
l1968:
	line	65
	
l9882:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)&0ffh,c
	clrf	(??___ftdiv+0+0+2)&0ffh,c
	rlcf	((c:___ftdiv@f2+1)),c,w
	rlcf	(??___ftdiv+0+0)&0ffh,c
	bnc	u8371
	bsf	(??___ftdiv+0+0+1)&0ffh,c,0
u8371:
	movf	(??___ftdiv+0+0),c,w
	movwf	((c:___ftdiv@sign)),c
	movf	((c:___ftdiv@sign)),c,w
	btfss	status,2
	goto	u8381
	goto	u8380
u8381:
	goto	l9888
u8380:
	line	66
	
l9884:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2)),c

	goto	l1969
	
l9886:
	goto	l1969
	
l1970:
	line	67
	
l9888:
	movlw	low(0)
	movwf	((c:___ftdiv@f3)),c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1)),c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2)),c

	line	68
	
l9890:
	movf	((c:___ftdiv@sign)),c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp)),c
	line	69
	
l9892:
	movff	0+2+(c:___ftdiv@f1),(c:___ftdiv@sign)
	line	70
	
l9894:
	movf	(0+2+(c:___ftdiv@f2)),c,w
	xorwf	((c:___ftdiv@sign)),c
	line	71
	
l9896:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign)),c
	line	72
	
l9898:
	bsf	(0+(15/8)+(c:___ftdiv@f1)),c,(15)&7
	line	73
	
l9900:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2)),c

	line	74
	
l9902:
	bsf	(0+(15/8)+(c:___ftdiv@f2)),c,(15)&7
	line	75
	
l9904:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2)),c

	line	76
	
l9906:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr)),c
	goto	l9908
	line	77
	
l1971:
	line	78
	
l9908:
	bcf	status,0
	rlcf	((c:___ftdiv@f3)),c
	rlcf	((c:___ftdiv@f3+1)),c
	rlcf	((c:___ftdiv@f3+2)),c
	line	79
	
l9910:
		movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c,w
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c,w
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c,w
	btfss	status,0
	goto	u8391
	goto	u8390

u8391:
	goto	l1972
u8390:
	line	80
	
l9912:
	movf	((c:___ftdiv@f2)),c,w
	subwf	((c:___ftdiv@f1)),c
	movf	((c:___ftdiv@f2+1)),c,w
	subwfb	((c:___ftdiv@f1+1)),c
	movf	((c:___ftdiv@f2+2)),c,w
	subwfb	((c:___ftdiv@f1+2)),c

	line	81
	
l9914:
	bsf	(0+(0/8)+(c:___ftdiv@f3)),c,(0)&7
	line	82
	
l1972:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1)),c
	rlcf	((c:___ftdiv@f1+1)),c
	rlcf	((c:___ftdiv@f1+2)),c
	line	84
	
l9916:
	decfsz	((c:___ftdiv@cntr)),c
	
	goto	l9908
	goto	l9918
	
l1973:
	line	85
	
l9918:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	goto	l1969
	
l9920:
	line	86
	
l1969:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	_Wait_One_Sec

;; *************** function _Wait_One_Sec *****************
;; Defined at:
;;		line 91 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Beep_Good
;;		_Do_Beep_Bad
;;		_Do_Beep
;; This function uses a non-reentrant model
;;
psect	text66,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	91
global __ptext66
__ptext66:
psect	text66
	file	"utils.c"
	line	91
	global	__size_of_Wait_One_Sec
	__size_of_Wait_One_Sec	equ	__end_of_Wait_One_Sec-_Wait_One_Sec
	
_Wait_One_Sec:
;incstack = 0
	opt	stack 26
	line	93
	
l7320:
	movlw	high(0)
	movwf	((c:Wait_One_Sec@k+1)),c
	movlw	low(0)
	movwf	((c:Wait_One_Sec@k)),c
	
l7322:
		incf	((c:Wait_One_Sec@k)),c,w
	bnz	u5441
	incf	((c:Wait_One_Sec@k+1)),c,w
	btfss	status,2
	goto	u5441
	goto	u5440

u5441:
	goto	l7326
u5440:
	goto	l1359
	
l7324:
	goto	l1359
	
l1357:
	
l7326:
	infsnz	((c:Wait_One_Sec@k)),c
	incf	((c:Wait_One_Sec@k+1)),c
	
l7328:
		incf	((c:Wait_One_Sec@k)),c,w
	bnz	u5451
	incf	((c:Wait_One_Sec@k+1)),c,w
	btfss	status,2
	goto	u5451
	goto	u5450

u5451:
	goto	l7326
u5450:
	goto	l1359
	
l1358:
	line	94
	
l1359:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wait_One_Sec
	__end_of_Wait_One_Sec:
	signat	_Wait_One_Sec,88
	global	_Deactivate_Buzzer

;; *************** function _Deactivate_Buzzer *****************
;; Defined at:
;;		line 131 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_test_alarm
;;		_Do_Beep_Good
;;		_Do_Beep_Bad
;;		_Do_Beep
;; This function uses a non-reentrant model
;;
psect	text67,class=CODE,space=0,reloc=2
	line	131
global __ptext67
__ptext67:
psect	text67
	file	"utils.c"
	line	131
	global	__size_of_Deactivate_Buzzer
	__size_of_Deactivate_Buzzer	equ	__end_of_Deactivate_Buzzer-_Deactivate_Buzzer
	
_Deactivate_Buzzer:
;incstack = 0
	opt	stack 27
	line	133
	
l7234:
	movlw	low(0)
	movwf	((c:4026)),c	;volatile
	line	134
	
l7236:
	bcf	((c:3969)),c,3	;volatile
	line	135
	
l1374:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Deactivate_Buzzer
	__end_of_Deactivate_Buzzer:
	signat	_Deactivate_Buzzer,88
	global	_Activate_Buzzer_500Hz

;; *************** function _Activate_Buzzer_500Hz *****************
;; Defined at:
;;		line 104 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Beep_Bad
;; This function uses a non-reentrant model
;;
psect	text68,class=CODE,space=0,reloc=2
	line	104
global __ptext68
__ptext68:
psect	text68
	file	"utils.c"
	line	104
	global	__size_of_Activate_Buzzer_500Hz
	__size_of_Activate_Buzzer_500Hz	equ	__end_of_Activate_Buzzer_500Hz-_Activate_Buzzer_500Hz
	
_Activate_Buzzer_500Hz:
;incstack = 0
	opt	stack 26
	line	107
	
l7332:
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	108
	movlw	low(07h)
	movwf	((c:4042)),c	;volatile
	line	109
	movlw	low(07Ch)
	movwf	((c:4027)),c	;volatile
	line	110
	movlw	low(03Ch)
	movwf	((c:4026)),c	;volatile
	line	111
	
l1365:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Activate_Buzzer_500Hz
	__end_of_Activate_Buzzer_500Hz:
	signat	_Activate_Buzzer_500Hz,88
	global	_Decrease_Alarm_Time

;; *************** function _Decrease_Alarm_Time *****************
;; Defined at:
;;		line 89 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:   10
;; This function calls:
;;		_Update_Setup_Alarm_Time_Screen
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text69,class=CODE,space=0,reloc=2
	file	"Setup_Alarm_Time.c"
	line	89
global __ptext69
__ptext69:
psect	text69
	file	"Setup_Alarm_Time.c"
	line	89
	global	__size_of_Decrease_Alarm_Time
	__size_of_Decrease_Alarm_Time	equ	__end_of_Decrease_Alarm_Time-_Decrease_Alarm_Time
	
_Decrease_Alarm_Time:
;incstack = 0
	opt	stack 19
	line	91
	
l10152:
	goto	l10174
	line	93
	
l952:
	line	94
	
l10154:
	movlb	0	; () banked
	movf	((_setup_alarm_hour))&0ffh,w
	btfss	status,2
	goto	u8461
	goto	u8460
u8461:
	goto	l10158
u8460:
	
l10156:; BSR set to: 0

	movlw	low(017h)
	movlb	0	; () banked
	movwf	((_setup_alarm_hour))&0ffh
	goto	l10176
	line	95
	
l953:; BSR set to: 0

	
l10158:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_alarm_hour))&0ffh
	goto	l10176
	
l954:; BSR set to: 0

	line	96
	goto	l10176
	line	98
	
l956:; BSR set to: 0

	line	99
	
l10160:; BSR set to: 0

	movlb	0	; () banked
	movf	((_setup_alarm_minute))&0ffh,w
	btfss	status,2
	goto	u8471
	goto	u8470
u8471:
	goto	l10164
u8470:
	
l10162:; BSR set to: 0

	movlw	low(03Bh)
	movlb	0	; () banked
	movwf	((_setup_alarm_minute))&0ffh
	goto	l10176
	line	100
	
l957:; BSR set to: 0

	
l10164:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_alarm_minute))&0ffh
	goto	l10176
	
l958:; BSR set to: 0

	line	101
	goto	l10176
	line	104
	
l959:; BSR set to: 0

	line	106
	
l10166:; BSR set to: 0

	movlb	0	; () banked
	movf	((_setup_alarm_second))&0ffh,w
	btfss	status,2
	goto	u8481
	goto	u8480
u8481:
	goto	l10170
u8480:
	
l10168:; BSR set to: 0

	movlw	low(03Bh)
	movlb	0	; () banked
	movwf	((_setup_alarm_second))&0ffh
	goto	l10176
	line	107
	
l960:; BSR set to: 0

	
l10170:; BSR set to: 0

	movlb	0	; () banked
	decf	((_setup_alarm_second))&0ffh
	goto	l10176
	
l961:; BSR set to: 0

	line	108
	goto	l10176
	line	110
	
l962:; BSR set to: 0

	line	111
	goto	l10176
	line	112
	
l10172:; BSR set to: 0

	goto	l10176
	line	91
	
l951:; BSR set to: 0

	
l10174:
	movlb	0	; () banked
	movf	((_Select_Alarm_Field))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l10154
	xorlw	1^0	; case 1
	skipnz
	goto	l10160
	xorlw	2^1	; case 2
	skipnz
	goto	l10166
	goto	l10176

	line	112
	
l955:; BSR set to: 0

	line	113
	
l10176:; BSR set to: 0

	call	_Update_Setup_Alarm_Time_Screen	;wreg free
	line	115
	
l963:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Decrease_Alarm_Time
	__end_of_Decrease_Alarm_Time:
	signat	_Decrease_Alarm_Time,88
	global	_Update_Setup_Alarm_Time_Screen

;; *************** function _Update_Setup_Alarm_Time_Screen *****************
;; Defined at:
;;		line 165 in file "Setup_Alarm_Time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    9
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_drawtext
;;		_printf
;; This function is called by:
;;		_Do_Setup_Alarm_Time
;;		_Increase_Alarm_Time
;;		_Decrease_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text70,class=CODE,space=0,reloc=2
	line	165
global __ptext70
__ptext70:
psect	text70
	file	"Setup_Alarm_Time.c"
	line	165
	global	__size_of_Update_Setup_Alarm_Time_Screen
	__size_of_Update_Setup_Alarm_Time_Screen	equ	__end_of_Update_Setup_Alarm_Time_Screen-_Update_Setup_Alarm_Time_Screen
	
_Update_Setup_Alarm_Time_Screen:
;incstack = 0
	opt	stack 20
	line	167
	
l10050:
		movlw	low(STR_27)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_27)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_setup_alarm_hour),0+(?_printf+02h)
	movlb	0	; () banked
	clrf	(1+(?_printf+02h))&0ffh
	movff	(_setup_alarm_minute),0+(?_printf+04h)
	movlb	0	; () banked
	clrf	(1+(?_printf+04h))&0ffh
	movff	(_setup_alarm_second),0+(?_printf+06h)
	movlb	0	; () banked
	clrf	(1+(?_printf+06h))&0ffh
	call	_printf	;wreg free
	line	168
	
l10052:
	movff	(_setup_alarm_hour),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((_setup_alarm_time))&0ffh
	line	169
	
l10054:; BSR set to: 1

	movff	(_setup_alarm_hour),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_alarm_time+01h))&0ffh
	line	170
	
l10056:; BSR set to: 1

	movff	(_setup_alarm_minute),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_alarm_time+03h))&0ffh
	line	171
	
l10058:; BSR set to: 1

	movff	(_setup_alarm_minute),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_alarm_time+04h))&0ffh
	line	172
	
l10060:; BSR set to: 1

	movff	(_setup_alarm_second),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_alarm_time+06h))&0ffh
	line	173
	
l10062:; BSR set to: 1

	movff	(_setup_alarm_second),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	call	___awmod	;wreg free
	movf	(0+?___awmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	(0+(_setup_alarm_time+07h))&0ffh
	line	174
	movlw	low(034h)
	movwf	((c:drawtext@y)),c
		movlw	low(_setup_alarm_time)
	movwf	((c:drawtext@_text)),c
	movlw	high(_setup_alarm_time)
	movwf	((c:drawtext@_text+1)),c

	movlw	high(07FFh)
	movwf	((c:drawtext@color+1)),c
	setf	((c:drawtext@color)),c
	movlw	high(0)
	movwf	((c:drawtext@bg+1)),c
	movlw	low(0)
	movwf	((c:drawtext@bg)),c
	movlw	low(02h)
	movwf	((c:drawtext@size)),c
	movlw	(0Fh)&0ffh
	
	call	_drawtext
	line	175
	
l984:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Update_Setup_Alarm_Time_Screen
	__end_of_Update_Setup_Alarm_Time_Screen:
	signat	_Update_Setup_Alarm_Time_Screen,88
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_35(22), STR_27(11), STR_5(12), STR_4(19), 
;;		 -> STR_3(23), STR_2(21), STR_1(30), 
;; Auto vars:     Size  Location     Type
;;  idx             1    3[BANK1 ] unsigned char 
;;  val             4   16[BANK1 ] unsigned long 
;;  tmpval          4    8[BANK1 ] struct .
;;  fval            3   22[BANK1 ] struct .
;;  cp              3    0        PTR const unsigned char 
;;  flag            2   20[BANK1 ] unsigned short 
;;  exp             2   14[BANK1 ] int 
;;  width           2   12[BANK1 ] int 
;;  prec            2    6[BANK1 ] int 
;;  ap              2    4[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   25[BANK1 ] char 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0      14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      26       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      20      26       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       46 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_putch
;;		_scale
;; This function is called by:
;;		_main
;;		_Update_Setup_Alarm_Time_Screen
;;		_check_for_button_input
;; This function uses a non-reentrant model
;;
psect	text71,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	464
global __ptext71
__ptext71:
psect	text71
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:
;incstack = 0
	opt	stack 25
	line	533
	
l9528:
		movlw	low(?_printf+02h)
	movlb	1	; () banked
	movwf	((printf@ap))&0ffh
	movlw	high(?_printf+02h)
	movlb	1	; () banked
	movwf	((printf@ap+1))&0ffh

	line	536
	goto	l9816
	
l1434:; BSR set to: 1

	line	538
	
l9530:; BSR set to: 1

		movlw	37
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfsc	status,2
	goto	u7771
	goto	u7770

u7771:
	goto	l9534
u7770:
	line	541
	
l9532:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	line	542
	goto	l9816
	line	543
	
l1435:
	line	546
	
l9534:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	line	548
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@flag+1))&0ffh
	movlw	low(0)
	movwf	((printf@flag))&0ffh
	goto	l9540
	line	550
	
l1436:; BSR set to: 1

	line	551
	goto	l9540
	line	579
	
l1438:; BSR set to: 1

	line	580
	
l9536:
	movlb	1	; () banked
	bsf	(0+(2/8)+(printf@flag))&0ffh,(2)&7
	line	581
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	582
	goto	l9540
	line	584
	
l9538:; BSR set to: 0

	goto	l9542
	line	551
	
l1437:; BSR set to: 0

	
l9540:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	48^0	; case 48
	skipnz
	goto	l9536
	goto	l9542

	line	584
	
l1440:
	line	585
	goto	l9542
	line	586
	
l1439:
	goto	l9540
	
l1441:
	line	597
	
l9542:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfss	status,0
	goto	u7781
	goto	u7780
u7781:
	goto	l9560
u7780:
	line	598
	
l9544:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l9546
	line	599
	
l1443:; BSR set to: 1

	line	600
	
l9546:
	movff	(printf@width),(c:___wmul@multiplier)
	movff	(printf@width+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(printf@width)
	movff	1+?___wmul,(printf@width+1)
	line	601
	
l9548:
	movlw	low(-48)
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	high(-48)
	movlb	0	; () banked
	movwf	1+(??_printf+0+0)&0ffh
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movlb	0	; () banked
	movwf	(??_printf+2+0)&0ffh
	clrf	(??_printf+2+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+2+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+2+0)&0ffh,w
	movlb	1	; () banked
	addwf	((printf@width))&0ffh
	movlb	0	; () banked
	movf	(??_printf+2+1)&0ffh,w
	movlb	1	; () banked
	addwfc	((printf@width+1))&0ffh

	
l9550:; BSR set to: 1

	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	602
	
l9552:; BSR set to: 0

	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfsc	status,0
	goto	u7791
	goto	u7790
u7791:
	goto	l9546
u7790:
	goto	l9560
	
l1444:
	goto	l9560
	line	608
	
l1442:
	line	635
	goto	l9560
	line	637
	
l1446:
	line	638
	goto	l1536
	line	662
	
l1448:
	line	663
	
l9554:
	movlb	1	; () banked
	bsf	(0+(10/8)+(printf@flag))&0ffh,(10)&7
	line	664
	goto	l9562
	line	697
	
l1450:; BSR set to: 1

	goto	l9562
	line	698
	
l1451:; BSR set to: 1

	line	699
	goto	l9562
	line	718
	
l1452:; BSR set to: 1

	line	721
	
l9556:; BSR set to: 1

	movlb	1	; () banked
	bsf	(0+(7/8)+(printf@flag))&0ffh,(7)&7
	line	723
	goto	l9562
	line	802
	
l1453:; BSR set to: 1

	line	813
	goto	l9816
	line	822
	
l9558:; BSR set to: 1

	goto	l9562
	line	635
	
l1445:; BSR set to: 1

	
l9560:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(printf@c)
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1536
	xorlw	100^0	; case 100
	skipnz
	goto	l9562
	xorlw	102^100	; case 102
	skipnz
	goto	l9554
	xorlw	105^102	; case 105
	skipnz
	goto	l9562
	xorlw	120^105	; case 120
	skipnz
	goto	l9556
	goto	l9816

	line	822
	
l1449:; BSR set to: 1

	line	825
	
l9562:; BSR set to: 1

	movlw	high(0700h)
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w

	btfsc	status,2
	goto	u7801
	goto	u7800
u7801:
	goto	l1454
u7800:
	line	829
	
l9564:; BSR set to: 1

	movlw	high(06h)
	movlb	1	; () banked
	movwf	((printf@prec+1))&0ffh
	movlw	low(06h)
	movwf	((printf@prec))&0ffh
	line	830
	
l9566:; BSR set to: 1

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@fval)
	movff	postinc2,(printf@fval+1)
	movff	postdec2,(printf@fval+2)
	
l9568:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	831
	
l9570:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((printf@fval+2))&0ffh,7
	goto	u7810
	goto	u7811

u7811:
	goto	l9576
u7810:
	line	832
	
l9572:; BSR set to: 1

	movff	(printf@fval),(c:___ftneg@f1)
	movff	(printf@fval+1),(c:___ftneg@f1+1)
	movff	(printf@fval+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(printf@fval)
	movff	1+?___ftneg,(printf@fval+1)
	movff	2+?___ftneg,(printf@fval+2)
	line	833
	
l9574:
	movlw	03h
	movlb	1	; () banked
	iorwf	((printf@flag))&0ffh
	goto	l9576
	line	834
	
l1455:; BSR set to: 1

	line	835
	
l9576:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	line	836
	
l9578:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u7821
	goto	u7820

u7821:
	goto	l9604
u7820:
	line	837
	
l9580:; BSR set to: 1

	movlw	low(-126)
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	high(-126)
	movlb	0	; () banked
	movwf	1+(??_printf+0+0)&0ffh
	movff	0+(printf@fval),??_printf+2+0
	movff	1+(printf@fval),??_printf+2+0+1
	movff	2+(printf@fval),??_printf+2+0+2
	movff	3+(printf@fval),??_printf+2+0+3
	movlw	0Fh+1
	goto	u7830
u7835:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_printf+2+3)&0ffh
	rrcf	(??_printf+2+2)&0ffh
	rrcf	(??_printf+2+1)&0ffh
	rrcf	(??_printf+2+0)&0ffh
u7830:
	decfsz	wreg
	goto	u7835
	movlb	0	; () banked
	movf	(??_printf+2+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((printf@exp))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((printf@exp))&0ffh
	line	838
	
l9582:; BSR set to: 1

	movlb	1	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	line	839
	
l9584:; BSR set to: 1

	movff	(printf@exp),(c:___wmul@multiplier)
	movff	(printf@exp+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(printf@exp)
	movff	1+?___wmul,(printf@exp+1)
	line	840
	
l9586:
	movff	(printf@exp),(c:___awdiv@dividend)
	movff	(printf@exp+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(printf@exp)
	movff	1+?___awdiv,(printf@exp+1)
	line	841
	
l9588:
	movlb	1	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u7840
	goto	u7841

u7841:
	goto	l9592
u7840:
	line	842
	
l9590:; BSR set to: 1

	movlb	1	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l9592
	
l1457:; BSR set to: 1

	line	846
	
l9592:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@exp))&0ffh,w
	sublw	0
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	847
	
l9594:
	movff	(printf@tmpval),(c:___ftmul@f1)
	movff	(printf@tmpval+1),(c:___ftmul@f1+1)
	movff	(printf@tmpval+2),(c:___ftmul@f1+2)
	movff	(printf@fval),(c:___ftmul@f2)
	movff	(printf@fval+1),(c:___ftmul@f2+1)
	movff	(printf@fval+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(printf@tmpval)
	movff	1+?___ftmul,(printf@tmpval+1)
	movff	2+?___ftmul,(printf@tmpval+2)
	line	848
	
l9596:
	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u7851
	goto	u7850
u7851:
	goto	l9600
u7850:
	line	849
	
l9598:
	movlb	1	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l9604
	line	850
	
l1458:; BSR set to: 1

	
l9600:
	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(10.000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(10.000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfss	status,0
	goto	u7861
	goto	u7860
u7861:
	goto	l9604
u7860:
	line	851
	
l9602:
	movlb	1	; () banked
	infsnz	((printf@exp))&0ffh
	incf	((printf@exp+1))&0ffh
	goto	l9604
	
l1460:; BSR set to: 1

	goto	l9604
	line	852
	
l1459:; BSR set to: 1

	goto	l9604
	
l1456:; BSR set to: 1

	line	1112
	
l9604:
	movlb	1	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u7870
	movlb	1	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u7871
	movlw	13
	movlb	1	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfsc	status,0
	goto	u7871
	goto	u7870

u7871:
	goto	l9608
u7870:
	line	1113
	
l9606:; BSR set to: 1

	movff	(printf@fval),(c:___ftadd@f1)
	movff	(printf@fval+1),(c:___ftadd@f1+1)
	movff	(printf@fval+2),(c:___ftadd@f1+2)
	movlb	1	; () banked
	movf	((printf@prec))&0ffh,w
	
	call	_fround
	movff	0+?_fround,(c:___ftadd@f2)
	movff	1+?_fround,(c:___ftadd@f2+1)
	movff	2+?_fround,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(printf@fval)
	movff	1+?___ftadd,(printf@fval+1)
	movff	2+?___ftadd,(printf@fval+2)
	goto	l9608
	
l1461:
	line	1116
	
l9608:
	movlb	1	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u7880
	movlb	1	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u7881
	movlw	10
	movlb	1	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u7881
	goto	u7880

u7881:
	goto	l9616
u7880:
	
l9610:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u7891
	goto	u7890

u7891:
	goto	l9630
u7890:
	
l9612:; BSR set to: 1

	movff	(printf@fval),(c:___fttol@f1)
	movff	(printf@fval+1),(c:___fttol@f1+1)
	movff	(printf@fval+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movf	(0+?___fttol),c,w
iorwf	(1+?___fttol),c,w
iorwf	(2+?___fttol),c,w
iorwf	(3+?___fttol),c,w
	btfss	status,2
	goto	u7901
	goto	u7900

u7901:
	goto	l9630
u7900:
	
l9614:
	movlb	1	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u7911
	movlb	1	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u7910
	movlw	2
	movlb	1	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfss	status,0
	goto	u7911
	goto	u7910

u7911:
	goto	l9630
u7910:
	goto	l9616
	
l1464:; BSR set to: 1

	line	1120
	
l9616:; BSR set to: 1

	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u7921
	goto	u7920
u7921:
	goto	l9620
u7920:
	line	1121
	
l9618:
	movlb	1	; () banked
	movlw	low(-9)
	addwf	((printf@exp))&0ffh
	movlw	high(-9)
	addwfc	((printf@exp+1))&0ffh
	line	1122
	goto	l9622
	
l1465:; BSR set to: 1

	line	1123
	
l9620:
	movlb	1	; () banked
	movlw	low(-8)
	addwf	((printf@exp))&0ffh
	movlw	high(-8)
	addwfc	((printf@exp+1))&0ffh
	goto	l9622
	line	1124
	
l1466:; BSR set to: 1

	line	1125
	
l9622:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@exp))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	1126
	goto	l9626
	
l9624:
	movff	(printf@fval),(c:__div_to_l_@f1)
	movff	(printf@fval+1),(c:__div_to_l_@f1+1)
	movff	(printf@fval+2),(c:__div_to_l_@f1+2)
	movff	(printf@tmpval),(c:__div_to_l_@f2)
	movff	(printf@tmpval+1),(c:__div_to_l_@f2+1)
	movff	(printf@tmpval+2),(c:__div_to_l_@f2+2)
	call	__div_to_l_	;wreg free
	movff	0+?__div_to_l_,(printf@val)
	movff	1+?__div_to_l_,(printf@val+1)
	movff	2+?__div_to_l_,(printf@val+2)
	movff	3+?__div_to_l_,(printf@val+3)
	
	goto	l9628
	
l1468:
	
l9626:
	movff	(printf@fval),(c:__tdiv_to_l_@f1)
	movff	(printf@fval+1),(c:__tdiv_to_l_@f1+1)
	movff	(printf@fval+2),(c:__tdiv_to_l_@f1+2)
	movff	(printf@tmpval),(c:__tdiv_to_l_@f2)
	movff	(printf@tmpval+1),(c:__tdiv_to_l_@f2+1)
	movff	(printf@tmpval+2),(c:__tdiv_to_l_@f2+2)
	call	__tdiv_to_l_	;wreg free
	movff	0+?__tdiv_to_l_,(printf@val)
	movff	1+?__tdiv_to_l_,(printf@val+1)
	movff	2+?__tdiv_to_l_,(printf@val+2)
	movff	3+?__tdiv_to_l_,(printf@val+3)
	
	goto	l9628
	
l1470:
	line	1129
	
l9628:
	movlw	low(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((printf@fval))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((printf@fval+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	1	; () banked
	movwf	((printf@fval+2))&0ffh

	line	1130
	goto	l9634
	
l1462:; BSR set to: 1

	line	1131
	
l9630:
	movff	(printf@fval),(c:___fttol@f1)
	movff	(printf@fval+1),(c:___fttol@f1+1)
	movff	(printf@fval+2),(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(printf@val)
	movff	1+?___fttol,(printf@val+1)
	movff	2+?___fttol,(printf@val+2)
	movff	3+?___fttol,(printf@val+3)
	
	line	1132
	movff	(printf@fval),(c:___ftsub@f1)
	movff	(printf@fval+1),(c:___ftsub@f1+1)
	movff	(printf@fval+2),(c:___ftsub@f1+2)
	movff	(printf@val),(c:___lltoft@c)
	movff	(printf@val+1),(c:___lltoft@c+1)
	movff	(printf@val+2),(c:___lltoft@c+2)
	movff	(printf@val+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(c:___ftsub@f2)
	movff	1+?___lltoft,(c:___ftsub@f2+1)
	movff	2+?___lltoft,(c:___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(printf@fval)
	movff	1+?___ftsub,(printf@fval+1)
	movff	2+?___ftsub,(printf@fval+2)
	line	1133
	
l9632:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	goto	l9634
	line	1134
	
l1471:; BSR set to: 1

	line	1136
	
l9634:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	
l9636:; BSR set to: 1

		movlw	10
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u7931
	goto	u7930

u7931:
	goto	l9640
u7930:
	goto	l9648
	
l9638:; BSR set to: 1

	goto	l9648
	line	1137
	
l1472:; BSR set to: 1

	
l9640:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
		tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+1))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+2))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+3))&0ffh,w
	btfsc	status,0
	goto	u7941
	goto	u7940

u7941:
	goto	l9644
u7940:
	goto	l9648
	line	1138
	
l9642:; BSR set to: 1

	goto	l9648
	
l1474:; BSR set to: 1

	line	1136
	
l9644:; BSR set to: 1

	movlb	1	; () banked
	incf	((printf@c))&0ffh
	
l9646:; BSR set to: 1

		movlw	10
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u7951
	goto	u7950

u7951:
	goto	l9640
u7950:
	goto	l9648
	
l1473:; BSR set to: 1

	line	1142
	
l9648:; BSR set to: 1

	movff	(printf@c),??_printf+0+0
	movlb	0	; () banked
	clrf	(??_printf+0+0+1)&0ffh
	btfsc	(??_printf+0+0)&0ffh,7
	decf	(??_printf+0+0+1)&0ffh
	movlb	1	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh
	movlb	1	; () banked
	movf	((printf@prec+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh
	movlb	1	; () banked
	movf	((printf@exp))&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh
	movlb	1	; () banked
	movf	((printf@exp+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	1	; () banked
	subwf	((printf@width))&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+1)&0ffh,w
	movlb	1	; () banked
	subwfb	((printf@width+1))&0ffh

	line	1147
	movlb	1	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@prec+1))&0ffh,w
	btfsc	status,2
	goto	u7961
	goto	u7960

u7961:
	goto	l9652
u7960:
	line	1148
	
l9650:; BSR set to: 1

	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l9652
	
l1475:; BSR set to: 1

	line	1149
	
l9652:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u7971
	goto	u7970

u7971:
	goto	l9656
u7970:
	line	1150
	
l9654:; BSR set to: 0

	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l9656
	
l1476:; BSR set to: 1

	line	1153
	
l9656:
	movlb	1	; () banked
	
	movlb	1	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u7981
	goto	u7980
u7981:
	goto	l9672
u7980:
	line	1157
	
l9658:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u7991
	goto	u7990

u7991:
	goto	l9666
u7990:
	line	1159
	
l9660:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l9666
	
l1478:
	line	1168
	goto	l9666
	
l1480:
	line	1169
	
l9662:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1170
	
l9664:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l9666
	line	1171
	
l1479:; BSR set to: 1

	line	1168
	
l9666:
	movlb	1	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u8000
	movlb	1	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u8001
	movlb	1	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u8001
	goto	u8000

u8001:
	goto	l9662
u8000:
	goto	l9684
	
l1481:; BSR set to: 1

	line	1173
	goto	l9684
	
l1477:; BSR set to: 1

	line	1180
	goto	l9672
	
l1484:; BSR set to: 1

	line	1181
	
l9668:; BSR set to: 1

	movlw	(020h)&0ffh
	
	call	_putch
	line	1182
	
l9670:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l9672
	line	1183
	
l1483:; BSR set to: 1

	line	1180
	
l9672:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u8010
	movlb	1	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u8011
	movlb	1	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u8011
	goto	u8010

u8011:
	goto	l9668
u8010:
	goto	l9674
	
l1485:; BSR set to: 1

	line	1188
	
l9674:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u8021
	goto	u8020

u8021:
	goto	l9684
u8020:
	line	1190
	
l9676:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l9684
	
l1486:
	goto	l9684
	line	1195
	
l1482:
	line	1196
	goto	l9684
	
l1488:
	line	1201
	
l9678:
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(printf@tmpval)
	movff	1+?___lldiv,(printf@tmpval+1)
	movff	2+?___lldiv,(printf@tmpval+2)
	movff	3+?___lldiv,(printf@tmpval+3)
	
	line	1202
	
l9680:
	movff	(printf@tmpval),(c:___llmod@dividend)
	movff	(printf@tmpval+1),(c:___llmod@dividend+1)
	movff	(printf@tmpval+2),(c:___llmod@dividend+2)
	movff	(printf@tmpval+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@tmpval)
	movff	1+?___llmod,(printf@tmpval+1)
	movff	2+?___llmod,(printf@tmpval+2)
	movff	3+?___llmod,(printf@tmpval+3)
	
	line	1203
	
l9682:
	movlb	1	; () banked
	movf	((printf@tmpval))&0ffh,w
	addlw	low(030h)
	
	call	_putch
	goto	l9684
	line	1206
	
l1487:
	line	1196
	
l9684:
	movlb	1	; () banked
	decf	((printf@c))&0ffh
	movlb	1	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8031
	goto	u8030

u8031:
	goto	l9678
u8030:
	goto	l9690
	
l1489:; BSR set to: 1

	line	1207
	goto	l9690
	
l1491:; BSR set to: 1

	line	1208
	
l9686:; BSR set to: 1

	movlw	(030h)&0ffh
	
	call	_putch
	line	1209
	
l9688:
	movlb	1	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l9690
	line	1210
	
l1490:; BSR set to: 1

	line	1207
	
l9690:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u8040
	movlb	1	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u8041
	movlb	1	; () banked
	decf	((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u8041
	goto	u8040

u8041:
	goto	l9686
u8040:
	goto	l9692
	
l1492:; BSR set to: 1

	line	1211
	
l9692:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u8051
	movlb	1	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u8050
	movlw	9
	movlb	1	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfss	status,0
	goto	u8051
	goto	u8050

u8051:
	goto	l1493
u8050:
	line	1212
	
l9694:; BSR set to: 1

	movlw	low(08h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	goto	l9696
	line	1213
	
l1493:; BSR set to: 1

	line	1214
	movff	(printf@prec),(printf@c)
	goto	l9696
	
l1494:; BSR set to: 1

	line	1215
	
l9696:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@prec))&0ffh
	movlw	0
	movlb	1	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	0ffh
	movlb	1	; () banked
	subwfb	((printf@prec+1))&0ffh

	line	1219
	
l9698:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	movlb	1	; () banked
	btfsc	status,2
	goto	u8061
	goto	u8060
u8061:
	goto	l9702
u8060:
	line	1221
	
l9700:; BSR set to: 1

	movlw	(02Eh)&0ffh
	
	call	_putch
	goto	l9702
	
l1495:
	line	1227
	
l9702:
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(_printf$3057)
	movff	1+?_scale,(_printf$3057+1)
	movff	2+?_scale,(_printf$3057+2)
	
l9704:
	movff	(printf@fval),(c:___ftmul@f2)
	movff	(printf@fval+1),(c:___ftmul@f2+1)
	movff	(printf@fval+2),(c:___ftmul@f2+2)
	movff	(_printf$3057),(c:___ftmul@f1)
	movff	(_printf$3057+1),(c:___ftmul@f1+1)
	movff	(_printf$3057+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___fttol@f1)
	movff	1+?___ftmul,(c:___fttol@f1+1)
	movff	2+?___ftmul,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(printf@val)
	movff	1+?___fttol,(printf@val+1)
	movff	2+?___fttol,(printf@val+2)
	movff	3+?___fttol,(printf@val+3)
	
	line	1228
	goto	l9712
	
l1497:
	line	1229
	
l9706:
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(printf@tmpval)
	movff	1+?___lldiv,(printf@tmpval+1)
	movff	2+?___lldiv,(printf@tmpval+2)
	movff	3+?___lldiv,(printf@tmpval+3)
	
	line	1230
	
l9708:
	movff	(printf@tmpval),(c:___llmod@dividend)
	movff	(printf@tmpval+1),(c:___llmod@dividend+1)
	movff	(printf@tmpval+2),(c:___llmod@dividend+2)
	movff	(printf@tmpval+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@tmpval)
	movff	1+?___llmod,(printf@tmpval+1)
	movff	2+?___llmod,(printf@tmpval+2)
	movff	3+?___llmod,(printf@tmpval+3)
	
	line	1231
	
l9710:
	movlb	1	; () banked
	movf	((printf@tmpval))&0ffh,w
	addlw	low(030h)
	
	call	_putch
	line	1232
	movff	(printf@val),(c:___llmod@dividend)
	movff	(printf@val+1),(c:___llmod@dividend+1)
	movff	(printf@val+2),(c:___llmod@dividend+2)
	movff	(printf@val+3),(c:___llmod@dividend+3)
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___llmod@divisor)
	tblrd*+
	
	movff	tablat,(c:___llmod@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___llmod@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___llmod@divisor+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@val)
	movff	1+?___llmod,(printf@val+1)
	movff	2+?___llmod,(printf@val+2)
	movff	3+?___llmod,(printf@val+3)
	
	goto	l9712
	line	1233
	
l1496:
	line	1228
	
l9712:
	movlb	1	; () banked
	decf	((printf@c))&0ffh
	movlb	1	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8071
	goto	u8070

u8071:
	goto	l9706
u8070:
	goto	l9718
	
l1498:; BSR set to: 1

	line	1235
	goto	l9718
	
l1500:; BSR set to: 1

	line	1236
	
l9714:; BSR set to: 1

	movlw	(030h)&0ffh
	
	call	_putch
	line	1237
	
l9716:
	movlb	1	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	goto	l9718
	line	1238
	
l1499:; BSR set to: 1

	line	1235
	
l9718:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u8081
	goto	u8080

u8081:
	goto	l9714
u8080:
	goto	l9816
	
l1501:; BSR set to: 1

	line	1245
	goto	l9816
	line	1246
	
l1454:; BSR set to: 1

	line	1251
	movlb	1	; () banked
	
	movlb	1	; () banked
	btfsc	((printf@flag))&0ffh,(7)&7
	goto	u8091
	goto	u8090
u8091:
	goto	l9730
u8090:
	line	1259
	
l9720:; BSR set to: 1

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@val)
	movff	postdec2,(printf@val+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((printf@val+1))&0ffh,7
	movlw	-1
	movwf	((printf@val+2))&0ffh
	movwf	((printf@val+3))&0ffh
	
l9722:; BSR set to: 1

	movlw	02h
	movlb	1	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	1261
	
l9724:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((printf@val+3))&0ffh,7
	goto	u8100
	goto	u8101

u8101:
	goto	l9764
u8100:
	line	1262
	
l9726:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	iorwf	((printf@flag))&0ffh
	line	1263
	
l9728:; BSR set to: 1

	movlb	1	; () banked
	comf	((printf@val+3))&0ffh
	comf	((printf@val+2))&0ffh
	comf	((printf@val+1))&0ffh
	negf	((printf@val))&0ffh
	movlw	0
	addwfc	((printf@val+1))&0ffh
	addwfc	((printf@val+2))&0ffh
	addwfc	((printf@val+3))&0ffh
	goto	l9764
	line	1264
	
l1503:; BSR set to: 1

	line	1266
	goto	l9764
	line	1268
	
l1502:; BSR set to: 1

	line	1286
	
l9730:; BSR set to: 1

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,??_printf+0+0
	movff	postdec2,??_printf+0+0+1
	movff	??_printf+0+0,(printf@val)
	movff	??_printf+0+1,(printf@val+1)
	movlb	1	; () banked
	clrf	((printf@val+2))&0ffh
	clrf	((printf@val+3))&0ffh

	
l9732:; BSR set to: 1

	movlw	02h
	movlb	1	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	goto	l9764
	line	1287
	
l1504:; BSR set to: 1

	line	1294
	goto	l9764
	line	1299
	
l1506:; BSR set to: 1

	line	1305
	
l9734:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	
l9736:; BSR set to: 1

		movlw	10
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8111
	goto	u8110

u8111:
	goto	l9740
u8110:
	goto	l9766
	
l9738:; BSR set to: 1

	goto	l9766
	line	1306
	
l1507:; BSR set to: 1

	
l9740:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
		tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+1))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+2))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+3))&0ffh,w
	btfsc	status,0
	goto	u8121
	goto	u8120

u8121:
	goto	l9744
u8120:
	goto	l9766
	line	1307
	
l9742:; BSR set to: 1

	goto	l9766
	
l1509:; BSR set to: 1

	line	1305
	
l9744:; BSR set to: 1

	movlb	1	; () banked
	incf	((printf@c))&0ffh
	
l9746:; BSR set to: 1

		movlw	10
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8131
	goto	u8130

u8131:
	goto	l9740
u8130:
	goto	l9766
	
l1508:; BSR set to: 1

	line	1309
	goto	l9766
	line	1314
	
l1511:; BSR set to: 1

	line	1316
	
l9748:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	
l9750:; BSR set to: 1

		movlw	8
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8141
	goto	u8140

u8141:
	goto	l9754
u8140:
	goto	l9766
	
l9752:; BSR set to: 1

	goto	l9766
	line	1317
	
l1512:; BSR set to: 1

	
l9754:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
	movlw	low((_hexpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_hexpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
		tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+1))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+2))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+3))&0ffh,w
	btfsc	status,0
	goto	u8151
	goto	u8150

u8151:
	goto	l9758
u8150:
	goto	l9766
	line	1318
	
l9756:; BSR set to: 1

	goto	l9766
	
l1514:; BSR set to: 1

	line	1316
	
l9758:; BSR set to: 1

	movlb	1	; () banked
	incf	((printf@c))&0ffh
	
l9760:; BSR set to: 1

		movlw	8
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8161
	goto	u8160

u8161:
	goto	l9754
u8160:
	goto	l9766
	
l1513:; BSR set to: 1

	line	1320
	goto	l9766
	line	1336
	
l9762:; BSR set to: 1

	goto	l9766
	line	1294
	
l1505:; BSR set to: 1

	
l9764:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@flag))&0ffh,w
	andlw	low(080h)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l9734
	xorlw	128^0	; case 128
	skipnz
	goto	l9748
	goto	l9766

	line	1336
	
l1510:; BSR set to: 1

	line	1345
	
l9766:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u8171
	goto	u8170

u8171:
	goto	l9772
u8170:
	
l9768:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u8181
	goto	u8180

u8181:
	goto	l9772
u8180:
	line	1346
	
l9770:; BSR set to: 0

	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l9772
	
l1515:; BSR set to: 1

	line	1381
	
l9772:
	movlw	080h
	movlb	1	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	07fh
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@c))&0ffh,w
	movlb	1	; () banked
	movf	((printf@width+1))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_printf+0+0)&0ffh,w
	btfsc	status,0
	goto	u8191
	goto	u8190
u8191:
	goto	l9776
u8190:
	line	1382
	
l9774:; BSR set to: 0

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@width))&0ffh
	movlw	0
	movlb	1	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	0ffh
	movlb	1	; () banked
	subwfb	((printf@width+1))&0ffh

	goto	l9778
	line	1383
	
l1516:; BSR set to: 1

	line	1384
	
l9776:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l9778
	
l1517:; BSR set to: 1

	line	1387
	
l9778:; BSR set to: 1

	movlb	1	; () banked
	
	movlb	1	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u8201
	goto	u8200
u8201:
	goto	l9790
u8200:
	line	1392
	
l9780:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u8211
	goto	u8210

u8211:
	goto	l9784
u8210:
	line	1393
	
l9782:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l9784
	
l1519:
	line	1415
	
l9784:
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u8221
	goto	u8220

u8221:
	goto	l9800
u8220:
	goto	l9786
	line	1416
	
l1521:; BSR set to: 1

	line	1417
	
l9786:; BSR set to: 1

	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l9788:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u8231
	goto	u8230

u8231:
	goto	l9786
u8230:
	goto	l9800
	
l1522:; BSR set to: 1

	goto	l9800
	
l1520:; BSR set to: 1

	line	1420
	goto	l9800
	
l1518:; BSR set to: 1

	line	1428
	
l9790:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u8241
	goto	u8240

u8241:
	goto	l9796
u8240:
	goto	l9792
	line	1429
	
l1525:; BSR set to: 1

	line	1430
	
l9792:; BSR set to: 1

	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l9794:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u8251
	goto	u8250

u8251:
	goto	l9792
u8250:
	goto	l9796
	
l1526:; BSR set to: 1

	goto	l9796
	
l1524:; BSR set to: 1

	line	1438
	
l9796:; BSR set to: 1

	movlw	03h
	movlb	1	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	1	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u8261
	goto	u8260

u8261:
	goto	l9800
u8260:
	line	1439
	
l9798:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l9800
	
l1527:
	goto	l9800
	line	1469
	
l1523:
	line	1472
	
l9800:
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	movlb	1	; () banked
	movwf	((printf@prec))&0ffh
	clrf	((printf@prec+1))&0ffh
	btfsc	((printf@prec))&0ffh,7
	decf	((printf@prec+1))&0ffh
	line	1474
	goto	l9814
	
l1529:; BSR set to: 1

	line	1476
	goto	l9810
	line	1483
	
l1531:; BSR set to: 1

	line	1489
	
l9802:; BSR set to: 1

	movff	(printf@prec),??_printf+0+0
	movff	(printf@prec+1),??_printf+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlw	low((_dpowers))
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(??_printf+0+1)&0ffh,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:___llmod@dividend)
	movff	1+?___lldiv,(c:___llmod@dividend+1)
	movff	2+?___lldiv,(c:___llmod@dividend+2)
	movff	3+?___lldiv,(c:___llmod@dividend+3)
	
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movf	(0+?___llmod),c,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	line	1491
	goto	l9812
	line	1497
	
l1533:; BSR set to: 1

	line	1500
	
l9804:; BSR set to: 1

	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	movff	(printf@prec),??_printf+0+0
	movff	(printf@prec+1),??_printf+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlw	low((_hexpowers))
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh,w
	movwf	tblptrl
	movlw	high((_hexpowers))
	addwfc	(??_printf+0+1)&0ffh,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movf	(0+?___lldiv),c,w
	andlw	low(0Fh)
	movlb	1	; () banked
	movwf	((printf@idx))&0ffh
	line	1506
	
l9806:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@idx))&0ffh,w
	mullw	01h
	movlw	low((STR_36))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((STR_36))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,(printf@c)
	line	1510
	goto	l9812
	line	1523
	
l9808:; BSR set to: 1

	goto	l9812
	line	1476
	
l1530:; BSR set to: 1

	
l9810:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@flag))&0ffh,w
	andlw	low(080h)
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 128
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l9802
	xorlw	128^0	; case 128
	skipnz
	goto	l9804
	goto	l9812

	line	1523
	
l1532:; BSR set to: 1

	line	1524
	
l9812:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	goto	l9814
	line	1525
	
l1528:
	line	1474
	
l9814:
	movlb	1	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	movlb	1	; () banked
		incf	((printf@prec))&0ffh,w
	bnz	u8271
	movlb	1	; () banked
	incf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u8271
	goto	u8270

u8271:
	goto	l9810
u8270:
	goto	l9816
	
l1534:; BSR set to: 1

	goto	l9816
	line	1533
	
l1433:; BSR set to: 1

	line	536
	
l9816:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(printf@c)
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8281
	goto	u8280
u8281:
	goto	l9530
u8280:
	goto	l1536
	
l1535:; BSR set to: 1

	goto	l1536
	line	1535
	
l1447:; BSR set to: 1

	line	1541
;	Return value of _printf is never used
	
l1536:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   72[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  3   66[COMRAM] char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text72,class=CODE,space=0,reloc=2
	line	425
global __ptext72
__ptext72:
psect	text72
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:
;incstack = 0
	opt	stack 25
	movwf	((c:scale@scl)),c
	line	428
	
l9232:
	btfsc	((c:scale@scl)),c,7
	goto	u7340
	goto	u7341

u7341:
	goto	l9252
u7340:
	line	429
	
l9234:
	negf	((c:scale@scl)),c
	line	430
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u7351
	goto	u7350

u7351:
	goto	l9242
u7350:
	line	431
	
l9236:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_scale$3056)
	movff	1+?___ftmul,(c:_scale$3056+1)
	movff	2+?___ftmul,(c:_scale$3056+2)
	movff	(c:_scale$3056),(c:___ftmul@f1)
	movff	(c:_scale$3056+1),(c:___ftmul@f1+1)
	movff	(c:_scale$3056+2),(c:___ftmul@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l1425
	
l9238:
	goto	l1425
	
l9240:
	goto	l9248
	line	432
	
l1424:
	
l9242:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u7361
	goto	u7360

u7361:
	goto	l9248
u7360:
	line	433
	
l9244:
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l1425
	
l9246:
	goto	l1425
	
l1427:
	goto	l9248
	line	434
	
l1426:
	
l9248:
	movf	((c:scale@scl)),c,w
	mullw	03h
	movlw	low((__npowers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:?_scale)
	tblrd*+
	
	movff	tablat,(c:?_scale+1)
	tblrd*-
	
	movff	tablat,(c:?_scale+2)

	goto	l1425
	
l9250:
	goto	l1425
	line	435
	
l1423:
	line	436
	
l9252:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u7371
	goto	u7370

u7371:
	goto	l9260
u7370:
	line	437
	
l9254:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_scale$3056)
	movff	1+?___ftmul,(c:_scale$3056+1)
	movff	2+?___ftmul,(c:_scale$3056+2)
	movff	(c:_scale$3056),(c:___ftmul@f1)
	movff	(c:_scale$3056+1),(c:___ftmul@f1+1)
	movff	(c:_scale$3056+2),(c:___ftmul@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l1425
	
l9256:
	goto	l1425
	
l9258:
	goto	l9266
	line	438
	
l1428:
	
l9260:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u7381
	goto	u7380

u7381:
	goto	l9266
u7380:
	line	439
	
l9262:
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l1425
	
l9264:
	goto	l1425
	
l1430:
	goto	l9266
	line	440
	
l1429:
	
l9266:
	movf	((c:scale@scl)),c,w
	mullw	03h
	movlw	low((__powers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:?_scale)
	tblrd*+
	
	movff	tablat,(c:?_scale+1)
	tblrd*-
	
	movff	tablat,(c:?_scale+2)

	goto	l1425
	
l9268:
	line	441
	
l1425:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 78 in file "Main.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text73,class=CODE,space=0,reloc=2
	file	"Main.c"
	line	78
global __ptext73
__ptext73:
psect	text73
	file	"Main.c"
	line	78
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 27
	movwf	((c:putch@c)),c
	line	80
	
l9062:
	goto	l515
	
l516:
	
l515:
	btfss	c:(32097/8),(32097)&7	;volatile
	goto	u7171
	goto	u7170
u7171:
	goto	l515
u7170:
	goto	l9064
	
l517:
	line	81
	
l9064:
	movff	(c:putch@c),(c:4013)	;volatile
	line	82
	
l518:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text74,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\isdigit.c"
	line	8
global __ptext74
__ptext74:
psect	text74
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 27
	movwf	((c:isdigit@c)),c
	line	14
	
l9270:
	movlw	low(0)
	movwf	((c:_isdigit$2691)),c
	
l9272:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u7391
	goto	u7390

u7391:
	goto	l9278
u7390:
	
l9274:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u7401
	goto	u7400

u7401:
	goto	l9278
u7400:
	
l9276:
	movlw	low(01h)
	movwf	((c:_isdigit$2691)),c
	goto	l9278
	
l2036:
	
l9278:
	movff	(c:_isdigit$2691),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l2037
	
l9280:
	line	15
	
l2037:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   75[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   66[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text75,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	409
global __ptext75
__ptext75:
psect	text75
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:
;incstack = 0
	opt	stack 25
	movwf	((c:fround@prec)),c
	line	413
	
l9210:
		movlw	06Eh-1
	cpfsgt	((c:fround@prec)),c
	goto	u7321
	goto	u7320

u7321:
	goto	l9220
u7320:
	line	414
	
l9212:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:fround@prec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$3054)
	movff	1+?___ftmul,(c:_fround$3054+1)
	movff	2+?___ftmul,(c:_fround$3054+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movff	(c:_fround$3054),(c:___ftmul@f1)
	movff	(c:_fround$3054+1),(c:___ftmul@f1+1)
	movff	(c:_fround$3054+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$3055)
	movff	1+?___ftmul,(c:_fround$3055+1)
	movff	2+?___ftmul,(c:_fround$3055+2)
	
l9214:
	movff	(c:_fround$3055),(c:___ftmul@f1)
	movff	(c:_fround$3055+1),(c:___ftmul@f1+1)
	movff	(c:_fround$3055+2),(c:___ftmul@f1+2)
	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l1418
	
l9216:
	goto	l1418
	
l9218:
	goto	l9228
	line	415
	
l1417:
	
l9220:
		movlw	0Bh-1
	cpfsgt	((c:fround@prec)),c
	goto	u7331
	goto	u7330

u7331:
	goto	l9228
u7330:
	line	416
	
l9222:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:fround@prec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$3054)
	movff	1+?___ftmul,(c:_fround$3054+1)
	movff	2+?___ftmul,(c:_fround$3054+2)
	
l9224:
	movff	(c:_fround$3054),(c:___ftmul@f1)
	movff	(c:_fround$3054+1),(c:___ftmul@f1+1)
	movff	(c:_fround$3054+2),(c:___ftmul@f1+2)
	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l1418
	
l9226:
	goto	l1418
	
l1420:
	goto	l9228
	line	417
	
l1419:
	
l9228:
	movf	((c:fround@prec)),c,w
	mullw	03h
	movlw	low((__npowers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l1418
	
l9230:
	line	418
	
l1418:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   30[COMRAM] float 
;;  f2              3   33[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   40[COMRAM] unsigned um
;;  sign            1   44[COMRAM] unsigned char 
;;  cntr            1   43[COMRAM] unsigned char 
;;  exp             1   39[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_Update_Screen
;;		_do_update_pwm
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text76,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftmul.c"
	line	62
global __ptext76
__ptext76:
psect	text76
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 25
	line	67
	
l8934:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u6991
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u6991:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u7001
	goto	u7000
u7001:
	goto	l8940
u7000:
	line	68
	
l8936:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l2001
	
l8938:
	goto	l2001
	
l2000:
	line	69
	
l8940:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u7011
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u7011:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u7021
	goto	u7020
u7021:
	goto	l8946
u7020:
	line	70
	
l8942:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l2001
	
l8944:
	goto	l2001
	
l2002:
	line	71
	
l8946:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l8948:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l8950:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l8952:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l8954:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l8956:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l8958:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l8960
	line	135
	
l2003:
	line	136
	
l8960:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u7031
	goto	u7030
u7031:
	goto	l8964
u7030:
	line	137
	
l8962:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l8964
	
l2004:
	line	138
	
l8964:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l8966:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l8960
	goto	l8968
	
l2005:
	line	143
	
l8968:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l8970
	line	144
	
l2006:
	line	145
	
l8970:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u7041
	goto	u7040
u7041:
	goto	l8974
u7040:
	line	146
	
l8972:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l8974
	
l2007:
	line	147
	
l8974:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l8976:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l8970
	goto	l8978
	
l2008:
	line	156
	
l8978:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l2001
	
l8980:
	line	157
	
l2001:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   60[COMRAM] int 
;;  divisor         2   62[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   65[COMRAM] unsigned char 
;;  counter         1   64[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   60[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Update_Screen
;;		_Update_Setup_Alarm_Time_Screen
;;		_Update_Setup_Fan_Screen
;;		_Update_Setup_Time_Screen
;;		_dec_2_bcd
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text77,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
	line	8
global __ptext77
__ptext77:
psect	text77
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 26
	line	13
	
l9026:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l9028:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u7110
	goto	u7111

u7111:
	goto	l9034
u7110:
	line	15
	
l9030:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l9032:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l9034
	line	17
	
l1768:
	line	18
	
l9034:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u7120
	goto	u7121

u7121:
	goto	l9038
u7120:
	line	19
	
l9036:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l9038
	
l1769:
	line	20
	
l9038:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u7131
	goto	u7130

u7131:
	goto	l9054
u7130:
	line	21
	
l9040:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l9044
	
l1772:
	line	23
	
l9042:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l9044
	line	25
	
l1771:
	line	22
	
l9044:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u7141
	goto	u7140
u7141:
	goto	l9042
u7140:
	goto	l9046
	
l1773:
	goto	l9046
	line	26
	
l1774:
	line	27
	
l9046:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u7151
	goto	u7150

u7151:
	goto	l9050
u7150:
	line	28
	
l9048:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l9050
	
l1775:
	line	29
	
l9050:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l9052:
	decfsz	((c:___awmod@counter)),c
	
	goto	l9046
	goto	l9054
	
l1776:
	goto	l9054
	line	31
	
l1770:
	line	32
	
l9054:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u7161
	goto	u7160
u7161:
	goto	l9058
u7160:
	line	33
	
l9056:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l9058
	
l1777:
	line	34
	
l9058:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l1778
	
l9060:
	line	35
	
l1778:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   22[COMRAM] int 
;;  divisor         2   24[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   28[COMRAM] int 
;;  sign            1   27[COMRAM] unsigned char 
;;  counter         1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   22[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_RPM
;;		_main
;;		_Update_Screen
;;		_Update_Setup_Alarm_Time_Screen
;;		_Update_Setup_Fan_Screen
;;		_Update_Setup_Time_Screen
;;		_dec_2_bcd
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text78,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
	line	8
global __ptext78
__ptext78:
psect	text78
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 26
	line	14
	
l8982:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l8984:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u7050
	goto	u7051

u7051:
	goto	l8990
u7050:
	line	16
	
l8986:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l8988:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l8990
	line	18
	
l1755:
	line	19
	
l8990:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u7060
	goto	u7061

u7061:
	goto	l8996
u7060:
	line	20
	
l8992:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l8994:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l8996
	line	22
	
l1756:
	line	23
	
l8996:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l8998:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u7071
	goto	u7070

u7071:
	goto	l9018
u7070:
	line	25
	
l9000:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l9004
	
l1759:
	line	27
	
l9002:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l9004
	line	29
	
l1758:
	line	26
	
l9004:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l9002
u7080:
	goto	l9006
	
l1760:
	goto	l9006
	line	30
	
l1761:
	line	31
	
l9006:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l9008:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u7091
	goto	u7090

u7091:
	goto	l9014
u7090:
	line	33
	
l9010:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l9012:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l9014
	line	35
	
l1762:
	line	36
	
l9014:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l9016:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l9006
	goto	l9018
	
l1763:
	goto	l9018
	line	38
	
l1757:
	line	39
	
l9018:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u7101
	goto	u7100
u7101:
	goto	l9022
u7100:
	line	40
	
l9020:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l9022
	
l1764:
	line	41
	
l9022:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l1765
	
l9024:
	line	42
	
l1765:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[COMRAM] float 
;;  f2              3   19[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  quot            4   25[COMRAM] unsigned long 
;;  exp1            1   30[COMRAM] unsigned char 
;;  cntr            1   29[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text79,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdivl.c"
	line	60
global __ptext79
__ptext79:
psect	text79
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:
;incstack = 0
	opt	stack 27
	line	66
	
l9282:
	movff	(c:__tdiv_to_l_@f1+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f1+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u7411
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u7411:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@exp1)),c
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7421
	goto	u7420
u7421:
	goto	l9288
u7420:
	line	67
	
l9284:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1977
	
l9286:
	goto	l1977
	
l1976:
	line	68
	
l9288:
	movff	(c:__tdiv_to_l_@f2+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f2+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u7431
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u7431:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@cntr)),c
	movf	((c:__tdiv_to_l_@cntr)),c,w
	btfss	status,2
	goto	u7441
	goto	u7440
u7441:
	goto	l9294
u7440:
	line	69
	
l9290:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1977
	
l9292:
	goto	l1977
	
l1978:
	line	70
	
l9294:
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f1)),c,(15)&7
	line	71
	
l9296:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+2)),c

	line	72
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f2)),c,(15)&7
	line	73
	
l9298:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+2)),c

	line	74
	
l9300:
	movlw	low(0)
	movwf	((c:__tdiv_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__tdiv_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__tdiv_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__tdiv_to_l_@quot+3)),c
	line	75
	
l9302:
	movlw	(07Fh)&0ffh
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	76
	
l9304:
	movf	((c:__tdiv_to_l_@cntr)),c,w
	addlw	low(098h)
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	77
	
l9306:
	movlw	low(018h)
	movwf	((c:__tdiv_to_l_@cntr)),c
	line	78
	
l1979:
	line	79
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	80
	
l9308:
		movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c,w
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c,w
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c,w
	btfss	status,0
	goto	u7451
	goto	u7450

u7451:
	goto	l1980
u7450:
	line	81
	
l9310:
	movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c

	line	82
	
l9312:
	bsf	(0+(0/8)+(c:__tdiv_to_l_@quot)),c,(0)&7
	line	83
	
l1980:
	line	84
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@f1)),c
	rlcf	((c:__tdiv_to_l_@f1+1)),c
	rlcf	((c:__tdiv_to_l_@f1+2)),c
	line	85
	
l9314:
	decfsz	((c:__tdiv_to_l_@cntr)),c
	
	goto	l1979
	goto	l9316
	
l1981:
	line	86
	
l9316:
	btfsc	((c:__tdiv_to_l_@exp1)),c,7
	goto	u7460
	goto	u7461

u7461:
	goto	l9328
u7460:
	line	87
	
l9318:
		movf	((c:__tdiv_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u7471
	goto	u7470

u7471:
	goto	l9324
u7470:
	line	88
	
l9320:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1977
	
l9322:
	goto	l1977
	
l1983:
	goto	l9324
	line	89
	
l1984:
	line	90
	
l9324:
	bcf	status,0
	rrcf	((c:__tdiv_to_l_@quot+3)),c
	rrcf	((c:__tdiv_to_l_@quot+2)),c
	rrcf	((c:__tdiv_to_l_@quot+1)),c
	rrcf	((c:__tdiv_to_l_@quot)),c
	line	91
	
l9326:
	incfsz	((c:__tdiv_to_l_@exp1)),c
	
	goto	l9324
	goto	l1986
	
l1985:
	line	92
	goto	l1986
	
l1982:
	line	93
	
l9328:
		movlw	018h-1
	cpfsgt	((c:__tdiv_to_l_@exp1)),c
	goto	u7481
	goto	u7480

u7481:
	goto	l9336
u7480:
	line	94
	
l9330:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1977
	
l9332:
	goto	l1977
	
l1987:
	line	95
	goto	l9336
	
l1989:
	line	96
	
l9334:
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	97
	decf	((c:__tdiv_to_l_@exp1)),c
	goto	l9336
	line	98
	
l1988:
	line	95
	
l9336:
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7491
	goto	u7490
u7491:
	goto	l9334
u7490:
	goto	l1986
	
l1990:
	line	99
	
l1986:
	line	100
	movff	(c:__tdiv_to_l_@quot),(c:?__tdiv_to_l_)
	movff	(c:__tdiv_to_l_@quot+1),(c:?__tdiv_to_l_+1)
	movff	(c:__tdiv_to_l_@quot+2),(c:?__tdiv_to_l_+2)
	movff	(c:__tdiv_to_l_@quot+3),(c:?__tdiv_to_l_+3)
	line	101
	
l1977:
	return	;funcret
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[COMRAM] unsigned long 
;;  f2              3   19[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4   22[COMRAM] unsigned long 
;;  exp1            1   27[COMRAM] unsigned char 
;;  cntr            1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text80,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldivl.c"
	line	60
global __ptext80
__ptext80:
psect	text80
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:
;incstack = 0
	opt	stack 27
	line	66
	
l9338:
	rlcf	(2+((c:__div_to_l_@f1))),c,w
	rlcf	(3+((c:__div_to_l_@f1))),c,w
	movwf	((c:__div_to_l_@exp1)),c
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7501
	goto	u7500
u7501:
	goto	l9344
u7500:
	line	67
	
l9340:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1856
	
l9342:
	goto	l1856
	
l1855:
	line	68
	
l9344:
	rlcf	(2+((c:__div_to_l_@f2))),c,w
	rlcf	(3+((c:__div_to_l_@f2))),c,w
	movwf	((c:__div_to_l_@cntr)),c
	movf	((c:__div_to_l_@cntr)),c,w
	btfss	status,2
	goto	u7511
	goto	u7510
u7511:
	goto	l9350
u7510:
	line	69
	
l9346:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1856
	
l9348:
	goto	l1856
	
l1857:
	line	70
	
l9350:
	bsf	(0+(23/8)+0+((c:__div_to_l_@f1))),c,(23)&7
	line	71
	
l9352:
	movlw	0FFh
	andwf	(0+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(1+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(2+((c:__div_to_l_@f1))),c
	movlw	0
	andwf	(3+((c:__div_to_l_@f1))),c
	line	72
	
l9354:
	bsf	(0+(23/8)+0+((c:__div_to_l_@f2))),c,(23)&7
	line	73
	movlw	0FFh
	andwf	(0+((c:__div_to_l_@f2))),c
	movlw	0FFh
	andwf	(1+((c:__div_to_l_@f2))),c
	movlw	0FFh
	andwf	(2+((c:__div_to_l_@f2))),c
	movlw	0
	andwf	(3+((c:__div_to_l_@f2))),c
	line	74
	
l9356:
	movlw	low(0)
	movwf	((c:__div_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__div_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__div_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__div_to_l_@quot+3)),c
	line	75
	
l9358:
	movlw	(07Fh)&0ffh
	subwf	((c:__div_to_l_@exp1)),c
	line	76
	
l9360:
	movf	((c:__div_to_l_@cntr)),c,w
	addlw	low(0A0h)
	subwf	((c:__div_to_l_@exp1)),c
	line	77
	
l9362:
	movlw	low(020h)
	movwf	((c:__div_to_l_@cntr)),c
	goto	l9364
	line	78
	
l1858:
	line	79
	
l9364:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	80
	
l9366:
		movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c,w
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c,w
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c,w
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c,w
	btfss	status,0
	goto	u7521
	goto	u7520

u7521:
	goto	l9372
u7520:
	line	81
	
l9368:
	movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c
	line	82
	
l9370:
	bsf	(0+(0/8)+(c:__div_to_l_@quot)),c,(0)&7
	goto	l9372
	line	83
	
l1859:
	line	84
	
l9372:
	bcf	status,0
	rlcf	(0+((c:__div_to_l_@f1))),c
	rlcf	(1+((c:__div_to_l_@f1))),c
	rlcf	(2+((c:__div_to_l_@f1))),c
	rlcf	(3+((c:__div_to_l_@f1))),c
	line	85
	
l9374:
	decfsz	((c:__div_to_l_@cntr)),c
	
	goto	l9364
	goto	l9376
	
l1860:
	line	86
	
l9376:
	btfsc	((c:__div_to_l_@exp1)),c,7
	goto	u7530
	goto	u7531

u7531:
	goto	l9388
u7530:
	line	87
	
l9378:
		movf	((c:__div_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-31)
	btfsc	status,0
	goto	u7541
	goto	u7540

u7541:
	goto	l9384
u7540:
	line	88
	
l9380:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1856
	
l9382:
	goto	l1856
	
l1862:
	goto	l9384
	line	89
	
l1863:
	line	90
	
l9384:
	bcf	status,0
	rrcf	((c:__div_to_l_@quot+3)),c
	rrcf	((c:__div_to_l_@quot+2)),c
	rrcf	((c:__div_to_l_@quot+1)),c
	rrcf	((c:__div_to_l_@quot)),c
	line	91
	
l9386:
	incfsz	((c:__div_to_l_@exp1)),c
	
	goto	l9384
	goto	l1865
	
l1864:
	line	92
	goto	l1865
	
l1861:
	line	93
	
l9388:
		movlw	020h-1
	cpfsgt	((c:__div_to_l_@exp1)),c
	goto	u7551
	goto	u7550

u7551:
	goto	l9396
u7550:
	line	94
	
l9390:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1856
	
l9392:
	goto	l1856
	
l1866:
	line	95
	goto	l9396
	
l1868:
	line	96
	
l9394:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	97
	decf	((c:__div_to_l_@exp1)),c
	goto	l9396
	line	98
	
l1867:
	line	95
	
l9396:
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7561
	goto	u7560
u7561:
	goto	l9394
u7560:
	goto	l1865
	
l1869:
	line	99
	
l1865:
	line	100
	movff	(c:__div_to_l_@quot),(c:?__div_to_l_)
	movff	(c:__div_to_l_@quot+1),(c:?__div_to_l_+1)
	movff	(c:__div_to_l_@quot+2),(c:?__div_to_l_+2)
	movff	(c:__div_to_l_@quot+3),(c:?__div_to_l_+3)
	line	101
	
l1856:
	return	;funcret
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   24[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   32[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   24[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text81,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltoft.c"
	line	35
global __ptext81
__ptext81:
psect	text81
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 26
	line	38
	
l9512:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l9516
	
l2094:
	line	42
	
l9514:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	goto	l9516
	line	44
	
l2093:
	line	41
	
l9516:
	movlw	0
	andwf	((c:___lltoft@c)),c,w
	movwf	(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+1)),c,w
	movwf	1+(??___lltoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___lltoft@c+2)),c,w
	movwf	2+(??___lltoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___lltoft@c+3)),c,w
	movwf	3+(??___lltoft+0+0)&0ffh,c
	movf	(??___lltoft+0+0),c,w
iorwf	(??___lltoft+0+1),c,w
iorwf	(??___lltoft+0+2),c,w
iorwf	(??___lltoft+0+3),c,w
	btfss	status,2
	goto	u7761
	goto	u7760

u7761:
	goto	l9514
u7760:
	goto	l9518
	
l2095:
	line	45
	
l9518:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	goto	l2096
	
l9520:
	line	46
	
l2096:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   29[COMRAM] unsigned long 
;;  divisor         4   33[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   37[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   29[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text82,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\llmod.c"
	line	8
global __ptext82
__ptext82:
psect	text82
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\llmod.c"
	line	8
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:
;incstack = 0
	opt	stack 27
	line	13
	
l9496:
	movf	((c:___llmod@divisor)),c,w
iorwf	((c:___llmod@divisor+1)),c,w
iorwf	((c:___llmod@divisor+2)),c,w
iorwf	((c:___llmod@divisor+3)),c,w
	btfsc	status,2
	goto	u7731
	goto	u7730

u7731:
	goto	l2076
u7730:
	line	14
	
l9498:
	movlw	low(01h)
	movwf	((c:___llmod@counter)),c
	line	15
	goto	l9502
	
l2078:
	line	16
	
l9500:
	bcf	status,0
	rlcf	((c:___llmod@divisor)),c
	rlcf	((c:___llmod@divisor+1)),c
	rlcf	((c:___llmod@divisor+2)),c
	rlcf	((c:___llmod@divisor+3)),c
	line	17
	incf	((c:___llmod@counter)),c
	goto	l9502
	line	18
	
l2077:
	line	15
	
l9502:
	
	btfss	((c:___llmod@divisor+3)),c,(31)&7
	goto	u7741
	goto	u7740
u7741:
	goto	l9500
u7740:
	goto	l9504
	
l2079:
	goto	l9504
	line	19
	
l2080:
	line	20
	
l9504:
		movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c,w
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c,w
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c,w
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c,w
	btfss	status,0
	goto	u7751
	goto	u7750

u7751:
	goto	l9508
u7750:
	line	21
	
l9506:
	movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c
	goto	l9508
	
l2081:
	line	22
	
l9508:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3)),c
	rrcf	((c:___llmod@divisor+2)),c
	rrcf	((c:___llmod@divisor+1)),c
	rrcf	((c:___llmod@divisor)),c
	line	23
	
l9510:
	decfsz	((c:___llmod@counter)),c
	
	goto	l9504
	goto	l2076
	
l2082:
	line	24
	
l2076:
	line	25
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	26
	
l2083:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   16[COMRAM] unsigned long 
;;  divisor         4   20[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   24[COMRAM] unsigned long 
;;  counter         1   28[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text83,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lldiv.c"
	line	8
global __ptext83
__ptext83:
psect	text83
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\lldiv.c"
	line	8
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:
;incstack = 0
	opt	stack 27
	line	14
	
l9474:
	movlw	low(0)
	movwf	((c:___lldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3)),c
	line	15
	
l9476:
	movf	((c:___lldiv@divisor)),c,w
iorwf	((c:___lldiv@divisor+1)),c,w
iorwf	((c:___lldiv@divisor+2)),c,w
iorwf	((c:___lldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u7701
	goto	u7700

u7701:
	goto	l2066
u7700:
	line	16
	
l9478:
	movlw	low(01h)
	movwf	((c:___lldiv@counter)),c
	line	17
	goto	l9482
	
l2068:
	line	18
	
l9480:
	bcf	status,0
	rlcf	((c:___lldiv@divisor)),c
	rlcf	((c:___lldiv@divisor+1)),c
	rlcf	((c:___lldiv@divisor+2)),c
	rlcf	((c:___lldiv@divisor+3)),c
	line	19
	incf	((c:___lldiv@counter)),c
	goto	l9482
	line	20
	
l2067:
	line	17
	
l9482:
	
	btfss	((c:___lldiv@divisor+3)),c,(31)&7
	goto	u7711
	goto	u7710
u7711:
	goto	l9480
u7710:
	goto	l9484
	
l2069:
	goto	l9484
	line	21
	
l2070:
	line	22
	
l9484:
	bcf	status,0
	rlcf	((c:___lldiv@quotient)),c
	rlcf	((c:___lldiv@quotient+1)),c
	rlcf	((c:___lldiv@quotient+2)),c
	rlcf	((c:___lldiv@quotient+3)),c
	line	23
	
l9486:
		movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c,w
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c,w
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c,w
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c,w
	btfss	status,0
	goto	u7721
	goto	u7720

u7721:
	goto	l9492
u7720:
	line	24
	
l9488:
	movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c
	line	25
	
l9490:
	bsf	(0+(0/8)+(c:___lldiv@quotient)),c,(0)&7
	goto	l9492
	line	26
	
l2071:
	line	27
	
l9492:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3)),c
	rrcf	((c:___lldiv@divisor+2)),c
	rrcf	((c:___lldiv@divisor+1)),c
	rrcf	((c:___lldiv@divisor)),c
	line	28
	
l9494:
	decfsz	((c:___lldiv@counter)),c
	
	goto	l9484
	goto	l2066
	
l2072:
	line	29
	
l2066:
	line	30
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	31
	
l2073:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   45[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   55[COMRAM] unsigned long 
;;  exp1            1   59[COMRAM] unsigned char 
;;  sign1           1   54[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   45[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Update_Screen
;;		_do_update_pwm
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text84,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fttol.c"
	line	44
global __ptext84
__ptext84:
psect	text84
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 27
	line	49
	
l9428:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u7621
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u7621:
	movf	(??___fttol+0+0),c,w
	movwf	((c:___fttol@exp1)),c
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u7631
	goto	u7630
u7631:
	goto	l9434
u7630:
	line	50
	
l9430:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l2022
	
l9432:
	goto	l2022
	
l2021:
	line	51
	
l9434:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u7640
u7645:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u7640:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u7645
	movf	(??___fttol+1+0),c,w
	movwf	((c:___fttol@sign1)),c
	line	52
	
l9436:
	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l9438:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l9440:
	movf	((c:___fttol@f1)),c,w
	movwf	((c:___fttol@lval)),c
	movf	((c:___fttol@f1+1)),c,w
	movwf	1+((c:___fttol@lval)),c
	
	movf	((c:___fttol@f1+2)),c,w
	movwf	2+((c:___fttol@lval)),c
	
	clrf	3+((c:___fttol@lval)),c
	line	55
	
l9442:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1)),c
	line	56
	
l9444:
	btfsc	((c:___fttol@exp1)),c,7
	goto	u7650
	goto	u7651

u7651:
	goto	l9456
u7650:
	line	57
	
l9446:
		movf	((c:___fttol@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u7661
	goto	u7660

u7661:
	goto	l9452
u7660:
	line	58
	
l9448:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l2022
	
l9450:
	goto	l2022
	
l2024:
	goto	l9452
	line	59
	
l2025:
	line	60
	
l9452:
	bcf	status,0
	rrcf	((c:___fttol@lval+3)),c
	rrcf	((c:___fttol@lval+2)),c
	rrcf	((c:___fttol@lval+1)),c
	rrcf	((c:___fttol@lval)),c
	line	61
	
l9454:
	incfsz	((c:___fttol@exp1)),c
	
	goto	l9452
	goto	l9466
	
l2026:
	line	62
	goto	l9466
	
l2023:
	line	63
	
l9456:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1)),c
	goto	u7671
	goto	u7670

u7671:
	goto	l9464
u7670:
	line	64
	
l9458:
	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l2022
	
l9460:
	goto	l2022
	
l2028:
	line	65
	goto	l9464
	
l2030:
	line	66
	
l9462:
	bcf	status,0
	rlcf	((c:___fttol@lval)),c
	rlcf	((c:___fttol@lval+1)),c
	rlcf	((c:___fttol@lval+2)),c
	rlcf	((c:___fttol@lval+3)),c
	line	67
	decf	((c:___fttol@exp1)),c
	goto	l9464
	line	68
	
l2029:
	line	65
	
l9464:
	movf	((c:___fttol@exp1)),c,w
	btfss	status,2
	goto	u7681
	goto	u7680
u7681:
	goto	l9462
u7680:
	goto	l9466
	
l2031:
	goto	l9466
	line	69
	
l2027:
	line	70
	
l9466:
	movf	((c:___fttol@sign1)),c,w
	btfsc	status,2
	goto	u7691
	goto	u7690
u7691:
	goto	l9470
u7690:
	line	71
	
l9468:
	comf	((c:___fttol@lval+3)),c
	comf	((c:___fttol@lval+2)),c
	comf	((c:___fttol@lval+1)),c
	negf	((c:___fttol@lval)),c
	movlw	0
	addwfc	((c:___fttol@lval+1)),c
	addwfc	((c:___fttol@lval+2)),c
	addwfc	((c:___fttol@lval+3)),c
	goto	l9470
	
l2032:
	line	72
	
l9470:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	goto	l2022
	
l9472:
	line	73
	
l2022:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3   88[COMRAM] float 
;;  f2              3   91[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   88[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text85,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftsub.c"
	line	20
global __ptext85
__ptext85:
psect	text85
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:
;incstack = 0
	opt	stack 25
	line	23
	
l9398:
	movf	((c:___ftsub@f2)),c,w
iorwf	((c:___ftsub@f2+1)),c,w
iorwf	((c:___ftsub@f2+2)),c,w
	btfsc	status,2
	goto	u7571
	goto	u7570

u7571:
	goto	l9402
u7570:
	line	24
	
l9400:
	movlw	low(0800000h)
	xorwf	((c:___ftsub@f2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftsub@f2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftsub@f2+2)),c

	goto	l9402
	line	25
	
l2017:
	line	26
	
l9402:
	movff	(c:___ftsub@f1),(c:___ftadd@f1)
	movff	(c:___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(c:___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(c:___ftsub@f2),(c:___ftadd@f2)
	movff	(c:___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(c:___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(c:?___ftsub)
	movff	1+?___ftadd,(c:?___ftsub+1)
	movff	2+?___ftadd,(c:?___ftsub+2)
	goto	l2018
	
l9404:
	line	27
	
l2018:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   76[COMRAM] float 
;;  f2              3   79[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   87[COMRAM] unsigned char 
;;  exp2            1   86[COMRAM] unsigned char 
;;  sign            1   85[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   76[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text86,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftadd.c"
	line	86
global __ptext86
__ptext86:
psect	text86
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 25
	line	90
	
l8864:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u6781
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u6781:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u6791
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u6791:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l8866:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u6801
	goto	u6800
u6801:
	goto	l1937
u6800:
	
l8868:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u6811
	goto	u6810

u6811:
	goto	l8872
u6810:
	
l8870:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u6821
	goto	u6820

u6821:
	goto	l8872
u6820:
	
l1937:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l1938
	
l1935:
	line	94
	
l8872:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6831
	goto	u6830
u6831:
	goto	l1941
u6830:
	
l8874:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u6841
	goto	u6840

u6841:
	goto	l8878
u6840:
	
l8876:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u6851
	goto	u6850

u6851:
	goto	l8878
u6850:
	
l1941:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l1938
	
l1939:
	line	96
	
l8878:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l8880:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u6861
	goto	u6860
u6861:
	goto	l8884
u6860:
	line	98
	
l8882:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l8884
	
l1942:
	line	99
	
l8884:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6871
	goto	u6870
u6871:
	goto	l1943
u6870:
	line	100
	
l8886:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l1943:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l8888:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l8890:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l8892:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u6881
	goto	u6880

u6881:
	goto	l8904
u6880:
	goto	l8894
	line	109
	
l1945:
	line	110
	
l8894:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l8896:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6891
	goto	u6890

u6891:
	goto	l8902
u6890:
	
l8898:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6901
	goto	u6900
u6901:
	goto	l8894
u6900:
	goto	l8902
	
l1947:
	goto	l8902
	
l1948:
	line	113
	goto	l8902
	
l1950:
	line	114
	
l8900:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l8902
	line	116
	
l1949:
	line	113
	
l8902:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u6911
	goto	u6910

u6911:
	goto	l8900
u6910:
	goto	l1952
	
l1951:
	line	117
	goto	l1952
	
l1944:
	
l8904:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u6921
	goto	u6920

u6921:
	goto	l1952
u6920:
	goto	l8906
	line	120
	
l1954:
	line	121
	
l8906:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l8908:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6931
	goto	u6930

u6931:
	goto	l8914
u6930:
	
l8910:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6941
	goto	u6940
u6941:
	goto	l8906
u6940:
	goto	l8914
	
l1956:
	goto	l8914
	
l1957:
	line	124
	goto	l8914
	
l1959:
	line	125
	
l8912:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l8914
	line	127
	
l1958:
	line	124
	
l8914:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u6951
	goto	u6950

u6951:
	goto	l8912
u6950:
	goto	l1952
	
l1960:
	goto	l1952
	line	128
	
l1953:
	line	129
	
l1952:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u6961
	goto	u6960
u6961:
	goto	l1961
u6960:
	line	131
	
l8916:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l1961:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u6971
	goto	u6970
u6971:
	goto	l8920
u6970:
	line	136
	
l8918:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l8920
	line	138
	
l1962:
	line	139
	
l8920:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l8922:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l8924:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6981
	goto	u6980
u6981:
	goto	l8930
u6980:
	line	142
	
l8926:
	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l8928:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l8930
	line	145
	
l1963:
	line	146
	
l8930:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l1938
	
l8932:
	line	148
	
l1938:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   16[COMRAM] unsigned um
;;  exp             1   19[COMRAM] unsigned char 
;;  sign            1   20[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lbtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text87,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\float.c"
	line	62
global __ptext87
__ptext87:
psect	text87
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	line	64
	
l8814:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u6691
	goto	u6690
u6691:
	goto	l8818
u6690:
	
l8816:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u6701
	goto	u6700

u6701:
	goto	l8824
u6700:
	goto	l8818
	
l1896:
	line	65
	
l8818:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l1897
	
l8820:
	goto	l1897
	
l1894:
	line	66
	goto	l8824
	
l1899:
	line	67
	
l8822:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l8824
	line	69
	
l1898:
	line	66
	
l8824:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u6711
	goto	u6710

u6711:
	goto	l8822
u6710:
	goto	l8830
	
l1900:
	line	70
	goto	l8830
	
l1902:
	line	71
	
l8826:
	incf	((c:___ftpack@exp)),c
	line	72
	
l8828:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l8830
	line	74
	
l1901:
	line	70
	
l8830:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u6721
	goto	u6720

u6721:
	goto	l8826
u6720:
	goto	l8834
	
l1903:
	line	75
	goto	l8834
	
l1905:
	line	76
	
l8832:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l8834
	line	78
	
l1904:
	line	75
	
l8834:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u6731
	goto	u6730
u6731:
	goto	l1908
u6730:
	
l8836:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u6741
	goto	u6740

u6741:
	goto	l8832
u6740:
	goto	l1908
	
l1907:
	
l1908:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u6751
	goto	u6750
u6751:
	goto	l8840
u6750:
	line	80
	
l8838:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l8840
	
l1909:
	line	81
	
l8840:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l8842:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u6761
	goto	u6760
u6761:
	goto	l8846
u6760:
	line	84
	
l8844:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l8846
	
l1910:
	line	85
	
l8846:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l1897
	
l8848:
	line	86
	
l1897:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text88,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftneg.c"
	line	15
global __ptext88
__ptext88:
psect	text88
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 27
	line	17
	
l9424:
	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u7611
	goto	u7610

u7611:
	goto	l2011
u7610:
	line	18
	
l9426:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l2011:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l2012:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   16[COMRAM] float 
;;  ff2             3   19[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_test_alarm
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text89,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftge.c"
	line	4
global __ptext89
__ptext89:
psect	text89
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 27
	line	6
	
l9406:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u7581
	goto	u7580
u7581:
	goto	l9410
u7580:
	line	7
	
l9408:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l9410
	
l1993:
	line	8
	
l9410:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u7591
	goto	u7590
u7591:
	goto	l9414
u7590:
	line	9
	
l9412:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l9414
	
l1994:
	line	10
	
l9414:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l9416:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
		movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u7601
	goto	u7600

u7601:
	goto	l9420
u7600:
	
l9418:
	bcf	status,0
	goto	l1995
	
l8804:
	
l9420:
	bsf	status,0
	goto	l1995
	
l8806:
	goto	l1995
	
l9422:
	line	13
	
l1995:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_drawtext

;; *************** function _drawtext *****************
;; Defined at:
;;		line 475 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   56[COMRAM] unsigned char 
;;  _text           2   57[COMRAM] PTR unsigned char 
;;		 -> NULL(0), setup_date(9), setup_time(9), setup_fan_set_text(5), 
;;		 -> setup_alarm_time(9), RPM_Txt(5), Volt_Txt(6), DC_Txt(4), 
;;		 -> RTC_ALARM_Txt(2), Fan_SW_Txt(4), Fan_Set_Temp_Txt(5), Alarm_SW_Txt(4), 
;;		 -> alarm_time(9), date(9), time(9), tempF(4), 
;;		 -> tempC(4), 
;;  color           2   59[COMRAM] unsigned int 
;;  bg              2   61[COMRAM] unsigned int 
;;  size            1   63[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   66[COMRAM] unsigned char 
;;  i               2   69[COMRAM] unsigned int 
;;  textsize        2   67[COMRAM] unsigned int 
;;  cursor_x        1   72[COMRAM] unsigned char 
;;  cursor_y        1   71[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        17       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_drawChar
;;		_strlen
;; This function is called by:
;;		_Initialize_Screen
;;		_Update_Screen
;;		_Initialize_Setup_Alarm_Time_Screen
;;		_Update_Setup_Alarm_Time_Screen
;;		_Initialize_Setup_Fan_Screen
;;		_Update_Setup_Fan_Screen
;;		_Initialize_Setup_Time_Screen
;;		_Update_Setup_Time_Screen
;; This function uses a non-reentrant model
;;
psect	text90,class=CODE,space=0,reloc=2
	file	"ST7735_TFT.c"
	line	475
global __ptext90
__ptext90:
psect	text90
	file	"ST7735_TFT.c"
	line	475
	global	__size_of_drawtext
	__size_of_drawtext	equ	__end_of_drawtext-_drawtext
	
_drawtext:
;incstack = 0
	opt	stack 21
	movwf	((c:drawtext@x)),c
	line	479
	
l9840:
	movff	(c:drawtext@x),(c:drawtext@cursor_x)
	
l9842:
	movff	(c:drawtext@y),(c:drawtext@cursor_y)
	line	480
	
l9844:
		movff	(c:drawtext@_text),(c:strlen@s)
	movff	(c:drawtext@_text+1),(c:strlen@s+1)

	call	_strlen	;wreg free
	movff	0+?_strlen,(c:drawtext@textsize)
	movff	1+?_strlen,(c:drawtext@textsize+1)
	line	481
	
l9846:
	movlw	high(0)
	movwf	((c:drawtext@i+1)),c
	movlw	low(0)
	movwf	((c:drawtext@i)),c
	goto	l9874
	
l776:
	line	482
	
l9848:
	movlb	0	; () banked
	movf	((_wrap))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u8291
	goto	u8290
u8291:
	goto	l9864
u8290:
	
l9850:; BSR set to: 0

	movf	((c:drawtext@size)),c,w
	mullw	05h
	movf	((c:drawtext@cursor_x)),c,w
	movwf	(??_drawtext+0+0)&0ffh,c
	clrf	(??_drawtext+0+0+1)&0ffh,c

	movf	(prodl),c,w
	addwf	(??_drawtext+0+0),c
	movf	(prodh),c,w
	addwfc	(??_drawtext+0+1),c
	btfsc	(??_drawtext+0+1),c,7
	goto	u8301
	movf	(??_drawtext+0+1),c,w
	bnz	u8300
	movlw	129
	subwf	 (??_drawtext+0+0),c,w
	btfss	status,0
	goto	u8301
	goto	u8300

u8301:
	goto	l9864
u8300:
	line	483
	
l9852:; BSR set to: 0

	movlw	low(0)
	movwf	((c:drawtext@cursor_x)),c
	line	484
	
l9854:; BSR set to: 0

	movf	((c:drawtext@size)),c,w
	mullw	07h
	movf	(prodl),c,w
	addwf	((c:drawtext@cursor_y)),c,w
	addlw	low(03h)
	movwf	((c:drawtext@cursor_y)),c
	line	485
	
l9856:; BSR set to: 0

		movlw	0A1h-1
	cpfsgt	((c:drawtext@cursor_y)),c
	goto	u8311
	goto	u8310

u8311:
	goto	l9860
u8310:
	
l9858:; BSR set to: 0

	movlw	low(0A0h)
	movwf	((c:drawtext@cursor_y)),c
	goto	l9860
	
l778:; BSR set to: 0

	line	486
	
l9860:; BSR set to: 0

	movf	((c:drawtext@i)),c,w
	addwf	((c:drawtext@_text)),c,w
	movwf	c:fsr2l
	movf	((c:drawtext@i+1)),c,w
	addwfc	((c:drawtext@_text+1)),c,w
	movwf	1+c:fsr2l
	movlw	32
	xorwf	postinc2,w
	btfss	status,2
	goto	u8321
	goto	u8320

u8321:
	goto	l9864
u8320:
	goto	l9872
	
l9862:; BSR set to: 0

	goto	l9872
	
l779:; BSR set to: 0

	goto	l9864
	
l777:; BSR set to: 0

	line	487
	
l9864:; BSR set to: 0

	movff	(c:drawtext@cursor_y),(c:drawChar@y)
	movf	((c:drawtext@i)),c,w
	addwf	((c:drawtext@_text)),c,w
	movwf	c:fsr2l
	movf	((c:drawtext@i+1)),c,w
	addwfc	((c:drawtext@_text+1)),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:drawChar@c)),c
	movff	(c:drawtext@color),(c:drawChar@color)
	movff	(c:drawtext@color+1),(c:drawChar@color+1)
	movff	(c:drawtext@bg),(c:drawChar@bg)
	movff	(c:drawtext@bg+1),(c:drawChar@bg+1)
	movff	(c:drawtext@size),(c:drawChar@size)
	movf	((c:drawtext@cursor_x)),c,w
	
	call	_drawChar
	line	488
	
l9866:
	movf	((c:drawtext@size)),c,w
	mullw	06h
	movf	(prodl),c,w
	addwf	((c:drawtext@cursor_x)),c,w
	movwf	((c:drawtext@cursor_x)),c
	line	489
	
l9868:
		movlw	081h-1
	cpfsgt	((c:drawtext@cursor_x)),c
	goto	u8331
	goto	u8330

u8331:
	goto	l9872
u8330:
	
l9870:
	movlw	low(080h)
	movwf	((c:drawtext@cursor_x)),c
	goto	l9872
	
l781:
	goto	l9872
	line	490
	
l780:
	line	481
	
l9872:
	infsnz	((c:drawtext@i)),c
	incf	((c:drawtext@i+1)),c
	goto	l9874
	
l775:
	
l9874:
		movf	((c:drawtext@textsize)),c,w
	subwf	((c:drawtext@i)),c,w
	movf	((c:drawtext@textsize+1)),c,w
	subwfb	((c:drawtext@i+1)),c,w
	btfss	status,0
	goto	u8341
	goto	u8340

u8341:
	goto	l9848
u8340:
	goto	l783
	
l782:
	line	491
	
l783:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_drawtext
	__end_of_drawtext:
	signat	_drawtext,24696
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2   16[COMRAM] PTR const unsigned char 
;;		 -> NULL(0), setup_date(9), setup_time(9), setup_fan_set_text(5), 
;;		 -> setup_alarm_time(9), RPM_Txt(5), Volt_Txt(6), DC_Txt(4), 
;;		 -> RTC_ALARM_Txt(2), Fan_SW_Txt(4), Fan_Set_Temp_Txt(5), Alarm_SW_Txt(4), 
;;		 -> alarm_time(9), date(9), time(9), tempF(4), 
;;		 -> tempC(4), 
;; Auto vars:     Size  Location     Type
;;  cp              2   20[COMRAM] PTR const unsigned char 
;;		 -> NULL(0), setup_date(9), setup_time(9), setup_fan_set_text(5), 
;;		 -> setup_alarm_time(9), RPM_Txt(5), Volt_Txt(6), DC_Txt(4), 
;;		 -> RTC_ALARM_Txt(2), Fan_SW_Txt(4), Fan_Set_Temp_Txt(5), Alarm_SW_Txt(4), 
;;		 -> alarm_time(9), date(9), time(9), tempF(4), 
;;		 -> tempC(4), 
;; Return value:  Size  Location     Type
;;                  2   16[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_drawtext
;; This function uses a non-reentrant model
;;
psect	text91,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strlen.c"
	line	4
global __ptext91
__ptext91:
psect	text91
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:
;incstack = 0
	opt	stack 26
	line	8
	
l6096:
		movff	(c:strlen@s),(c:strlen@cp)
	movff	(c:strlen@s+1),(c:strlen@cp+1)

	line	9
	goto	l6100
	
l2170:
	line	10
	
l6098:
	infsnz	((c:strlen@cp)),c
	incf	((c:strlen@cp+1)),c
	goto	l6100
	line	11
	
l2169:
	line	9
	
l6100:
	movff	(c:strlen@cp),fsr2l
	movff	(c:strlen@cp+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u4131
	goto	u4130
u4131:
	goto	l6098
u4130:
	goto	l6102
	
l2171:
	line	12
	
l6102:
	movff	(c:strlen@s),??_strlen+0+0
	movff	(c:strlen@s+1),??_strlen+0+0+1
	comf	(??_strlen+0+0),c
	comf	(??_strlen+0+1),c
	infsnz	(??_strlen+0+0),c
	incf	(??_strlen+0+1),c
	movf	((c:strlen@cp)),c,w
	addwf	(??_strlen+0+0),c,w
	movwf	((c:?_strlen)),c
	movf	((c:strlen@cp+1)),c,w
	addwfc	(??_strlen+0+1),c,w
	movwf	1+((c:?_strlen)),c
	goto	l2172
	
l6104:
	line	13
	
l2172:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_drawChar

;; *************** function _drawChar *****************
;; Defined at:
;;		line 448 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   45[COMRAM] unsigned char 
;;  c               1   46[COMRAM] unsigned char 
;;  color           2   47[COMRAM] unsigned int 
;;  bg              2   49[COMRAM] unsigned int 
;;  size            1   51[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1   53[COMRAM] unsigned char 
;;  line            1   52[COMRAM] unsigned char 
;;  i               1   55[COMRAM] unsigned char 
;;  j               1   54[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		___wmul
;;		_drawPixel
;;		_fillRect
;; This function is called by:
;;		_drawtext
;; This function uses a non-reentrant model
;;
psect	text92,class=CODE,space=0,reloc=2
	file	"ST7735_TFT.c"
	line	448
global __ptext92
__ptext92:
psect	text92
	file	"ST7735_TFT.c"
	line	448
	global	__size_of_drawChar
	__size_of_drawChar	equ	__end_of_drawChar-_drawChar
	
_drawChar:
;incstack = 0
	opt	stack 21
	movwf	((c:drawChar@x)),c
	line	451
	
l9156:
		movlw	080h-0
	cpfslt	((c:drawChar@x)),c
	goto	u7181
	goto	u7180

u7181:
	goto	l755
u7180:
	
l9158:
		movlw	0A0h-1
	cpfsgt	((c:drawChar@y)),c
	goto	u7191
	goto	u7190

u7191:
	goto	l9160
u7190:
	goto	l755
	
l754:
	line	452
	goto	l755
	
l752:
	line	453
	
l9160:
	movf	((c:drawChar@size)),c,w
	btfss	status,2
	goto	u7201
	goto	u7200
u7201:
	goto	l9164
u7200:
	
l9162:
	movlw	low(01h)
	movwf	((c:drawChar@size)),c
	goto	l9164
	
l756:
	line	454
	
l9164:
		movlw	020h-1
	cpfsgt	((c:drawChar@c)),c
	goto	u7211
	goto	u7210

u7211:
	goto	l9168
u7210:
	
l9166:
		movlw	07Fh-1
	cpfsgt	((c:drawChar@c)),c
	goto	u7221
	goto	u7220

u7221:
	goto	l757
u7220:
	goto	l9168
	
l759:
	line	455
	
l9168:
	movlw	low(03Fh)
	movwf	((c:drawChar@c)),c
	
l757:
	line	456
	movlw	low(0)
	movwf	((c:drawChar@i)),c
	
l9170:
		movlw	05h-1
	cpfsgt	((c:drawChar@i)),c
	goto	u7231
	goto	u7230

u7231:
	goto	l9174
u7230:
	goto	l755
	
l9172:
	goto	l755
	
l760:
	line	458
	
l9174:
		movlw	053h-0
	cpfslt	((c:drawChar@c)),c
	goto	u7241
	goto	u7240

u7241:
	goto	l9178
u7240:
	line	459
	
l9176:
	movlw	low(0FFE0h)
	addwf	((c:drawChar@c)),c,w
	movwf	((c:___wmul@multiplier)),c
	clrf	1+((c:___wmul@multiplier)),c
	movlw	high(0FFE0h)
	addwfc	1+((c:___wmul@multiplier)),c
	movlw	high(05h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(05h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	((c:drawChar@i)),c,w
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((_font))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((_font))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,(c:drawChar@line)
	goto	l9180
	line	460
	
l762:
	line	461
	
l9178:
	movlw	low(0FFADh)
	addwf	((c:drawChar@c)),c,w
	movwf	((c:___wmul@multiplier)),c
	clrf	1+((c:___wmul@multiplier)),c
	movlw	high(0FFADh)
	addwfc	1+((c:___wmul@multiplier)),c
	movlw	high(05h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(05h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	((c:drawChar@i)),c,w
	addwf	(0+?___wmul),c
	movlw	0
	addwfc	(1+?___wmul),c
	movlw	low((_font2))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((_font2))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movff	tablat,(c:drawChar@line)
	goto	l9180
	
l763:
	line	462
	
l9180:
	movlw	low(0)
	movwf	((c:drawChar@j)),c
	
l9182:
		movlw	07h-1
	cpfsgt	((c:drawChar@j)),c
	goto	u7251
	goto	u7250

u7251:
	goto	l764
u7250:
	goto	l9206
	
l9184:
	goto	l9206
	
l764:
	line	463
	
	btfss	((c:drawChar@line)),c,(0)&7
	goto	u7261
	goto	u7260
u7261:
	goto	l9192
u7260:
	line	464
	
l9186:
		decf	((c:drawChar@size)),c,w
	btfss	status,2
	goto	u7271
	goto	u7270

u7271:
	goto	l9190
u7270:
	
l9188:
	movf	((c:drawChar@y)),c,w
	addwf	((c:drawChar@j)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawChar@color),(c:drawPixel@color)
	movff	(c:drawChar@color+1),(c:drawPixel@color+1)
	movf	((c:drawChar@x)),c,w
	addwf	((c:drawChar@i)),c,w
	
	call	_drawPixel
	goto	l9200
	line	465
	
l767:
	
l9190:
	movf	((c:drawChar@j)),c,w
	mulwf	((c:drawChar@size)),c
	movf	(prodl),c,w
	addwf	((c:drawChar@y)),c,w
	movwf	((c:fillRect@y)),c
	movff	(c:drawChar@size),(c:fillRect@w)
	movff	(c:drawChar@size),(c:fillRect@h)
	movff	(c:drawChar@color),(c:fillRect@color)
	movff	(c:drawChar@color+1),(c:fillRect@color+1)
	movf	((c:drawChar@i)),c,w
	mulwf	((c:drawChar@size)),c
	movf	(prodl),c,w
	addwf	((c:drawChar@x)),c,w
	
	call	_fillRect
	goto	l9200
	
l768:
	line	466
	goto	l9200
	line	467
	
l766:
	
l9192:
	movf	((c:drawChar@color)),c,w
xorwf	((c:drawChar@bg)),c,w
	bnz	u7280
movf	((c:drawChar@color+1)),c,w
xorwf	((c:drawChar@bg+1)),c,w
	btfsc	status,2
	goto	u7281
	goto	u7280

u7281:
	goto	l9200
u7280:
	line	468
	
l9194:
		decf	((c:drawChar@size)),c,w
	btfss	status,2
	goto	u7291
	goto	u7290

u7291:
	goto	l9198
u7290:
	
l9196:
	movf	((c:drawChar@y)),c,w
	addwf	((c:drawChar@j)),c,w
	movwf	((c:drawPixel@y)),c
	movff	(c:drawChar@bg),(c:drawPixel@color)
	movff	(c:drawChar@bg+1),(c:drawPixel@color+1)
	movf	((c:drawChar@x)),c,w
	addwf	((c:drawChar@i)),c,w
	
	call	_drawPixel
	goto	l9200
	line	469
	
l771:
	
l9198:
	movf	((c:drawChar@j)),c,w
	mulwf	((c:drawChar@size)),c
	movf	(prodl),c,w
	addwf	((c:drawChar@y)),c,w
	movwf	((c:fillRect@y)),c
	movff	(c:drawChar@size),(c:fillRect@w)
	movff	(c:drawChar@size),(c:fillRect@h)
	movff	(c:drawChar@bg),(c:fillRect@color)
	movff	(c:drawChar@bg+1),(c:fillRect@color+1)
	movf	((c:drawChar@i)),c,w
	mulwf	((c:drawChar@size)),c
	movf	(prodl),c,w
	addwf	((c:drawChar@x)),c,w
	
	call	_fillRect
	goto	l9200
	
l772:
	goto	l9200
	line	470
	
l770:
	goto	l9200
	line	471
	
l769:
	line	462
	
l9200:
	incf	((c:drawChar@j)),c
	
l9202:
	bcf status,0
	rrcf	((c:drawChar@line)),c

	
l9204:
		movlw	07h-1
	cpfsgt	((c:drawChar@j)),c
	goto	u7301
	goto	u7300

u7301:
	goto	l764
u7300:
	goto	l9206
	
l765:
	line	456
	
l9206:
	incf	((c:drawChar@i)),c
	
l9208:
		movlw	05h-1
	cpfsgt	((c:drawChar@i)),c
	goto	u7311
	goto	u7310

u7311:
	goto	l9174
u7310:
	goto	l755
	
l761:
	line	473
	
l755:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_drawChar
	__end_of_drawChar:
	signat	_drawChar,24696
	global	_fillRect

;; *************** function _fillRect *****************
;; Defined at:
;;		line 438 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   34[COMRAM] unsigned char 
;;  w               1   35[COMRAM] unsigned char 
;;  h               1   36[COMRAM] unsigned char 
;;  color           2   37[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1   42[COMRAM] unsigned char 
;;  i               2   43[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_drawFastVLine
;; This function is called by:
;;		_drawChar
;;		_Initialize_Setup_Alarm_Time_Screen
;;		_Initialize_Setup_Time_Screen
;;		_Update_Setup_Screen_Cursor_Forward
;;		_Update_Setup_Screen_Cursor_Backward
;; This function uses a non-reentrant model
;;
psect	text93,class=CODE,space=0,reloc=2
	line	438
global __ptext93
__ptext93:
psect	text93
	file	"ST7735_TFT.c"
	line	438
	global	__size_of_fillRect
	__size_of_fillRect	equ	__end_of_fillRect-_fillRect
	
_fillRect:
;incstack = 0
	opt	stack 21
	movwf	((c:fillRect@x)),c
	line	442
	
l5660:
	movff	(c:fillRect@x),(c:fillRect@i)
	clrf	((c:fillRect@i+1)),c
	goto	l5666
	line	443
	
l747:
	line	444
	
l5662:
	movff	(c:fillRect@y),(c:drawFastVLine@y)
	movff	(c:fillRect@h),(c:drawFastVLine@h)
	movff	(c:fillRect@color),(c:drawFastVLine@color)
	movff	(c:fillRect@color+1),(c:drawFastVLine@color+1)
	movf	((c:fillRect@i)),c,w
	
	call	_drawFastVLine
	line	442
	
l5664:
	infsnz	((c:fillRect@i)),c
	incf	((c:fillRect@i+1)),c
	goto	l5666
	
l746:
	
l5666:
	movf	((c:fillRect@w)),c,w
	movff	(c:fillRect@x),??_fillRect+0+0
	clrf	(??_fillRect+0+0+1)&0ffh,c
	addwf	(??_fillRect+0+0),c
	movlw	0
	addwfc	(??_fillRect+0+1),c
		movf	(??_fillRect+0+0),c,w
	subwf	((c:fillRect@i)),c,w
	movf	((c:fillRect@i+1)),c,w
	xorlw	80h
	movwf	(??_fillRect+2+0)&0ffh,c
	movf	(??_fillRect+0+1),c,w
	xorlw	80h
	subwfb	(??_fillRect+2+0)&0ffh,c,w
	btfss	status,0
	goto	u3511
	goto	u3510

u3511:
	goto	l5662
u3510:
	goto	l749
	
l748:
	line	446
	
l749:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fillRect
	__end_of_fillRect:
	signat	_fillRect,20600
	global	_drawFastVLine

;; *************** function _drawFastVLine *****************
;; Defined at:
;;		line 417 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   23[COMRAM] unsigned char 
;;  h               1   24[COMRAM] unsigned char 
;;  color           2   25[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1   33[COMRAM] unsigned char 
;;  lo              1   32[COMRAM] unsigned char 
;;  hi              1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setAddrWindow
;;		_spiwrite
;; This function is called by:
;;		_fillRect
;;		_fillCircleHelper
;;		_fillCircle
;;		_drawRect
;; This function uses a non-reentrant model
;;
psect	text94,class=CODE,space=0,reloc=2
	line	417
global __ptext94
__ptext94:
psect	text94
	file	"ST7735_TFT.c"
	line	417
	global	__size_of_drawFastVLine
	__size_of_drawFastVLine	equ	__end_of_drawFastVLine-_drawFastVLine
	
_drawFastVLine:
;incstack = 0
	opt	stack 21
	movwf	((c:drawFastVLine@x)),c
	line	420
	
l5560:
		movlw	080h-0
	cpfslt	((c:drawFastVLine@x)),c
	goto	u3361
	goto	u3360

u3361:
	goto	l739
u3360:
	
l5562:
		movlw	0A0h-1
	cpfsgt	((c:drawFastVLine@y)),c
	goto	u3371
	goto	u3370

u3371:
	goto	l5564
u3370:
	goto	l739
	
l738:
	line	421
	goto	l739
	
l736:
	line	422
	
l5564:
	movlw	low(-1)
	movwf	(??_drawFastVLine+0+0)&0ffh,c
	movlw	high(-1)
	movwf	1+(??_drawFastVLine+0+0)&0ffh,c
	movf	((c:drawFastVLine@h)),c,w
	movff	(c:drawFastVLine@y),??_drawFastVLine+2+0
	clrf	(??_drawFastVLine+2+0+1)&0ffh,c
	addwf	(??_drawFastVLine+2+0),c
	movlw	0
	addwfc	(??_drawFastVLine+2+1),c
	movf	(??_drawFastVLine+0+0),c,w
	addwf	(??_drawFastVLine+2+0),c
	movf	(??_drawFastVLine+0+1),c,w
	addwfc	(??_drawFastVLine+2+1),c
	btfsc	(??_drawFastVLine+2+1),c,7
	goto	u3381
	movf	(??_drawFastVLine+2+1),c,w
	bnz	u3380
	movlw	160
	subwf	 (??_drawFastVLine+2+0),c,w
	btfss	status,0
	goto	u3381
	goto	u3380

u3381:
	goto	l5568
u3380:
	line	423
	
l5566:
	movf	((c:drawFastVLine@y)),c,w
	sublw	0
	addlw	low(0A0h)
	movwf	((c:drawFastVLine@h)),c
	goto	l5568
	
l740:
	line	424
	
l5568:
	movf	((c:drawFastVLine@color+1)),c,w
	movwf	((c:drawFastVLine@hi)),c
	
l5570:
	movff	(c:drawFastVLine@color),(c:drawFastVLine@lo)
	line	425
	
l5572:
	movff	(c:drawFastVLine@y),(c:setAddrWindow@y0)
	movff	(c:drawFastVLine@x),(c:setAddrWindow@x1)
	movf	((c:drawFastVLine@y)),c,w
	addwf	((c:drawFastVLine@h)),c,w
	movwf	(??_drawFastVLine+0+0)&0ffh,c
	decf	((??_drawFastVLine+0+0)),c,w
	movwf	((c:setAddrWindow@y1)),c
	movf	((c:drawFastVLine@x)),c,w
	
	call	_setAddrWindow
	line	426
	
l5574:
	bsf	((c:3971)),c,3	;volatile
	line	427
	
l5576:
	bcf	((c:3971)),c,4	;volatile
	line	429
	goto	l5580
	
l742:
	line	430
	
l5578:
	movf	((c:drawFastVLine@hi)),c,w
	
	call	_spiwrite
	line	431
	movf	((c:drawFastVLine@lo)),c,w
	
	call	_spiwrite
	goto	l5580
	line	432
	
l741:
	line	429
	
l5580:
	decf	((c:drawFastVLine@h)),c
		incf	((c:drawFastVLine@h)),c,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l5578
u3390:
	
l743:
	line	433
	bsf	((c:3971)),c,4	;volatile
	line	436
	
l739:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_drawFastVLine
	__end_of_drawFastVLine:
	signat	_drawFastVLine,16504
	global	_drawPixel

;; *************** function _drawPixel *****************
;; Defined at:
;;		line 408 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;;  y               1   23[COMRAM] unsigned char 
;;  color           2   24[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  x               1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setAddrWindow
;;		_write_data
;; This function is called by:
;;		_drawChar
;;		_drawCircle
;;		_drawCircleHelper
;; This function uses a non-reentrant model
;;
psect	text95,class=CODE,space=0,reloc=2
	line	408
global __ptext95
__ptext95:
psect	text95
	file	"ST7735_TFT.c"
	line	408
	global	__size_of_drawPixel
	__size_of_drawPixel	equ	__end_of_drawPixel-_drawPixel
	
_drawPixel:
;incstack = 0
	opt	stack 22
	movwf	((c:drawPixel@x)),c
	line	410
	
l5650:
		movlw	080h-0
	cpfslt	((c:drawPixel@x)),c
	goto	u3491
	goto	u3490

u3491:
	goto	l733
u3490:
	
l5652:
		movlw	0A0h-1
	cpfsgt	((c:drawPixel@y)),c
	goto	u3501
	goto	u3500

u3501:
	goto	l5654
u3500:
	goto	l733
	
l732:
	line	411
	goto	l733
	
l730:
	line	412
	
l5654:
	movff	(c:drawPixel@y),(c:setAddrWindow@y0)
	incf	((c:drawPixel@x)),c,w
	movwf	((c:setAddrWindow@x1)),c
	incf	((c:drawPixel@y)),c,w
	movwf	((c:setAddrWindow@y1)),c
	movf	((c:drawPixel@x)),c,w
	
	call	_setAddrWindow
	line	413
	
l5656:
	movf	((c:drawPixel@color+1)),c,w
	
	call	_write_data
	line	414
	
l5658:
	movf	((c:drawPixel@color)),c,w
	
	call	_write_data
	line	415
	
l733:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_drawPixel
	__end_of_drawPixel:
	signat	_drawPixel,12408
	global	_setAddrWindow

;; *************** function _setAddrWindow *****************
;; Defined at:
;;		line 393 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  x0              1    wreg     unsigned char 
;;  y0              1   19[COMRAM] unsigned char 
;;  x1              1   20[COMRAM] unsigned char 
;;  y1              1   21[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  x0              1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_write_command
;;		_write_data
;; This function is called by:
;;		_drawPixel
;;		_drawFastVLine
;;		_fillRectangle
;;		_drawFastHLine
;; This function uses a non-reentrant model
;;
psect	text96,class=CODE,space=0,reloc=2
	line	393
global __ptext96
__ptext96:
psect	text96
	file	"ST7735_TFT.c"
	line	393
	global	__size_of_setAddrWindow
	__size_of_setAddrWindow	equ	__end_of_setAddrWindow-_setAddrWindow
	
_setAddrWindow:
;incstack = 0
	opt	stack 21
	movwf	((c:setAddrWindow@x0)),c
	line	395
	
l5536:
	movlw	(02Ah)&0ffh
	
	call	_write_command
	line	396
	movlw	(0)&0ffh
	
	call	_write_data
	line	397
	
l5538:
	movf	((c:setAddrWindow@x0)),c,w
	movlb	0	; () banked
	addwf	((_colstart))&0ffh,w
	
	call	_write_data
	line	398
	
l5540:
	movlw	(0)&0ffh
	
	call	_write_data
	line	399
	movf	((c:setAddrWindow@x1)),c,w
	movlb	0	; () banked
	addwf	((_colstart))&0ffh,w
	
	call	_write_data
	line	400
	
l5542:
	movlw	(02Bh)&0ffh
	
	call	_write_command
	line	401
	
l5544:
	movlw	(0)&0ffh
	
	call	_write_data
	line	402
	movf	((c:setAddrWindow@y0)),c,w
	movlb	0	; () banked
	addwf	((_rowstart))&0ffh,w
	
	call	_write_data
	line	403
	
l5546:
	movlw	(0)&0ffh
	
	call	_write_data
	line	404
	
l5548:
	movf	((c:setAddrWindow@y1)),c,w
	movlb	0	; () banked
	addwf	((_rowstart))&0ffh,w
	
	call	_write_data
	line	405
	movlw	(02Ch)&0ffh
	
	call	_write_command
	line	406
	
l727:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_setAddrWindow
	__end_of_setAddrWindow:
	signat	_setAddrWindow,16504
	global	_write_data

;; *************** function _write_data *****************
;; Defined at:
;;		line 210 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  data_           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data_           1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_spiwrite
;; This function is called by:
;;		_Rcmd1
;;		_Rcmd2red
;;		_Rcmd3
;;		_setAddrWindow
;;		_drawPixel
;;		_TFT_GreenTab_Initialize
;;		_Bcmd
;;		_setScrollDefinition
;;		_Rcmd2green
;;		_VerticalScroll
;; This function uses a non-reentrant model
;;
psect	text97,class=CODE,space=0,reloc=2
	line	210
global __ptext97
__ptext97:
psect	text97
	file	"ST7735_TFT.c"
	line	210
	global	__size_of_write_data
	__size_of_write_data	equ	__end_of_write_data-_write_data
	
_write_data:
;incstack = 0
	opt	stack 21
	movwf	((c:write_data@data_)),c
	line	212
	
l5530:
	bcf	((c:3971)),c,4	;volatile
	line	213
	bsf	((c:3971)),c,3	;volatile
	line	214
	
l5532:
	movf	((c:write_data@data_)),c,w
	
	call	_spiwrite
	line	215
	
l5534:
	bsf	((c:3971)),c,4	;volatile
	line	216
	
l698:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_write_data
	__end_of_write_data:
	signat	_write_data,4216
	global	_write_command

;; *************** function _write_command *****************
;; Defined at:
;;		line 199 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  cmd_            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cmd_            1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_spiwrite
;; This function is called by:
;;		_Rcmd1
;;		_Rcmd2red
;;		_Rcmd3
;;		_setAddrWindow
;;		_TFT_GreenTab_Initialize
;;		_Bcmd
;;		_setScrollDefinition
;;		_Rcmd2green
;;		_VerticalScroll
;; This function uses a non-reentrant model
;;
psect	text98,class=CODE,space=0,reloc=2
	line	199
global __ptext98
__ptext98:
psect	text98
	file	"ST7735_TFT.c"
	line	199
	global	__size_of_write_command
	__size_of_write_command	equ	__end_of_write_command-_write_command
	
_write_command:
;incstack = 0
	opt	stack 21
	movwf	((c:write_command@cmd_)),c
	line	201
	
l5524:
	bcf	((c:3971)),c,4	;volatile
	line	203
	bcf	((c:3971)),c,3	;volatile
	line	204
	
l5526:
	movf	((c:write_command@cmd_)),c,w
	
	call	_spiwrite
	line	206
	
l5528:
	bsf	((c:3971)),c,4	;volatile
	line	208
	
l695:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_write_command
	__end_of_write_command:
	signat	_write_command,4216
	global	_spiwrite

;; *************** function _spiwrite *****************
;; Defined at:
;;		line 190 in file "ST7735_TFT.c"
;; Parameters:    Size  Location     Type
;;  spidata         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  spidata         1   17[COMRAM] unsigned char 
;;  x               1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_write_command
;;		_write_data
;;		_drawFastVLine
;;		_fillRectangle
;;		_drawFastHLine
;; This function uses a non-reentrant model
;;
psect	text99,class=CODE,space=0,reloc=2
	line	190
global __ptext99
__ptext99:
psect	text99
	file	"ST7735_TFT.c"
	line	190
	global	__size_of_spiwrite
	__size_of_spiwrite	equ	__end_of_spiwrite-_spiwrite
	
_spiwrite:
;incstack = 0
	opt	stack 23
	movwf	((c:spiwrite@spidata)),c
	line	193
	
l5520:
	bcf	((c:3998)),c,3	;volatile
	line	194
	movff	(c:4041),(c:spiwrite@x)	;volatile
	line	195
	
l5522:
	movff	(c:spiwrite@spidata),(c:4041)	;volatile
	line	196
	goto	l689
	
l690:
	
l689:
	btfss	((c:4039)),c,0	;volatile
	goto	u3351
	goto	u3350
u3351:
	goto	l689
u3350:
	goto	l692
	
l691:
	line	197
	
l692:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_spiwrite
	__end_of_spiwrite:
	signat	_spiwrite,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   16[COMRAM] unsigned int 
;;  multiplicand    2   18[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   20[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   16[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_get_RPM
;;		_main
;;		_delay_ms
;;		_drawChar
;;		_read_volt
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text100,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
global __ptext100
__ptext100:
psect	text100
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 27
	line	37
	
l8808:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l8810:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l1572
	
l8812:
	line	53
	
l1572:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_Do_Init

;; *************** function _Do_Init *****************
;; Defined at:
;;		line 92 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_DS1621_Init
;;		_I2C_Init
;;		_Init_ADC
;;		_Init_Interrupt
;;		_Turn_Off_Fan
;;		_init_UART
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101,class=CODE,space=0,reloc=2
	file	"Main.c"
	line	92
global __ptext101
__ptext101:
psect	text101
	file	"Main.c"
	line	92
	global	__size_of_Do_Init
	__size_of_Do_Init	equ	__end_of_Do_Init-_Do_Init
	
_Do_Init:
;incstack = 0
	opt	stack 24
	line	94
	
l7934:
	call	_init_UART	;wreg free
	line	95
	call	_Init_ADC	;wreg free
	line	96
	
l7936:
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	98
	
l7938:
	movlw	low(0Eh)
	movwf	((c:4033)),c	;volatile
	line	99
	
l7940:
	movlw	low(011h)
	movwf	((c:3986)),c	;volatile
	line	100
	
l7942:
	movlw	low(027h)
	movwf	((c:3987)),c	;volatile
	line	101
	
l7944:
	movlw	low(01h)
	movwf	((c:3988)),c	;volatile
	line	102
	
l7946:
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	103
	
l7948:
	movlw	low(0)
	movwf	((c:3990)),c	;volatile
	line	104
	
l7950:
	movlw	low(0)
	movwf	((c:3972)),c	;volatile
	line	106
	
l7952:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_FAN))&0ffh
	line	107
	
l7954:; BSR set to: 0

	bcf	c:(32655/8),(32655)&7	;volatile
	line	109
	
l7956:; BSR set to: 0

	movlw	low(0)
	movwf	((c:4018)),c	;volatile
	line	110
	
l7958:; BSR set to: 0

	movlw	low(03h)
	movwf	((c:4017)),c	;volatile
	line	111
	
l7960:; BSR set to: 0

	movlw	low(0186A0h)
	movwf	((c:I2C_Init@c)),c
	movlw	high(0186A0h)
	movwf	((c:I2C_Init@c+1)),c
	movlw	low highword(0186A0h)
	movwf	((c:I2C_Init@c+2)),c
	movlw	high highword(0186A0h)
	movwf	((c:I2C_Init@c+3)),c
	call	_I2C_Init	;wreg free
	line	113
	
l7962:
	call	_DS1621_Init	;wreg free
	line	114
	
l7964:
	call	_Init_Interrupt	;wreg free
	line	115
	
l7966:
	call	_Turn_Off_Fan	;wreg free
	line	116
	
l7968:
	movlw	low(04Bh)
	movlb	0	; () banked
	movwf	((_fan_set_temp))&0ffh
	line	117
	
l524:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Do_Init
	__end_of_Do_Init:
	signat	_Do_Init,88
	global	_init_UART

;; *************** function _init_UART *****************
;; Defined at:
;;		line 84 in file "Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_OpenUSART
;; This function is called by:
;;		_Do_Init
;; This function uses a non-reentrant model
;;
psect	text102,class=CODE,space=0,reloc=2
	line	84
global __ptext102
__ptext102:
psect	text102
	file	"Main.c"
	line	84
	global	__size_of_init_UART
	__size_of_init_UART	equ	__end_of_init_UART-_init_UART
	
_init_UART:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	86
	
l7404:
	movlw	high(019h)
	movwf	((c:OpenUSART@spbrg+1)),c
	movlw	low(019h)
	movwf	((c:OpenUSART@spbrg)),c
	movlw	(03Ch)&0ffh
	
	call	_OpenUSART
	line	87
	
l7406:
	movlw	low(070h)
	movwf	((c:4051)),c	;volatile
	line	88
	
l521:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_init_UART
	__end_of_init_UART:
	signat	_init_UART,88
	global	_OpenUSART

;; *************** function _OpenUSART *****************
;; Defined at:
;;		line 73 in file "C:\Program Files (x86)\Microchip\xc8\v1.34\sources\pic18\plib\USART\uopen.c"
;; Parameters:    Size  Location     Type
;;  config          1    wreg     unsigned char 
;;  spbrg           2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  config          1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_UART
;; This function uses a non-reentrant model
;;
psect	text103,class=CODE,space=0,reloc=2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\pic18\plib\USART\uopen.c"
	line	73
global __ptext103
__ptext103:
psect	text103
	file	"C:\Program Files (x86)\Microchip\xc8\v1.34\sources\pic18\plib\USART\uopen.c"
	line	73
	global	__size_of_OpenUSART
	__size_of_OpenUSART	equ	__end_of_OpenUSART-_OpenUSART
	
_OpenUSART:
;incstack = 0
	opt	stack 26
	movwf	((c:OpenUSART@config)),c
	line	75
	
l7136:
	movlw	low(0)
	movwf	((c:4012)),c	;volatile
	line	76
	movlw	low(0)
	movwf	((c:4011)),c	;volatile
	line	78
	
l7138:
	
	btfss	((c:OpenUSART@config)),c,(0)&7
	goto	u5341
	goto	u5340
u5341:
	goto	l7142
u5340:
	line	79
	
l7140:
	bsf	((c:4012)),c,4	;volatile
	goto	l7142
	
l1557:
	line	81
	
l7142:
	
	btfss	((c:OpenUSART@config)),c,(1)&7
	goto	u5351
	goto	u5350
u5351:
	goto	l7146
u5350:
	line	83
	
l7144:
	bsf	((c:4012)),c,6	;volatile
	line	84
	bsf	((c:4011)),c,6	;volatile
	goto	l7146
	line	85
	
l1558:
	line	87
	
l7146:
	
	btfss	((c:OpenUSART@config)),c,(2)&7
	goto	u5361
	goto	u5360
u5361:
	goto	l7150
u5360:
	line	88
	
l7148:
	bsf	((c:4012)),c,7	;volatile
	goto	l7150
	
l1559:
	line	90
	
l7150:
	
	btfss	((c:OpenUSART@config)),c,(3)&7
	goto	u5371
	goto	u5370
u5371:
	goto	l1560
u5370:
	line	91
	
l7152:
	bsf	((c:4011)),c,4	;volatile
	goto	l7154
	line	92
	
l1560:
	line	93
	bsf	((c:4011)),c,5	;volatile
	goto	l7154
	
l1561:
	line	95
	
l7154:
	
	btfss	((c:OpenUSART@config)),c,(4)&7
	goto	u5381
	goto	u5380
u5381:
	goto	l1562
u5380:
	line	96
	
l7156:
	bsf	((c:4012)),c,2	;volatile
	
l1562:
	line	98
	bcf	((c:3998)),c,4	;volatile
	line	100
	
l7158:
	
	btfss	((c:OpenUSART@config)),c,(5)&7
	goto	u5391
	goto	u5390
u5391:
	goto	l7162
u5390:
	line	101
	
l7160:
	bsf	((c:4011)),c,3	;volatile
	goto	l7162
	
l1563:
	line	103
	
l7162:
	
	btfss	((c:OpenUSART@config)),c,(6)&7
	goto	u5401
	goto	u5400
u5401:
	goto	l1564
u5400:
	line	104
	
l7164:
	bsf	((c:3997)),c,5	;volatile
	goto	l1565
	line	105
	
l1564:
	line	106
	bcf	((c:3997)),c,5	;volatile
	
l1565:
	line	108
	bcf	((c:3998)),c,5	;volatile
	line	110
	
l7166:
	
	btfss	((c:OpenUSART@config)),c,(7)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l1566
u5410:
	line	111
	
l7168:
	bsf	((c:3997)),c,4	;volatile
	goto	l1567
	line	112
	
l1566:
	line	113
	bcf	((c:3997)),c,4	;volatile
	
l1567:
	line	115
	movff	(c:OpenUSART@spbrg),(c:4015)	;volatile
	line	116
	
l7170:
	movf	((c:OpenUSART@spbrg+1)),c,w
	movwf	((c:4016)),c	;volatile
	line	118
	
l7172:
	bsf	((c:4012)),c,5	;volatile
	line	119
	
l7174:
	bsf	((c:4011)),c,7	;volatile
	line	137
	
l7176:
	bcf	((c:3988)),c,6	;volatile
	
l7178:
	bsf	((c:3988)),c,7	;volatile
	line	138
	
l7180:
	btfss	((c:4012)),c,4	;volatile
	goto	u5421
	goto	u5420
u5421:
	goto	l1569
u5420:
	
l7182:
	btfsc	((c:4012)),c,7	;volatile
	goto	u5431
	goto	u5430
u5431:
	goto	l1569
u5430:
	line	139
	
l7184:
	bsf	((c:3988)),c,6	;volatile
	goto	l1569
	
l1568:
	line	143
	
l1569:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_OpenUSART
	__end_of_OpenUSART:
	signat	_OpenUSART,8312
	global	_Turn_Off_Fan

;; *************** function _Turn_Off_Fan *****************
;; Defined at:
;;		line 80 in file "Fan_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Init
;;		_Toggle_Fan
;; This function uses a non-reentrant model
;;
psect	text104,class=CODE,space=0,reloc=2
	file	"Fan_Support.c"
	line	80
global __ptext104
__ptext104:
psect	text104
	file	"Fan_Support.c"
	line	80
	global	__size_of_Turn_Off_Fan
	__size_of_Turn_Off_Fan	equ	__end_of_Turn_Off_Fan-_Turn_Off_Fan
	
_Turn_Off_Fan:
;incstack = 0
	opt	stack 27
	line	83
	
l7344:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_FAN))&0ffh
	line	84
	
l7346:; BSR set to: 0

	bcf	((c:3968)),c,5	;volatile
	line	85
	
l7348:; BSR set to: 0

	bcf	((c:3968)),c,6	;volatile
	line	87
	
l47:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Turn_Off_Fan
	__end_of_Turn_Off_Fan:
	signat	_Turn_Off_Fan,88
	global	_Init_Interrupt

;; *************** function _Init_Interrupt *****************
;; Defined at:
;;		line 17 in file "Interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Init
;; This function uses a non-reentrant model
;;
psect	text105,class=CODE,space=0,reloc=2
	file	"Interrupt.c"
	line	17
global __ptext105
__ptext105:
psect	text105
	file	"Interrupt.c"
	line	17
	global	__size_of_Init_Interrupt
	__size_of_Init_Interrupt	equ	__end_of_Init_Interrupt-_Init_Interrupt
	
_Init_Interrupt:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	20
	
l7392:
	bcf	((c:4082)),c,1	;volatile
	line	21
	bcf	((c:4080)),c,0	;volatile
	line	22
	bcf	((c:4080)),c,1	;volatile
	line	23
	bsf	((c:4082)),c,4	;volatile
	line	25
	bsf	((c:4080)),c,4	;volatile
	line	26
	bcf	((c:4081)),c,6	;volatile
	line	28
	bcf	((c:4081)),c,4	;volatile
	line	29
	
l7394:
	movlw	low(0)
	movwf	((c:4047)),c	;volatile
	line	30
	movlw	low(0)
	movwf	((c:4046)),c	;volatile
	line	31
	
l7396:
	bcf	((c:3998)),c,0	;volatile
	line	32
	
l7398:
	bsf	((c:3997)),c,0	;volatile
	line	33
	
l7400:
	bsf	((c:4082)),c,6	;volatile
	line	34
	
l7402:
	bsf	((c:4082)),c,7	;volatile
	line	36
	
l273:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Init_Interrupt
	__end_of_Init_Interrupt:
	signat	_Init_Interrupt,88
	global	_Init_ADC

;; *************** function _Init_ADC *****************
;; Defined at:
;;		line 176 in file "utils.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Do_Init
;; This function uses a non-reentrant model
;;
psect	text106,class=CODE,space=0,reloc=2
	file	"utils.c"
	line	176
global __ptext106
__ptext106:
psect	text106
	file	"utils.c"
	line	176
	global	__size_of_Init_ADC
	__size_of_Init_ADC	equ	__end_of_Init_ADC-_Init_ADC
	
_Init_ADC:
;incstack = 0
	opt	stack 27
	line	179
	
l7408:
	movlw	low(01h)
	movwf	((c:4034)),c	;volatile
	line	180
	movlw	low(0Eh)
	movwf	((c:4033)),c	;volatile
	line	181
	movlw	low(0A9h)
	movwf	((c:4032)),c	;volatile
	line	182
	
l1394:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Init_ADC
	__end_of_Init_ADC:
	signat	_Init_ADC,88
	global	_I2C_Init

;; *************** function _I2C_Init *****************
;; Defined at:
;;		line 14 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  c               4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;; This function is called by:
;;		_Do_Init
;; This function uses a non-reentrant model
;;
psect	text107,class=CODE,space=0,reloc=2
	file	"I2C_Soft.c"
	line	14
global __ptext107
__ptext107:
psect	text107
	file	"I2C_Soft.c"
	line	14
	global	__size_of_I2C_Init
	__size_of_I2C_Init	equ	__end_of_I2C_Init-_I2C_Init
	
_I2C_Init:
;incstack = 0
	opt	stack 26
	line	16
	
l7350:
	call	_i2cHighScl	;wreg free
	line	17
	
l7352:
	call	_i2cHighSda	;wreg free
	line	18
	
l81:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Init
	__end_of_I2C_Init:
	signat	_I2C_Init,4216
	global	_DS1621_Init

;; *************** function _DS1621_Init *****************
;; Defined at:
;;		line 22 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_Write_Cmd_Only
;;		_I2C_Write_Cmd_Write_Data
;; This function is called by:
;;		_Do_Init
;; This function uses a non-reentrant model
;;
psect	text108,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	22
global __ptext108
__ptext108:
psect	text108
	file	"I2C_Support.c"
	line	22
	global	__size_of_DS1621_Init
	__size_of_DS1621_Init	equ	__end_of_DS1621_Init-_DS1621_Init
	
_DS1621_Init:
;incstack = 0
	opt	stack 24
	line	24
	
l7354:
	movlw	low(048h)
	movwf	((c:DS1621_Init@Device)),c
	line	25
	
l7356:
	movlw	low(0ACh)
	movwf	((c:I2C_Write_Cmd_Write_Data@Cmd)),c
	movlw	low(02h)
	movwf	((c:I2C_Write_Cmd_Write_Data@Data_Out)),c
	movf	((c:DS1621_Init@Device)),c,w
	
	call	_I2C_Write_Cmd_Write_Data
	line	26
	
l7358:
	movlw	low(0EEh)
	movwf	((c:I2C_Write_Cmd_Only@Cmd)),c
	movf	((c:DS1621_Init@Device)),c,w
	
	call	_I2C_Write_Cmd_Only
	line	27
	
l202:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS1621_Init
	__end_of_DS1621_Init:
	signat	_DS1621_Init,88
	global	_I2C_Write_Cmd_Write_Data

;; *************** function _I2C_Write_Cmd_Write_Data *****************
;; Defined at:
;;		line 152 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  Device          1    wreg     unsigned char 
;;  Cmd             1   18[COMRAM] unsigned char 
;;  Data_Out        1   19[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Device          1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_DS1621_Init
;; This function uses a non-reentrant model
;;
psect	text109,class=CODE,space=0,reloc=2
	file	"I2C_Soft.c"
	line	152
global __ptext109
__ptext109:
psect	text109
	file	"I2C_Soft.c"
	line	152
	global	__size_of_I2C_Write_Cmd_Write_Data
	__size_of_I2C_Write_Cmd_Write_Data	equ	__end_of_I2C_Write_Cmd_Write_Data-_I2C_Write_Cmd_Write_Data
	
_I2C_Write_Cmd_Write_Data:
;incstack = 0
	opt	stack 24
	movwf	((c:I2C_Write_Cmd_Write_Data@Device)),c
	line	154
	
l6990:
	call	_I2C_Start	;wreg free
	line	155
	
l6992:
	movf	((c:I2C_Write_Cmd_Write_Data@Device)),c,w
	addwf	((c:I2C_Write_Cmd_Write_Data@Device)),c,w
	
	call	_I2C_Write
	line	156
	
l6994:
	movf	((c:I2C_Write_Cmd_Write_Data@Cmd)),c,w
	
	call	_I2C_Write
	line	157
	
l6996:
	movf	((c:I2C_Write_Cmd_Write_Data@Data_Out)),c,w
	
	call	_I2C_Write
	line	158
	
l6998:
	call	_I2C_Stop	;wreg free
	line	159
	
l136:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Write_Cmd_Write_Data
	__end_of_I2C_Write_Cmd_Write_Data:
	signat	_I2C_Write_Cmd_Write_Data,12408
	global	_I2C_Write_Cmd_Only

;; *************** function _I2C_Write_Cmd_Only *****************
;; Defined at:
;;		line 144 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  Device          1    wreg     unsigned char 
;;  Cmd             1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  Device          1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_DS1621_Init
;; This function uses a non-reentrant model
;;
psect	text110,class=CODE,space=0,reloc=2
	line	144
global __ptext110
__ptext110:
psect	text110
	file	"I2C_Soft.c"
	line	144
	global	__size_of_I2C_Write_Cmd_Only
	__size_of_I2C_Write_Cmd_Only	equ	__end_of_I2C_Write_Cmd_Only-_I2C_Write_Cmd_Only
	
_I2C_Write_Cmd_Only:
;incstack = 0
	opt	stack 24
	movwf	((c:I2C_Write_Cmd_Only@Device)),c
	line	146
	
l6984:
	call	_I2C_Start	;wreg free
	line	147
	
l6986:
	movf	((c:I2C_Write_Cmd_Only@Device)),c,w
	addwf	((c:I2C_Write_Cmd_Only@Device)),c,w
	
	call	_I2C_Write
	line	148
	
l6988:
	movf	((c:I2C_Write_Cmd_Only@Cmd)),c,w
	
	call	_I2C_Write
	line	149
	call	_I2C_Stop	;wreg free
	line	150
	
l133:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Write_Cmd_Only
	__end_of_I2C_Write_Cmd_Only:
	signat	_I2C_Write_Cmd_Only,8312
	global	_DS1621_Read_Temp

;; *************** function _DS1621_Read_Temp *****************
;; Defined at:
;;		line 29 in file "I2C_Support.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Device          1   23[COMRAM] unsigned char 
;;  Data_Ret        1   22[COMRAM] unsigned char 
;;  Cmd             1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_I2C_ReStart
;;		_I2C_Read
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text111,class=CODE,space=0,reloc=2
	file	"I2C_Support.c"
	line	29
global __ptext111
__ptext111:
psect	text111
	file	"I2C_Support.c"
	line	29
	global	__size_of_DS1621_Read_Temp
	__size_of_DS1621_Read_Temp	equ	__end_of_DS1621_Read_Temp-_DS1621_Read_Temp
	
_DS1621_Read_Temp:
;incstack = 0
	opt	stack 25
	line	32
	
l7820:
	movlw	low(048h)
	movwf	((c:DS1621_Read_Temp@Device)),c
	line	33
	movlw	low(0AAh)
	movwf	((c:DS1621_Read_Temp@Cmd)),c
	line	35
	
l7822:
	call	_I2C_Start	;wreg free
	line	36
	
l7824:
	movf	((c:DS1621_Read_Temp@Device)),c,w
	addwf	((c:DS1621_Read_Temp@Device)),c,w
	
	call	_I2C_Write
	line	37
	
l7826:
	movf	((c:DS1621_Read_Temp@Cmd)),c,w
	
	call	_I2C_Write
	line	38
	
l7828:
	call	_I2C_ReStart	;wreg free
	line	39
	
l7830:
	bsf	status,0
	
	rlcf	((c:DS1621_Read_Temp@Device)),c,w
	
	call	_I2C_Write
	line	40
	
l7832:
	movlw	(0)&0ffh
	
	call	_I2C_Read
	movwf	((c:DS1621_Read_Temp@Data_Ret)),c
	line	41
	
l7834:
	call	_I2C_Stop	;wreg free
	line	42
	
l7836:
	movff	(c:DS1621_Read_Temp@Data_Ret),(c:?_DS1621_Read_Temp)
	clrf	((c:?_DS1621_Read_Temp+1)),c
	goto	l205
	
l7838:
	line	43
	
l205:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_DS1621_Read_Temp
	__end_of_DS1621_Read_Temp:
	signat	_DS1621_Read_Temp,90
	global	_I2C_Write

;; *************** function _I2C_Write *****************
;; Defined at:
;;		line 41 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  outByte         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  outByte         1   16[COMRAM] unsigned char 
;;  n               1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cLowSda
;; This function is called by:
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;;		_I2C_Write_Cmd_Only
;;		_I2C_Write_Cmd_Write_Data
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Time
;;		_DS3231_Write_Time
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Init
;;		_DS3231_Write_Alarm_Time
;;		_I2C_Write_Cmd_Read_One_Byte
;;		_DS3231_Setup_Time
;;		_DS3231_Write_Initial_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text112,class=CODE,space=0,reloc=2
	file	"I2C_Soft.c"
	line	41
global __ptext112
__ptext112:
psect	text112
	file	"I2C_Soft.c"
	line	41
	global	__size_of_I2C_Write
	__size_of_I2C_Write	equ	__end_of_I2C_Write-_I2C_Write
	
_I2C_Write:
;incstack = 0
	opt	stack 24
	movwf	((c:I2C_Write@outByte)),c
	line	44
	
l5898:
	movlw	low(0)
	movwf	((c:I2C_Write@n)),c
	
l5900:
		movlw	08h-1
	cpfsgt	((c:I2C_Write@n)),c
	goto	u3951
	goto	u3950

u3951:
	goto	l93
u3950:
	goto	l5918
	
l5902:
	goto	l5918
	line	45
	
l93:
	line	46
	
	btfss	((c:I2C_Write@outByte)),c,(7)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l5906
u3960:
	
l5904:
	call	_i2cHighSda	;wreg free
	goto	l5908
	line	47
	
l95:
	
l5906:
	call	_i2cLowSda	;wreg free
	goto	l5908
	
l96:
	line	48
	
l5908:
	call	_i2cHighScl	;wreg free
	line	49
	
l5910:
	call	_i2cLowScl	;wreg free
	line	50
	
l5912:
	movf	((c:I2C_Write@outByte)),c,w
	addwf	((c:I2C_Write@outByte)),c,w
	movwf	((c:I2C_Write@outByte)),c
	line	44
	
l5914:
	incf	((c:I2C_Write@n)),c
	
l5916:
		movlw	08h-1
	cpfsgt	((c:I2C_Write@n)),c
	goto	u3971
	goto	u3970

u3971:
	goto	l93
u3970:
	goto	l5918
	
l94:
	line	52
	
l5918:
	call	_i2cHighSda	;wreg free
	line	53
	
l5920:
	call	_i2cHighScl	;wreg free
	line	54
	
l5922:
	call	_i2cLowScl	;wreg free
	line	55
	
l97:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Write
	__end_of_I2C_Write:
	signat	_I2C_Write,4216
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 88 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cLowSda
;; This function is called by:
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;;		_I2C_Write_Cmd_Only
;;		_I2C_Write_Cmd_Write_Data
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Time
;;		_DS3231_Write_Time
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Init
;;		_DS3231_Write_Alarm_Time
;;		_I2C_Write_Cmd_Read_One_Byte
;;		_DS3231_Setup_Time
;;		_DS3231_Write_Initial_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text113,class=CODE,space=0,reloc=2
	line	88
global __ptext113
__ptext113:
psect	text113
	file	"I2C_Soft.c"
	line	88
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:
;incstack = 0
	opt	stack 24
	line	90
	
l5940:
	call	_i2cLowScl	;wreg free
	line	91
	call	_i2cLowSda	;wreg free
	line	92
	
l5942:
	call	_i2cHighScl	;wreg free
	line	93
	
l5944:
	call	_i2cHighSda	;wreg free
	line	94
	
l112:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 71 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cLowSda
;; This function is called by:
;;		_I2C_Write_Address_Read_One_Byte
;;		_I2C_Write_Address_Write_One_Byte
;;		_I2C_Write_Cmd_Only
;;		_I2C_Write_Cmd_Write_Data
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Time
;;		_DS3231_Write_Time
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Init
;;		_DS3231_Write_Alarm_Time
;;		_I2C_Write_Cmd_Read_One_Byte
;;		_DS3231_Setup_Time
;;		_DS3231_Write_Initial_Alarm_Time
;; This function uses a non-reentrant model
;;
psect	text114,class=CODE,space=0,reloc=2
	line	71
global __ptext114
__ptext114:
psect	text114
	file	"I2C_Soft.c"
	line	71
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:
;incstack = 0
	opt	stack 24
	line	73
	
l5924:
	call	_i2cHighSda	;wreg free
	line	74
	
l5926:
	call	_i2cHighScl	;wreg free
	line	75
	
l5928:
	call	_i2cLowSda	;wreg free
	line	76
	
l5930:
	call	_i2cLowScl	;wreg free
	line	77
	
l106:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Read

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 20 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1   16[COMRAM] unsigned char 
;;  inByte          1   18[COMRAM] unsigned char 
;;  n               1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_i2cAck
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cNack
;; This function is called by:
;;		_I2C_Write_Address_Read_One_Byte
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Time
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Init
;;		_I2C_Write_Cmd_Read_One_Byte
;; This function uses a non-reentrant model
;;
psect	text115,class=CODE,space=0,reloc=2
	line	20
global __ptext115
__ptext115:
psect	text115
	file	"I2C_Soft.c"
	line	20
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:
;incstack = 0
	opt	stack 23
	movwf	((c:I2C_Read@ack)),c
	line	23
	
l5866:
	call	_i2cHighSda	;wreg free
	line	24
	
l5868:
	movlw	low(0)
	movwf	((c:I2C_Read@n)),c
	
l5870:
		movlw	08h-1
	cpfsgt	((c:I2C_Read@n)),c
	goto	u3911
	goto	u3910

u3911:
	goto	l5874
u3910:
	goto	l5888
	
l5872:
	goto	l5888
	line	25
	
l84:
	line	26
	
l5874:
	call	_i2cHighScl	;wreg free
	line	28
	
l5876:
	btfss	((c:3971)),c,1	;volatile
	goto	u3921
	goto	u3920
u3921:
	goto	l5880
u3920:
	line	29
	
l5878:
	bsf	status,0
	
	rlcf	((c:I2C_Read@inByte)),c
	goto	l5882
	line	30
	
l86:
	line	31
	
l5880:
	movf	((c:I2C_Read@inByte)),c,w
	addwf	((c:I2C_Read@inByte)),c,w
	movwf	((c:I2C_Read@inByte)),c
	goto	l5882
	
l87:
	line	32
	
l5882:
	call	_i2cLowScl	;wreg free
	line	24
	
l5884:
	incf	((c:I2C_Read@n)),c
	
l5886:
		movlw	08h-1
	cpfsgt	((c:I2C_Read@n)),c
	goto	u3931
	goto	u3930

u3931:
	goto	l5874
u3930:
	goto	l5888
	
l85:
	line	34
	
l5888:
	movf	((c:I2C_Read@ack)),c,w
	btfsc	status,2
	goto	u3941
	goto	u3940
u3941:
	goto	l5892
u3940:
	
l5890:
	call	_i2cAck	;wreg free
	goto	l5894
	line	35
	
l88:
	
l5892:
	call	_i2cNack	;wreg free
	goto	l5894
	
l89:
	line	38
	
l5894:
	movf	((c:I2C_Read@inByte)),c,w
	goto	l90
	
l5896:
	line	39
	
l90:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
	signat	_I2C_Read,4217
	global	_i2cNack

;; *************** function _i2cNack *****************
;; Defined at:
;;		line 57 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cLowScl
;; This function is called by:
;;		_I2C_Read
;; This function uses a non-reentrant model
;;
psect	text116,class=CODE,space=0,reloc=2
	line	57
global __ptext116
__ptext116:
psect	text116
	file	"I2C_Soft.c"
	line	57
	global	__size_of_i2cNack
	__size_of_i2cNack	equ	__end_of_i2cNack-_i2cNack
	
_i2cNack:
;incstack = 0
	opt	stack 23
	line	59
	
l5632:
	call	_i2cHighScl	;wreg free
	line	60
	
l5634:
	call	_i2cLowScl	;wreg free
	line	61
	
l100:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cNack
	__end_of_i2cNack:
	signat	_i2cNack,88
	global	_i2cAck

;; *************** function _i2cAck *****************
;; Defined at:
;;		line 63 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cLowSda
;; This function is called by:
;;		_I2C_Read
;; This function uses a non-reentrant model
;;
psect	text117,class=CODE,space=0,reloc=2
	line	63
global __ptext117
__ptext117:
psect	text117
	file	"I2C_Soft.c"
	line	63
	global	__size_of_i2cAck
	__size_of_i2cAck	equ	__end_of_i2cAck-_i2cAck
	
_i2cAck:
;incstack = 0
	opt	stack 23
	line	65
	
l5624:
	call	_i2cLowSda	;wreg free
	line	66
	
l5626:
	call	_i2cHighScl	;wreg free
	line	67
	
l5628:
	call	_i2cLowScl	;wreg free
	line	68
	
l5630:
	call	_i2cHighSda	;wreg free
	line	69
	
l103:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cAck
	__end_of_i2cAck:
	signat	_i2cAck,88
	global	_I2C_ReStart

;; *************** function _I2C_ReStart *****************
;; Defined at:
;;		line 79 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_i2cHighScl
;;		_i2cHighSda
;;		_i2cLowScl
;;		_i2cLowSda
;; This function is called by:
;;		_I2C_Write_Address_Read_One_Byte
;;		_DS1621_Read_Temp
;;		_DS3231_Read_Time
;;		_DS3231_Read_Alarm_Time
;;		_DS3231_Init
;;		_I2C_Write_Cmd_Read_One_Byte
;; This function uses a non-reentrant model
;;
psect	text118,class=CODE,space=0,reloc=2
	line	79
global __ptext118
__ptext118:
psect	text118
	file	"I2C_Soft.c"
	line	79
	global	__size_of_I2C_ReStart
	__size_of_I2C_ReStart	equ	__end_of_I2C_ReStart-_I2C_ReStart
	
_I2C_ReStart:
;incstack = 0
	opt	stack 24
	line	81
	
l5932:
	call	_i2cLowScl	;wreg free
	line	82
	call	_i2cHighSda	;wreg free
	line	83
	
l5934:
	call	_i2cHighScl	;wreg free
	line	84
	
l5936:
	call	_i2cLowSda	;wreg free
	line	85
	
l5938:
	call	_i2cLowScl	;wreg free
	line	86
	
l109:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_ReStart
	__end_of_I2C_ReStart:
	signat	_I2C_ReStart,88
	global	_i2cLowSda

;; *************** function _i2cLowSda *****************
;; Defined at:
;;		line 102 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Write
;;		_i2cAck
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Stop
;; This function uses a non-reentrant model
;;
psect	text119,class=CODE,space=0,reloc=2
	line	102
global __ptext119
__ptext119:
psect	text119
	file	"I2C_Soft.c"
	line	102
	global	__size_of_i2cLowSda
	__size_of_i2cLowSda	equ	__end_of_i2cLowSda-_i2cLowSda
	
_i2cLowSda:
;incstack = 0
	opt	stack 24
	line	104
	
l5558:
	bcf	((c:3971)),c,1	;volatile
	line	105
	bcf	((c:3989)),c,1	;volatile
	line	106
		nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	107
	
l118:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cLowSda
	__end_of_i2cLowSda:
	signat	_i2cLowSda,88
	global	_i2cLowScl

;; *************** function _i2cLowScl *****************
;; Defined at:
;;		line 115 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Read
;;		_I2C_Write
;;		_i2cNack
;;		_i2cAck
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Stop
;; This function uses a non-reentrant model
;;
psect	text120,class=CODE,space=0,reloc=2
	line	115
global __ptext120
__ptext120:
psect	text120
	file	"I2C_Soft.c"
	line	115
	global	__size_of_i2cLowScl
	__size_of_i2cLowScl	equ	__end_of_i2cLowScl-_i2cLowScl
	
_i2cLowScl:
;incstack = 0
	opt	stack 24
	line	117
	
l5556:
	bcf	((c:3971)),c,0	;volatile
	line	118
	bcf	((c:3989)),c,0	;volatile
	line	119
		nop2	;2 cycle nop

	line	120
	
l124:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cLowScl
	__end_of_i2cLowScl:
	signat	_i2cLowScl,88
	global	_i2cHighSda

;; *************** function _i2cHighSda *****************
;; Defined at:
;;		line 96 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Init
;;		_I2C_Read
;;		_I2C_Write
;;		_i2cAck
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Stop
;; This function uses a non-reentrant model
;;
psect	text121,class=CODE,space=0,reloc=2
	line	96
global __ptext121
__ptext121:
psect	text121
	file	"I2C_Soft.c"
	line	96
	global	__size_of_i2cHighSda
	__size_of_i2cHighSda	equ	__end_of_i2cHighSda-_i2cHighSda
	
_i2cHighSda:
;incstack = 0
	opt	stack 24
	line	98
	
l5554:
	bsf	((c:3989)),c,1	;volatile
	line	99
		nop2	;2 cycle nop
	nop2	;2 cycle nop

	line	100
	
l115:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cHighSda
	__end_of_i2cHighSda:
	signat	_i2cHighSda,88
	global	_i2cHighScl

;; *************** function _i2cHighScl *****************
;; Defined at:
;;		line 109 in file "I2C_Soft.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Init
;;		_I2C_Read
;;		_I2C_Write
;;		_i2cNack
;;		_i2cAck
;;		_I2C_Start
;;		_I2C_ReStart
;;		_I2C_Stop
;; This function uses a non-reentrant model
;;
psect	text122,class=CODE,space=0,reloc=2
	line	109
global __ptext122
__ptext122:
psect	text122
	file	"I2C_Soft.c"
	line	109
	global	__size_of_i2cHighScl
	__size_of_i2cHighScl	equ	__end_of_i2cHighScl-_i2cHighScl
	
_i2cHighScl:
;incstack = 0
	opt	stack 24
	line	111
	
l5550:
	bsf	((c:3989)),c,0	;volatile
	line	112
	
l5552:
	movlw	6
u9217:
decfsz	wreg,f
	goto	u9217
	nop2	;nop

	line	113
	
l121:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_i2cHighScl
	__end_of_i2cHighScl:
	signat	_i2cHighScl,88
	global	_chkisr

;; *************** function _chkisr *****************
;; Defined at:
;;		line 38 in file "Interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_INT0_isr
;;		_INT2_isr
;;		_TIMER1_isr
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"Interrupt.c"
	line	38
	global	__size_of_chkisr
	__size_of_chkisr	equ	__end_of_chkisr-_chkisr
	
_chkisr:
;incstack = 0
	opt	stack 19
	movff	pclat+0,??_chkisr+0
	movff	pclat+1,??_chkisr+1
	movff	fsr0l+0,??_chkisr+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_chkisr+3
	movff	fsr1l+0,??_chkisr+4
	movff	fsr1h+0,??_chkisr+5
	movff	fsr2l+0,??_chkisr+6
	movff	fsr2h+0,??_chkisr+7
	movff	prodl+0,??_chkisr+8
	movff	prodh+0,??_chkisr+9
	movff	tblptrl+0,??_chkisr+10
	movff	tblptrh+0,??_chkisr+11
	movff	tblptru+0,??_chkisr+12
	movff	tablat+0,??_chkisr+13
	line	41
	
i2l8472:
	btfss	((c:3998)),c,0	;volatile
	goto	i2u648_41
	goto	i2u648_40
i2u648_41:
	goto	i2l8476
i2u648_40:
	
i2l8474:
	call	_TIMER1_isr	;wreg free
	goto	i2l8476
	
i2l276:
	line	42
	
i2l8476:
	btfss	((c:4082)),c,1	;volatile
	goto	i2u649_41
	goto	i2u649_40
i2u649_41:
	goto	i2l8480
i2u649_40:
	
i2l8478:
	call	_INT0_isr	;wreg free
	goto	i2l8480
	
i2l277:
	line	43
	
i2l8480:
	btfss	((c:4080)),c,1	;volatile
	goto	i2u650_41
	goto	i2u650_40
i2u650_41:
	goto	i2l279
i2u650_40:
	
i2l8482:
	call	_INT2_isr	;wreg free
	goto	i2l279
	
i2l278:
	line	44
	
i2l279:
	movff	??_chkisr+13,tablat+0
	movff	??_chkisr+12,tblptru+0
	movff	??_chkisr+11,tblptrh+0
	movff	??_chkisr+10,tblptrl+0
	movff	??_chkisr+9,prodh+0
	movff	??_chkisr+8,prodl+0
	movff	??_chkisr+7,fsr2h+0
	movff	??_chkisr+6,fsr2l+0
	movff	??_chkisr+5,fsr1h+0
	movff	??_chkisr+4,fsr1l+0
	movff	??_chkisr+3,fsr0h+0
	movff	??_chkisr+2,fsr0l+0
	movff	??_chkisr+1,pclat+1
	movff	??_chkisr+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_chkisr
	__end_of_chkisr:
	signat	_chkisr,1112
	global	_TIMER1_isr

;; *************** function _TIMER1_isr *****************
;; Defined at:
;;		line 46 in file "Interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chkisr
;; This function uses a non-reentrant model
;;
psect	text124,class=CODE,space=0,reloc=2
	line	46
global __ptext124
__ptext124:
psect	text124
	file	"Interrupt.c"
	line	46
	global	__size_of_TIMER1_isr
	__size_of_TIMER1_isr	equ	__end_of_TIMER1_isr-_TIMER1_isr
	
_TIMER1_isr:
;incstack = 0
	opt	stack 19
	line	48
	
i2l7840:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	49
	
i2l7842:; BSR set to: 0

	bcf	((c:4081)),c,6	;volatile
	line	50
	
i2l7844:; BSR set to: 0

	bcf	((c:4045)),c,0	;volatile
	line	51
	
i2l7846:; BSR set to: 0

	bcf	((c:3998)),c,0	;volatile
	line	52
	
i2l282:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER1_isr
	__end_of_TIMER1_isr:
	signat	_TIMER1_isr,88
	global	_INT2_isr

;; *************** function _INT2_isr *****************
;; Defined at:
;;		line 164 in file "Interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chkisr
;; This function uses a non-reentrant model
;;
psect	text125,class=CODE,space=0,reloc=2
	line	164
global __ptext125
__ptext125:
psect	text125
	file	"Interrupt.c"
	line	164
	global	__size_of_INT2_isr
	__size_of_INT2_isr	equ	__end_of_INT2_isr-_INT2_isr
	
_INT2_isr:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	167
	
i2l7930:
	bcf	((c:4080)),c,1	;volatile
	line	168
	
i2l7932:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_INT2_flag))&0ffh
	line	170
	
i2l310:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_INT2_isr
	__end_of_INT2_isr:
	signat	_INT2_isr,88
	global	_INT0_isr

;; *************** function _INT0_isr *****************
;; Defined at:
;;		line 60 in file "Interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_chkisr
;; This function uses a non-reentrant model
;;
psect	text126,class=CODE,space=0,reloc=2
	line	60
global __ptext126
__ptext126:
psect	text126
	file	"Interrupt.c"
	line	60
	global	__size_of_INT0_isr
	__size_of_INT0_isr	equ	__end_of_INT0_isr-_INT0_isr
	
_INT0_isr:; BSR set to: 0

;incstack = 0
	opt	stack 19
	line	63
	
i2l7848:
	bcf	((c:4082)),c,1	;volatile
	line	64
	
i2l7850:
	movlb	0	; () banked
	movf	((_Nec_state))&0ffh,w
	btfsc	status,2
	goto	i2u586_41
	goto	i2u586_40
i2u586_41:
	goto	i2l7928
i2u586_40:
	line	66
	
i2l7852:; BSR set to: 0

	movf	((c:4046)),c,w	;volatile
	movff	(c:4047),??_INT0_isr+0+0	;volatile
	clrf	(??_INT0_isr+0+0+1)&0ffh,c
	movff	??_INT0_isr+0+0,??_INT0_isr+0+1
	clrf	(??_INT0_isr+0+0),c
	iorwf	(??_INT0_isr+0+0),c,w
	movwf	((c:_Time_Elapsed)),c
	movf	(??_INT0_isr+0+1),c,w
	movwf	1+((c:_Time_Elapsed)),c
	line	67
	
i2l7854:; BSR set to: 0

	movlw	low(0)
	movwf	((c:4047)),c	;volatile
	line	68
	
i2l7856:; BSR set to: 0

	movlw	low(0)
	movwf	((c:4046)),c	;volatile
	goto	i2l7928
	line	69
	
i2l288:; BSR set to: 0

	line	71
	goto	i2l7928
	line	73
	
i2l290:; BSR set to: 0

	line	76
	
i2l7858:; BSR set to: 0

	movlw	low(0)
	movwf	((c:4047)),c	;volatile
	line	77
	movlw	low(0)
	movwf	((c:4046)),c	;volatile
	line	78
	
i2l7860:; BSR set to: 0

	bcf	((c:3998)),c,0	;volatile
	line	79
	movlw	low(090h)
	movwf	((c:4045)),c	;volatile
	line	80
	
i2l7862:; BSR set to: 0

	bsf	((c:4045)),c,0	;volatile
	line	81
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_bit_count))&0ffh
	line	82
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_code))&0ffh
	movlw	high(0)
	movwf	((_Nec_code+1))&0ffh
	movlw	low highword(0)
	movwf	((_Nec_code+2))&0ffh
	movlw	high highword(0)
	movwf	((_Nec_code+3))&0ffh
	line	83
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	84
	
i2l7864:; BSR set to: 0

	bsf	((c:4081)),c,6	;volatile
	goto	i2l291
	line	87
	
i2l7866:; BSR set to: 0

	goto	i2l291
	line	90
	
i2l292:; BSR set to: 0

	line	93
	
i2l7868:; BSR set to: 0

		movlw	53
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	33
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfss	status,0
	goto	i2u587_41
	goto	i2u587_40

i2u587_41:
	goto	i2l7874
i2u587_40:
	
i2l7870:; BSR set to: 0

		movlw	28
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	37
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfsc	status,0
	goto	i2u588_41
	goto	i2u588_40

i2u588_41:
	goto	i2l7874
i2u588_40:
	line	95
	
i2l7872:; BSR set to: 0

	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	97
	goto	i2l7876
	
i2l293:; BSR set to: 0

	line	99
	
i2l7874:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	goto	i2l7876
	line	100
	
i2l294:; BSR set to: 0

	line	101
	
i2l7876:; BSR set to: 0

	bcf	((c:4081)),c,6	;volatile
	goto	i2l291
	line	102
	
i2l7878:; BSR set to: 0

	goto	i2l291
	line	105
	
i2l295:; BSR set to: 0

	line	107
	
i2l7880:; BSR set to: 0

		movlw	161
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	15
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfss	status,0
	goto	i2u589_41
	goto	i2u589_40

i2u589_41:
	goto	i2l7886
i2u589_40:
	
i2l7882:; BSR set to: 0

		movlw	136
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	19
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfsc	status,0
	goto	i2u590_41
	goto	i2u590_40

i2u590_41:
	goto	i2l7886
i2u590_40:
	line	109
	
i2l7884:; BSR set to: 0

	movlw	low(03h)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	111
	goto	i2l7888
	
i2l296:; BSR set to: 0

	line	113
	
i2l7886:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	goto	i2l7888
	line	114
	
i2l297:; BSR set to: 0

	line	115
	
i2l7888:; BSR set to: 0

	bsf	((c:4081)),c,6	;volatile
	goto	i2l291
	line	117
	
i2l7890:; BSR set to: 0

	goto	i2l291
	line	120
	
i2l298:; BSR set to: 0

	line	122
	
i2l7892:; BSR set to: 0

		movlw	145
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	1
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfss	status,0
	goto	i2u591_41
	goto	i2u591_40

i2u591_41:
	goto	i2l7898
i2u591_40:
	
i2l7894:; BSR set to: 0

		movlw	188
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	2
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfsc	status,0
	goto	i2u592_41
	goto	i2u592_40

i2u592_41:
	goto	i2l7898
i2u592_40:
	line	124
	
i2l7896:; BSR set to: 0

	movlw	low(04h)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	126
	goto	i2l7900
	
i2l299:; BSR set to: 0

	line	128
	
i2l7898:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	goto	i2l7900
	line	129
	
i2l300:; BSR set to: 0

	line	130
	
i2l7900:; BSR set to: 0

	bcf	((c:4081)),c,6	;volatile
	goto	i2l291
	line	131
	
i2l7902:; BSR set to: 0

	goto	i2l291
	line	134
	
i2l301:; BSR set to: 0

	line	136
	
i2l7904:; BSR set to: 0

		movlw	145
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	1
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfss	status,0
	goto	i2u593_41
	goto	i2u593_40

i2u593_41:
	goto	i2l7920
i2u593_40:
	
i2l7906:; BSR set to: 0

		movlw	8
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	7
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfsc	status,0
	goto	i2u594_41
	goto	i2u594_40

i2u594_41:
	goto	i2l7920
i2u594_40:
	line	138
	
i2l7908:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((_Nec_code))&0ffh,w
	movlb	0	; () banked
	movwf	((_Nec_code))&0ffh
	movlb	0	; () banked
	rlcf	((_Nec_code+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_Nec_code))&0ffh
	
	movlb	0	; () banked
	rlcf	((_Nec_code+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+((_Nec_code))&0ffh
	
	movlb	0	; () banked
	rlcf	((_Nec_code+3))&0ffh,w
	movlb	0	; () banked
	movwf	3+((_Nec_code))&0ffh
	line	139
		movlw	233
	subwf	 ((c:_Time_Elapsed)),c,w
	movlw	3
	subwfb	((c:_Time_Elapsed+1)),c,w
	btfss	status,0
	goto	i2u595_41
	goto	i2u595_40

i2u595_41:
	goto	i2l303
i2u595_40:
	line	140
	
i2l7910:; BSR set to: 0

	movlw	01h
	movlb	0	; () banked
	addwf	((_Nec_code))&0ffh,w
	movlb	0	; () banked
	movwf	((_Nec_code))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	((_Nec_code+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_Nec_code))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	((_Nec_code+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+((_Nec_code))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	((_Nec_code+3))&0ffh,w
	movlb	0	; () banked
	movwf	3+((_Nec_code))&0ffh
	
i2l303:; BSR set to: 0

	line	141
	movlb	0	; () banked
	incf	((_bit_count))&0ffh,w
	movlb	0	; () banked
	movwf	((_bit_count))&0ffh
	line	142
		movlw	020h-1
	movlb	0	; () banked
	cpfsgt	((_bit_count))&0ffh
	goto	i2u596_41
	goto	i2u596_40

i2u596_41:
	goto	i2l7918
i2u596_40:
	line	144
	
i2l7912:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_nec_ok+1))&0ffh
	movlw	low(01h)
	movwf	((_nec_ok))&0ffh
	line	145
	
i2l7914:; BSR set to: 0

	bcf	((c:4082)),c,4	;volatile
	line	146
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	line	147
	
i2l7916:; BSR set to: 0

	movff	0+1+(_Nec_code),(_Nec_code1)
	line	148
	goto	i2l7922
	
i2l304:; BSR set to: 0

	line	150
	
i2l7918:; BSR set to: 0

	movlw	low(03h)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	goto	i2l7922
	line	151
	
i2l305:; BSR set to: 0

	line	152
	goto	i2l7922
	
i2l302:; BSR set to: 0

	line	154
	
i2l7920:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_Nec_state))&0ffh
	goto	i2l7922
	line	155
	
i2l306:; BSR set to: 0

	line	156
	
i2l7922:; BSR set to: 0

	bsf	((c:4081)),c,6	;volatile
	goto	i2l291
	line	157
	
i2l7924:; BSR set to: 0

	goto	i2l291
	line	159
	
i2l7926:; BSR set to: 0

	goto	i2l291
	line	71
	
i2l289:; BSR set to: 0

	
i2l7928:; BSR set to: 0

	movlb	0	; () banked
	movf	((_Nec_state))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	i2l7858
	xorlw	1^0	; case 1
	skipnz
	goto	i2l7868
	xorlw	2^1	; case 2
	skipnz
	goto	i2l7880
	xorlw	3^2	; case 3
	skipnz
	goto	i2l7892
	xorlw	4^3	; case 4
	skipnz
	goto	i2l7904
	goto	i2l291

	line	159
	
i2l307:; BSR set to: 0

	line	160
	
i2l291:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_INT0_isr
	__end_of_INT0_isr:
	signat	_INT0_isr,88
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
