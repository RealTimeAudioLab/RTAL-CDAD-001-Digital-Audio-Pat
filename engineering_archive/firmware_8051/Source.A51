	.CHIP   8051

DDDC:   REG     20H             ; EingÑnge 1. Byte
DCCK:   REG     20H.0           ; Eingang DCC
DCCO:   REG     20H.1           ; Eingang 
DSRK:   REG     20H.2           ; Eingang DSR
DSRO:   REG     20H.3           ; Eingang 
DATK:   REG     20H.4           ; Eingang DAT
DATO:   REG     20H.5           ; Eingang 
CDK:    REG     20H.6           ; Eingang CD
CDO:    REG     20H.7           ; Eingang 
AASP:   REG     21H             ; EingÑnge 2. Byte
AUX2K:  REG     21H.0           ; Eingang AUX2
AUX2O:  REG     21H.1           ; Eingang 
AUX1K:  REG     21H.2           ; Eingang AUX1
AUX1O:  REG     21H.3           ; Eingang 
SBK:    REG     21H.4           ; Eingang SB
SBO:    REG     21H.5           ; Eingang 
PCK:    REG     21H.6           ; Eingang PC
PCO:    REG     21H.7           ; Eingang 
AADD:   REG     22H             ; EingÑnge 3. Byte
AUXINK: REG     22H.4           ; Eingang AUX
AUXINO: REG     22H.5           ; Eingang 
DSPINK: REG     22H.6           ; Eingang DSP
DSPINO: REG     22H.7           ; Eingang
ALLINOK:REG     23H             ; Alle Inputs & verknÅpft
AUX2OK: REG     23H.0           ; & verknÅpfte Inputs Opt und Koax
AUX1OK: REG     23H.1
SBOK:   REG     23H.2
PCOK:   REG     23H.3
DCCOK:  REG     23H.4
DSROK:  REG     23H.5
DATOK:  REG     23H.6
CDOK:   REG     23H.7

PORT_AB:EQU     8000H           ; LS574 fÅr Port A und B
PORT_CD:EQU     8001H           ; LS574 fÅr Port C und D
IN_LED: EQU     8002H           ; LS574 fÅr Input-LEDs
REC_LED:EQU     8003H           ; LS574 fÅr Record-LEDs
IN_TAST:EQU     8004H           ; LS245 fÅr Input-Taster
REC_TAST:EQU    8005H           ; LS245 fÅr Record-Taster
FC_WR_ADR:EQU   8006H           ; HCT574 fÅr Format-Converter
FC_RD_ADR:EQU   8007H           ; HCT254 fÅr Format-Converter
IRQ_DELAY:EQU	1		; Faktor fÅr IRQ-VerlÑngerung
LEVEL_WERT:EQU	155		; Voreingestellte LautstÑrke
DOUBLE_CHECK_F:EQU 2		; Wiederholungs-Check-Faktor
BLINK_DELAY:EQU	10		; Faktor fÅr Blinkrate

DSP_TAST:REG    90H.0           ; DSP Taste
PC_TAST:REG     90H.1           ; PC Taste
AUX_TAST:REG    90H.2           ; AUX Taste
DSP_LED:REG     90H.3           ; DSP LED
PC_LED: REG     90H.4           ; PC LED
AUX_LED:REG     90H.5           ; AUX LED
OPT1_LED:REG    90H.6           ; Optical LED 1
OPT2_LED:REG    90H.7           ; Optical LED 2
ERROR:REG       0B0H.5          ; Errorsignal vom CS 8412 (P3.5)

IRQ_READY:REG   24H.0           ; IRQ hat alle Inputs getestet
HELP_R:REG      24H.1           ; Hilfsbit
BLINK_IN:REG    24H.2           ; Aktiviert Blinken der INLED
BLINK_REC:REG   24H.3           ; 1=LED blinkt; 0=LED normal
SHIFT_FLAG:REG  24H.4           ; Flag fÅr SHIFT-MODE
BLINK_IN_H:REG  24H.5           ; Hilfsbit fÅr Blinken
BLINK_REC_H:REG 24H.6           ; dito
HELP1:REG       25H             ; FÅr Maskierung
HELP2:REG       26H             ; FÅr Maskierung
HELP3:REG       27H             ; FÅr Maskierung
PORTAB_R:REG    28H             ; Zwischenspeicher fÅr Port AB-Wert
IN_LED_R:REG    29H             ; Zwischenspeicher fÅr IN-LED
REC_LED_R:REG   2AH             ; Zwischenspeicher fÅr REC-LED
SHOW_O:REG      2BH             ; Show Optisch
SHOW_O_AUX2:REG 2BH.0
SHOW_O_AUX1:REG 2BH.1
SHOW_O_SB:REG   2BH.2
SHOW_O_PC:REG   2BH.3
SHOW_O_DCC:REG  2BH.4
SHOW_O_DSR:REG  2BH.5
SHOW_O_DAT:REG  2BH.6
SHOW_O_CD:REG   2BH.7
SHOW_K:REG      2CH             ; Show Koaxial
SHOW_K_AUX2:REG 2CH.0
SHOW_K_AUX1:REG 2CH.1
SHOW_K_SB:REG   2CH.2
SHOW_K_PC:REG   2CH.3
SHOW_K_DCC:REG  2CH.4
SHOW_K_DSR:REG  2CH.5
SHOW_K_DAT:REG  2CH.6
SHOW_K_CD:REG   2CH.7
FC_WRITE:REG    2DH             ; Bits zum CS8402A
NOT_C2_W:REG    2DH.0           ; C2; Urheberrechtsschutz (1=keiner)
NOT_C3_W:REG    2DH.1           ; C3; Emphasis (1=50/15us)
NOT_C8_W:REG    2DH.2           ; C8; MODE-BIT 
NOT_C9_W:REG    2DH.3           ; C9; MODE-BIT
NOT_C15_W:REG   2DH.4           ; C15; Generation
GAL0_W:REG      2DH.6           ; Bit 0 fÅr das GAL
GAL1_W:REG      2DH.7           ; Bit 1 fÅr das GAL
FC_READ:REG     2EH             ; Bit vom CS8412
NOT_C1_R:REG    2EH.0           ; C1; Kanalzahl (0 = 2TonkanÑle)
NOT_C2_R:REG    2EH.1           ; C2; s.o.
NOT_C3_R:REG    2EH.2           ; C3; s.o.
ORIG:REG        2EH.3           ; Original (0 wenn kopieren erlaubt)
IGCAT:REG       2EH.4           ; IGCAT
FC_HELP_I:REG   2FH.0
FC_HELP_R:REG   2FH.1
DOUBLE_CH:REG	2FH.2		; Double-check flag (ein=1)
T_FLAG:REG	2FH.3		; Flag fÅr double-check
T_SAVE:REG	2FH.4		; Hilfsbit fÅr double-check
T_ERROR:REG	2FH.5		; Hilfsbit ERROR

DDDC_H:REG      30H             ; Hilfsbytes fÅr Inputabfrage
AASP_H:REG      31H
AADD_H:REG      32H
DDDC_M:REG      33H
AASP_M:REG      34H
BLINK_HELP:REG  35H
LEVEL_REG:REG   36H             ; LautstÑrkewert
FC_GUE_INP:REG  37H             ; Zwischenspeicher fÅr R0 (gÅltiger Inp)
FC_GUE_REC:REG  38H             ; dito fÅr REC 

;*******************INTERRUPTS****************************************

	ORG     00H
	LJMP    START           ; Programmstart
	ORG     03H             ; Externer IRQ 0
	RETI
	ORG     0BH             ; Timer 0 IRQ
	LJMP	TIRQ0
	ORG     13H             ; Externer IRQ 1
	RETI
	ORG     1BH             ; Timer 1 IRQ
	RETI
	ORG     23H             ; IRQ der seriellen Schnittstelle
	RETI

;*********************************************************************

	ORG     100H            ; Programmstartadresse
START:  MOV     SP,#40H         ; Stack auf 40H
	CLR     P3.0            ; MODE 1
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR	P3.4		; CS8412 des FC machr Error-Detection
	
	MOV     A,#0
	LCALL   IN_LED_OUT      ; LEDs aus
	LCALL   REC_LED_OUT     ; LEDs aus
	SETB	AUX_LED		; LEDs aus
	SETB	DSP_LED		; LEDs aus

	MOV     TMOD,#00010001B	; Timer 0 Modus 1 init
	MOV     TH0,#0b0H	; Timer 0 Reload (H)
	MOV     TL0,#00H	; Timer 0 Reload (L)
	
	MOV     LEVEL_REG,#LEVEL_WERT
	CLR     SHIFT_FLAG

	SETB    RS0             ; Registerbank 1 fÅr IRQ-Routine einschalten
	CLR     RS1
	MOV     R0,#0           ; R0 initialisieren mit Startwert
	MOV     R1,#IRQ_DELAY	; R1=Faktor fÅr IRQ-VerlÑngerung
	MOV	R2,#DOUBLE_CHECK_F
	MOV	R3,#BLINK_DELAY
	CLR     RS0		; auf Registerbank 0 zur¸ckschalten

	MOV	A,#30H		; Error-Multiplexer Voreinstellung
	MOV	DPTR,#PORT_CD
	MOVX	@DPTR,A		; ERROR-Mux Voreinstellung

	CLR     BLINK_IN        ; kein Blinken der LED
	CLR     BLINK_REC
	
	MOV     FC_WRITE,#42H   ; Init Format-Converter (44,1 kHz)
	LCALL   INIT_FC
	CLR     FC_HELP_I
	CLR     FC_HELP_R

	CLR     IRQ_READY 
	CLR	DOUBLE_CH	; Kein double-check
	SETB    ET0             ; Timer 0 IRQ freigeben
	SETB    EA		; Alle IRQs freigeben
	SETB	TR0		; Timer 0 starten
		
	JNB     IRQ_READY,$ 
	CLR     IRQ_READY  
	JNB     IRQ_READY,$       
	SETB	DOUBLE_CH	; Double-check einschalten

MLOOP:  MOV     DDDC_M,DDDC
	MOV     AASP_M,AASP
	LCALL   SUCH_IN         ; GÅltigen Input suchen  
	LCALL   FASSE_INS_ZUS   ; Opt und Koax INs zusammenfassen
	MOV     DPTR,#IN_LED
	MOV     A,ALLINOK       ; Zusammengefa·te INs
	CPL     A
	MOVX    @DPTR,A         ; Ausgeben
	MOV     C,AUXINO
	ANL     C,AUXINK
	MOV     AUX_LED,C
	MOV     C,DSPINO
	ANL     C,DSPINK
	MOV     DSP_LED,C
	CJNE    R0,#16,GUELTIG  ; Wenn R0=16 dann kein gÅltiger 
	LJMP    MLOOP           ; bis ein gÅltiger Input

GUELTIG:LCALL   OPT_IN          ; Opt 1 Led setzen
	LCALL   PORT_AB_IR_OUT  ; Ausgabe an Port_AB fÅr IN und REC
NOK:    MOV     DPTR,#IN_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,OK
	MOV     DDDC_M,DDDC
	MOV     AASP_M,AASP
	LCALL   SUCH_IN         ; GÅltigen Input suchen  
	LCALL   FASSE_INS_ZUS   ; Opt und Koax INs zusammenfassen
	MOV     DPTR,#IN_LED
	MOV     A,ALLINOK       ; Zusammengefa·te INs
	CPL     A
	MOVX    @DPTR,A         ; Ausgeben
	MOV     C,AUXINO
	ANL     C,AUXINK
	MOV     AUX_LED,C
	MOV     C,DSPINO
	ANL     C,DSPINK
	MOV     DSP_LED,C
	LJMP    NOK

OK:     LCALL   IN_TAST_LOS     ; Taste losgelassen ?
	ORL     A,ALLINOK       ; Oder verknÅpfen um öbereinstimmung
	CJNE    A,#0FFH,OOK     ; mit gÅltigem IN herauszufinden
	LJMP    NOK             ; Taste fÅr nicht gÅltigen IN gedr

OOK:    SETB    DSP_LED
	SETB    PC_LED
	SETB    AUX_LED
	LCALL   TAST_MASKE      ; Alle anderen au·er dem angewÑhlten
	CPL     A               ; IN herausmaskieren
	LCALL   IN_LED_OUT      ; LED
	LCALL   REC_LED_OUT     ; LED
	LCALL   SUCH_IN         ; GÅltigen Input suchen 
	MOV     FC_GUE_INP,R0
	MOV     FC_GUE_REC,R0
	LCALL   OPT_IN
	LCALL   OPT_REC
	LCALL   PORT_AB_IR_OUT  ; Durchschalten
	CLR     BLINK_IN
	CLR     BLINK_REC
TASTL:  MOV     DPTR,#IN_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,IN_T_G
	MOV     DPTR,#REC_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,REC_T_G
	JNB     DSP_TAST,DSP_T_G
	JNB     PC_TAST,PC_T_G
	JNB     AUX_TAST,AUX_T_G
	LJMP    TASTL

IN_T_G: LJMP    IN_T_GEDR
REC_T_G:LJMP    REC_T_GEDR
DSP_T_G:LJMP    DSP_T_GEDR
PC_T_G: LJMP    PC_T_GEDR
AUX_T_G:LJMP    AUX_T_GEDR

;*******************************************************************;

IN_T_GEDR:
	LCALL   IN_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,INOK
	LJMP    TASTL
INOK:   LCALL   IN_TAST_LOS
	LCALL   TAST_MASKE
	CPL     A
	LCALL   IN_LED_OUT              
	LCALL   SUCH_IN                 ; Input suchen 
	MOV     A,R0                    ; Ergebnis steht in R0
	CPL     FC_HELP_I
	CJNE    A,FC_GUE_INP,N_GL_I     ; R0 alt = neu ???
	JNB     FC_HELP_I,N_GL_TAST_IN  ; wenn FC_HELP_I = 1,
	SETB    P3.0                    ; MODE 8; FC EIN
	SETB    P3.1
	SETB    P3.2
	CLR     P3.3
	SETB	P3.4			; CS8412 des FC macht FC
	CLR     BLINK_REC
	SETB    BLINK_IN                ; Blinken an
	MOV     FC_GUE_INP,R0           ; neues R0 sichern
	SJMP    GL_TAST_IN

N_GL_I: JNB     FC_HELP_I,N_GL_TAST_IN
	CPL     FC_HELP_I
N_GL_TAST_IN:
	MOV     FC_GUE_INP,R0           ; neues R0 sichern
	CLR     BLINK_IN                ; Blinken aus
	CLR     BLINK_REC
	CLR     P3.0                    ; MODE 1; FC AUS
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR	P3.4			; CS8412 des FC macht Error-Detection
	MOV     A,IN_LED_R              ; Alte LEDs ausgeben
	LCALL   IN_LED_OUT
GL_TAST_IN:
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	LCALL   OPT_IN                  ; Opt 1 LED setzen
	ANL     PORTAB_R,#0F0H
	LCALL   PORT_AB_OUT
	LJMP    TASTL

;*******************************************************************;

REC_T_GEDR:
	LCALL   REC_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,RECOK
	LJMP    TASTL
RECOK:  LCALL   REC_TAST_LOS
	LCALL   TAST_MASKE
	CPL     A
	LCALL   REC_LED_OUT             ; 
	LCALL   SUCH_IN
	MOV     A,R0
	CPL     FC_HELP_R
	CJNE    A,FC_GUE_REC,N_GL_R
	JNB     FC_HELP_R,N_GL_TAST_REC
	CLR     P3.0                    ; MODE 15; FC EIN
	SETB    P3.1
	SETB    P3.2
	SETB    P3.3
	SETB	P3.4			; CS8412 des FC macht FC
	CLR     BLINK_IN
	SETB    BLINK_REC
	MOV     FC_GUE_REC,R0
	SJMP    GL_TAST_REC

N_GL_R: JNB     FC_HELP_R,N_GL_TAST_REC
	CPL     FC_HELP_R
N_GL_TAST_REC:
	MOV     FC_GUE_REC,R0
	CLR     BLINK_IN
	CLR     BLINK_REC
	CLR     P3.0                    ; MODE 1; FC AUS
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR	P3.4			; CS8412 des FC macht Error-Detection
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
GL_TAST_REC:
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	LCALL   OPT_REC                 ; Opt 2 LED setzen
	ANL     PORTAB_R,#0FH           ; Record-Bits ausblenden
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	LJMP    TASTL

;*******************************************************************;

DSP_T_GEDR:
	CLR     DSP_LED
	CLR     SHIFT_FLAG              
	MOV     DPTR,#100
	LCALL   TIME
	PUSH    IN_LED_R
	PUSH    REC_LED_R
	MOV     A,#0
	LCALL   IN_LED_OUT
	LCALL   REC_LED_OUT
	MOV     C,BLINK_IN              ; Blink-Flags sichern
	MOV     BLINK_IN_H,C
	MOV     C,BLINK_REC
	MOV     BLINK_REC_H,C
	CLR     BLINK_IN                ; Blinken ausschalten
	CLR     BLINK_REC
DSP_R:  JNB     DSP_TAST,S_M            ; Warten bis Taste losgelassen
	MOV     C,BLINK_REC_H           ; Blink-Flags zurÅckholen
	MOV     BLINK_REC,C
	MOV     C,BLINK_IN_H
	MOV     BLINK_IN,C   
	POP     REC_LED_R
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	POP     IN_LED_R
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	MOV     DPTR,#100
	LCALL   TIME
	JNB     SHIFT_FLAG,DSPL
	LJMP    DSP_RAUS_SM
DSPL:   MOV     DPTR,#IN_TAST           ; IN-Tasten lesen
	MOVX    A,@DPTR
	CJNE    A,#0FFH,DSP_IN_T_GEDR   ; wenn ungleich FF-> Taste gedr
	MOV     DPTR,#REC_TAST          ; REC-Tasten lesen
	MOVX    A,@DPTR
	CJNE    A,#0FFH,DSP_REC_T_GEDR_H
	JNB     DSP_TAST,DSP_RAUS       ; PC-Taste lesen
	LJMP    DSPL

S_M:    LJMP    SHIFT_MODE              ; Hilfssprung
DSP_REC_T_GEDR_H:                       ; Hilfssprung
	LJMP    DSP_REC_T_GEDR

DSP_RAUS:
	SETB    DSP_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     DSP_TAST,$              ; DSP-Taste gedrÅckt
	MOV     DPTR,#100
	LCALL   TIME
	CLR     P3.0                    ; MODE 1
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR     BLINK_IN
	CLR     BLINK_REC               ; Blinken der IN bzw REC LED aus
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	LJMP    TASTL

DSP_RAUS_SM:
	SETB    DSP_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     DSP_TAST,$              ; DSP-Taste gedrÅckt
	MOV     DPTR,#100
	LCALL   TIME
	LJMP    TASTL

DSP_IN_T_GEDR:
	LCALL   IN_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,DSPIOK
	LJMP    DSPL
DSPIOK: LCALL   TAST_MASKE
	CPL     A
	LCALL   IN_LED_OUT              ; Blinkt
	LCALL   SUCH_IN
	LCALL   OPT_IN
	JB      DSPINK,DSPOPT           ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0F0H           
	LCALL   PORT_AB_OUT
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	SETB    BLINK_IN                ; Blinken
	CLR     P3.0
	CLR     P3.1                    ; MODE 5
	SETB    P3.2
	CLR     P3.3
	LJMP    DSPL
DSPOPT: JB      DSPINO,DSPL_H
	ANL     PORTAB_R,#0F0H           
	LCALL   PORT_AB_OUT
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	SETB    BLINK_IN                ; Blinken
	SETB    P3.0                    ; MODE 4
	SETB    P3.1
	CLR     P3.2
	CLR     P3.3
DSPL_H: LJMP    DSPL

DSP_REC_T_GEDR:                          
	LCALL   REC_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,DSPROK
	LJMP    DSPL
DSPROK: LCALL   TAST_MASKE
	CPL     A
	LCALL   REC_LED_OUT             ; Blinken
	LCALL   SUCH_IN
	LCALL   OPT_REC
	JB      DSPINK,DSPROPT          ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0FH
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC               ; Blinkende REC-LED
	SETB    P3.0
	SETB    P3.1                    ; MODE 12
	CLR     P3.2
	SETB    P3.3
	LJMP    DSPL
DSPROPT:JB      DSPINO,DSPLL
	ANL     PORTAB_R,#0FH
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC               ; Blinkende REC-LED
	CLR     P3.0                    ; MODE 11
	SETB    P3.1
	CLR     P3.2
	SETB    P3.3
DSPLL:  LJMP    DSPL

;*******************************************************************;

PC_T_GEDR:
	CLR     PC_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     PC_TAST,$               ; Warten bis Taste losgelassen
	MOV     DPTR,#100
	LCALL   TIME
PCL:    MOV     DPTR,#IN_TAST           ; IN-Tasten lesen
	MOVX    A,@DPTR
	CJNE    A,#0FFH,PC_IN_T_GEDR    ; wenn ungleich FF-> Taste gedr
	MOV     DPTR,#REC_TAST          ; REC-Tasten lesen
	MOVX    A,@DPTR
	CJNE    A,#0FFH,PC_REC_T_GEDR_S
	JNB     PC_TAST,PC_RAUS         ; PC-Taste lesen
	LJMP    PCL

PC_REC_T_GEDR_S:                        ; Hilfssprung
	LJMP    PC_REC_T_GEDR

PC_RAUS:SETB    PC_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     PC_TAST,$               ; PC-Taste gedrÅckt
	MOV     DPTR,#100
	LCALL   TIME
	CLR     P3.0                    ; MODE 1
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR     BLINK_IN                ; Blinken der IN bzw REC LED aus
	CLR     BLINK_REC
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	LJMP    TASTL

PC_IN_T_GEDR:
	LCALL   IN_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,PCIOK
	LJMP    PCL
PCIOK:  CJNE    A,#0F7H,PCIOKW          ; PC-IN-Taste gedrÅckt ?
	LJMP    PCL
PCIOKW: LCALL   TAST_MASKE
	CPL     A
	LCALL   IN_LED_OUT              ; Blinken
	LCALL   SUCH_IN
	LCALL   OPT_IN
	JB      PCO,PCOPT               ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0F0H   
	LCALL   PORT_AB_OUT
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	SETB    BLINK_IN                ; Blinken
	CLR     P3.0
	SETB    P3.1                    ; MODE 3
	CLR     P3.2
	CLR     P3.3
	LJMP    PCL
PCOPT:  JB      PCK,PCL_H               ; Hilfssprung auf PCL
	ANL     PORTAB_R,#0F0H
	LCALL   PORT_AB_OUT
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	SETB    BLINK_IN                ; Blinken
	SETB    P3.0                    ; MODE 2
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
PCL_H:  LJMP    PCL

PC_REC_T_GEDR:                          
	LCALL   REC_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,PCROK
	LJMP    PCL
PCROK:  CJNE    A,#0F7H,PCROKW
	LJMP    PCL
PCROKW: LCALL   TAST_MASKE
	CPL     A
	LCALL   REC_LED_OUT             ; spÑter BLINK_REC_LED
	LCALL   SUCH_IN
	LCALL   OPT_REC
	JB      PCK,PCROPT              ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0FH
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN                ; Blinken
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC
	CLR     P3.0
	CLR     P3.1                    ; MODE 9
	CLR     P3.2
	SETB    P3.3
	LJMP    PCL
PCROPT: JB      PCO,PCLL
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN                ; Blinken
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC
	SETB    P3.0                    ; MODE 10
	CLR     P3.1
	CLR     P3.2
	SETB    P3.3
PCLL:   LJMP    PCL

;*******************************************************************;

AUX_T_GEDR:
	CLR     AUX_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     AUX_TAST,$
	MOV     DPTR,#100
	LCALL   TIME
AUXL:   MOV     DPTR,#IN_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,AUX_IN_T_GEDR
	MOV     DPTR,#REC_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,AUX_REC_T_GEDR_H
	JNB     AUX_TAST,AUX_RAUS
	LJMP    AUXL

AUX_REC_T_GEDR_H:
	LJMP    AUX_REC_T_GEDR

AUX_RAUS:
	SETB    AUX_LED
	MOV     DPTR,#100
	LCALL   TIME
	JNB     AUX_TAST,$
	MOV     DPTR,#100
	LCALL   TIME
	CLR     P3.0                    ; MODE 1
	CLR     P3.1
	CLR     P3.2
	CLR     P3.3
	CLR     BLINK_IN
	CLR     BLINK_REC
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	LJMP    TASTL

AUX_IN_T_GEDR:
	LCALL   IN_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,AUXOK
	LJMP    AUXL
AUXOK:  LCALL   TAST_MASKE
	CPL     A
	LCALL   IN_LED_OUT              ; 
	LCALL   SUCH_IN
	LCALL   OPT_IN
	JB      AUXINO,AUXOPT           ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0F0H  
	LCALL   PORT_AB_OUT
	SETB    BLINK_IN                ; Blinken
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	SETB    P3.0
	CLR     P3.1                    ; MODE 6
	SETB    P3.2
	CLR     P3.3
	LJMP    AUXL
AUXOPT: JB      AUXINK,AUXL
	ANL     PORTAB_R,#0F0H  
	LCALL   PORT_AB_OUT
	SETB    BLINK_IN                 ; Blinken
	CLR     BLINK_REC
	MOV     A,REC_LED_R
	LCALL   REC_LED_OUT
	CLR     P3.0                    ; MODE 7
	SETB    P3.1
	SETB    P3.2
	CLR     P3.3
	LJMP    AUXL

AUX_REC_T_GEDR:                          
	LCALL   REC_TAST_LOS
	LCALL   FASSE_INS_ZUS
	ORL     A,ALLINOK
	CJNE    A,#0FFH,AUXROK
	LJMP    AUXL
AUXROK: LCALL   TAST_MASKE
	CPL     A
	LCALL   REC_LED_OUT             ; 
	LCALL   SUCH_IN
	LCALL   OPT_REC
	JB      AUXINO,AUXROPT          ; Wenn Bit gesetzt-> opt
	ANL     PORTAB_R,#0FH
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC               ; Blinken
	CLR     P3.0
	CLR     P3.1                    ; MODE 13
	SETB    P3.2
	SETB    P3.3
	LJMP    AUXL
AUXROPT:JB      AUXINK,AUXLL
	ANL     PORTAB_R,#0FH
	MOV     A,R0
	SWAP    A
	MOV     R0,A
	LCALL   PORT_AB_OUT
	CLR     BLINK_IN
	MOV     A,IN_LED_R
	LCALL   IN_LED_OUT
	SETB    BLINK_REC               ; Blinken
	SETB    P3.0                    ; MODE 14
	CLR     P3.1
	SETB    P3.2
	SETB    P3.3
AUXLL:  LJMP    AUXL

;*******************************************************************;
;* SHIFT - MODE                                                    *;
;*******************************************************************;

SHIFT_MODE:
	MOV     DPTR,#IN_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,SM_IN_TAST_GEDR_J
	MOV     DPTR,#REC_TAST
	MOVX    A,@DPTR
	CJNE    A,#0FFH,SM_REC_TAST_GEDR_J
	JNB     PC_TAST,SM_PC_TAST_GEDR_J
	JNB     AUX_TAST,SM_AUX_TAST_GEDR_J
	LJMP    DSP_R

SM_IN_TAST_GEDR_J:
	LJMP    SM_IN_TAST_GEDR
SM_REC_TAST_GEDR_J:
	LJMP    SM_REC_TAST_GEDR
SM_PC_TAST_GEDR_J:
	LJMP    SM_PC_TAST_GEDR
SM_AUX_TAST_GEDR_J:
	LJMP    SM_AUX_TAST_GEDR

SM_IN_TAST_GEDR:
	SETB    SHIFT_FLAG
	CJNE    A,#07FH,SITG1
	LCALL   MAKESHOW
	LJMP    DSP_R
SITG1:  CJNE    A,#0BFH,SITG2
	LCALL   SHOW_FC_STATUS
	LJMP    DSP_R
SITG2:  CJNE    A,#0DFH,SITG3
	LCALL   SHOW_FC_INPUT
	LJMP    DSP_R
SITG3:  CJNE    A,#0EFH,SITG4
	LJMP    DSP_R
SITG4:  CJNE    A,#0F7H,SITG5
	LJMP    DSP_R
SITG5:  CJNE    A,#0FBH,SITG6
	LJMP    DSP_R
SITG6:  CJNE    A,#0FDH,SITG7
	LJMP    DSP_R
SITG7:  CJNE    A,#0FEH,SITG8
SITG8:  LJMP    DSP_R

SM_REC_TAST_GEDR:
	SETB    SHIFT_FLAG
	CJNE    A,#07FH,SRTG1
	MOV     A,REC_LED_R
	SETB    ACC.7
	CLR     ACC.6
	CLR     ACC.5
	LCALL   REC_LED_OUT             ; LED 32 kHz
	CLR     GAL0_W                  ; 32 kHz
	CLR     GAL1_W
	LCALL   INIT_FC
	LCALL   REC_TAST_LOS 
	LJMP    DSP_R
SRTG1:  CJNE    A,#0BFH,SRTG2
	MOV     A,REC_LED_R
	CLR     ACC.7
	SETB    ACC.6
	CLR     ACC.5
	LCALL   REC_LED_OUT             ; LED 44,1 kHz
	SETB    GAL0_W                  ; 44,1 kHz
	CLR     GAL1_W
	LCALL   INIT_FC
	LCALL   REC_TAST_LOS   
	LJMP    DSP_R
SRTG2:  CJNE    A,#0DFH,SRTG3
	MOV     A,REC_LED_R
	CLR     ACC.7
	CLR     ACC.6
	SETB    ACC.5
	LCALL   REC_LED_OUT             ; LED 48 kHz
	CLR     GAL0_W                  ; 48 kHz
	SETB    GAL1_W
	LCALL   INIT_FC
	LCALL   REC_TAST_LOS
	LJMP    DSP_R
SRTG3:  CJNE    A,#0EFH,SRTG4
	MOV     A,REC_LED_R
	CPL     ACC.4
	LCALL   REC_LED_OUT             ; LED Kill SCMS
	CPL     NOT_C2_W                ; C2 Urheberrechtsschutz
	LCALL   INIT_FC
	LCALL   REC_TAST_LOS
	MOV     DPTR,#100
	LCALL   TIME
	LJMP    DSP_R
SRTG4:  CJNE    A,#0F7H,SRTG5
	MOV     A,REC_LED_R
	CPL     ACC.3
	LCALL   REC_LED_OUT             ; LED DEEM
	CPL     NOT_C3_W                ; DEEMPHASIS
	LCALL   INIT_FC
	LCALL   REC_TAST_LOS       
	MOV     DPTR,#100
	LCALL   TIME
	LJMP    DSP_R
SRTG5:  CJNE    A,#0FBH,SRTG6
	LCALL   REC_TAST_LOS
	LJMP    DSP_R
SRTG6:  CJNE    A,#0FDH,SRTG7
	LCALL   REC_TAST_LOS
	LJMP    DSP_R
SRTG7:  CJNE    A,#0FEH,SRTG8
	LCALL   REC_TAST_LOS
SRTG8:  LJMP    DSP_R

SM_PC_TAST_GEDR:
	SETB    SHIFT_FLAG
	MOV     A,LEVEL_REG
	CJNE    A,#0FFH,SM_IN_R
	LJMP    DSP_R
SM_IN_R:MOV     DPTR,#LEVEL_TAB
	MOVC    A,@A+DPTR
	MOV     DPTR,#IN_LED
	MOVX    @DPTR,A
	MOV     DPTR,#REC_LED
	MOVX    @DPTR,A
	INC     LEVEL_REG
	MOV     DPTR,#25
	LCALL   TIME
	LJMP    DSP_R
SM_AUX_TAST_GEDR:
	SETB    SHIFT_FLAG
	MOV     A,LEVEL_REG
	CJNE    A,#0H,SM_R_R
	LJMP    DSP_R
SM_R_R: MOV     DPTR,#LEVEL_TAB
	MOVC    A,@A+DPTR
	MOV     DPTR,#IN_LED
	MOVX    @DPTR,A
	MOV     DPTR,#REC_LED
	MOVX    @DPTR,A
	DEC     LEVEL_REG
	MOV     DPTR,#25
	LCALL   TIME
	LJMP    DSP_R

;********************************************************************

MAKESHOW:
	MOV     C,CDO
	MOV     SHOW_O_CD,C
	MOV     C,DATO
	MOV     SHOW_O_DAT,C
	MOV     C,DSRO
	MOV     SHOW_O_DSR,C
	MOV     C,DCCO
	MOV     SHOW_O_DCC,C
	MOV     C,PCO
	MOV     SHOW_O_PC,C
	MOV     C,SBO
	MOV     SHOW_O_SB,C
	MOV     C,AUX1O
	MOV     SHOW_O_AUX1,C
	MOV     C,AUX2O
	MOV     SHOW_O_AUX2,C
	MOV     C,CDK
	MOV     SHOW_K_CD,C
	MOV     C,DATK
	MOV     SHOW_K_DAT,C
	MOV     C,DSRK
	MOV     SHOW_K_DSR,C
	MOV     C,DCCK
	MOV     SHOW_K_DCC,C
	MOV     C,PCK
	MOV     SHOW_K_PC,C
	MOV     C,SBK
	MOV     SHOW_K_SB,C
	MOV     C,AUX1K
	MOV     SHOW_K_AUX1,C
	MOV     C,AUX2K
	MOV     SHOW_K_AUX2,C
	MOV     A,SHOW_O
	CPL     A
	MOV     DPTR,#IN_LED
	MOVX    @DPTR,A
	MOV     A,SHOW_K
	CPL     A
	MOV     DPTR,#REC_LED
	MOVX    @DPTR,A
	RET

;*******************************************************************;
; Zeigt die Konfiguration des FC an                                *;
;*******************************************************************;

SHOW_FC_STATUS:
	MOV     A,#0
	MOV     C,GAL0_W
	MOV     ACC.6,C
	MOV     C,GAL1_W
	MOV     ACC.5,C
	JB      GAL0_W,S_F_S
	JB      GAL1_W,S_F_S
	SETB    ACC.7
S_F_S:  MOV     C,NOT_C3_W
	CPL     C
	MOV     ACC.3,C
	MOV     C,NOT_C2_W
	CPL     C
	MOV     ACC.4,C
	LCALL   REC_LED_OUT
	RET

;*******************************************************************;
;* Zeigt die empfangenen Bits vom CS8412 an                        *;
;*******************************************************************;

SHOW_FC_INPUT:
	MOV     DPTR,#FC_RD_ADR
	MOVX    A,@DPTR         ; Inhalt des 245 lesen
	MOV     FC_READ,A       ; 
	CPL     A
	ANL     A,#1fH          ; Bits 5,6,7 ausblenden
	MOV     R1,#8
	MOV     R0,#0
S_F_I:  RRC     A
	PUSH    ACC
	MOV     A,R0
	RLC     A
	MOV     R0,A
	POP     ACC
	DJNZ    R1,S_F_I
	MOV     A,R0
	LCALL   REC_LED_OUT
	RET

;*******************************************************************;
;* VerknÅpft die Opt und Koax INs und schreibt diese als Byte in   *;
;* ein neues Register                                              *;
;*******************************************************************;

FASSE_INS_ZUS:
	MOV     C,CDO
	ANL     C,CDK
	MOV     CDOK,C
	MOV     C,DATO
	ANL     C,DATK
	MOV     DATOK,C
	MOV     C,DSRO
	ANL     C,DSRK
	MOV     DSROK,C
	MOV     C,DCCO
	ANL     C,DCCK
	MOV     DCCOK,C
	MOV     C,PCO
	ANL     C,PCK
	MOV     PCOK,C
	MOV     C,SBO
	ANL     C,SBK
	MOV     SBOK,C
	MOV     C,AUX1O
	ANL     C,AUX1K
	MOV     AUX1OK,C
	MOV     C,AUX2O
	ANL     C,AUX2K
	MOV     AUX2OK,C
	RET

;*******************************************************************;
;* Sucht einen gÅltigen Input, beginnend bei CD, Wert fÅr Port_AB  *;
;* in R0                                                           *;
;*******************************************************************;

SUCH_IN:MOV     R0,#0           ; ZÑhler, bestimmt den Wert f. PortAB
	MOV     R1,#8           ; ZÑhler
	MOV     A,DDDC_M        ; EingÑnge 1. Byte
S1LOOP: RLC     A
	JNC     SRAUS           ; Wenn kein C dann gÅltigen IN gefunden
	INC     R0
	DJNZ    R1,S1LOOP       ; Solange, bis alle 8 Bit durch
	;INC     R0
	MOV     R1,#8           ; ZÑhler
	MOV     A,AASP_M        ; EingÑnge 2. Byte
S2LOOP: RLC     A
	JNC     SRAUS           ; Wenn kein C dann gÅltigen IN gefunden
	INC     R0
	DJNZ    R1,S2LOOP
SRAUS:  RET

;*******************************************************************;
;* Ausgabe an Port_AB, hier fÅr Input und Record gleich            *;
;* Nur fÅr Einschaltsequenz erforderlich                           *;
;*******************************************************************;

PORT_AB_IR_OUT:
	MOV     DPTR,#PORT_AB
	MOV     A,R0
	SWAP    A               ; Tausche nibbles
	ADD     A,R0            ; Addiere
	MOV     PORTAB_R,A      ; Zwischenspeichern
	MOVX    @DPTR,A         ; Ausgeben auf Port_AB
	RET

;*******************************************************************;
;* Ausgabe an Port_AB, auszugebender Wert mu· in R0 stehen         *;
;*******************************************************************;
 
PORT_AB_OUT:
	MOV     DPTR,#PORT_AB
	MOV     A,PORTAB_R
	ADD     A,R0
	MOV     PORTAB_R,A      ; Zwischenspeichern
	MOVX    @DPTR,A
	RET

;*******************************************************************;
;* Wartet auf Input - Tastendruck, Wert steht im ACCU              *;
;*******************************************************************;

LESE_IN_TAST:
	MOV     DPTR,#IN_TAST
ITLOOP: MOVX    A,@DPTR
	CJNE    A,#0FFH,ITRAUS
	LJMP    ITLOOP
ITRAUS: RET

;*******************************************************************;
;* Wartet, bis Input - Taste wieder losgelassen                    *;
;*******************************************************************;

IN_TAST_LOS:
	PUSH    ACC
	MOV     DPTR,#IN_TAST
ITLOS:  MOVX    A,@DPTR
	PUSH    ACC
	PUSH    DPL
	PUSH    DPH
	MOV     DPTR,#50
	LCALL   TIME
	POP     DPH
	POP     DPL
	POP     ACC
	CJNE    A,#0FFH,ITLOS      
	POP     ACC
	RET

;*******************************************************************;
;* Wartet auf Record - Tastendruck, Wert steht im ACCU             *;
;*******************************************************************;

LESE_REC_TAST:
	MOV     DPTR,#REC_TAST
RTLOOP: MOVX    A,@DPTR
	CJNE    A,#0FFH,RTRAUS
	LJMP    RTLOOP
RTRAUS: RET

;*******************************************************************;
;* Record - Taste wieder losgelassen ?                             *;
;*******************************************************************;
	    
REC_TAST_LOS:
	PUSH    ACC
	MOV     DPTR,#REC_TAST
RTLOS:  MOVX    A,@DPTR
	PUSH    ACC
	PUSH    DPL
	PUSH    DPH
	MOV     DPTR,#50
	LCALL   TIME
	POP     DPH
	POP     DPL
	POP     ACC
	CJNE    A,#0FFH,RTLOS          
	POP     ACC
	RET

;*******************************************************************;
;* Input LEDs          Record LEDs                                 *;
;*******************************************************************;

IN_LED_OUT:
	MOV     DPTR,#IN_LED
	MOV     IN_LED_R,A              ; Zwischenspeichern
	MOVX    @DPTR,A
	RET

REC_LED_OUT:
	MOV     DPTR,#REC_LED
	MOV     REC_LED_R,A             ; Zwischenspeichern
	MOVX    @DPTR,A
	RET

;*******************************************************************;
;* Legt eine Maske Åber die Input - Register und blendet alle INs, *;
;* die nicht Åber die Tastatur angewÑhlt wurden, aus.              *;
;*******************************************************************;

TAST_MASKE:
	PUSH    ACC
	PUSH    DDDC
	PUSH    AASP
	PUSH    AADD
	MOV     R0,#4
	MOV     HELP1,#0
	MOV     HELP2,#0
	MOV     HELP3,A
TZ1:    MOV     A,HELP3
	RRC     A
	MOV     HELP_R,C
	MOV     HELP3,A
	MOV     A,HELP2
	RRC     A
	JNB     HELP_R,W1
	SETB    C
W1:     RRC     A
	MOV     HELP2,A
	DJNZ    R0,TZ1
	MOV     R0,#4
TZ2:    MOV     A,HELP3
	RRC     A
	MOV     HELP_R,C
	MOV     HELP3,A
	MOV     A,HELP1
	RRC     A
	JNB     HELP_R,W2
	SETB    C
W2:     RRC     A
	MOV     HELP1,A
	DJNZ    R0,TZ2
	ORL     DDDC,A
	MOV     A,HELP2
	ORL     AASP,A
	MOV     AASP_M,AASP
	MOV     DDDC_M,DDDC
	POP     AADD
	POP     AASP
	POP     DDDC
	POP     ACC
	RET

;*******************************************************************;
;* Optical LEDs                                                    *;
;*******************************************************************;

OPT_IN: MOV     A,R0
	RRC     A
	JC      NOOPT1
	CLR     OPT1_LED
	RET
NOOPT1: SETB    OPT1_LED
	RET

OPT_REC:MOV     A,R0
	RRC     A
	JC      NOOPT2
	CLR     OPT2_LED
	RET
NOOPT2: SETB    OPT2_LED
	RET

;*******************************************************************;
;* ZEITSCHLEIFE LéNGE: 6+DPTR*1000us                               *;
;*******************************************************************;

TIME:   mov a,dpl       ;6 + DPTR * 1000usec
	orl a,dph
	jz lret
	setb c
	mov a,dpl
	subb a,#0
	mov dpl,a
	mov a,dph
	subb a,#0
	mov dph,a
	LCALL time0
	LJMP TIME
lret:   ret
time0:  mov r6,#196    ;197 * 5usec = 985 usec
	nop
time0l: nop 
	nop
	nop
	djnz r6,time0l
	ret

;*******************************************************************;
;* Format - Converter - Routinen                                   *;
;*******************************************************************;

INIT_FC:
	MOV     DPTR,#FC_WR_ADR
	MOV     A,FC_WRITE
	MOVX    @DPTR,A
	MOV     DPTR,#FC_RD_ADR
	MOVX    A,@DPTR
	MOV     FC_READ,A
	RET

;*******************************************************************;
;* Timer 2 IRQ                                                     *;
;*******************************************************************;

TIRQ0:  PUSH    PSW
	PUSH    ACC
	PUSH    DPL
	PUSH    DPH
	CLR     IRQ_READY       ; Flag fÅr noch nicht alle INs gelesen
	SETB    RS0
	CLR     RS1
	DJNZ	R1,ENDE		; IRQ-Phasen verlÑngern
	MOV	R1,#IRQ_DELAY
	MOV	C,ERROR		; Error-Bit sichern
	MOV	T_ERROR,C	; in T_ERROR
	JNB	DOUBLE_CH,CHECK_OK	; Double-check ein ?
	JB	T_FLAG,CHECK_OK	; Bereits 1mal realisiert ?
	MOV	A,AADD_H
	RRC	A
	RRC	A
	RRC	A
	RRC	A
	RRC	A
	MOV	T_SAVE,C	; Herausgeschobenes C sichern
	ANL	C,T_ERROR	; UND-VerknÅpfen mit aktuellem Error-Flag
	JC	CHECK_OK	; Wenn C und ERROR =1, dann ok
	MOV	C,T_SAVE	
	ORL	C,T_ERROR	; Wenn C oder ERROR = 0, dann ok
	JNC	CHECK_OK
	DJNZ	R2,RAUS		; Wiederholungs-Check-Faktor
	SETB	T_FLAG		; Wenn C und ERROR unterschiedlich->Flag=1
	SJMP	RAUS		; und rausspringen
CHECK_OK:
	MOV	R2,#DOUBLE_CHECK_F
	CLR	T_FLAG		; Wenn C und ERROR gleich => Flag=0
	MOV     C,T_ERROR	; und normal weitermachen
	MOV     A,DDDC_H
	RRC     A
	MOV     DDDC_H,A
	MOV     A,AASP_H
	RRC     A
	MOV     AASP_H,A
	MOV     A,AADD_H
	RRC     A
	MOV     AADD_H,A
	MOV     DPTR,#PORT_CD_TAB
	MOV     A,R0
	MOVC    A,@A+DPTR
	MOV     DPTR,#PORT_CD
	MOVX    @DPTR,A
	INC     R0
	CJNE    R0,#20,RAUS
	MOV     DDDC,DDDC_H
	MOV     AASP,AASP_H
	MOV     AADD,AADD_H
	MOV     R0,#0		; ZÑhler zurÅcksetzen
	SETB    IRQ_READY
RAUS:   DJNZ	R3,ENDE		; Blinken verlÑngern
	MOV	R3,#BLINK_DELAY
	JNB     BLINK_IN,B_R	; IRQ-gesteuertes blinken
	MOV     A,BLINK_HELP
	CPL     A
	MOV     BLINK_HELP,A
	ANL     A,IN_LED_R
	MOV     DPTR,#IN_LED
	MOVX    @DPTR,A
B_R:    JNB     BLINK_REC,ENDE	; dito fÅr REC-LED
	MOV     A,BLINK_HELP
	CPL     A
	MOV     BLINK_HELP,A
	ANL     A,REC_LED_R
	MOV     DPTR,#REC_LED
	MOVX    @DPTR,A
ENDE:   MOV	TH0,#0b0h	; Timer 0 re-init
	MOV	TL0,#00h
	CLR     RS0		; Registerbank 0 einschalten
	CLR     RS1
	POP     DPH		; ZurÅckholen
	POP     DPL
	POP     ACC
	POP     PSW
	RETI

PORT_CD_TAB:
	db 20H,10H,00H,4FH,4EH,4DH,4CH,4BH,4AH,49H,48H,47H,46H,45H,44H
	db 43H,42H,41H,40H,30H

LEVEL_TAB:
	db 00
	db 00,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01
	db 01,01,01,01,01,01,01,01,01,01,01,01,01,01,01,01
	db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
	db 03,03,03,03,03,03,03,03,03,03,03,03,03,03,03,03
	db 07,07,07,07,07,07,07,07,07,07,07,07,07,07,07,07
	db 07,07,07,07,07,07,07,07,07,07,07,07,07,07,07,07
	db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15   
	db 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15,15
	db 31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31  
	db 31,31,31,31,31,31,31,31,31,31,31,31,31,31,31,31
	db 63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63    
	db 63,63,63,63,63,63,63,63,63,63,63,63,63,63,63,63
	db 127,127,127,127,127,127,127,127
	db 127,127,127,127,127,127,127,127
	db 127,127,127,127,127,127,127,127
	db 127,127,127,127,127,127,127,127
	db 255,255,255,255,255,255,255,255
	db 255,255,255,255,255,255,255,255
	db 255,255,255,255,255,255,255,255
	db 255,255,255,255,255,255,255,255
	END
