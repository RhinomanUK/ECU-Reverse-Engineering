; Suzuki Sidekick/Tracker/Vitara 8V ECU 91-94
; E900 Code disassembly produced by RhinoDASM v1.0
; Updated 9th Oct 2015
;
; Registers
L0000		;P1DDR		(word with P2DDR)
L0002		;PORT1		(word with PORT2)(P2 is output to diag tool)
		;				Port 1 includes timers
		;		bit 7 = VSS
		;		bit 6 = 
		;		bit 5 = 
		;		bit 4 = 
		;		bit 3 =
		;		bit 2 = 
		;		bit 1 = 
		;		bit 0 = CAS
L0003		;PORT2				Port 2 includes timers and serial port
		;		bit 7 = 
		;		bit 6 = 
		;		bit 5 = 
		;		bit 4 = TX
		;		bit 3 = RX
		;		bit 2 = OC1
		;		bit 1 = 
		;		bit 0 = 
L0004		;P3DDR		(word with P4DDR)
L0006		;PORT3		(also status register 4)
		;		bit 7 = Idle Switch
		;		bit 6 = Watchdog Reset?
		;		bit 5 = D/P-N
		;		bit 4 = AC Sw
		;		bit 3 = PS Sw
		;		bit 2 = Test Sw?
		;		bit 1 = Diag. Sw?
		;		bit 0 = ?
L0007		;PORT4	- configuration resistors	
		;		bit 7 = Not used
		;		bit 6 = Not used
		;		bit 5 = Not used
		;		bit 4 = R303	- Not used
		;		bit 3 = R302	- M/T or A/T
		;		bit 2 = R301	- UK/US
		;		bit 1 = R300	- Not used
		;		bit 0 = CALI	- California Used twice

L0008		;T1CSR1
L0009		;FRC1H, L
L000B		;T1OCR1H, L
L000D		;T1ICR1H, L
L000F		;P3CSR
L0010		;SCIRMC
L0011		;SCSR		(word with RXD)
L0013		;TXD
L0014		;RAMCR	
L0015		;P5DDR
L0016		;PORT5 (also status reg 1)
		;		bit 7 = Duty Output Terminal 
		;		bit 6 = O2 Heater
		;		bit 5 = CEL
		;		bit 4 = Not Used
		;		bit 3 = EGR
		;		bit 2 = Not Used
		;		bit 1 = ?
		;		bit 0 = CAS
L0017		;Unknown?
L0018		;T1CSR2
L0019		;T1CSR3
L001A		;T2CSR1
L001B		;T1OCR2H	(word with T1OCR2L)
L001D		;T1ICR2H	(word with T1ICR2L)
L001F		;ADCCR		(word with ADCDATA)
L0024		;PACTL		Pulse Accumulator Control Register
L0025		;PACNT		Pulse Accumulator Counter
L0026		;RTICR
L0027		;RTIFCR		(word with RTIFCR)	
L0029		;FRC2H		(word with FRC2L)
L002B		;T2OC3H		(word with T2OC3L)
L002D		;FRC3H		(word with FRC3L)
L002F		;PORT6		(also status reg 2)
		;		bit 7 = Not Implemented
		;		bit 6 = Mot implemented
		;		bit 5 = Watchdog?
		;		bit 4 = Spare (Lock Up Relay?)
		;		bit 3 = TO VSV
		;		bit 2 = Fuel Pump Relay
		;		bit 1 = Spare Out
		;		bit 0 = Canister Purge
;
;L0030 -> L003F not implemented on 68-pin packages
;
;	RAM Locations
;
L0040		; baro		- Barometric pressure
L0041		; tps_id	- TPS value when idle switch changes state
L0042		; ntps_id	- the inverse of L0041, used for validity tests
L0043		; internal status?
		;		bit 7 = 
		;		bit 6 = 
		;		bit 5 = set after stuff done
		;		bit 4 = set after stuff done
		;		bit 3 = 
		;		bit 2 = idle switch value updated
		;		bit 1 = set after stuff done
		;		bit 0 = RAM initialised 
;
L0044		; fcodes1	- Current fault codes 1
		;		bit 7 = Code 25 – IAT Low
		;		bit 6 = Code 24 - VSS
		;		bit 5 = Code 23 – IAT High
		;		bit 4 = Code 22 – TPS Low
		;		bit 3 = Code 21 – TPS High
		;		bit 2 = Code 15 – ECT Low
		;		bit 1 = Code 14 - ECT High
		;		bit 0 = Code 13 – O2 Sensor
L0045		; nfcodes1	- the inverse of L0044 used for validity tests
L0046		; fcodes3	– History codes 1
         ;		bit 7 = Code 25 – IAT Low
		;		bit 6 = Code 24 - VSS
		;		bit 5 = Code 23 – IAT High
		;		bit 4 = Code 22 – TPS Low
		;		bit 3 = Code 21 – TPS High
		;		bit 2 = Code 15 – ECT Low
		;		bit 1 = Code 14 - ECT High
		;		bit 0 = Code 13 – O2 Sensor
L0047		; nfcodes3	- the inverse of L0046 used for validity tests
L0048		; fcodes2	– current fault codes 2
		;		bit 7 = Code 53 - Ground Circuit
		;		bit 6 = Code 51 - EGR
		;		bit 5 = Code 45 – Idle Sw S/C
		;		bit 4 = Code 44 – Idle Sw O/C
		;		bit 3 = Code 42 – Camshaft Sensor
		;		bit 2 = Code 41 – Ignition Fail Safe
		;		bit 1 = Code 32 - MAP Low
		;		bit 0 = Code 31 – MAP High
L0049		; nfcodes2	- the inverse of L0048 used for validity tests
L004A		; fcodes4	– History codes 2
		;		bit 7 = Code 53 - Ground Circuit
		;		bit 6 = Code 51 - EGR
		;		bit 5 = Code 45 – Idle Sw S/C
		;		bit 4 = Code 44 – Idle Sw O/C
		;		bit 3 = Code 42 – Camshaft Sensor
		;		bit 2 = Code 41 – Ignition Fail Safe
		;		bit 1 = Code 32 - MAP Low
		;		bit 0 = Code 31 – MAP High
L004B		; nfcodes4	- the inverse of L004A used for validity tests
L004C		; fcodes5	– Current fault codes 3 (California)
		;		bit 7 = 
		;		bit 6 = 
		;		bit 5 = 
		;		bit 4 = 
		;		bit 3 = 
         ;			bit 2 = Code 51 – EGRT O/C
		;		bit 1 = Code 51 – EGRT S/C
		;		bit 0 = Code 51 – EGR fail
L004D		; rpmh		- RPM High (*4???)
L004E		; rpml 		– RPM Low (*4???)
L004F		; RPM_2K	- RPM high res to 2000rpm (8-bit)
L0050		; RPM_3125	- RPM divided by 31.25
L0051		; RPM_2K2	- RPM high res to 2000rpm (8-bit)
L0052		; RPM_2K_16	- RPM high res to 2000rpm (16-bit)
;
         ; ADC result buffer
L0054		; wts_raw
L0055		; iat_raw
L0056		; this one is missing – grounded on PCB.
L0057		; egrt_raw	- egr temperature
L0058		; battv		- Battery voltage
L0059		; MAP divided by 5
L005A		; O2sense	; O2 sensor voltage
L005B		; tpsv		; TPS Volts
;
L005C		; mapx256	; MAP x 256 (8-bit=map/5)
L005E		; map_mod1	; From LUT v MAP
L0060		; map_mod2	; From LUT v MAP
L0062		; map_mod3	; From LUT v MAP
L0064		; vacuum	; Vacuum in mmHg ????
L0066		; map_t		; current MAP value
L0067		; map_t1	; MAP reading t-1
L0068		; map_t2	; MAP reading t-2
L0069		; map_t3	; MAP reading t-3
L006A		; map_t4	; MAP reading t-4
L006B
L006C		; wts_raw2	; the inverse of wts_raw (100h-wts_raw)
L006D		; WTS		; WTS (also diagnostic location)	
L006E		; iat_lim	; IAT raw or limited value if sensor fault
L006F		; tpsa		; TPS Angle (?)
L0070		; tpsa1		; TPS Angle (?)
L0071		; tpsa2		; TPS Angle (?)
L0072		; tpsa3		; TPS Angle (?)
L0073		; tpsa4		; TPS Angle (?)
L0074		; ??????????????????????
L0075		; O2_16		; 16-bit O2 voltage 0->1V = 0->D000h (53248)
L0077		; nEGRT 	;the complement of EGRT_raw
L0078		; internal status flags
		;		bit 7 = Idle Switch
		;		bit 6 = Watchdog Reset?
		;		bit 5 = D/P-N
		;		bit 4 = AC Sw
		;		bit 3 = PS Sw		AC??????
		;		bit 2 = Test Sw?
		;		bit 1 = Diag. Sw?
		;		bit 0 = Calif.
L0079		; PORT3	shadow register
		;		bit 7 = Idle Switch
		;		bit 6 = Watchdog Reset?
		;		bit 5 = D/P-N
		;		bit 4 = AC Sw
		;		bit 3 = PS Sw
		;		bit 2 = Test Sw?
		;		bit 1 = Diag. Sw?
		;		bit 0 = ?
		;	
L007A		; something to do with RPM_3125 
L007B		; a counter, linked to TO_VSV and other stuff
L007C		; MAP Status reg ????
L007D
L007E
L007F
L0080
L0081		; internal fault register?
L0082		; internal fault register?
L0083		; internal status?
		;	bit7 = TPS?
L0084		; counter, increments every RTI interrupt (1.25ms?)
L0085
L0086
L0087		; watchdog counter?? Always set to 6
L0088
L0089
L008A
L008B
L008C
L008D
L008E
L008F
L0090
L0091
PAGate		; PAGate	- Pulse accumulator gate time for VSS
L0093		; vss		- vehicle speed (kmh?)
L0094		; internal status reg.
L0095		; O2stat		- Status Reg. 3/O2 sensor status???
		;		bit 7 = 
		;		bit 6 = 
		;		bit 5 = 
		;		bit 4 = 
		;		bit 3 = 
		;		bit 2 = 
		;		bit 1 = Rich/Lean
		;		bit 0 = 
L0096
L0097		;		status reg related to injector PW
L0098
L0099
L009A		; 		CAS value??	
L009C	
L009D
L009E
L00A0
L00A2
L00A3
L00A4
L00A6
L00A8
L00AA
L00AC
L00AE
L00AF		;spkadv		;Spark advance (?)
L00B0
L00B1
L00B2
L00B3		; inj control/status? Register
			; bit7 – 1=CAS value updated
			; bit6 - 
			; bit5
			; bit4
			; bit3
			; bit2 - IFS
			; bit1 – IFS?
			; bit0 – Injector Status
L00B4
L00B5		; Ignition correction - 1 for every 800rpm
L00B6
L00B7
L00B8
L00B9
L00BA		; iacflow	; Idle Air Controller Flow rate (?)
L00BC
L00BE
L00C0
L00C1		; temp working register  
L00C2		; temp working register
L00C3		; temp working register
L00C4		; temp working register
L00C5		; temp working register
L00C6
L00C7
L00C8
L00C9	
L00CA
L00CB
L00CC
L00CD
L00CE
L00CF
L00D2		; mstat 	- message Status byte
		;		bit 7 = 
		;		bit 6 = 
		;		bit 5 = 
		;		bit 4 = 
		;		bit 3 = 
		;		bit 2 = 
		;		bit 1 = 
		;		bit 0 = 
L00D3		; mcount	- message Byte Count
L00D4		; mcsum		- message Checksum
L00D5		; tidle		- target Idle
L00D6		; iat_dg	- Intake Air Temperature (diag only)
L00D7		; egrtemp	- EGR temperature (diagnostic address)
L00D8		; iacadjm	- IAC adjustment monitor
L00D9		; tfstart	- Time From Start (510-2x)secs
L00DA
L00DB
L00DC
L00DD
L00E3
L00E4
L00E5		; MAP max or min?
L00E6		; MAP max or min?
L00E7		; TPSV at idle???
L00E8		; stft		- Short Term Fuel Trim
L00E9		; closed loop fuel correction ???
L00EB		; ltft		- Long Term Fuel Trim
L00EC		; working reg for STFT ?
L00ED
L00EF		; related to fuel trims
L00F1		; related to fuel trims
L00F2
L00F3
L00F4
L00F5		; aft		- Applied Fuel Trim
L00F6
L00F7
L00F8
L00F9
L00FA
L00FB
L00FC
L00FE		; injpwh		; Injector Pulse Width H
L00FF		; injpwl		; Injector Pulse Width L
L0100
L0101		; inj deadtime?
L0102		; injector - correction for batt volts 
L0104
L0105		; ignition - correction for WTS over 88C
L0106
L0107
L0109
L010B
L010D
L010E
L0110		; Air density correction

L0111
L0114		; IAC Count (IAC ADJ MON) 
L0115
L0116
L0119		; a TPSA value ????
L011A
L011B
L011C
L011D
L011E
L0122
L0123
L0124
L0125
L0126
L0127
L0128
L0129
L012A
L012D
L012E
L0130
L0132
L0133
L0137
L0138
L013A
L013C
L013D
L013E
L013F
L014C		; Calif. register?
L014E
L014F
L0154
L0155		; counter for TPS test?
L0156
L0157		; counter for TO VSV?
L015C		; actuator command word
L015E
L015F
L0160
L0180		; target idle
L0184		; CAS_t		- CAS buffer latest CAS value
L0186		; CAS_t1	- previous CAS value
L0188		; CAS_t2
L018A		; CAS_t3	- oldest CAS value
;
         ; TX Buffer
L018C	; Msg Header byte
L018D	; Msg length
L018E	; Msg Data byte or checksum?
L0196
L0198	; IAC count?
;
;End of variables in RAM
;
;
;
;
;
;
;
;
L026A		; error - test CF instruction!!!!
L1345		; error - test ASL instruction
;
;	I was expecting loads of tables between here and the 	main code ???????
;	but I haven't properly set up the X and Y op-codes (DOH!)
;
;
;Look Up Tables and Data (more at end of code!) refer to the TunerPro definition for table data
;
; Address	; Length		; Function		
LD001
D009		; word
D011		; 16
D020		; 256			; Fuelling table?
D120		; 180
D1D4		; 80
D224		; 80
D22C		; 8
D239		; 13
D247		; 14
D255		; 14
D263		; 14
D26B		;
D273		;
D27B		;
D283		; 8
D28B		; 
D293		;
D29B		;
D2AA		; 15
D2B8		; 14
D2C0		; 8
D2C8		; 8
D2D0		; 8
D2DA		; 10
D2E4		;
D2EE		;
D2F8		;
D300		; 8
D308		; 8
D310		; 15
D31E		;
D326		;
D32E		;
D336		;
D33E		;
D346		;
D34E		;
D354		;
D35C		;
D366		;
D36F		;
D379		;
D390		; 208 – 13x16 - Ignition Timing
D460		; 36
D484		;
D48E		;
D497		;
D4A0		;
D4B1		;		
D4B9		;
LD4BE		; 31
;
;Main Code starts here
;
D57F	8E01BF		LDS 	#$01BF		; Init stack at end of RAM 
D582	CC0210		LDD 	#$0210
D585	DD02		STD 	PORT1		; init port 1 and 2
D587	8640		LDAA 	#$40
D589	9700		STAA 	P1DDR		; init Port1 DDR
D58B	4F		CLRA 	
D58C	9706		STAA 	PORT3		; init Port3
D58E	9707		STAA 	PORT4		; init Port4
D590	8604		LDAA 	#$04
D592	972F		STAA 	PORT6		; init Port6
D594	8642		LDAA 	#$42		; O2H, ?
D596	9716		STAA 	PORT5		; init Port5
D598	CC1219		LDD 	#$1219
D59B	9708		STAA 	T1CSR1		; init timers
D59D	D718		STAB 	T1CSR2
D59F	CC5E0A		LDD 	#$5E0A
D5A2	DD19		STD 	T1CSR3		; more timers
D5A4	DC09		LDD 	FRC1
D5A6	C3000A		ADDD 	#$000A
D5A9	DD1B		STD 	T1OCR2
D5AB	BDD7AB		JSR 	LD7AB		; set up an output compare for 10 ticks?
D5AE	BDD7C6		JSR 	LD7C6		; set up timers?
D5B1	0243FE		AIM 	L0043#$FE	; clear L0043 bit 0
D5B4	8F148005	BRCLR 	RAMCR,#$80,LD5BD	; test RAMFLG, 0 = power up state
D5B8	BDD7E6		JSR 	LD7E6			; init higher order RAM?
D5BB	2707		BEQ 	LD5C4
D5BD	BDD812	 LD5BD:JSR 	LD812			; init fault codes
D5C0	8601		LDAA 	#$01			; now init rest of RAM
D5C2	9743		STAA 	L0043
D5C4	0314C0	 LD5C4:	OIM 	RAMCR#$C0		; $80=initialised, $40=RAM enable?
D5C7	CDCE004D	LDY 	#$004D
D5CB	4F		CLRA 	
D5CC	5F		CLRB 	
D5CD	ED80		STD 	80,X
D5CF	CD8C015E	CMPY 	#$015E
D5D3	25F8		BCS 	LD4DD		;jumps to D5CD!!!!!!
D5D5	01		NOP	
D5D6	01		NOP	
D5D7	01		NOP	
D5D8	8605		LDAA 	#$05
D5DA	9710		STAA 	SCIRMC			;
D5DC	CDCE0054	LDY 	#$0054			; ADC buffer base address	
D5E0	8608		LDAA 	#$08			; ADC GO + Channel 0		
D5E2	36		PSHA 				
D5E3	BDF2FA		JSR 	LF2FA		; call ADC routine
D5E6	E780		STAB 	$00,X			; store
D5E8	32		PULA 	
D5E9	4C		INCA 	
D5EA	8110		CMPA 	#$10
D5EC	25F4		BCS 	LD4FA			; not code!!!
D5EE	CE0162		LDX 	#$0162
D5F1	EC00		LDD 		
D5F3	4D		TSTA 	
D5F4	2723		BEQ 	LD619
D5F6	2015		BRA 	LD60D
;
; to do with california/EGRT?
;
D5F8	84FE	 LD5F8:	ANDA 	#$FE			; clear L0078 but0
D5FA	87070406	BRSET 	PORT4,#R301,LD604	; Euro/US config bra if Euro
D5FE	8F070102	BRCLR 	PORT4,#CALI,LD604	; calif. config 
D602	8A01		ORAA 	#$01
D604	D678	 LD604:	LDAB 	L0078			; L0078 into B
D606	9778		STAA 	L0078			; A into L0078
D608	7ED8A1		JMP 	LD8A1
;
;
D60B	01		NOP	
D60C	01		NOP	
D60D	3D	 LD60D:	MUL 				; A+B (signed)
D60E	05		LSLD 	
D60F	C30080		ADDD 	#$0080			; result in A
D612	CDCE7193	LDY 	#$7193
D616	BDF29A		JSR 	LF29A		; compare D against limits passed in Y?
;init RAM to 0x80
D619	C680	 LD619:	LDAB 	#$80
D61B	ED00		STD 	$00,X
D61D	08		INX 	
D61E	08		INX 	
D61F	8C0182		CPX 	#$0182
D622	23CD		BLS 	LD557
D624	DC4A		LDD 	FCODES4
D626	84FB		ANDA 	#$FB
D628	CA04		ORAB 	#$04
D62A	DD4A		STD 	FCODES4
D62C	DC48		LDD 	FCODES2		
D62E	84FB		ANDA 	#$FB		; clear IFS fault?
D630	CA04		ORAB 	#$04		; set ?
D632	DD48		STD 	FCODES2
;
; init X at $100
;
D634	CE0100		LDX 	#$0100
D637	4F		CLRA 	
D638	D659		LDAB 	MAP_5		; init MAP sensor 
D63A	05		LSLD 			; MAP*2
D63B	05		LSLD 			; MAP*4
D63C	DD64		STD 	VACUUM		; init vacuum as (map/5)*4
D63E	9659		LDAA 	MAP_5		; A = MAP/5
D640	16		TAB 			; copy to B
D641	DD66		STD 	MAP_T		; MAP_T&T1
D643	DD68		STD 	MAP_T2		; MAP_T2&T3
D645	976A		STAA 	MAP_SH5		; MAP_SH5
D647	A718		STAA 	$18,X		; MAP_SH6 = L0118
D649	C6B4		LDAB 	#$B4
D64B	3D		MUL 	
D64C	DD5E		STD 	MAP_MOD1	; MAP_MOD1
D64E	DD60		STD 	MAP_MOD2	; MAP_MOD2
D650	DD62		STD 	MAP_MOD3	; MAP_MOD3
D652	965B		LDAA 	TPSV		; load TPS volts
D654	9041		SUBA 	L0041		; subtract TPS Idle value
D656	2505		BCS 	LD65D		; are we at idle???
D658	16		TAB 			; copy to B
D659	DD70		STD 	TPSA1		; TPSA1, TPSA2
D65B	DD72		STD 	TPSA3		; TPSA3, TPSA4
D65D	9606	 LD65D:	LDAA 	PORT3
D65F	8840		EORA 	#$40		; toggle watchdog?
D661	9779		STAA 	L0079		; Port3 Shadow register
D663	8A20		ORAA 	#$20
D665	84EF		ANDA 	#$EF		; clear AC status?
D667	9778		STAA 	L0078		
D669	038003		OIM 	L0080#$03
D66C	037CEF		OIM 	L007C#$EF
D66F	8601		LDAA 	#$01		; set first pass??
D671	9781		STAA 	L0081
D673	97B7		STAA 	L00B7
D675	9602		LDAA 	PORT1		; get PORT1
D677	8480		ANDA 	#$80		; zero bit7
D679	8A01		ORAA 	#$01		; set bit0
D67B	9785		STAA 	L0085		; store in L0085
D67D	8606	 LD67D:LDAA 	#$06
D67F	9786		STAA 	L0086
D681	9787		STAA 	L0087		; L0087=6 (watchdog count????)
D683	038828		OIM 	L0088#$28
D686	038914		OIM 	L0089#$14
D689	038E04		OIM 	L008E#$04
D68C	03AFA0		OIM 	SPKADV,#$A0	; ignition advance = 5 degrees
D68F	03B0A0		OIM 	L00B0,#$A0
D692	B6D48E		LDAA 	TABLE_33
D695	97B1		STAA 	L00B1
D697	03B406		OIM 	L00B4,#$06
D69A	BDD7B6		JSR 	LD7B6		; init CAS buffer
D69D	86FF		LDAA 	#$FF
D69F	9796		STAA 	L0096
D6A1	979A		STAA 	L009A
D6A3	A719		STAA 	$19,X		; L0119 – a TPS value?
D6A5	97E4		STAA 	L00E4
D6A7	97E6		STAA 	L00E6
D6A9	97FB		STAA 	L00FB
D6AB	A725		STAA 	$25,X		; L0125
D6AD	8680		LDAA 	#$80
D6AF	97E8		STAA 	STFT		; init STFT	
D6B1	97E9		STAA 	L00E9		; init L00E9
D6B3	97F3		STAA 	L00F3		; init L00F3
D6B5	A75F		STAA 	$5F,X		; L015F
D6B7	8664		LDAA 	#$64		
D6B9	97FF		STAA 	INJPWL		; init inj turn on time
D6BB	A701		STAA 	$01,X		; L0101
D6BD	CC1388		LDD 	#$1388
D6C0	DDBC		STD 	L00BC
D6C2	6C5E		INC 	
D6C4	6C17		INC 	
D6C6	13221413	BRCLR 	L0022,#$14,LD6DD
D6CA	2350		BLS 	LD71C
D6CC	13267813	BRCLR 	RTICR,#$78,LD6E3
D6D0	3E		WAI 	
D6D1	6413		LSR 	
D6D3	39		RTS 
;
;	
D6D4	781345		ASL  	L1345
D6D7	32		PULA 	
D6D8	134B3201	BRCLR 	L004B,#$32,LD6DD
D6DC	01		NOP	
D6DD	01	 LD6DD:	NOP	
D6DE	BDFD5B		JSR 	LFD5B		; reset serial port
D6E1	9608		LDAA 	T1CSR1	
D6E3	960D	 LD6E3:	LDAA 	T1ICR1
D6E5	0E		CLI 	
D6E6	038340		OIM 	L0083#$40
D6E9	8E01BF	 LD6E9:	LDS 	#$01BF		; re-initialise the stack pointer ???
D6EC	4F		CLRA 	
D6ED	8F850149	BRCLR 	L0085,#$01,LD73A
D6F1	0285FE		AIM 	L0085#$FE
D6F4	CE0122		LDX 	#$0122
D6F7	C618		LDAB 	#$18
D6F9	8D6E		BSR 	LD769
D6FB	8A01		ORAA 	#$01
D6FD	F60122		LDAB 	L0122
D700	37		PSHB 	
D701	C503		BITB 	#$03
D703	2609		BNE 	LD70E
D705	CE013A		LDX 	#$013A
D708	C614		LDAB 	#$14
D70A	8D5D		BSR 	LD769
D70C	8A02		ORAA 	#$02
D70E	33	 LD70E:	PULB 	
D70F	5D		TSTB 	
D710	260E		BNE 	LD720
D712	CE014E		LDX 	#$014E
D715	C603		LDAB 	#$03
D717	8D50		BSR 	LD769
D719	8A04		ORAA 	#$04
D71B	C614		LDAB 	#$14
D71D	F70122		STAB 	L0122
D720	F60123	 LD720:	LDAB 	L0123
D723	2615		BNE 	LD73A
D725	CE0151		LDX 	#$0151
D728	C604		LDAB 	#$04
D72A	8D3D		BSR 	LD769
D72C	CE00D9		LDX 	#$00D9			;TFSTART
D72F	C601		LDAB 	#$01
D731	8D36		BSR 	LD769
D733	8A08		ORAA 	#$08
D735	C650		LDAB 	#$50
D737	F70123		STAB 	L0123
D73A	9794	 LD73A:	STAA 	L0094
D73C	CE0122		LDX 	#$0122
D73F	86FF		LDAA 	#$FF
D741	8F81020E	BRCLR 	L0081,#$02,LD753
D745	A718		STAA 	$18,X
D747	97D9		STAA 	TFSTART			; time from start, 255 = 0
D749	D66C		LDAB 	WTS_RAW2
D74B	C172		CMPB	#$72			; approx. 90C
D74D	2404		BCC 	LD753
D74F	C6FF		LDAB 	#$FF
D751	E732		STAB 	$32,X
D753	8F784002 LD753:BRCLR 	L0078,#$40,LD759
D757	A702		STAA 	$02,X
D759	8F2F0806 LD759:BRCLR 	PORT6,#$08,LD763		;TO VSV
D761	A72C		STAA 	$2C,X
D763	200F	 LD763:	BRA 	LD774
D765	8F94010A LD765:BRCLR 	L0094,#$01,LD773
;
;	CF instruction is disabled !!!
;
D769	CF	 LD769:	STOP 				;this routine is something to do with TFSTART ???
D76A	00		TEST	
D76B	FF026A		STX 	L026A
D76E	00		TEST	
D76F	08		INX 	
D770	5A		DECB 	
D771	26F6		BNE 	LD67D
D773	39	 LD773:	RTS 
;
;	
D774	8606	 LD774:	LDAA 	#$06
D776	9787		STAA 	L0087			; init watchdog counter??
D778	8D4C		BSR 	LD7C6			; set up timers?
D77A	0F		SEI 	
D77B	020813		AIM 	T1CSR1,#$13		; clear stuff  
D77E	030810		OIM 	T1CSR1,#$10		; set IC1 int en 
D781	021839		AIM 	T1CSR2,#$39
D784	031818		OIM 	T1CSR2,#$18
D787	02195E		AIM 	T1CSR3,#$5E
D78A	031942		OIM 	T1CSR3,#$42
D78D	8F810102	BRCLR 	L0081,#$01,LD793
D791	8D18		BSR 	LD7AB		; set up an output compare for 10 ticks?
D793	87B2FF09 LD793:BRSET 	L00B2,#$FF,LD7A0
D797	03190C		OIM 	T1CSR3#$0C
D79A	031A0A		OIM 	T2CSR1#$0A
D79D	4F		CLRA 	
D79E	9799		STAA 	L0099
D7A0	0E	 LD7A0:	CLI 	
D7A1	01		NOP	
D7A2	01		NOP	
D7A3	01		NOP	
D7A4	8605		LDAA 	#$05
D7A6	9710		STAA 	SCIRMC
D7A8	7ED83E		JMP 	LD83E
;
; Set up an output compare for 10 ticks
;
D7AB	0218DF	 LD7AB:	AIM 	T1CSR2#$DF
D7AE	DC09		LDD 	FRC1
D7B0	C3000A		ADDD 	#$000A
D7B3	DD0B		STD 	T1OCR1
D7B5	39		RTS 
;
; Init CAS buffer
;	
D7B6	CDCE0184 LD7B6:LDY 	#$0184		; Y = CAS buffer
D7BA	CC7FFF		LDD 	#$7FFF		; init all to $7FFF
D7BD	ED80		STD 	$80,Y		; Y post increments
D7BF	ED80		STD 	$0,Y	
D7C1	ED80		STD 	$0,Y
D7C3	ED80		STD 	$0,Y
D7C5	39		RTS
;
; set up timers?
; 	
D7C6	CC4E00	 LD7C6:LDD 	#$4E00		; PORT1 inputs = P17,P15,P14,P10, outputs = P16,P13,P12,P11
D7C9	DD00		STD 	P1DDR		; PORT2 is all inputs (Rx/Tx = auto?)
D7CB	CC01E0		LDD 	#$01E0
D7CE	DD04		STD 	P3DDR
D7D0	86FE		LDAA 	#$FE
D7D2	9715		STAA 	P5DDR
D7D4	4F		CLRA 	
D7D5	970F		STAA 	P3CSR			 
D7D7	9717		STAA 	L0017
D7D9	0202BF		AIM 	PORT1#$BF		;clear P16
D7DC	8610		LDAA 	#$10
D7DE	9724		STAA 	PACTL
D7E0	CC4D64		LDD 	#$4D64
D7E3	DD26		STD 	RTICR
D7E5	39		RTS 
;
;
;
;
; test for EGR faults / conditions ????
;
;	
D7E6	CDCE0044 LD7E6:LDY 	#$0044
D7EA	EC80		LDD 	$0, X
D7EC	43		COMA 	
D7ED	11		CBA 	
D7EE	2621		BNE 	LD811
D7F0	CD8C004A	CMPY 	#$004A
D7F4	23F4		BLS 	LD702
D7F6	DC41		LDD 	L0041			; idle value
D7F8	43		COMA 	
D7F9	11		CBA 	
D7FA	2615		BNE 	LD811
D7FC	9643		LDAA 	L0043
D7FE	8502		BITA 	#$02
D800	260F		BNE 	LD811
D802	FC0160		LDD 	L0160
D805	8102		CMPA 	#$02
D807	2208		BHI 	LD811
D809	C102		CMPB	#$02
D80B	2204		BHI 	LD811
D80D	964C		LDAA 	FCODES5			; test for EGR faults
D80F	85F8		BITA 	#$F8		
D811	39	 LD811:	RTS 
;
;
;	
D812	CC0080	 LD812:	LDD 	#$0080
D815	CDCE0162	LDY 	#$0162
D819	ED80		STD 	
D81B	CD8C0182	CMPY 	#$0182
D81F	23F8		BLS 	LD729
D821	86CD		LDAA 	#$CD
D823	9740		STAA 	BARO		;set BARO to $CD
D825	CC39C6		LDD 	#$39C6
D828	DD41		STD 	L0041		;TPS idle values set at 39 and !39
D82A	4F		CLRA 	
D82B	C6FF		LDAB 	#$FF
D82D	DD44		STD 	FCODES1		;init FCodes and their inverses
D82F	DD46		STD 	FCODES3
D831	DD48		STD 	FCODES2
D833	DD4A		STD 	FCODES4
D835	974C		STAA 	FCODES5
D837	CC0202		LDD 	#$0202
D83A	FD0160		STD 	L0160
D83D	39		RTS 
;
;
;	
D83E	9606	 LD83E:	LDAA 	PORT3
D840	8840		EORA 	#$40		; toggle watchdog
D842	36		PSHA 	
D843	9879		EORA 	L0079		; L0079 = complement??	
D845	16		TAB 	
D846	9478		ANDA 	L0078		; test for changes?
D848	53		COMB 			; invert B
D849	D479		ANDB 	L0079		; AND with L0079?
D84B	1B		ABA	
D84C	87810307	BRSET 	L0081,#$03,LD857
D850	F60124		LDAB 	L0124
D853	CB50		ADDB	#$50
D855	2402		BCC 	LD859
D857	8A20	 LD857:	ORAA 	#$20
D859	87810307 LD859:BRSET 	L0081,#$03,LD864
D85D	F60124		LDAB 	L0124
D860	CB20		ADDB	#$20
D862	2402		BCC 	LD866
D864	84EF	 LD864: ANDA 	#$EF
D866	02D2FE	 LD866: AIM 	L00D2#$FE	; message status register
D869	0F		SEI 	
;
; Parse actuators ????
;
D86A	F60127		LDAB 	L0127
D86D	2609		BNE 	LD878
D86F	CE0000		LDX 	#$0000
D872	FF015C		STX 	L015C		; actuator command
D875	0E		CLI 	
D876	2025		BRA 	LD89D
D878	F6015C	 LD878:	LDAB 	L015C		; get actuator command	
D87B	0E		CLI 	
D87C	84FD		ANDA 	#$FD
D87E	8A04		ORAA 	#$04
D880	C110		CMPB	#$10		; 10h = Fixed Spark
D882	2719		BEQ 	LD89D
D884	8A02		ORAA 	#$02
D886	84FB		ANDA 	#$FB
D888	C180		CMPB	#$80		; 80h = IAC Cal		
D88A	2711		BEQ 	LD89D
D88C	84F9		ANDA 	#$F9
D88E	C1C0		CMPB	#$C0		; C0h = RPM Control
D890	260B		BNE 	LD89D		; everything else ???
D892	8FB98007	BRCLR 	L00B9,#$80,LD89D
D896	87444003	BRSET 	FCODES1,#$40,LD89D		; test VSS fault
D89A	03D201		OIM 	L00D2,#$01			; msg status
;
D89D	7ED5F8	 LD89D:	JMP 	LD5F8
D8A0	01		NOP	
;
; to do with actuators
;
D8A1	D878	 LD8A1:	EORB 	L0078
D8A3	D7B6		STAB 	L00B6
D8A5	32		PULA 	
D8A6	9779		STAA 	L0079
;
;
;
D8A8	CDCE0054	LDY 	#$0054			; ADC base address
D8AC	8608		LDAA 	#$08			; ADC GO + channel 0
D8AE	36		PSHA 	
D8AF	0F		SEI 	
D8B0	BDF2FA		JSR 	LF2FA			; call ADC routine
D8B3	0E		CLI 	
D8B4	E780		STAB 	$00,X			; store to L0054 (WTS_RAW)
D8B6	32		PULA 	
D8B7	4C		INCA 	
D8B8	810D		CMPA 	#$0D
D8BA	25F2		BCS 	LD7CA			; not a valid address!!!!
D8BC	02822D		AIM 	L0082#$2D		; clear L0082, bits7,6,4,1
D8BF	D654		LDAB 	WTS_RAW
D8C1	53		COMB 	
D8C2	C112		CMPB	#$12			; wts 6Bh= 28C ish
D8C4	2504		BCS 	LD8CA
D8C6	C1F6		CMPB	#$F6			; wts 09h= 120ish
D8C8	2307		BLS 	LD8D1
D8CA	C694	 LD8CA:	LDAB 	#$94			; wts = 29C ish
D8CC	038240		OIM 	L0082#$40		; L0082 bit6 = WTS status?
D8CF	2019		BRA 	LD8EA
D8D1	87810115 LD8D1:BRSET 	L0081,#$01,LD8EA
D8D5	8F940113	BRCLR 	L0094,#$01,LD8EC
D8D9	D06C		SUBB 	WTS_RAW2		; inverted wts
D8DB	2405		BCC 	LD8E2
D8DD	D66C		LDAB 	WTS_RAW2		; inverted wts
D8DF	5A		DECB 	
D8E0	2008		BRA 	LD8EA
D8E2	C105	 LD8E2:	CMPB	#$05
D8E4	2302		BLS 	LD8E8
D8E6	C605		LDAB 	#$05
D8E8	DB6C	 LD8E8:	ADDB 	WTS_RAW2
D8EA	D76C	 LD8EA:	STAB 	WTS_RAW2
D8EC	966C	 LD8EC:	LDAA 	WTS_RAW2		; get WTS
D8EE	CDCEFB0B	LDY 	#$FB0B
D8F2	BDF2AA		JSR 	LIM2Y			; limit to values in Y
D8F5	CEFF79		LDX 	#$FF79			; WTS lin table?
D8F8	BDF216		JSR 	LF216			; table look up
D8FB	976D		STAA 	WTS_DG			; real WTS value
;
; get IAT reading and test against max and min values
; if outside max or min then default to max or min value
; and set fault code
;
D8FD	D655		LDAB 	IAT_RAW
D8FF	53		COMB 	
D900	C115		CMPB	#$15			; fault limit	
D902	2504		BCS 	LD908
D904	C1F5		CMPB	#$F5			; fault limit
D906	2305		BLS 	LD90D
D908	038280	 LD908:	OIM 	L0082#$80		; L0082, bit7=IAT
D90B	C67A		LDAB 	#$7A		; IAT default value??
D90D	D76E	 LD90D:	STAB 	IAT_LIM			; iat_rawl
;
; linearise the IAT value and store in the diagnostic location
;
D90F	17		TBA 	
D910	CDCEFB0B	LDY 	#$FB0B
D914	BDF2AA		JSR 	LIM2Y
D917	CEFF89		LDX 	#$FF89			; IAT lin table?
D91A	BDF216		JSR 	LF216			; table look up
D91D	97D6		STAA 	IAT_DG
;
; init the CAS buffer and do the RPM values
;
D91F	8F810107	BRCLR 	L0081, #$01,LD92A ;skip if we're not initialised/running?
D923	BDD7B6		JSR 	LD7B6		; init CAS buffer
D926	4F		CLRA 			; set RPM = 0
D927	5F		CLRB 	
D928	2006		BRA 	LD930
;
D92A	FC0184	 LD92A:	LDD 	CAS_T		; CAS count
D92D	BDF167		JSR 	LF167		; 960000 divided by CAS count
;
D930	DD4D	 LD930:	STD 	RPMH		; is the RPM
D932	BDF28F		JSR 	LF28F		; divide by 2 ??????
D935	D74F		STAB 	RPM_2K		; RPM high res to 2k
D937	DC4D		LDD 	RPMH		; get RPM
D939	BDF28D		JSR 	LF28D		; divide by ?
D93C	D750		STAB 	RPM_3125	; store for later use
D93E	0F		SEI 	
D93F	FC0184		LDD 	CAS_T		; get CAS count 
D942	F30186		ADDD 	CAS_T1		; add previous CAS value
D945	DDC1		STD 	L00C1		
D947	FC0188		LDD 	CAS_T2		; get CAS_T2
D94A	F3018A		ADDD 	CAS_T3 		; and add CASS_T3
D94D	0E		CLI 	
D94E	D3C1		ADDD 	L00C1		; now add T+T1+T2+T3
D950	46		RORA 			; divide by 2
D951	56		RORB 			 
D952	BDF283		JSR 	LF283			; divide double by two
D955	BDF167		JSR 	LF167			; 960000 divided by D
D958	BDF28F		JSR 	LF28F			; high res to 2K	
D95B	D751		STAB 	RPM_2K_B		; store result in L0051
D95D	8FB38018	BRCLR 	L00B3,#$80,LD979	; bra if no new CAS value
D961	02B37F		AIM 	L00B3#$7F		; reset CAS value flag then do calcs
D964	C620		LDAB 	#$20			; load B with $20
D966	964F		LDAA 	RPM_2K			; load A with RPM high res to 2k
D968	9052		SUBA 	RPM_2K_16		; subtract high byte of 16-bit value
D96A	2503		BCS 	LD96F			; do some maths
D96C	3D		MUL 	
D96D	2006		BRA 	LD975
D96F	40	 LD96F:NEGA 	
D970	3D		MUL 	
D971	40		NEGA 	
D972	50		NEGB 	
D973	8200		SBCA 	#$00
D975	D352	 LD975:	ADDD 	RPM_2K_16			; add RPM_2K_16
D977	DD52		STD 	RPM_2K_16			; and store in RPM_2K_16
D979	87810307 LD979:BRSET 	L0081,#$03,LD984
D97D	B6013A		LDAA 	L013A
D980	8B04		ADDA 	#$04
D982	2405		BCC 	LD989
D984	5F	 LD984:	CLRB 	
D985	964F		LDAA 	RPM_2K
D987	DD52		STD 	RPM_2K_16
;	
;test TPS
;
D989	0F	 LD989:	SEI 
D98A	9670		LDAA 	TPSA1			; get TPS angle
D98C	8F820803	BRCLR 	L0082,#$08,LD993
D990	038210		OIM 	L0082#$10		; clear L0082, bit4
D993	0E	 LD993:	CLI 	
D994	976F		STAA 	TPSA			; TPSA
D996	965B		LDAA 	TPSV			; get TPS volts
D998	813D		CMPA 	#$3D			; TPS – 1.2V
D99A	2405		BCC 	LD9A1
D99C	0282DF		AIM 	L0082#$DF		; clear L0082, bit5
D99F	200C		BRA 	LD9AD
D9A1	87810308 LD9A1:BRSET 	L0081,#$03,LD9AD
D9A5	8148		CMPA 	#$48			; TPS – 1.4V 
D9A7	2504		BCS 	LD9AD
D9A9	87788005	BRSET 	L0078,#$80,LD9B2
D9AD	C608	 LD9AD:	LDAB 	#$08
D9AF	F70129		STAB 	L0129
D9B2	F60129	 LD9B2:	LDAB 	L0129
D9B5	2603		BNE 	LD9BA
D9B7	038220		OIM 	L0082#$20		; set L0082, bit5
D9BA	8F822005 LD9BA:BRCLR 	L0082,#$20,LD9C3	; bra if TPS fault
D9BE	C628		LDAB 	#$28
D9C0	F70128		STAB 	L0128
D9C3	CDCEFF56 LD9C3:LDY 	#$FF56			
D9C7	BDF2DB		JSR 	LF2DB			; to do with RPM?
D9CA	D7C6		STAB 	L00C6;
;
; test TPSA
;
D9CC	D66F		LDAB 	TPSA			; TPSA
D9CE	8F823009	BRCLR 	L0082,#$30,LD9DB
D9D2	5F		CLRB 	
D9D3	87788004	BRSET 	L0078,#$80,LD9DB
D9D7	C67C		LDAB 	#$7C
D9D9	2030		BRA 	LDA0B
D9DB	37	 LD9DB:	PSHB 	
D9DC	CED263		LDX 	#TABLE_11A		; TPSA v WTS??
D9DF	8F070803	BRCLR 	PORT4,#R302,LD9E6	; AT/MT config
D9E3	CED26B		LDX 	#TABLE_11B
D9E6	BDF1E0	 LD9E6:	JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
D9E9	33		PULB 	
D9EA	1B		ABA	
D9EB	2508		BCS 	LD9F5
D9ED	8F781006	BRCLR 	L0078,#$10,LD9F7
D9F1	8B04		ADDA 	#$04
D9F3	2402		BCC 	LD9F7
D9F5	86FF	 LD9F5:	LDAA 	#$FF
D9F7	5F	 LD9F7:	CLRB 	
D9F8	CDCEFF6E	LDY 	#$FF6E
D9FC	BDF2F2		JSR 	LF2F2			; mult A with FC ???
D9FF	D7C7		STAB 	L00C7			; store in temp reg
DA01	CED1D4		LDX 	#TABLE_5
DA04	CDCE0800	LDY 	#$0800
DA08	BDF199		JSR 	LF199			; table look up
DA0B	D76B	 LDA0B:	STAB 	L006B			; result into L006B
DA0D	CE0100		LDX 	#$0100
DA10	8F810306	BRCLR 	L0081,#$03,LDA1A
DA14	C650		LDAB 	#$50			; 
DA16	E755		STAB 	$55,X			; L0155=80
DA18	202C		BRA 	LDA46
DA1A	D640	 LDA1A:	LDAB 	BARO			; test Baro?
DA1C	C008		SUBB 	#$08
DA1E	2401		BCC 	LDA21
DA20	5F		CLRB 	
DA21	D1E6	 LDA21:	CMPB 	L00E6
DA23	2307		BLS 	LDA2C
DA25	0282FB		AIM 	L0082#$FB		; clear L0082, bit2
DA28	6F55		CLR 	
DA2A	201A		BRA 	LDA46
;
; Test TPS Low if TPS High or ??? aren’t set
;
DA2C	87823016 LDA2C:BRSET 	L0082,#$30,LDA46
DA30	D66F		LDAB 	TPSA			; get TPSAngle		
DA32	C10A		CMPB	#$0A			; TPS - 10
DA34	2410		BCC 	LDA46			; if TPS>10 then good
DA36	8F94010C	BRCLR 	L0094,#$01,LDA46
DA3A	E655		LDAB	$55,X			
DA3C	2708		BEQ 	LDA46
DA3E	5A		DECB 	
DA3F	E755		STAB 	$55,X
DA41	2603		BNE 	LDA46
DA43	038204		OIM 	L0082#$04		; set L0082, bit3
;
; test MAP
;
DA46	0F	 LDA46:	SEI 
DA47	9659		LDAA 	MAP_5
DA49	8F820103	BRCLR 	L0082,#$01,LDA50	;don’t test if MAP? set
DA4D	038202		OIM 	L0082#$02		;clear L0082, bit  1
DA50	0E	 LDA50:	CLI 	
DA51	5F		CLRB 	
DA52	878AFF0D	BRSET 	L008A,#$FF,LDA63	;skip next bit if L008A any bits set
DA56	DC64		LDD 	MAP_5
DA58	05		LSLD 			;(MAP/5)*2
DA59	05		LSLD 			;(MAP/5)*4
DA5A	05		LSLD 			;(MAP/5)*8
DA5B	05		LSLD 			;(MAP/5)*16
DA5C	05		LSLD 			;(MAP/5)*32	
DA5D	05		LSLD 			;(MAP/5)*64 = MAP*64
DA5E	2403		BCC 	LDA63
DA60	CCFFFF		LDD 	#$FFFF
;
; test Baro ???
;
DA63	DDC3	 LDA63:	STD 	L00C3
DA65	87823029	BRSET 	L0082,#$30,LDA92	;skip if MAP faulty???
DA69	9640		LDAA 	BARO
DA6B	90C3		SUBA 	L00C3
DA6D	2401		BCC 	LDA70
DA6F	4F		CLRA 	
DA70	36	 LDA70:	PSHA 	
DA71	CED001		LDX 	#TABLE_1A		; table v ?
DA74	8F070803	BRCLR 	PORT4,#R302,LDA7B	; AT/MT config
DA78	CED009		LDX 	#TABLE_1B
DA7B	BDF1E0	 LDA7B:	JSR 	LF1E0			; table look up Baro v WTS limit to 105C to -30C
DA7E	33		PULB 	
DA7F	3D		MUL 	
DA80	36		PSHA 	
DA81	CED011		LDX 	#TABLE_2
DA84	BDF1F1		JSR 	LF1F1		; table look up v RPM/32
DA87	33		PULB 	
DA88	3D		MUL 	
DA89	16		TAB 	
DA8A	96C3		LDAA 	L00C3
DA8C	10		SBA 	
DA8D	2401		BCC 	LDA90
DA8F	4F		CLRA 	
DA90	97C3	 LDA90:	STAA 	L00C3
DA92	DCC3	 LDA92:	LDD 	L00C3
DA94	8F820603	BRCLR 	L0082,#$06,LDA9B
DA98	966B		LDAA 	L006B
DA9A	5F		CLRB 	
DA9B	DD5C	 LDA9B:	STD 	MAPX256		; MAP 16-bit value
DA9D	CED36F		LDX 	#TABLE_3A
DAA0	BDF1F1		JSR 	LF1F1		; table look up v RPM/32
DAA3	B70119		STAA 	L0119		; a TPS value ??????
DAA6	CED37D		LDX 	#TABLE_3B
DAA9	BDF1F1		JSR 	LF1F1		; table look up v RPM/32
DAAC	B7011A		STAA 	L011A
DAAF	9657		LDAA 	EGRT_RAW	; get EGRT
DAB1	43		COMA 			
DAB2	9777		STAA 	NEGRT		; store complement of EGRT
DAB4	CDCEFB1B	LDY 	#$FB1B		
DAB8	BDF2AA		JSR 	LIM2Y		; limit to values in Y
DABB	CEFF99		LDX 	#$FF99		; EGRT_LUT?
DABE	BDF216		JSR 	LF216		; table look up
DAC1	97D7		STAA 	EGRTEMP		; EGRTEMP diagnostic address
; from here on we seem to be reading data from a table at LD4B9
; next table is at LD4BE
DAC3	CED4B9		LDX 	#TABLE_37	; from here on we read data from X (D4B9h)
DAC6	9651		LDAA 	RPM_2K_B	; RPM high res to 2000rpm
DAC8	D67A		LDAB 	L007A		; Get L007A ??
DACA	54		LSRB 			; divide by two ????
DACB	BDF318		JSR 	LF318		; do something n times with table
DACE	9650		LDAA 	RPM_3125	; get RPM/32
DAD0	BDF30C		JSR 	LF30C		; do something n times with table
DAD3	D77A		STAB 	L007A		; something to do with RPM_3125 and table?
DAD5	D67B		LDAB 	L007B		; a counter
DAD7	54		LSRB 	
DAD8	BDF30A		JSR 	LF30A		; do something n times?
DADB	D77B		STAB 	L007B		
DADD	D67C		LDAB 	L007C		; 
DADF	54		LSRB 	
DAE0	965C		LDAA 	MAPX256		; 8-bit=MAP/5 
DAE2	BDF310		JSR 	LF310		; do something n times with table
DAE5	56		RORB 	
DAE6	56		RORB 	
DAE7	56		RORB 	
DAE8	D77C		STAB 	L007C		; modified MAP
DAEA	D67D		LDAB 	L007D
DAEC	54		LSRB 	
DAED	966C		LDAA 	WTS_RAW2	; inverted wts
DAEF	BDF30C		JSR 	LF30C		; do something n times with table
DAF2	56		RORB 	
DAF3	D77D		STAB 	L007D
DAF5	D67E		LDAB 	L007E
DAF7	54		LSRB 	
DAF8	BDF30A		JSR 	LF30A		; do something n times with table
DAFB	D77E		STAB 	L007E
DAFD	D67F		LDAB 	L007F
DAFF	54		LSRB 	
DB00	966F		LDAA 	TPSA          	; get TPSA
DB02	BDF30C		JSR 	LF30C		; do something n times with table (X????)
DB05	56		RORB 	
DB06	D77F		STAB 	L007F
DB08	D680		LDAB 	L0080
DB0A	54		LSRB 	
DB0B	9640		LDAA 	BARO
DB0D	BDF316		JSR 	LF316		; do something n times with table
DB10	966C		LDAA 	WTS_RAW2	; wts
DB12	BDF30E		JSR 	LF30E		; do something n times with table
DB15	D780		STAB 	L0080
DB17	D6DC		LDAB 	L00DC
DB19	54		LSRB 	
DB1A	9693		LDAA 	VSS
DB1C	BDF318		JSR 	LF318		; do something n times with table
DB1F	966F		LDAA 	TPSA		; get TPSA
DB21	BDF314		JSR 	LF314		; do something n times with table
DB24	9650		LDAA 	RPM_3125	; get RPM/32
DB26	BDF312		JSR 	LF312		; do something n times with table
DB29	D7DC		STAB 	L00DC
DB2B	CED239		LDX 	#Table_8
DB2E	BDF1F1		JSR 	LF1F1		; table look up v RPM/32
DB31	8F781002	BRCLR 	L0078,#$10,LDB37
DB35	8B06		ADDA 	#$06
DB37	36	 LDB37:	PSHA 	
DB38	86E0		LDAA 	#$E0			; A = 224
DB3A	D640		LDAB 	BARO			; B = Baro
DB3C	3D		MUL 				; Baro * 224
DB3D	C30080		ADDD 	#$0080			; +128
DB40	8033		SUBA 	#$33			; -51
DB42	2401		BCC 	LDB45
DB44	4F		CLRA 	
DB45	33	 LDB45:	PULB 	
DB46	3D		MUL 	
DB47	C30040		ADDD 	#$0040
DB4A	05		LSLD 	
DB4B	2402		BCC 	LDB4F
DB4D	86FF		LDAA 	#$FF			; FF ???
DB4F	915C	 LDB4F:	CMPA 	MAPX256		; 8-bit=MAP/5
DB51	220E		BHI 	LDB61
DB53	877C2005	BRSET 	L007C,#$20,LDB5C
DB57	7D013E		TST 	L013E
DB5A	2705		BEQ 	LDB61
DB5C	C664	 LDB5C:	LDAB 	#$64
DB5E	F7013E		STAB 	L013E
DB61	877C2002 LDB61:BRSET 	L007C,#$20,LDB67
DB65	8B0D		ADDA 	#$0D
DB67	027CDF	 LDB67:	AIM 	L007C#$DF
DB6A	915C		CMPA 	MAPX256			; 8-bit=MAP/5
DB6C	2203		BHI 	LDB71
DB6E	037C20		OIM 	L007C#$20
DB71	CED247	 LDB71:	LDX 	#TABLE_9
DB74	BDF1F1		JSR 	LF1F1			;table look up v RPM/32
DB77	D640		LDAB 	BARO
DB79	C00D		SUBB 	#$0D
DB7B	2401		BCC 	LDB7E
DB7D	5F		CLRB 	
DB7E	11	 LDB7E:	CBA 	
DB7F	2501		BCS 	LDB82
DB81	17		TBA 	
DB82	8F7C4005 LDB82:BRCLR 	L007C,#$40,LDB8B
DB86	8004		SUBA 	#$04
DB88	2401		BCC 	LDB8B
DB8A	4F		CLRA 	
DB8B	915C	 LDB8B:	CMPA 	MAPX256			; 8-bit=MAP/5 
DB8D	2205		BHI 	LDB94
DB8F	037C40		OIM 	L007C#$40
DB92	200E		BRA 	LDBA2
DB94	027CBF	 LDB94:AIM 	L007C#$BF
DB97	8650		LDAA 	#$50
DB99	8F070802	BRCLR 	PORT4,#R302,LDB9F	; AT/MT config
DB9D	8678		LDAA 	#$78
DB9F	B7013F	 LDB9F:	STAA 	L013F
DBA2	CED255	 LDBA2:	LDX 	#TABLE_10
DBA5	BDF1F1		JSR 	LF1F1			; table look up v RPM/32
DBA8	8F7F8005	BRCLR 	L007F,#$80,LDBB1	
DBAC	8002		SUBA 	#$02
DBAE	2401		BCC 	LDBB1
DBB0	4F		CLRA 	
DBB1	027F7F	 LDBB1:	AIM 	L007F,#$7F
DBB4	916F		CMPA 	TPSA			; get TPSA
DBB6	2203		BHI 	LDBBB
DBB8	037F80		OIM 	L007F#$80
DBBB	8F810321 LDBBB:BRCLR 	L0081,#$03,LDBE0
DBBF	02C00F		AIM 	L00C0#$0F
DBC2	966C		LDAA 	WTS_RAW2		; wts
DBC4	8172		CMPA 	#$72			; approx 90C
DBC6	2503		BCS 	LDBCB
DBC8	03C080		OIM 	L00C0#$80
DBCB	814C	 LDBCB:CMPA 	#$4C
DBCD	2503		BCS 	LDBD2
DBCF	03C040		OIM 	L00C0#$40
DBD2	814C	 LDBD2:CMPA 	#$4C
DBD4	2503		BCS 	LDBD9
DBD6	03C020		OIM 	L00C0#$20
DBD9	8172	 LDBD9:CMPA 	#$72
DBDB	2503		BCS 	LDBE0
DBDD	03C010		OIM 	L00C0#$10
DBE0	CE0100	 LDBE0:LDX 	#$0100
DBE3	877D1004	BRSET 	L007D,#$10,LDBEB
DBE7	861E		LDAA 	#$1E
DBE9	A751		STAA 	$51,X
DBEB	A651	 LDBEB:LDAA 	$51,X
DBED	2611		BNE 	LDC00
DBEF	A613		LDAA 	$13,X
DBF1	260D		BNE 	LDC00
DBF3	96F4		LDAA 	L00F4
DBF5	2609		BNE 	LDC00
DBF7	87D20105	BRSET 	L00D2,#$01,LDC00	;msg status?
DBFB	0297BF		AIM 	L0097#$BF
DBFE	2003		BRA 	LDC03
DC00	039740	 LDC00:OIM 	L0097#$40
DC03	87788004 LDC03:BRSET 	L0078,#$80,LDC0B
;
;
; Set up L0081 from here? It’s a long routine!
;

DC07	8600		LDAA 	#$00
DC09	A72B		STAA 	$2B,X
DC0B	8F782004 LDC0B:BRCLR 	L0078,#$20,LDC13
DC0F	8610		LDAA 	#$10
DC11	A737		STAA 	$37,X
DC13	0297EF	 LDC13:	AIM 	L0097#$EF
DC16	877D0206	BRSET 	L007D,#$02,LDC20
DC1A	8F7A2017	BRCLR 	L007A,#$20,LDC35
DC1E	2012		BRA 	LDC32
DC20	87D20104 LDC20:BRSET 	L00D2,#$01,LDC28
DC24	877D0406	BRSET 	L007D,#$04,LDC2E
DC28	8F7A0809 LDC28:BRCLR 	L007A,#$08,LDC35
DC2C	2004		BRA 	LDC32
DC2E	8F7A0403 LDC2E:BRCLR 	L007A,#$04,LDC35
DC32	039710	 LDC32:OIM 	L0097#$10
DC35	87834004 LDC35:BRSET 	L0083,#$40,LDC3D
DC39	A62A		LDAA 	$2A,X			; whats this ????
DC3B	2605		BNE 	LDC42
DC3D	8601	 LDC3D:LDAA 	#$01				; 
DC3F	7EDD77		JMP 	LDD77			; set L0081 = $01
DC42	8F794009 LDC42:BRCLR 	L0079,#$40,LDC4F
DC46	877A0105	BRSET 	L007A,#$01,LDC4F
DC4A	8602		LDAA 	#$02
DC4C	7EDD29		JMP 	LDD29
DC4F	8F7A044E LDC4F:BRCLR 	L007A,#$04,LDCA1
DC53	D650		LDAB 	RPM_3125		; get RPM/32
DC55	F1D4BE		CMPB 	LD4BE				
DC58	2404		BCC 	LDC5E
DC5A	8F810443	BRCLR 	L0081,#$04,LDCA1
DC5E	87820604 LDC5E:BRSET 	L0082,#$06,LDC66
DC62	877C012B	BRSET 	L007C,#$01,LDC91
DC66	8F788027 LDC66:BRCLR 	L0078,#$80,LDC91
DC6A	87070810	BRSET 	PORT4,#R302,LDC7E	; AT/MT config
DC6E	E62B		LDAB	$A2,X
DC70	270C		BEQ 	LDC7E
DC72	8F810404	BRCLR 	L0081,#$04,LDC7A
DC76	87832004	BRSET 	L0083,#$20,LDC7E
DC7A	87B92013 LDC7A:BRSET 	L00B9,#$20,LDC91
DC7E	E64E	 LDC7E:	LDAB	$4E,X
DC80	CB06		ADDB	#$06
DC82	250D		BCS 	LDC91
DC84	8F971009	BRCLR 	L0097,#$10,LDC91
DC88	E613		LDAB	$13,X
DC8A	2605		BNE 	LDC91
DC8C	038320		OIM 	L0083#$20
DC8F	2017		BRA 	LDCA8
DC91	8782060C LDC91:BRSET 	L0082,#$06,LDCA1
DC95	8F7D0408	BRCLR 	L007D,#$04,LDCA1
DC99	877C2004	BRSET 	L007C,#$20,LDCA1
DC9D	E63E		LDAB	$3E,X
DC9F	2704		BEQ 	LDCA5
DCA1	8F7A1008 LDCA1:BRCLR 	L007A,#$10,LDCAD
DCA5	0283DF	 LDCA5:	AIM 	L0083#$DF
DCA8	8604	 LDCA8:LDAA 	#$04
DCAA	7EDD29		JMP 	LDD29
DCAD	8F82060C LDCAD:BRCLR 	L0082,#$06,LDCBD
DCB1	8680		LDAA 	#$80
DCB3	87823038	BRSET 	L0082,#$30,LDCEF
DCB7	8F7F8034	BRCLR 	L007F,#$80,LDCEF
DCBB	2062		BRA 	LDD1F
DCBD	D678	 LDCBD:	LDAB 	L0078
DCBF	C486		ANDB 	#$86
DCC1	C184		CMPB	#$84
DCC3	2724		BEQ 	LDCE9
DCC5	E654		LDAB	$54,X
DCC7	261C		BNE 	LDCE5
DCC9	D6D9		LDAB 	TFSTART
DCCB	CB5D		ADDB	#$5D
DCCD	2516		BCS 	LDCE5			; branch if < 3 minutes from start?
DCCF	7EFFCF		JMP 	LFFCF			; TFSTRT+n rtn to LDCD3
;
DCD2	01		NOP	
DCD3	2410		BCC 	LDCE5
DCD5	8782300C	BRSET 	L0082,#$30,LDCE5
DCD9	877F0208	BRSET 	L007F,#$02,LDCE5
DCDD	87810804	BRSET 	L0081,#$08,LDCE5
DCE1	E63F		LDAB	$3F,X
DCE3	2608		BNE 	LDCED
DCE5	8F7C4004 LDCE5:BRCLR 	L007C,#$40,LDCED
DCE9	8608	 LDCE9:	LDAA 	#$08
DCEB	203C		BRA 	LDD29
;
; clear A
;
DCED	8600	 LDCED:	LDAA 	#$00
DCEF	E62D	 LDCEF:	LDAB	$2D,X
DCF1	262C		BNE 	LDD1F
DCF3	87824028	BRSET 	L0082,#$40,LDD1F
DCF7	E654		LDAB	$54,X
DCF9	2706		BEQ 	LDD01
DCFB	8F7D0120	BRCLR 	L007D,#$01,LDD1F
DCFF	200A		BRA 	LDD0B
DD01	877E0806 LDD01:BRSET 	L007E,#$08,LDD0B
;
;O2 sensor ??
;
DD05	D6D9		LDAB 	TFSTART
DD07	CB0D		ADDB	#$0D	
DD09	2514		BCS 	LDD1F			; bra if <26 seconds from start
DD0B	8F951010 LDD0B:BRCLR 	O2STAT,#$10,LDD1F
DD0F	D6F4		LDAB 	L00F4
DD11	270A		BEQ 	LDD1D
DD13	87811006	BRSET 	L0081,#$10,LDD1D
DD17	D674		LDAB 	L0074
DD19	C12E		CMPB	#$2E
DD1B	2502		BCS 	LDD1F
DD1D	8A10	 LDD1D:	ORAA 	#$10
DD1F	8F788006 LDD1F:BRCLR 	L0078,#$80,LDD29
DD23	877A0202	BRSET 	L007A,#$02,LDD29
DD27	8A20		ORAA 	#$20
DD29	8508	 LDD29:	BITA 	#$08
DD2B	264A		BNE 	LDD77			
DD2D	87820646	BRSET 	L0082,#$06,LDD77	
DD31	8F800242	BRCLR 	L0080,#$02,LDD77	
DD35	D691		LDAB 	L0091
DD37	2604		BNE 	LDD3D
DD39	8F7B803A	BRCLR 	L007B,#$80,LDD77	
DD3D	87C08006 LDD3D:BRSET 	L00C0,#$80,LDD47
DD41	8F808032	BRCLR 	L0080,#$80,LDD77	
DD45	2008		BRA 	LDD4F
DD47	8F7D082C LDD47:BRCLR 	L007D,#$08,LDD77	; write L0081
DD4B	87808014	BRSET 	L0080,#$80,LDD63
DD4F	87823022 LDD4F:BRSET 	L0082,#$30,LDD75
DD53	87070806	BRSET 	PORT4,#R302,LDD5D	; AT/MT config
DD57	8F7F041C	BRCLR 	L007F,#$04,LDD77	; write L0081
DD5B	2018		BRA 	LDD75
DD5D	8FDC0416 LDD5D:BRCLR 	L00DC,#$04,LDD77	; write L0081
DD61	2012		BRA 	LDD75
DD63	8782300E LDD63:BRSET 	L0082,#$30,LDD75
DD67	87070806	BRSET 	PORT4,#R302,LDD71	; AT/MT config
DD6B	8F7F0808	BRCLR 	L007F,#$08,LDD77	; write L0081
DD6F	2004		BRA 	LDD75
DD71	8FDC0802 LDD71:BRCLR 	L00DC,#$08,LDD77	; write L0081
DD75	8A40	 LDD75:	ORAA 	#$40			
DD77	9781	 LDD77:	STAA 	L0081
;
DD79	8F81040A	BRCLR 	L0081,#$04,LDD87
DD7D	E62C		LDAB	$2C,X
DD7F	2610		BNE 	LDD91
DD81	C650		LDAB 	#$50
DD83	E72D		STAB 	$2D,X
DD85	200A		BRA 	LDD91
DD87	C650	 LDD87:	LDAB 	#$50
DD89	8F070802	BRCLR 	PORT4,#R302,LDD8F	; AT/MT config
DD8D	C628		LDAB 	#$28
DD8F	E72C	 LDD8F:	STAB 	$2C,X
DD91	CED2AA	 LDD91:	LDX 	#$D2AA
DD94	BDF1F1		JSR 	LF1F1			;table look up v RPM/32
DD97	877C8002	BRSET 	L007C,#$80,LDD9D
DD9B	8B05		ADDA 	#$05
DD9D	027C7F	 LDD9D:	AIM 	L007C#$7F
DDA0	915C		CMPA 	MAPX256			; 8-bit=MAP/5
DDA2	2203		BHI 	LDDA7
DDA4	037C80		OIM 	L007C#$80
DDA7	8F78800B LDDA7:BRCLR 	L0078,#$80,LDDB6
DDAB	863C		LDAA 	#$3C
DDAD	D650		LDAB 	RPM_3125		; get RPM/32
DDAF	C12B		CMPB	#$2B			; 1344 RPM
DDB1	2401		BCC 	LDDB4
DDB3	4F		CLRA 	
DDB4	978B	 LDDB4:	STAA 	L008B
DDB6	8F810404 LDDB6:BRCLR 	L0081,#$04,LDDBE
DDBA	C63C		LDAB 	#$3C
DDBC	D78C		STAB 	L008C
DDBE	87DA0205 LDDBE:BRSET 	L00DA,#$02,LDDC7
DDC2	03DA04		OIM 	L00DA#$04
DDC5	2010		BRA 	LDDD7
DDC7	8FDA040C LDDC7:BRCLR 	L00DA,#$04,LDDD7
DDCB	02DAFB		AIM 	L00DA#$FB
DDCE	CED336		LDX 	#TABLE_24
DDD1	BDF1E0		JSR 	LF1E0			;table look up v WTS limit to 105C to -30C
DDD4	B7013D		STAA 	L013D
;
; X is 100
;
DDD7	CE0100	 LDDD7:	LDX 	#$0100
DDDA	8F940217	BRCLR 	L0094,#$02,LDDF5
DDDE	A65F		LDAA 	$5F,X
DDE0	8778100A	BRSET 	L0078,#$10,LDDEE
DDE4	8B09		ADDA 	#$09
DDE6	2502		BCS 	LDDEA
DDE8	2A09		BPL	LDDF3
DDEA	8680	 LDDEA:	LDAA 	#$80
DDEC	2005		BRA 	LDDF3
DDEE	8009	 LDDEE:	SUBA 	#$09
DDF0	2401		BCC 	LDDF3
DDF2	4F		CLRA 	
DDF3	A75F	 LDDF3:	STAA 	$5F,X
DDF5	8F951004 LDDF5:BRCLR 	O2STAT,#$10,LDDFD
DDF9	87950204	BRSET 	O2STAT,#$02,LDE01		; bra if rich??
DDFD	8F810404 LDDFD:BRCLR 	L0081,#$04,LDE05
DE01	86A0	 LDE01:	LDAA 	#$A0				; L0130=160
DE03	A730		STAA 	$30,X
DE05	02837F	 LDE05:	AIM 	L0083#$7F			; clear L0083 bit7
DE08	D66C		LDAB 	WTS_RAW2			; inverted wts
DE0A	87824049	BRSET 	L0082,#$40,LDE57
DE0E	8707081B	BRSET 	PORT4,#R302,LDE2D		; AT/MT config
DE12	A654		LDAA 	$54,X
DE14	2704		BEQ 	LDE1A
DE16	8FC0401B	BRCLR 	L00C0,#$40,LDE35
DE1A	C1D0	 LDE1A:	CMPB	#$D0				; approx. 70C
DE1C	2417		BCC 	LDE35
DE1E	87823013	BRSET 	L0082,#$30,LDE35
DE22	966F		LDAA 	TPSA				; get TPSA
DE24	8144		CMPA 	#$44				; test TPS angle = ?
DE26	250D		BCS 	LDE35
DE28	038380		OIM 	L0083#$80
DE2B	2008		BRA 	LDE35
DE2D	A654	 LDE2D:	LDAA 	$54,X
DE2F	270A		BEQ 	LDE3B
DE31	87C04006	BRSET 	L00C0,#$40,LDE3B
DE35	8613	 LDE35:	LDAA 	#$13
DE37	C19F		CMPB	#$9F			; approx. 35C
DE39	2004		BRA 	LDE3F
DE3B	860A	 LDE3B:	LDAA 	#$0A
DE3D	C17C		CMPB	#$7C				; approx. 20C
DE3F	2404	 LDE3F:	BCC 	LDE45
DE41	87810817	BRSET 	L0081,#$08,LDE5C
DE45	8F070808 LDE45:BRCLR 	PORT4,#R302,LDE51		; AT/MT config
DE49	8FDA0804	BRCLR 	L00DA,#$08,LDE51
DE4D	87F6FF0B	BRSET 	L00F6,#$FF,LDE5C
DE51	87810802 LDE51:BRSET 	L0081,#$08,LDE57
DE55	97DD		STAA 	L00DD
DE57	02DAF7	 LDE57:	AIM 	L00DA#$F7
DE5A	2003		BRA 	LDE5F
DE5C	03DA08	 LDE5C:OIM 	L00DA#$08
DE5F	8680	 LDE5F:LDAA 	#$80
DE61	87782015	BRSET 	L0078,#$20,LDE7A
DE65	8F940213	BRCLR 	L0094,#$02,LDE7C
DE69	A61D		LDAA 	$1D,X
DE6B	270F		BEQ 	LDE7C
DE6D	E654		LDAB	$54,X
DE6F	2604		BNE 	LDE75
DE71	8004		SUBA 	#$04
DE73	2002		BRA 	LDE77
DE75	8002	 LDE75:	SUBA 	#$02
DE77	2401	 LDE77:	BCC 	LDE7A
DE79	4F		CLRA 	
DE7A	A71D	 LDE7A:	STAA 	$1D,X
DE7C	8F810204 LDE7C:BRCLR 	L0081,#$02,LDE84
DE80	8632		LDAA 	#$32
DE82	A756		STAA 	$56,X
DE84	8778200B LDE84:BRSET 	L0078,#$20,LDE93
DE88	A656		LDAA 	$56,X
DE8A	2707		BEQ 	LDE93
DE8C	8F940203 	BRCLR 	L0094,#$02,LDE93
DE90	4A		DECA 	
DE91	A756		STAA 	$56,X
DE93	8F070808 LDE93:BRCLR 	PORT4,#R302,LDE9F	; AT/MT config
DE97	96FA		LDAA 	L00FA
DE99	2714		BEQ 	LDEAF
DE9B	C678		LDAB 	#$78
DE9D	2006		BRA 	LDEA5
DE9F	8778800C LDE9F:BRSET 	L0078,#$80,LDEAF
DEA3	C6C8		LDAB 	#$C8
DEA5	03DA40	 LDEA5:	OIM 	L00DA#$40
DEA8	02DA7F		AIM 	L00DA#$7F
DEAB	E73B		STAB 	$3B,X
DEAD	6F2F		CLR 	
DEAF	8F940133 LDEAF:BRCLR 	L0094,#$01,LDEE6
DEB3	A659		LDAA 	$59,X
DEB5	2703		BEQ 	LDEBA
DEB7	4A		DECA 	
DEB8	262A		BNE 	LDEE4
DEBA	A618	 LDEBA:	LDAA 	$18,X
DEBC	8B03		ADDA 	#$03
DEBE	915C		CMPA 	MAPX256			; 8-bit=MAP/5
DEC0	79011E		ROL 	L011E
DEC3	965C		LDAA 	MAPX256			; 8-bit=MAP/5
DEC5	A718		STAA 	$18,X
DEC7	A61E		LDAA 	$1E,X
DEC9	8403		ANDA 	#$03
DECB	8103		CMPA 	#$03
DECD	250D		BCS 	LDEDC
DECF	03DA80		OIM 	L00DA#$80
DED2	8678		LDAA 	#$78
DED4	8F070802	BRCLR 	PORT4,#R302,LDEDA	; AT/MT config
DED8	863C		LDAA 	#$3C
DEDA	A72F	 LDEDA:	STAA 	$2F,X	
DEDC	8620	 LDEDC:	LDAA 	#$20
DEDE	8F070802	BRCLR 	PORT4,#R302,LDEE4	; AT/MT config
DEE2	8606		LDAA 	#$06
DEE4	A759	 LDEE4:	STAA 	$59,X
;
;
;
;
;02 status
;current O2 status is built in C1 then inverted and copied to O2sense
;
DEE6	D695	 LDEE6:	LDAB 	O2STAT			; B is present status
DEE8	7F00C1		CLR 	L00C1			; C1 is a temp register
DEEB	87810319	BRSET 	L0081,#$03,LDF08	; just invert C1
DEEF	A63A		LDAA 	$31,X			; is this a counter?
DEF1	8B14		ADDA 	#$14			; timer time out?
DEF3	2513		BCS 	LDF08			; toggle C1
DEF5	03C140		OIM 	L00C1#$40		; not timed out?
DEF8	862E		LDAA 	#$2E			; 2E = 0.9V
DEFA	9174		CMPA 	L0074			; L0074 = previous O2 maybe??
DEFC	2203		BHI 	LDF01
DEFE	03C102		OIM 	L00C1#$02		; previous rich/lean?
DF01	915A	 LDF01:CMPA 	O2SENSE			; 0.9V – O2 sense
DF03	2203		BHI 	LDF08
DF05	03C101		OIM 	L00C1#$01		; current lean/rich?
DF08	D8C1	 LDF08:EORB 	L00C1			; toggle C1
DF0A	C502		BITB 	#$02			; test previous rich/lean?
DF0C	2703		BEQ 	LDF11
DF0E	03C108		OIM 	L00C1#$08			
DF11	C501	 LDF11:BITB 	#$01
DF13	2703		BEQ 	LDF18
DF15	03C104		OIM 	L00C1#$04
DF18	9695	 LDF18:	LDAA 	O2STAT
DF1A	84B0		ANDA 	#$B0			;clear O2 stat bits
DF1C	9AC1		ORAA 	L00C1			;set from C1
DF1E	9795		STAA 	O2STAT			;O2 status is set here only!!!!
DF20	8F810305	BRCLR 	L0081,#$03,LDF29
DF24	0295CF		AIM 	O2STAT,#$CF		;clear  bits 5,4
DF27	2034		BRA 	LDF5D
DF29	8F950403 LDF29:BRCLR 	O2STAT,#$04,LDF30
DF2D	039510		OIM 	O2STAT,#$10		;set O2 stat bit4
DF30	863C	 LDF30:	LDAA 	#$3C
DF32	8F950802	BRCLR 	O2STAT,#$08,LDF38
DF36	A750		STAA 	$50,X
DF38	87811005 LDF38:BRSET 	L0081,#$10,LDF41
DF3C	0295DF		AIM 	O2STAT,#$DF		;clear o2stat bit5
DF3F	201C		BRA 	LDF5D
DF41	87952005 LDF41:BRSET 	O2STAT,#$20,LDF4A
DF45	039520		OIM 	O2STAT,#$20
DF48	A750		STAA 	$50,X
DF4A	D65C	 LDF4A:	LDAB 	MAPX256			; 8-bit=MAP/5
DF4C	C136		CMPB	#$36 			; 270mBar
DF4E	2406		BCC 	LDF56
DF50	8F970202	BRCLR 	L0097,#$02,LDF56
DF54	A750		STAA 	$50,X
DF56	A650	 LDF56:	LDAA 	$50,X
DF58	2603		BNE 	LDF5D
DF5A	0295EF		AIM 	O2STAT,#$EF		; clear O2stat, bit4
DF5D	8F811004 LDF5D: BRCLR 	L0081,#$10,LDF65
DF61	8F950804 	BRCLR 	O2STAT,#$08,LDF69
DF65	8680	 LDF65:	LDAA 	#$80
DF67	97F2		STAA 	L00F2
DF69	8F811006 LDF69: BRCLR 	L0081,#$10,LDF73
DF6D	965A		LDAA 	O2SENSE
DF6F	813D		CMPA 	#$3D			; 1.12V – O2sense
DF71	2504		BCS 	LDF77			; O2 sense > 1.12V
DF73	8628	 LDF73:	LDAA 	#$28
DF75	A74F		STAA 	$4F,X
DF77	8F810211 LDF77: BRCLR 	L0081,#$02,LDF8C
DF7B	CED28B		LDX 	#TABLE_13A
DF7E	8F070803	BRCLR 	PORT4,#R302,LDF85	; AT/MT config
DF82	CED293		LDX 	#TABLE_13B 
DF85	BDF1E0	 LDF85:	JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
DF88	97F4		STAA 	L00F4
DF8A	2014		BRA 	LDFA0
DF8C	8F794004 LDF8C: BRCLR 	L0079,#$40,LDF94
DF90	872F0852	BRSET 	PORT6,#$08,LDFE6	; TO VSV
DF94	F6012E	 LDF94:	LDAB 	L012E
DF97	2607		BNE 	LDFA0
DF99	96F4		LDAA 	L00F4
DF9B	2703		BEQ 	LDFA0
DF9D	4A		DECA 	
DF9E	97F4		STAA 	L00F4
DFA0	96F4	 LDFA0:	LDAA 	L00F4
DFA2	7D0154		TST 	L0154
DFA5	2706		BEQ 	LDFAD
DFA7	8F7D011A	BRCLR 	L007D,#$01,LDFC5
DFAB	2004		BRA 	LDFB1
DFAD	8F7E0814 LDFAD: BRCLR 	L007E,#$08,LDFC5
DFB1	C6C8	 LDFB1:	LDAB 	#$C8
DFB3	877E4002	BRSET 	L007E,#$40,LDFB9
DFB7	C658		LDAB 	#$58
DFB9	87810808 LDFB9: BRSET 	L0081,#$08,LDFC5
DFBD	87788016	BRSET 	L0078,#$80,LDFD7
DFC1	8110	 LDFC1: CMPA 	#$10
DFC3	2212	 LDFC3: BHI 	LDFD7
DFC5	87070806 LDFC5: BRSET 	PORT4,#R302,LDFCF		; AT/MT config
DFC9	C61C		LDAB 	#$1C
DFCB	814F		CMPA 	#$4F
DFCD	2004		BRA 	LDFD3
DFCF	C61E	 LDFCF:	LDAB 	#$1E
DFD1	8146		CMPA 	#$46
DFD3	2302	 LDFD3:	BLS 	LDFD7
DFD5	C601		LDAB 	#$01
DFD7	87810208 LDFD7: BRSET 	L0081,#$02,LDFE3
DFDB	B6012E		LDAA 	L012E
DFDE	2703		BEQ 	LDFE3
DFE0	11		CBA 	
DFE1	2303		BLS 	LDFE6
DFE3	F7012E	 LDFE3:	STAB 	L012E
DFE6	5F	 LDFE6:	CLRB 	
DFE7	87812018	BRSET 	L0081,#$20,LE003
DFEB	8F7C0206	BRCLR 	L007C,#$02,LDFF5
DFEF	5C		INCB 	
DFF0	8F7C0401	BRCLR 	L007C,#$04,LDFF5
DFF4	5C		INCB 	
DFF5	8603	 LDFF5:	LDAA 	#$03
DFF7	3D		MUL 	
DFF8	8F7B0106	BRCLR 	L007B,#$01,LE002
DFFC	5C		INCB 	
DFFD	8F7B0201	BRCLR 	L007B,#$02,LE002
E001	5C		INCB 	
E002	5C	 LE002:	INCB 	
E003	8781800C LE003: BRSET 	L0081,#$80,LE013
E007	87800208	BRSET 	L0080,#$02,LE013
E00B	C107		CMPB	#$07
E00D	2502		BCS 	LE011
E00F	C003		SUBB 	#$03
E011	CB0A	 LE011: ADDB	#$0A
E013	9696	 LE013: LDAA 	L0096
E015	D796		STAB 	L0096
E017	11		CBA 	
E018	2742		BEQ 	LE05C
E01A	CE0162		LDX 	#$0162
E01D	D696		LDAB 	L0096
E01F	58		ASLB 	
E020	3A		ABX 	
E021	A601		LDAA 	$01,X
E023	5F		CLRB 	
E024	DDED		STD 	L00ED
E026	A600		LDAA 	$00,X
E028	262B		BNE 	LE055
E02A	87812027	BRSET 	L0081,#$20,LE055
E02E	8F800213	BRCLR 	L0080,#$02,LE045
E032	8780010F	BRSET 	L0080,#$01,LE045
E036	8F7C040B	BRCLR 	L007C,#$04,LE045
E03A	1A		XGDX 	
E03B	C006		SUBB 	#$06
E03D	1A		XGDX 	
E03E	A600		LDAA 	$00,X
E040	2613		BNE 	LE055
E042	C606		LDAB 	#$06
E044	3A		ABX 	
E045	877B020C LE045: BRSET 	L007B,#$02,LE055
E049	08		INX 	
E04A	08		INX 	
E04B	6D00		TST 	
E04D	2606		BNE 	LE055
E04F	877B0102	BRSET 	L007B,#$01,LE055
E053	08		INX 	
E054	08		INX 	
E055	A600	 LE055: LDAA 	$00,X
E057	97EC		STAA 	L00EC			; modified STFT?
E059	BDF0EB		JSR 	LF0EB			; zero ? and injpw
E05C	5F	 LE05C: CLRB 	
E05D	87811006	BRSET 	L0081,#$10,LE067
E061	8680		LDAA 	#$80
E063	97F3		STAA 	L00F3
E065	CA01		ORAB 	#$01
E067	87812002 LE067:BRSET 	L0081,#$20,LE06D
E06B	CA02		ORAB 	#$02
E06D	8FDA1002 LE06D:BRCLR 	L00DA,#$10,LE073
E071	CA04		ORAB 	#$04
E073	87970802 LE073:BRSET 	L0097,#$08,LE079
E077	CA08		ORAB 	#$08
E079	8F970402 LE079:BRCLR 	L0097,#$04,LE07F
E07D	CA10		ORAB 	#$10
E07F	8F781007 LE07F:BRCLR 	L0078,#$10,LE08A
E083	B6015F		LDAA 	L015F
E086	2702		BEQ 	LE08A
E088	CA40		ORAB 	#$40
E08A	96F6	 LE08A:LDAA 	L00F6
E08C	2604		BNE 	LE092
E08E	96FA		LDAA 	L00FA
E090	2702		BEQ 	LE094
E092	CA20	 LE092:ORAB 	#$20
E094	17	 LE094:TBA 	
E095	D8DB		EORB 	L00DB
E097	D4DB		ANDB 	L00DB
E099	97DB		STAA 	L00DB
E09B	C501		BITB 	#$01
E09D	2621		BNE 	LE0C0
E09F	C502		BITB 	#$02*
E0A1	270D		BEQ 	LE0B0
E0A3	9691		LDAA 	L0091
E0A5	2619		BNE 	LE0C0
E0A7	B6013C		LDAA 	L013C
E0AA	2614		BNE 	LE0C0
E0AC	8F974010	BRCLR 	L0097,#$40,LE0C0
E0B0	C55C	 LE0B0:BITB 	#$5C
E0B2	2704		BEQ 	LE0B8
E0B4	96E9		LDAA 	L00E9			; current CL correction?
E0B6	2A08		BPL	LE0C0
E0B8	C520	 LE0B8:BITB 	#$20
E0BA	2709		BEQ 	LE0C5
E0BC	87812005	BRSET 	L0081,#$20,LE0C5
;
; test all status to determine if closed loop is to be used ????
;
E0C0	CE8000	 LE0C0:LDX 	#$8000
E0C3	DFE9		STX 	L00E9			; L00E9 = $8000 (default)
E0C5	8F811069 LE0C5:BRCLR 	L0081,#$10,LE132
E0C9	87818065	BRSET 	L0081,#$80,LE132
E0CD	8744FF61	BRSET 	FCODES1,#$FF,LE132	;test all current fcodes
E0D1	8748FF5D	BRSET 	FCODES2,#$FF,LE132
E0D5	8782F659	BRSET 	L0082,#$F6,LE132
E0D9	8F780404	BRCLR 	L0078,#$04,LE0E1
E0DD	8F780251	BRCLR 	L0078,#$02,LE132
E0E1	8F7E014D LE0E1:BRCLR 	L007E,#$01,LE132
E0E5	877E0249	BRSET 	L007E,#$02,LE132
E0E9	877B0845	BRSET 	L007B,#$08,LE132
E0ED	8F7C8041	BRCLR 	L007C,#$80,LE132
E0F1	877B0404	BRSET 	L007B,#$04,LE0F9
E0F5	877C0839	BRSET 	L007C,#$08,LE132
E0F9	8781200E LE0F9:BRSET 	L0081,#$20,LE10B
E0FD	87788031	BRSET 	L0078,#$80,LE132
E101	8F781006	BRCLR 	L0078,#$10,LE10B
E105	966F		LDAA 	TPSA			; get TPSA
E107	810A		CMPA 	#$0A			; TPSA – 10degs
E109	2527		BCS 	LE132			; bra if TPSA<10degs
E10B	B6011C	 LE10B:LDAA 	L011C
E10E	2622		BNE 	LE132
E110	96F4		LDAA 	L00F4
E112	261E		BNE 	LE132
E114	87DA101A	BRSET 	L00DA,#$10,LE132
E118	87DB2016	BRSET 	L00DB,#$20,LE132
E11C	87970412	BRSET 	L0097,#$04,LE132
E120	8F781005	BRCLR 	L0078,#$10,LE129
E124	B6015F		LDAA 	L015F
E127	2609		BNE 	LE132
E129	B6014F	 LE129:LDAA 	L014F
E12C	2704		BEQ 	LE132
E12E	8F970205	BRCLR 	L0097,#$02,LE137
E132	0297DF	 LE132:AIM 	L0097#$DF		; clear L0097 bit5
E135	2069		BRA 	LE1A0
E137	87972006 LE137:BRSET 	L0097,#$20,LE141
E13B	039720		OIM 	L0097#$20		; set L0097 bit5
E13E	BDF0EB		JSR 	LF0EB			; zero ? and injpw
E141	8F97015B LE141:BRCLR 	L0097,#$01,LE1A0	; 
E145	0297FE		AIM 	L0097#$FE
E148	CE0162		LDX 	#$0162
E14B	D696		LDAB 	L0096
E14D	58		ASLB 	
E14E	3A		ABX 	
E14F	E600		LDAB	$00,X
E151	2625		BNE 	LE178
E153	D6EC		LDAB 	L00EC		; modified STFT ??
E155	2602		BNE 	LE159
E157	C680		LDAB 	#$80		; add A+B (signed)
E159	96E8	 LE159:LDAA 	STFT
E15B	3D		MUL 			
E15C	05		LSLD 			
E15D	C30080		ADDD 	#$0080		; result is in A
E160	CDCE7789	LDY 	#$7789		
E164	BDF29A		JSR 	LF29A	     	; compare A against limits passed in Y?
E167	97EC		STAA 	L00EC		; store in L00EC
E169	C680		LDAB 	#$80
E16B	ED00		STD 	
E16D	CC8000		LDD 	#$8000
E170	DDED		STD 	L00ED		; zero L00ED,EE
E172	DDE9		STD 	L00E9		; zero L00E9,EA
E174	97E8		STAA 	STFT		; zero STFT
E176	2028		BRA 	LE1A0
E178	C620	 LE178:LDAB 	#$20
E17A	96E8		LDAA 	STFT		; get STFT
E17C	8080		SUBA 	#$80		; test polarity
E17E	2503		BCS 	LE183		; 
E180	3D		MUL 			; STFT*128
E181	2006		BRA 	LE189
E183	40	 LE183:NEGA 			; invert STFT
E184	3D		MUL 			; nSTFT*128
E185	40		NEGA 	
E186	50		NEGB 	
E187	8200		SBCA 	#$00
E189	D3ED	 LE189: ADDD 	L00ED		; add to L00ED,EE
E18B	817A		CMPA 	#$7A
E18D	2403		BCC 	LE192
E18F	867A		LDAA 	#$7A		; limit to $7A00
E191	5F		CLRB 	
E192	8186	 LE192: CMPA 	#$86		
E194	2503		BCS 	LE199
E196	8686		LDAA 	#$86		; limit to $8600
E198	5F		CLRB 	
E199	DDED	 LE199: STD 	L00ED		; store in L00ED
E19B	C30080		ADDD 	#$0080
E19E	A701		STAA 	$01,X
;
E1A0	DCED	 LE1A0: LDD 	L00ED			; AB = L00ED,EE
E1A2	C30080		ADDD 	#$0080			; convert B to signed
E1A5	D6EC		LDAB 	L00EC			; overwrite with STFT working reg?
E1A7	2602		BNE 	LE1AB
E1A9	C680		LDAB 	#$80			; A*B (signed)
E1AB	3D	 LE1AB:	MUL 	
E1AC	05		LSLD 	
E1AD	C30080		ADDD 	#$0080			; result in A
E1B0	8F818002	BRCLR 	L0081,#$80,LE1B6	; use LTFT????
E1B4	8680		LDAA 	#$80
E1B6	97EB	 LE1B6:	STAA 	LTFT			; no zero LTFT
E1B8	8F810508	BRCLR 	L0081,#$05,LE1C4	; fuel cut ????
E1BC	CC0064	 LE1BC:	LDD 	#$0064			; injector dwell time
E1BF	DDFE		STD 	INJPWH
E1C1	7EE4EB		JMP 	LE4EB			; skip inj pw calcs
E1C4	8F810232 LE1C4:BRCLR 	L0081,#$02,LE1FA	; go to VE table look up
E1C8	CED224		LDX 	#TABLE_6
E1CB	BDF1E0		JSR 	LF1E0		; table look up v WTS limit to 105C to -30C
E1CE	36		PSHA 	
E1CF	964E		LDAA 	RPML			
E1D1	CDCE8020	LDY 	#$8020
E1D5	BDF2AA		JSR 	LIM2Y
E1D8	CED22C		LDX 	#TABLE_7		;table look up vs RPML ????
E1DB	BDF213		JSR 	LF213		; table look up
E1DE	36		PSHA 	
E1DF	9640		LDAA 	BARO		; get baro
E1E1	C6A0		LDAB 	#$A0
E1E3	3D		MUL 			; multiply by 160
E1E4	8B00		ADDA 	#$00		; set flags?
E1E6	33		PULB 	
E1E7	3D		MUL 			; now multiply by the WTS derived value
E1E8	05		LSLD 	
E1E9	2402		BCC 	LE1ED
E1EB	86FF		LDAA 	#$FF
E1ED	33	 LE1ED:	PULB 	
E1EE	3D		MUL 	
E1EF	05		LSLD 	
E1F0	2403		BCC 	LE1F5
E1F2	CCFFFF		LDD 	#$FFFF
E1F5	DDFC	 LE1F5:	STD 	L00FC		; store that correction in F5
E1F7	7EFEAD		JMP 	LFEAD
;
; do VE table look up
;
E1FA	DC5C	 LE1FA:	LDD 	MAPX256			; MAP 16-bit value
E1FC	04		LSRD 				 
E1FD	04		LSRD 				
E1FE	04		LSRD 	
E1FF	DDC1		STD 	L00C1		; mapx256 divided by 8
E201	C6D3		LDAB 	#$D3
E203	BDF124		JSR 	LF124
E206	DDFC		STD 	L00FC
E208	CDCEFF40	LDY 	#$FF40
E20C	BDF2DB		JSR 	LF2DB		; to do with RPM
E20F	D7C6		STAB 	L00C6
E211	CDCEFF61	LDY 	#$FF61
E215	BDF2E1		JSR 	LF2E1
E218	D7C7		STAB 	L00C7
E21A	CDCE1000	LDY 	#$1000
E21E	CED020		LDX 	#$D020		; fuel table/VE base address
E221	BDF199		JSR 	LF199		; table look up
E224	B7011B		STAA 	L011B
E227	8F81404A	BRCLR 	L0081,#$40,LE275
E22B	D6C6		LDAB 	L00C6
E22D	C1B0		CMPB	#$B0
E22F	2504		BCS 	LE235
E231	C6B0		LDAB 	#$B0
E233	D7C6		STAB 	L00C6
E235	D6C7	 LE235:LDAB 	L00C7
E237	C1E0		CMPB	#$E0
E239	2504		BCS 	LE23F
E23B	C6E0		LDAB 	#$E0
E23D	D7C7		STAB 	L00C7
E23F	CDCE0C00 LE23F:LDY 	#$0C00
E243	CED120		LDX 	#TABLE_4		
E246	BDF199		JSR 	LF199			; table look up
E249	36		PSHA 	
E24A	5F		CLRB 	
E24B	87788019	BRSET 	L0078,#$80,LE268
E24F	8F781013	BRCLR 	L0078,#$10,LE266
E253	8782300F	BRSET 	L0082,#$30,LE266
E257	966F		LDAA 	TPSA			; get TPSA
E259	8005		SUBA 	#$05
E25B	2401		BCC 	LE25E
E25D	4F		CLRA 	
E25E	C620	 LE25E:LDAB 	#$20
E260	3D		MUL 	
E261	1C0080		CPD 	#$0080
E264	2502		BCS 	LE268
E266	C680	 LE266:LDAB 	#$80
E268	32	 LE268:PULA 	
E269	3D		MUL 	
E26A	05		LSLD 	
E26B	40		NEGA 	
E26C	2707		BEQ 	LE275
E26E	F6011B		LDAB 	L011B
E271	3D		MUL 	
E272	B7011B		STAA 	L011B
E275	B6011B	 LE275:LDAA 	L011B
E278	BDF235		JSR 	LF235		; L00FC*A
E27B	04		LSRD 	
E27C	DDFC		STD 	L00FC
E27E	CE0100		LDX 	#$0100
E281	4F		CLRA 	
E282	02DAEF		AIM 	L00DA#$EF
E285	E654		LDAB	$54,X
E287	2730		BEQ 	LE2B9
E289	87DC402C	BRSET 	L00DC,#$40,LE2B9
E28D	87818028	BRSET 	L0081,#$80,LE2B9
E291	8F070806	BRCLR 	PORT4,#R302,LE29B		; AT/MT config
E295	D6FA		LDAB 	L00FA
E297	2620		BNE 	LE2B9
E299	2004		BRA 	LE29F
E29B	8F78801A LE29B:BRCLR 	L0078,#$80,LE2B9
E29F	E63B	 LE29F:	LDAB	$3B,X
E2A1	2716		BEQ 	LE2B9
E2A3	8FDA4012	BRCLR 	L00DA,#$40,LE2B9
E2A7	E62F		LDAB	$2F,X
E2A9	2609		BNE 	LE2B4
E2AB	8FDA800A	BRCLR 	L00DA,#$80,LE2B9
E2AF	02DA3F		AIM 	L00DA#$3F
E2B2	2005		BRA 	LE2B9
E2B4	03DA10	 LE2B4:	OIM 	L00DA#$10
E2B7	8613		LDAA 	#$13
E2B9	36	 LE2B9:	PSHA 	
E2BA	4F		CLRA 	
E2BB	8F78800B	BRCLR 	L0078,#$80,LE2CA
E2BF	87818807	BRSET 	L0081,#$88,LE2CA
E2C3	E62D		LDAB	$2D,X
E2C5	2703		BEQ 	LE2CA
E2C7	8694		LDAA 	#$94
E2C9	3D		MUL 	
E2CA	33	 LE2CA:	PULB 	
E2CB	11		CBA 	
E2CC	2401		BCC 	LE2CF
E2CE	17		TBA 	
E2CF	BDF242	 LE2CF:	JSR 	LF242
E2D2	96EB		LDAA 	LTFT
E2D4	8F811035	BRCLR 	L0081,#$10,LE30D
E2D8	8601		LDAA 	#$01			; LTFT increments ???
E2DA	8F788004	BRCLR 	L0078,#$80,LE2E2
E2DE	8F7A020E	BRCLR 	L007A,#$02,LE2F0
E2E2	8604	 LE2E2:	LDAA 	#$04
E2E4	8F7B1008	BRCLR 	L007B,#$10,LE2F0
E2E8	8604		LDAA 	#$04
E2EA	8F7B2002	BRCLR 	L007B,#$20,LE2F0
E2EE	8602		LDAA 	#$02
E2F0	D674	 LE2F0:	LDAB 	L0074
E2F2	C12E		CMPB	#$2E
E2F4	2501		BCS 	LE2F7
E2F6	40		NEGA 	
E2F7	5F	 LE2F7:	CLRB 	
E2F8	D3E9		ADDD 	L00E9
E2FA	C30080		ADDD 	#$0080
E2FD	97F3		STAA 	L00F3
E2FF	D6EB		LDAB 	LTFT		; get LTFT
E301	3D		MUL 			; LTFT + L00F3 (signed)
E302	05		LSLD 			; 
E303	C30080		ADDD 	#$0080		; result in A
E306	CDCE5AA6	LDY 	#$5AA6
E30A	BDF29A		JSR 	LF29A		; limit to values passed in Y?
E30D	BDF235	 LE30D:	JSR 	LF235		; L00FC*A
E310	966E		LDAA 	IAT_LIM		; get IAT 
E312	CDCEF313	LDY 	#$F313		; limit to approx. 125C down to very cold
E316	BDF2AA		JSR 	LIM2Y
E319	CED29B		LDX 	#TABLE_38	; IAT low temp correction??(<25C)
E31C	BDF216		JSR 	LF216		; table look up		
E31F	BDF235		JSR 	LF235		; do some maths (L00FC*A )
E322	CED273		LDX 	#TABLE_12A
E325	8F070803	BRCLR 	PORT4,#R302,LE32C	; AT/MT config
E329	CED27B		LDX 	#TABLE_12B
E32C	8F818807 LE32C:BRCLR 	L0081,#$88,LE337
E330	87811003	BRSET 	L0081,#$10,LE337
E334	CED283		LDX 	#TABLE_12C
E337	BDF1E0	 LE337:	JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
E33A	B7011C		STAA 	L011C
E33D	8F81882D	BRCLR 	L0081,#$88,LE36E
E341	87811029	BRSET 	L0081,#$10,LE36E
E345	8611		LDAA 	#$11
E347	8F81081B	BRCLR 	L0081,#$08,LE366
E34B	8611		LDAA 	#$11
E34D	8F7C4015	BRCLR 	L007C,#$40,LE366
E351	8617		LDAA 	#$17			; 
E353	D65C		LDAB 	MAPX256			; 8-bit=MAP/5
E355	C1A2		CMPB	#$A2			; 810mBar 
E357	240D		BCC 	LE366
E359	D640		LDAB 	BARO			; Get baro 
E35B	C00D		SUBB 	#$0D			; is it ?????
E35D	2401		BCC 	LE360			
E35F	5F		CLRB 	
E360	D15C	 LE360:	CMPB 	MAPX256			; 8-bit=MAP/5
E362	2302		BLS 	LE366			
E364	860C		LDAA 	#$0C
E366	B1011C	 LE366:	CMPA 	L011C
E369	2403		BCC 	LE36E
E36B	B6011C		LDAA 	L011C
E36E	BDF242	 LE36E:	JSR 	LF242			; now do domething with baro????
E371	87070808	BRSET 	PORT4,#R302,LE37D	; AT/MT config
E375	9691		LDAA 	L0091
E377	2704		BEQ 	LE37D
E379	87810805	BRSET 	L0081,#$08,LE382
E37D	96F4	 LE37D:	LDAA 	L00F4
E37F	BDF242		JSR 	LF242
E382	87800205 LE382:BRSET 	L0080,#$02,LE38B
E386	8686		LDAA 	#$86
E388	BDF235		JSR 	LF235			; L00FC*A
E38B	01	 LE38B:	NOP	
E38C	01		NOP	
E38D	01		NOP	
E38E	0297FB		AIM 	L0097#$FB
E391	8F070819	BRCLR 	PORT4,#R302,LE3AE	; AT/MT config
E395	87782015	BRSET 	L0078,#$20,LE3AE
E399	CED326		LDX 	#TABLE_22
E39C	BDF1E0		JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
E39F	F6011D		LDAB 	L011D
E3A2	2703		BEQ 	LE3A7
E3A4	039704		OIM 	L0097#$04
E3A7	3D	 LE3A7:	MUL 	
E3A8	C614		LDAB 	#$14
E3AA	3D		MUL 	
E3AB	BDF24C		JSR 	LF24C
E3AE	87070842 LE3AE:BRSET 	PORT4,#R302,LE3F4	; AT/MT config
E3B2	7EFFC1		JMP 	LFFC1
E3B5	01		NOP	
E3B6	966C		LDAA 	WTS_RAW2		
E3B8	8122		CMPA 	#$22			; very low temp!	
E3BA	240F		BCC 	LE3CB
E3BC	B60156		LDAA 	L0156
E3BF	270A		BEQ 	LE3CB
E3C1	87782006	BRSET 	L0078,#$20,LE3CB
E3C5	CC0B40		LDD 	#$0B40
E3C8	BDF24C		JSR 	LF24C
E3CB	B60154	 LE3CB:	LDAA 	L0154
E3CE	2724		BEQ 	LE3F4
E3D0	87788020	BRSET 	L0078,#$80,LE3F4
E3D4	8782301C	BRSET 	L0082,#$30,LE3F4
E3D8	966F		LDAA 	TPSA			; get TPSA
E3DA	813D		CMPA 	#$3D
E3DC	2416		BCC 	LE3F4
E3DE	9691		LDAA 	L0091
E3E0	2712		BEQ 	LE3F4
E3E2	B6013D		LDAA 	L013D
E3E5	270D		BEQ 	LE3F4
E3E7	CED32E		LDX 	#TABLE_23
E3EA	BDF1E0		JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
E3ED	5F		CLRB 	
E3EE	04		LSRD 	
E3EF	04		LSRD 	
E3F0	04		LSRD 	
E3F1	BDF24C		JSR 	LF24C
E3F4	86F3	 LE3F4:	LDAA 	#$F3
E3F6	8F070802	BRCLR 	PORT4,#R302,LE3FC	; AT/MT config
E3FA	8600		LDAA 	#$00
E3FC	87DA0818 LE3FC:BRSET 	L00DA,#$08,LE418
E400	8F070807	BRCLR 	PORT4,#R302,LE40B	; AT/MT config
E404	CED2E4		LDX 	#TABLE_17C
E407	8781080A	BRSET 	L0081,#$08,LE415
E40B	CED2D0	 LE40B:	LDX 	#TABLE_17A
E40E	8F838003	BRCLR 	L0083,#$80,LE415
E412	CED2DA		LDX 	#TABLE_17B
E415	BDF1E6	 LE415:	JSR 	LF1E6			; table look up v WTS limit to 75C to -30C
E418	97F8	 LE418:	STAA 	L00F8
E41A	87818059	BRSET 	L0081,#$80,LE477
E41E	96F9		LDAA 	L00F9
E420	85E0		BITA 	#$E0
E422	2607		BNE 	LE42B
E424	48		ASLA 	
E425	48		ASLA 	
E426	48		ASLA 	
E427	8180		CMPA 	#$80
E429	2502		BCS 	LE42D
E42B	8680	 LE42B:	LDAA 	#$80
E42D	91F6	 LE42D:	CMPA 	L00F6
E42F	2402		BCC 	LE433
E431	96F6		LDAA 	L00F6
E433	36	 LE433:	PSHA 	
E434	CED2C8		LDX 	#TABLE_16C
E437	87DA080A	BRSET 	L00DA,#$08,LE445
E43B	CED2B8		LDX 	#TABLE_16A
E43E	8F838003	BRCLR 	L0083,#$80,LE445
E442	CED2C0		LDX 	#TABLE_16B
E445	BDF1E0	 LE445:	JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
E448	8F07080B	BRCLR 	PORT4,#R302,LE457	; AT/MT config
E44C	87DA0807	BRSET 	L00DA,#$08,LE457
E450	8F810803	BRCLR 	L0081,#$08,LE457
E454	C6CC		LDAB 	#$CC
E456	3D		MUL 	
E457	C6FF	 LE457:	LDAB 	#$FF
E459	3D		MUL 	
E45A	04		LSRD 	
E45B	DDC1		STD 	L00C1
E45D	33		PULB 	
E45E	BDF124		JSR 	LF124
E461	BDF24C		JSR 	LF24C
E464	CED31E		LDX 	#TABLE_21
E467	BDF1E0		JSR 	LF1E0			;table look up v WTS limit to 105C to -30C
E46A	C61C		LDAB 	#$1C
E46C	3D		MUL 	
E46D	DDC1		STD 	L00C1
E46F	D6FA		LDAB 	L00FA
E471	BDF124		JSR 	LF124
E474	BDF255		JSR 	LF255
E477	8F781013 LE477:BRCLR 	L0078,#$10,LE48E
E47B	C612		LDAB 	#$12
E47D	B60154		LDAA 	L0154

E480	2702		BEQ 	LE484
E482	C61E		LDAB 	#$1E
E484	B6015F	 LE484:	LDAA 	L015F
E487	3D		MUL 	
E488	04		LSRD 	
E489	04		LSRD 	
E48A	04		LSRD 	
E48B	BDF24C		JSR 	LF24C
E48E	CED33E	 LE48E:	LDX 	#TABLE_25	; table base address
E491	BDF1FC		JSR 	LF1FC		; inj. compensation v BattVolts?
E494	C681		LDAB 	#$81		;				
E496	3D		MUL 			; 
E497	05		LSLD 			; (A*129)*2
E498	16		TAB 			; set up B
E499	DEFC		LDX 	L00FC		; and X
E49B	BDF122		JSR 	LF122		; to do 16x16 mult
E49E	05		LSLD 			; answer*2
E49F	2403		BCC 	LE4A4		; carry?
E4A1	CCFFFF		LDD 	#$FFFF
E4A4	DDC3	 LE4A4:	STD 	L00C3		; back up answer
E4A6	8302D0		SUBD 	#$02D0		; subtract 720
E4A9	2402		BCC 	LE4AD
E4AB	4F		CLRA 				
E4AC	5F		CLRB 	
E4AD	05	 LE4AD:	LSLD 	
E4AE	8105		CMPA 	#$05
E4B0	2503		BCS 	LE4B5
E4B2	CC0500		LDD 	#$0500
E4B5	CED34E	 LE4B5:	LDX 	#TABLE_27		;X v A ??
E4B8	BDF21F		JSR 	LF21F
E4BB	4F		CLRA 	
E4BC	D3C3		ADDD 	L00C3
E4BE	2403		BCC 	LE4C3
E4C0	CCFFFF		LDD 	#$FFFF
E4C3	DDC3	 LE4C3:	STD 	L00C3
E4C5	CE02A0		LDX 	#$02A0
E4C8	8781100B	BRSET 	L0081,#$10,LE4D7
E4CC	CE0348		LDX 	#$0348
E4CF	7D012D		TST 	L012D
E4D2	2703		BEQ 	LE4D7
E4D4	CE02B8		LDX 	#$02B8
E4D7	9CC3	 LE4D7:	CPX 	L00C3
E4D9	2308		BLS 	LE4E3
E4DB	1A		XGDX 	
E4DC	DDC3		STD 	L00C3
E4DE	039702		OIM 	L0097#$02		; set L0097 bit1
E4E1	2003		BRA 	LE4E6
E4E3	0297FD	 LE4E3: AIM 	L0097#$FD		; clear L0097 bit1
E4E6	BDF262	 LE4E6: JSR 	LF262			; correction for battery volts ??
E4E9	DDFE		STD 	INJPWH			; final injector pulsewidth?
;
;
;
E4EB	CED300	 LE4EB:	LDX 	#TABLE_19A
E4EE	8F070803	BRCLR 	PORT4,#R302,LE4F5	; AT/MT config
E4F2	CED308		LDX 	#TABLE_19B
E4F5	B60154	 LE4F5:	LDAA 	L0154
E4F8	2709		BEQ 	LE503
E4FA	87C04005	BRSET 	L00C0,#$40,LE503
E4FE	039780		OIM 	L0097#$80
E501	202C		BRA 	LE52F
E503	02977F	 LE503:	AIM 	L0097#$7F
E506	87070808	BRSET 	PORT4,#R302,LE512	; AT/MT config
E50A	9693		LDAA 	VSS
E50C	8101		CMPA 	#$01
E50E	250C		BCS 	LE51C
E510	2004		BRA 	LE516
E512	87782006 LE512:BRSET 	L0078,#$20,LE51C
E516	966F	 LE516:	LDAA 	TPSA			; get TPSA
E518	8144		CMPA 	#$44
E51A	2413		BCC 	LE52F
E51C	CED2F8	 LE51C:	LDX 	#TABLE_18B
E51F	8778100C	BRSET 	L0078,#$10,LE52F
E523	87070808	BRSET 	PORT4,#R302,LE52F	; AT/MT config
E527	CED2EE		LDX 	#TABLE_18A
E52A	BDF1E6		JSR 	LF1E6			; table look up v WTS limit to 75C to -30C
E52D	2003		BRA 	LE532
E52F	BDF1E0	 LE52F:	JSR 	LF1E0			; table look up v WTS limit to 105C to -30C
E532	87070807 LE532:	BRSET 	PORT4,#R302,LE53D	; AT/MT config
E536	D68C		LDAB 	L008C
E538	2703		BEQ 	LE53D
E53A	C673		LDAB 	#$73
E53C	3D		MUL 	
E53D	36	 LE53D:	PSHA 	
E53E	CED310		LDX 	#TABLE_20
E541	BDF1F1		JSR 	LF1F1			;table look up v RPM/32
E544	33		PULB 	
E545	3D		MUL 	
E546	DDC1		STD 	L00C1
E548	C681		LDAB 	#$81
E54A	BDF124		JSR 	LF124
E54D	DDC3		STD 	L00C3
E54F	BDF262		JSR 	LF262
E552	FD0100		STD 	L0100
E555	CE00B2		LDX 	#$00B2
E558	C601		LDAB 	#$01
E55A	BDD765		JSR 	LD765
E55D	CDCEFF48	LDY 	#$FF48
E561	BDF2DB		JSR 	LF2DB			; to do with RPM
E564	C110		CMPB	#$10
E566	2401		BCC 	LE569
E568	5F		CLRB 	
E569	C1E0	 LE569:	CMPB	#$E0
E56B	2302		BLS 	LE56F
E56D	C6F0		LDAB 	#$F0
E56F	D7C6	 LE56F:	STAB 	L00C6
E571	DC5C		LDD 	MAPX256			; MAP 16-bit value
E573	8F820603	BRCLR 	L0082,#$06,LE57A
E577	CCFFFF		LDD 	#$FFFF
E57A	CDCEFF69 LE57A:LDY 	#$FF69
E57E	BDF2E3		JSR 	LF2E3
E581	C110		CMPB	#$10	
E583	2401		BCC 	LE586
E585	5F		CLRB 	
E586	C1B0	 LE586:	CMPB	#$B0
E588	2302		BLS 	LE58C
E58A	C6C0		LDAB 	#$C0
E58C	D7C7	 LE58C:	STAB 	L00C7
E58E	CED390		LDX 	#$D390			; Base Ign Timing
E591	CDCE1040	LDY 	#$1040
E595	BDF199		JSR 	LF199			; table look up
E598	B70104		STAA 	L0104
E59B	8F81402A	BRCLR 	L0081,#$40,LE5C9
E59F	DCC6		LDD 	L00C6
E5A1	81B0		CMPA 	#$B0
E5A3	2502		BCS 	LE5A7
E5A5	86B0		LDAA 	#$B0
E5A7	8060	 LE5A7:SUBA 	#$60
E5A9	2401		BCC 	LE5AC
E5AB	4F		CLRA 	
E5AC	C1A0	 LE5AC:CMPB	#$A0
E5AE	2502		BCS 	LE5B2
E5B0	C6A0		LDAB 	#$A0
E5B2	C050	 LE5B2:	SUBB 	#$50
E5B4	2401		BCC 	LE5B7
E5B6	5F		CLRB 	
E5B7	DDC6	 LE5B7:	STD 	L00C6		
E5B9	CED460		LDX 	#TABLE_31		; not normally hit?
E5BC	CDCE0600	LDY 	#$0600
E5C0	BDF199		JSR 	LF199			; table look up
E5C3	BB0104		ADDA 	L0104
E5C6	B70104		STAA 	L0104
E5C9	8680	 LE5C9:	LDAA 	#$80
E5CB	8F780404	BRCLR 	L0078,#$04,LE5D3
E5CF	8F780234	BRCLR 	L0078,#$02,LE607
E5D3	8F788008 LE5D3:BRCLR 	L0078,#$80,LE5DF
E5D7	8F811004	BRCLR 	L0081,#$10,LE5DF
E5DB	87974004	BRSET 	L0097,#$40,LE5E3
E5DF	8F812024 LE5DF:BRCLR 	L0081,#$20,LE607
E5E3	5F	 LE5E3:	CLRB 	
E5E4	9652		LDAA 	RPM_2K_16
E5E6	904F		SUBA 	RPM_2K
E5E8	2402		BCC 	LE5EC
E5EA	5C		INCB 	
E5EB	40		NEGA 	
E5EC	D7C1	 LE5EC:	STAB 	L00C1
E5EE	C6B3		LDAB 	#$B3
E5F0	3D		MUL 	
E5F1	C30020		ADDD 	#$0020
E5F4	85C0		BITA 	#$C0
E5F6	2606		BNE 	LE5FE
E5F8	05		LSLD 	
E5F9	05		LSLD 	
E5FA	810E		CMPA 	#$0E
E5FC	2302		BLS 	LE600
E5FE	860E	 LE5FE:LDAA 	#$0E
E600	D6C1	 LE600:LDAB 	L00C1
E602	2701		BEQ 	LE605
E604	40		NEGA 	
E605	8B80	 LE605:	ADDA 	#$80
E607	B70106	 LE607:	STAA 	L0106
;
E60A	CED484		LDX 	#TABLE_32		; ignition timing retard
E60D	BDF1E6		JSR 	LF1E6			; table look up v WTS limit to 75C to -30C
E610	8F788008	BRCLR 	L0078,#$80,LE61C
E614	966C		LDAA 	WTS_RAW2		; wts
E616	81CA		CMPA 	#$CA			; >60C no added timing
E618	2502		BCS 	LE61C			
E61A	C680		LDAB 	#$80			; yes/no B=128
E61C	F70105	 LE61C:	STAB 	L0105			; L0105 = ignition WTS correction
;
E61F	9650		LDAA 	RPM_3125		; get RPM/31.25
E621	C64F		LDAB 	#$4F			; (*79 decimal)
E623	3D		MUL 	
E624	BDF281		JSR 	LF281			; divide double by 8
E627	C30080		ADDD 	#$0080			; add 128
E62A	97B5		STAA 	L00B5			; 1 for every 800rpm
;
E62C	CE0103		LDX 	#$0103			; counter ??
E62F	E601		LDAB	$01,X
E631	4F		CLRA 	
E632	CD1A		XGDY 	
E634	C680		LDAB 	#$80
E636	96D9		LDAA 	TFSTART			; get time from start
E638	8B73		ADDA 	#$73
E63A	2413		BCC 	LE64F			; branch if <3.8 mins since start 
E63C	B60154		LDAA 	L0154			; otherwise do this 
E63F	260E		BNE 	LE64F
E641	8781080A	BRSET 	L0081,#$08,LE64F	
E645	87788006	BRSET 	L0078,#$80,LE64F
E649	8F7A0202	BRCLR 	L007A,#$02,LE64F
E64D	C675		LDAB 	#$75			; post start timng????
E64F	CD3A	 LE64F:	ABY 	
E651	E602		LDAB	$02,X
E653	CD3A		ABY 	
E655	E603		LDAB	$03,X
E657	CD3A		ABY 	
E659	CD1A		XGDY 	
E65B	1C024E		CPD 	#$024E
E65E	2303		BLS 	LE663
E660	CC024E		LDD 	#$024E
E663	1C01CE	 LE663:	CPD 	#$01CE
E666	2403		BCC 	LE66B
E668	CC01CE		LDD 	#$01CE
E66B	830180	 LE66B:	SUBD 	#$0180
E66E	E700		STAB 	$00,X
E670	86EE		LDAA 	#$EE
E672	10		SBA 	
E673	97B0		STAA 	L00B0			; don’t know – time from start????
E675	9658		LDAA 	BATTV
E677	8080		SUBA 	#$80			; A = 9.375V-BattV
E679	2401		BCC 	LE67C			; bra if battV < 9.375V	
E67B	4F		CLRA 	
E67C	CED48E	 LE67C:	LDX 	#TABLE_33
E67F	BDF216		JSR 	LF216			; table look up
E682	D7B1		STAB 	L00B1			; ignition correction for battV
E684	CE0100		LDX 	#$0100
E687	9640		LDAA 	BARO			; Air density correction
E689	CDCEBD7D	LDY 	#$BD7D			; limits
E68D	BDF2AA		JSR 	LIM2Y
E690	8040		SUBA 	#$40
E692	40		NEGA 	
E693	C690		LDAB 	#$90
E695	3D		MUL 	
E696	A710		STAA 	$10,X			; L0110 = Air density correction
;
E698	9681		LDAA 	L0081
E69A	8403		ANDA 	#$03
E69C	2624		BNE 	LE6C2
E69E	8604		LDAA 	#$04
E6A0	8782061E	BRSET 	L0082,#$06,LE6C2
E6A4	8608		LDAA 	#$08
E6A6	87D20118	BRSET 	L00D2,#$01,LE6C2
E6AA	D678		LDAB 	L0078
E6AC	87070806	BRSET 	PORT4,#R302,LE6B6	; AT/MT config
E6B0	C41E		ANDB 	#$1E
E6B2	C102		CMPB	#$02
E6B4	2004		BRA 	LE6BA
E6B6	C43E	 LE6B6:	ANDB 	#$3E
E6B8	C122		CMPB	#$22
E6BA	2604	 LE6BA:	BNE 	LE6C0
E6BC	877D1002	BRSET 	L007D,#$10,LE6C2
E6C0	8610	 LE6C0:	LDAA 	#$10
E6C2	D6B7	 LE6C2:	LDAB 	L00B7
E6C4	97B7		STAA 	L00B7
E6C6	02B87F		AIM 	L00B8#$7F
E6C9	C502		BITB 	#$02
E6CB	2707		BEQ 	LE6D4
E6CD	8510		BITA 	#$10
E6CF	2703		BEQ 	LE6D4
E6D1	03B880		OIM 	L00B8#$80
E6D4	C508	 LE6D4:	BITB 	#$08
E6D6	2609		BNE 	LE6E1
E6D8	8FB70805	BRCLR 	L00B7,#$08,LE6E1
E6DC	CC5000		LDD 	#$5000
E6DF	200E		BRA 	LE6EF
E6E1	C510	 LE6E1:	BITB 	#$10
E6E3	260D		BNE 	LE6F2
E6E5	8FB71009	BRCLR 	L00B7,#$10,LE6F2
E6E9	03B907		OIM 	L00B9#$07
E6EC	BDF115		JSR 	LF115
E6EF	BDF0FE	 LE6EF:	JSR 	LF0FE			; store D 3 times from 0,X
E6F2	87C0100B LE6F2:BRSET 	L00C0,#$10,LE701
E6F6	96D9		LDAA 	TFSTART
E6F8	8BFF		ADDA 	#$FF			; 0secs or 512secs ???
E6FA	2405		BCC 	LE701
E6FC	038310		OIM 	L0083#$10		; roll over????
E6FF	2013		BRA 	LE714
E701	8F83100F LE701:BRCLR 	L0083,#$10,LE714
E705	8778100B	BRSET 	L0078,#$10,LE714
E709	0283EF		AIM 	L0083#$EF
E70C	BDF115		JSR 	LF115
E70F	ED09		STD 	
E711	03B904		OIM 	L00B9#$04
E714	8FB88003 LE714:BRCLR 	L00B8,#$80,LE71B
E718	03B840		OIM 	L00B8#$40
E71B	8F780404 LE71B:BRCLR 	L0078,#$04,LE723
E71F	8F780214	BRCLR 	L0078,#$02,LE737
E723	8FB71010 LE723:BRCLR 	L00B7,#$10,LE737
E727	A64E		LDAA 	$4E,X
E729	8B1E		ADDA 	#$1E
E72B	250D		BCS 	LE73A
E72D	9651		LDAA 	RPM_2K_B		; RPM high res to 2000rpm
E72F	81D9		CMPA 	#$D9
E731	2404		BCC 	LE737
E733	87788003	BRSET 	L0078,#$80,LE73A
E737	02B8BF	 LE737:	AIM 	L00B8#$BF
E73A	8FB6100B LE73A:BRCLR 	L00B6,#$10,LE749
E73E	C650		LDAB 	#$50
E740	87781002	BRSET 	L0078,#$10,LE746
E744	C678		LDAB 	#$78,Y
E746	BDF0F7	 LE746:	JSR 	LF0F7
E749	8FB60805 LE749:BRCLR 	L00B6,#$08,LE752
E74D	C628		LDAB 	#$28
E74F	BDF0F7		JSR 	LF0F7
E752	8F07080F LE752:BRCLR 	PORT4,#R302,LE765	; AT/MT config
E756	8FB6200B	BRCLR 	L00B6,#$20,LE765
E75A	C664		LDAB 	#$64
E75C	8F782002	BRCLR 	L0078,#$20,LE762
E760	C63C		LDAB 	#$3C
E762	BDF0F7	 LE762:	JSR 	LF0F7
E765	C650	 LE765:	LDAB 	#$50
E767	8F788008	BRCLR 	L0078,#$80,LE773
E76B	872F0804	BRSET 	PORT6,#$08,LE773	; TO VSV
E76F	87B71802	BRSET 	L00B7,#$18,LE775
E773	E734	 LE773:	STAB 	$34,X
E775	A65A	 LE775:	LDAA 	$5A,X	
E777	2719		BEQ 	LE792
E779	D691		LDAB 	L0091
E77B	2615		BNE 	LE792
E77D	8F940811	BRCLR 	L0094,#$08,LE792
E781	4A		DECA 	
E782	81F9		CMPA 	#$F9
E784	240A		BCC 	LE790
E786	E65B		LDAB	$5B,X
E788	CB02		ADDB	#$02
E78A	2402		BCC 	LE78E
E78C	C6FF		LDAB 	#$FF
E78E	E75B	 LE78E:	STAB 	$5B,X	
E790	A75A	 LE790:	STAA 	$5A,X
E792	C650	 LE792:	LDAB 	#$50
E794	8FB70802	BRCLR 	L00B7,#$08,LE79A
E798	C68C		LDAB 	#$8C
E79A	8FB9200A LE79A:BRCLR 	L00B9,#$20,LE7A8
E79E	86FF		LDAA 	#$FF
E7A0	A75A		STAA 	$5A, X
E7A2	8630		LDAA 	#$30
E7A4	A75B		STAA 	$5B, X
E7A6	200A		BRA 	LE7B2
E7A8	A635	 LE7A8:	LDAA 	$35,X	
E7AA	2708		BEQ 	LE7B4
;
E7AC	9650		LDAA 	RPM_3125		; get RPM/32
E7AE	A15B		CMPA 				; test against ???
E7B0	2502		BCS 	LE7B4
E7B2	E735	 LE7B2:	STAB 	$35,X			; ????
;
; Target Idle calculations
; Hdr15 value is in L015D
;
E7B4	C666	 LE7B4:	LDAB 	#$66			; this should be 800rpm
E7B6	8FB70814	BRCLR 	L00B7,#$08,LE7CE
E7BA	8FD20122	BRCLR 	L00D2,#$01,LE7E0
E7BE	E65D		LDAB	$5D,X			; from scan tool
E7C0	C140		CMPB	#$40			; (64*7.8125) = 500rpm ????
E7C2	2402		BCC 	LE7C6
E7C4	C640		LDAB 	#$40
E7C6	C1E6	 LE7C6:	CMPB	#$E6				; (230*7.8125) = 1800rpm
E7C8	2302		BLS 	LE7CC
E7CA	C6E6		LDAB 	#$E6				; tidle upper limit?
E7CC	2012	 LE7CC:	BRA 	LE7E0				
E7CE	8F070804 LE7CE:BRCLR 	PORT4,#R302,LE7D6		; AT/MT config
E7D2	8F78200A	BRCLR 	L0078,#$20,LE7E0
E7D6	87781004 LE7D6:BRSET 	L0078,#$10,LE7DE
E7DA	8FB84002	BRCLR 	L00B8,#$40,LE7E0
E7DE	C680	 LE7DE:	LDAB 	#$80,X
E7E0	D7D5	 LE7E0:	STAB 	TIDLE				; default?
;
E7E2	CEFFB1		LDX 	#$FFB1				; Target Idle AC/no AC?
E7E5	87D2010B	BRSET 	L00D2,#$01,LE7F4
E7E9	87B7081E	BRSET 	L00B7,#$08,LE80B		; load directly from table
E7ED	8F831003	BRCLR 	L0083,#$10,LE7F4
E7F1	CEFFB9		LDX 	#$FFB9				; Target Idle AC/no AC?
E7F4	8F070808 LE7F4:BRCLR 	PORT4,#R302,LE800		; AT/MT config
E7F8	87782004	BRSET 	L0078,#$20,LE800
E7FC	08		INX 					; AT idle up = X+4?
E7FD	08		INX 	
E7FE	08		INX 	
E7FF	08		INX 
E800	8F781002 LE800:BRCLR 	L0078,#$10,LE806
E804	08		INX 	
E805	08		INX 	
E806	8F780801 LE806:BRCLR 	L0078,#$08,LE80B
E80A	08		INX 	
E80B	E600	 LE80B:	LDAB	0, X	
E80D	CE0100		LDX 	#$0100
E810	E70D		STAB 	$0D,X				; 10D = target idle??
E812	8FB7184B	BRCLR 	L00B7,#$18,LE861
E816	8782304D	BRSET 	L0082,#$30,LE867
E81A	A628		LDAA 	$28,X				; related to TPS
E81C	2649		BNE 	LE867
E81E	8F940249	BRCLR 	L0094,#$02,LE86B
E822	4F		CLRA 	
E823	5F		CLRB 	
E824	8778800F	BRSET 	L0078,#$80,LE837
E828	966F		LDAA 	TPSA				; get TPSA
E82A	8120		CMPA 	#$20
E82C	2502		BCS 	LE830
E82E	8620		LDAA 	#$20
E830	CED497	 LE830:LDX 	#TABLE_34
E833	BDF210		JSR 	LF210				; table look up
E836	5F		CLRB 	
E837	CE0100	 LE837:	LDX 	#$0100
E83A	DDC1		STD 	L00C1
E83C	1E11		CMPD 	$11,X
E83E	2310		BLS 	LE850
E840	EC11		LDD 	$11,X
E842	C32100		ADDD 	#$2100
E845	2403		BCC 	LE84A
E847	CCFFFF		LDD 	#$FFFF
E84A	1DC1	 LE84A:	CPD 	L00C1
E84C	2511		BCS 	LE85F
E84E	200D		BRA 	LE85D
E850	EC11	 LE850:	LDD 	
E852	830900		SUBD 	#$0900
E855	2402		BCC 	LE859
E857	4F		CLRA 	
E858	5F		CLRB 	
E859	1DC1	 LE859:	CPD 	L00C1
E85B	2402		BCC 	LE85F
E85D	DCC1	 LE85D:	LDD 	L00C1
E85F	2008	 LE85F:	BRA 	LE869
E861	CC5000	 LE861:	LDD 	#$5000
E864	BDF0FE		JSR 	LF0FE		; store D 3 times from 0,X
E867	4F	 LE867:	CLRA 	
E868	5F		CLRB 	
E869	ED11	 LE869:	STD 	
E86B	02B8CF	 LE86B:	AIM 	L00B8#$CF
E86E	87781017	BRSET 	L0078,#$10,LE889
E872	8F070804	BRCLR 	PORT4,#R302,LE87A		; AT/MT config
E876	8F78200F	BRCLR 	L0078,#$20,LE889
E87A	8FB8400B LE87A:BRCLR 	L00B8,#$40,LE889
E87E	03B810		OIM 	L00B8#$10
E881	A613		LDAA 	$13, X
E883	A10F		CMPA 	
E885	2406		BCC 	LE88D
E887	2007		BRA 	LE890
E889	A613	 LE889:	LDAA 	$13, X
E88B	2703		BEQ 	LE890
E88D	03B820	 LE88D:	OIM 	L00B8#$20
E890	D6B9	 LE890:	LDAB 	L00B9
E892	02B93F		AIM 	L00B9#$3F
E895	A634		LDAA 	$34,X
E897	2616		BNE 	LE8AF
E899	9691		LDAA 	L0091
E89B	2612		BNE 	LE8AF
E89D	A635		LDAA 	$35,X
E89F	260E		BNE 	LE8AF
E8A1	87B82004	BRSET 	L00B8,#$20,LE8A9
E8A5	A651		LDAA 	$51,X	
E8A7	2703		BEQ 	LE8AC
E8A9	03B940	 LE8A9:	OIM 	L00B9#$40
E8AC	03B980	 LE8AC:	OIM 	L00B9#$80
E8AF	8FB7102D LE8AF:BRCLR 	L00B7,#$10,LE8E0
E8B3	C580		BITB 	#$80
E8B5	2729		BEQ 	LE8E0
E8B7	87B98025	BRSET 	L00B9,#$80,LE8E0
E8BB	CE0107		LDX 	#$0107
E8BE	87B90206	BRSET 	L00B9,#$02,LE8C8
E8C2	BDF105		JSR 	LF105
E8C5	03B902		OIM 	L00B9#$02
E8C8	08	 LE8C8:	INX 	
E8C9	08		INX 	
E8CA	87B90406	BRSET 	L00B9,#$04,LE8D4
E8CE	BDF105		JSR 	LF105
E8D1	03B904		OIM 	L00B9#$04
E8D4	08	 LE8D4:	INX 	
E8D5	08		INX 	
E8D6	87B90106	BRSET 	L00B9,#$01,LE8E0
E8DA	BDF105		JSR 	LF105
E8DD	03B901		OIM 	L00B9#$01
E8E0	8778080D LE8E0:BRSET 	L0078,#$08,LE8F1
E8E4	FC0107		LDD 	L0107
E8E7	8F781003	BRCLR 	L0078,#$10,LE8EE
E8EB	FC0109		LDD 	L0109
E8EE	FD010B	 LE8EE:STD 	L010B
E8F1	87B7080E	 LE8F1:BRSET 	L00B7,#$08,LE903
E8F5	CE010B		LDX 	#$010B
E8F8	8778080A	BRSET 	L0078,#$08,LE906
E8FC	CE0109		LDX 	#$0109
E8FF	87781003	BRSET 	L0078,#$10,LE906
E903	CE0107	 LE903:LDX 	#$0107
E906	EC00	 LE906:LDD 	
E908	DDC3		STD 	L00C3
E90A	8FB9803B	BRCLR 	L00B9,#$80,LE949
E90E	B60132		LDAA 	L0132
E911	2639		BNE 	LE94C
E913	03B908		OIM 	L00B9#$08
;
;
; IAC calculations 
;
E916	96D5		LDAA 	TIDLE
E918	9051		SUBA 	RPM_2K_B		; RPM high res to 2000rpm
E91A	2404		BCC 	LE920			
E91C	40		NEGA 	
E91D	02B9F7		AIM 	L00B9,#$F7
E920	5F	 LE920:	CLRB 	
E921	8FB70804	BRCLR 	L00B7,#$08,LE929
E925	8FD20102	BRCLR 	L00D2,#$01,LE92B
E929	C605	 LE929:	LDAB 	#$05
E92B	11	 LE92B:	CBA 	
E92C	2221		BHI 	LE94F
E92E	8C0107		CPX 	#$0107
E931	2603		BNE 	LE936
E933	02B9FD		AIM 	L00B9#$FD
E936	8C0109	 LE936:	CPX 	#$0109
E939	2603		BNE 	LE93E
E93B	02B9FB		AIM 	L00B9#$FB
E93E	8C010B	 LE93E:	CPX 	#$010B
E941	2603		BNE 	LE946
E943	02B9FE		AIM 	L00B9#$FE
E946	7EE9DA	 LE946:	JMP 	LE9DA
E949	7F0132	 LE949:	CLR 	L0132
E94C	7EE9DF	 LE94C:	JMP 	LE9DF
E94F	8FB7080C LE94F:BRCLR 	L00B7,#$08,LE95F
E953	87D20108	BRSET 	L00D2,#$01,LE95F
E957	810D		CMPA 	#$0D
E959	2502		BCS 	LE95D
E95B	860D		LDAA 	#$0D
E95D	2006	 LE95D:	BRA 	LE965
E95F	8120	 LE95F:	CMPA 	#$20
E961	2502		BCS 	LE965
E963	8620		LDAA 	#$20
E965	C614	 LE965:	LDAB 	#$14
E967	8FB70808	BRCLR 	L00B7,#$08,LE973
E96B	C628		LDAB 	#$28
E96D	8FD20102	BRCLR 	L00D2,#$01,LE973
E971	C60D		LDAB 	#$0D
E973	7D0133	 LE973:	TST 	L0133
E976	2702		BEQ 	LE97A
E978	C602		LDAB 	#$02
E97A	3D	 LE97A:	MUL 	
E97B	04		LSRD 	
E97C	8FB91003	BRCLR 	L00B9,#$10,LE983
E980	8605		LDAA 	#$05
E982	5F		CLRB 	
E983	DDC1	 LE983:	STD 	L00C1
E985	DCC3		LDD 	L00C3
E987	87B9080D	BRSET 	L00B9,#$08,LE998
E98B	93C1		SUBD 	L00C1
E98D	2504		BCS 	LE993
E98F	810A		CMPA 	#$0A
E991	2403		BCC 	LE996
E993	860A	 LE993:	LDAA 	#$0A
E995	5F		CLRB 	
E996	2018	 LE996:	BRA 	LE9B0
E998	8FD20109 LE998:BRCLR 	L00D2,#$01,LE9A5
E99C	D3C1		ADDD 	L00C1
E99E	2403		BCC 	LE9A3
E9A0	CCFFFF		LDD 	#$FFFF
E9A3	200B	 LE9A3:	BRA 	LE9B0
E9A5	D3C1	 LE9A5:	ADDD 	L00C1
E9A7	2504		BCS 	LE9AD
E9A9	8196		CMPA 	#$96
E9AB	2503		BCS 	LE9B0
E9AD	8696	 LE9AD:	LDAA 	#$96
E9AF	5F		CLRB 	
E9B0	8FB70804 LE9B0:BRCLR 	L00B7,#$08,LE9B8
E9B4	8FD2011E	BRCLR 	L00D2,#$01,LE9D6
E9B8	87B94004 LE9B8:BRSET 	L00B9,#$40,LE9C0
E9BC	8F444016	BRCLR 	FCODES1,#$40,LE9D6		;test VSS fault
E9C0	DDC1	 LE9C0:	STD 	L00C1
E9C2	5F		CLRB 	
E9C3	8658		LDAA 	#$58
E9C5	BB0110		ADDA 	L0110				;baro correction?
E9C8	2504		BCS 	LE9CE
E9CA	8196		CMPA 	#$96
E9CC	2502		BCS 	LE9D0
E9CE	8696	 LE9CE:LDAA 	#$96
E9D0	1DC1	 LE9D0:CPD 	L00C1
E9D2	2402		BCC 	LE9D6
E9D4	DCC1		LDD 	L00C1
E9D6	DDC3	 LE9D6:STD 	L00C3
E9D8	ED00		STD 	
E9DA	8604	 LE9DA:LDAA 	#$04
E9DC	B70132		STAA 	L0132
E9DF	3C	 LE9DF:PSHX 	
E9E0	CE0100		LDX 	#$0100
E9E3	8FB8800A	BRCLR 	L00B8,#$80,LE9F1
E9E7	8628		LDAA 	#$28
E9E9	A70E		STAA 	$0E,X
E9EB	A713		STAA 	$13,X
E9ED	8620		LDAA 	#$20
E9EF	A70F		STAA 	$0F,X
E9F1	8FB71029 LE9F1:BRCLR 	L00B7,#$10,LEA1E
E9F5	872F082D	BRSET 	PORT6,#$08,LEA26		;TO VSV
E9F9	A64E		LDAA 	$4E,X	
E9FB	8B04		ADDA 	#$04
E9FD	2527		BCS 	LEA26
E9FF	A631		LDAA 	$31,X
EA01	260B		BNE 	LEA0E
EA03	C610		LDAB 	#$10
EA05	E731		STAB 	$31,X
EA07	A613		LDAA 	$13,X
EA09	2703		BEQ 	LEA0E
EA0B	4A		DECA 	
EA0C	A713		STAA 	$13,X
EA0E	A613	 LEA0E:	LDAA 	$13,X	
EA10	8FB81006	BRCLR 	L00B8,#$10,LEA1A
EA14	A10F		CMPA 	
EA16	2402		BCC 	LEA1A
EA18	A60F		LDAA 	$0F,X	
EA1A	A70E	 LEA1A:	STAA 	$0E,X
EA1C	2008		BRA 	LEA26
EA1E	6F0E	 LEA1E:	CLR 	
EA20	6F13		CLR 	
EA22	6F31		CLR 	
EA24	6F0F		CLR 	
EA26	38	 LEA26:	PULX 	
EA27	02B9CF		AIM 	L00B9#$CF
EA2A	4F		CLRA 	
EA2B	5F		CLRB 	
EA2C	87B70174	BRSET 	L00B7,#$01,LEAA4
EA30	86FF		LDAA 	#$FF
EA32	87B7026E	BRSET 	L00B7,#$02,LEAA4
EA36	8632		LDAA 	#$32
EA38	8F781002	BRCLR 	L0078,#$10,LEA3E
EA3C	8664		LDAA 	#$64
EA3E	87B7046 LEA3E:	BRSET 	L00B7,#$04,LEAA4
EA42	5F		CLRB 	
EA43	B60110		LDAA 	L0110				; baro correction
EA46	87B70803	BRSET 	L00B7,#$08,LEA4D
EA4A	B6010E		LDAA 	L010E
EA4D	BB010D	 LEA4D:ADDA 	L010D
EA50	2403		BCC 	LEA55
EA52	CCFFFF		LDD 	#$FFFF
EA55	DDC1	 LEA55:STD 	L00C1
EA57	D3C3		ADDD 	L00C3
EA59	7900C5		ROL 	L00C5
EA5C	8050		SUBA 	#$50
EA5E	2413		BCC 	LEA73
EA60	87C50122	BRSET 	L00C5,#$01,LEA86
EA64	CC5000		LDD 	#$5000
EA67	93C1		SUBD 	L00C1
EA69	2402		BCC 	LEA6D
EA6B	4F		CLRA 	
EA6C	5F		CLRB 	
EA6D	ED00	 LEA6D:	STD 	
EA6F	4F		CLRA 	
EA70	5F		CLRB 	
EA71	2013		BRA 	LEA86
EA73	8FC5010F LEA73:BRCLR 	L00C5,#$01,LEA86
EA77	CC4FFF		LDD 	#$4FFF
EA7A	93C1		SUBD 	L00C1
EA7C	2503		BCS 	LEA81
EA7E	CCFFFF		LDD 	#$FFFF
EA81	ED00	 LEA81:	STD 	
EA83	CCFFFF		LDD 	#$FFFF
EA86	1F0111	 LEA86:	CMPD 	
EA89	220F		BHI 	LEA9A
EA8B	FE0111		LDX 	L0111
EA8E	270A		BEQ 	LEA9A
EA90	03B920		OIM 	L00B9#$20
EA93	87B70803	BRSET 	L00B7,#$08,LEA9A
EA97	FC0111		LDD 	L0111
EA9A	810A	 LEA9A: CMPA 	#$0A
EA9C	2406		BCC 	LEAA4
EA9E	860A		LDAA 	#$0A
EAA0	5F		CLRB 	
EAA1	03B910		OIM 	L00B9#$10
EAA4	DDBA	 LEAA4: STD 	IACFLOW
EAA6	B60125		LDAA 	L0125
EAA9	8B03		ADDA 	#$03
EAAB	2536		BCS 	LEAE3
EAAD	DCBA		LDD 	IACFLOW
EAAF	CED4A0		LDX 	#TABLE_35	; table 35 - IAC
EAB2	BDF21B		JSR 	LF21B
EAB5	4F		CLRA 	
EAB6	05		LSLD 	
EAB7	05		LSLD 	
EAB8	05		LSLD 	
EAB9	DDC4		STD 	L00C4
EABB	DEBA		LDX 	IACFLOW		; X = IACFlow
EABD	C609		LDAB 	#$09		; B = 9	
EABF	BDF122		JSR 	LF122		; IACFLOW*9
EAC2	D3C4		ADDD 	L00C4		; (IACFLOW*9)+L00C4
EAC4	2505		BCS 	LEACB
EAC6	C3033C		ADDD 	#$033C
EAC9	2403		BCC 	LEACE
EACB	CCFFFF	 LEACB:LDD 	#$FFFF
EACE	DDC3	 LEACE:STD 	L00C3
EAD0	CED4B1		LDX 	#TABLE_36	; table 35 - IAC
EAD3	BDF1FC		JSR 	LF1FC		; table look up v BattVolts
EAD6	DEC3		LDX 	L00C3
EAD8	BDF122		JSR 	LF122
EADB	05		LSLD 	
EADC	2505		BCS 	LEAE3
EADE	1C1388		CPD 	#$1388
EAE1	2503		BCS 	LEAE6
EAE3	CC1388	 LEAE3:LDD 	#$1388
EAE6	DDBC	 LEAE6:STD 	L00BC
EAE8	83007D		SUBD 	#$007D
EAEB	FD0198		STD 	L0198
;
;
; Calculate Total Fuel trim
;
EAEE	CE0100		LDX 	#$0100
EAF1	96EB		LDAA 	LTFT		; Calculate Applied Fuel Trim
EAF3	D6E8		LDAB 	STFT		; by summing the two signed values
EAF5	3D		MUL 			
EAF6	05		LSLD 			
EAF7	C30080		ADDD 	#$0080		
EAFA	97F5		STAA 	AFT		; AFT=STFT+LTFT
EAFC	8632		LDAA 	#$32
EAFE	E607		LDAB	$07,X
EB00	C196		CMPB	#$96
EB02	2411		BCC 	LEB15
EB04	4F		CLRA 	
EB05	C10A		CMPB	#$0A
EB07	250C		BCS 	LEB15
EB09	C00A		SUBB 	#$0A
EB0B	86EA		LDAA 	#$EA		; A+B signed addition?
EB0D	3D		MUL 	
EB0E	C30080		ADDD 	#$0080		; result in A
EB11	C632		LDAB 	#$32
EB13	3D		MUL 			
EB14	05		LSLD 			
EB15	8FB70808 LEB15:BRCLR 	L00B7,#$08,LEB21
EB19	87D20104	BRSET 	L00D2,#$01,LEB21
EB1D	87B98040	BRSET 	L00B9,#$80,LEB61
EB21	D678	 LEB21:LDAB 	L0078
EB23	C406		ANDB 	#$06
EB25	C106		CMPB	#$06
EB27	2637		BNE 	LEB60
EB29	8619		LDAA 	#$19
EB2B	8F811032	BRCLR 	L0081,#$10,LEB61
;
; Skip AFT if L0081 bit4 is clear (open loop?)
;
EB2F	D6F5		LDAB 	AFT		; get AFT
EB31	86A0		LDAA 	#$A0
EB33	10		SBA 			; A =(160-AFT)
EB34	2401		BCC 	LEB37
EB36	4F		CLRA 	
EB37	8140	 LEB37:CMPA 	#$40		; 64
EB39	2302		BLS 	LEB3D
EB3B	8640		LDAA 	#$40		; default = 40h
EB3D	C632	 LEB3D:LDAB 	#$32		; default = 32h
EB3F	3D		MUL 			; A*B
EB40	05		LSLD 	
EB41	05		LSLD 			; div by 16
EB42	C30080		ADDD 	#$0080		; add 128
EB45	E636		LDAB	$36,X
EB47	2603		BNE 	LEB4C
EB49	1336A0
EB4C	C1 50	LEB4C:	CMPB 	#$50
EB4E	230C		BLS 	LEB5C
EB50	8B01		ADDA 	#$01
EB52	2504		BCS 	LEB58
EB54	8132		CMPA 	#$32
EB56	2309		BLS 	LEB61
EB58	8632	 LEB58:LDAA 	#$32
EB5A	2005		BRA 	LEB61
EB5C	8001	 LEB5C:SUBA 	#$01
EB5E	2401		BCC 	LEB61
EB60	4F	 LEB60: CLRA 	
EB61	97D8	 LEB61: STAA 	IACADJM
;
;
;Set up C3 as a temp register for PORT5 P57,54,53,52,50
;Set up C4 as a temp register for PORT6
EB63	4F		CLRA 	
EB64	5F		CLRB 	
EB65	DDC3		STD 	L00C3			; clear C3,C4
EB67	8F81010A	BRCLR 	L0081,#$01,LEB75
;
EB6B	8F064006	BRCLR 	PORT3,#$40,LEB75	; watchdog?
EB6F	E625		LDAB	$25,X
EB71	CB78		ADDB	#$78
EB73	2403		BCC 	LEB78
EB75	03C404	 LEB75: OIM 	L00C4,#$04		; Fuel pump relay
;
EB78	8F810103 LEB78:BRCLR 	L0081,#$01,LEB7F
EB7C	7EEC3C		JMP 	LEC3C
EB7F	87814003 LEB7F:BRSET 	L0081,#$40,LEB86
EB83	03C308		OIM 	L00C3,#$08		; EGR VSV
;
EB86	87788013 LEB86:BRSET 	L0078,#$80,LEB9D
EB8A	8F7C200F	BRCLR 	L007C,#$20,LEB9D
EB8E	8F7A800B	BRCLR 	L007A,#$80,LEB9D
EB92	8F7E0407	BRCLR 	L007E,#$04,LEB9D
EB96	9691		LDAA 	L0091
EB98	2703		BEQ 	LEB9D
EB9A	03C401		OIM 	L00C4,#$01		; CP VSV
;
EB9D	8F7D200F LEB9D:BRCLR 	L007D,#$20,LEBB0
EBA1	8782300B	BRSET 	L0082,#$30,LEBB0
EBA5	8F7F2007	BRCLR 	L007F,#$20,LEBB0
EBA9	877F4003	BRSET 	L007F,#$40,LEBB0
EBAD	03C410		OIM 	L00C4,#$10		; Lock up relay?
;O2 heater into L00C3,#40
EBB0	A654	 LEBB0:	LDAA 	$54,X	
EBB2	2704		BEQ 	LEBB8
EBB4	8F80101B	BRCLR 	L0080,#$10,LEBD3
EBB8	9658	 LEBB8:	LDAA 	BATTV			; 
EBBA	81E1		CMPA 	#$E1			; 16.5V	-Batt Volts
EBBC	2415		BCC 	LEBD3			; skip if batt>16.5V
EBBE	87810311	BRSET 	L0081,#$03,LEBD3
EBC2	96D9		LDAA 	TFSTART
EBC4	8B1E		ADDA 	#$1E				
EBC6	2508		BCS 	LEBD0			; bra if < 1 minute from start
EBC8	87810807	BRSET 	L0081,#$08,LEBD3
EBCC	87DC8003	BRSET 	L00DC,#$80,LEBD3
EBD0	03C340	 LEBD0:	OIM 	L00C3 #$40		; O2 heater
;
EBD3	87823007 LEBD3:BRSET 	L0082,#$30,LEBDE
EBD7	8F7F1003	BRCLR 	L007F,#$10,LEBDE
EBDB	03C402		OIM 	L00C4,#$02		; spare ???
EBDE	02DAFE	 LEBDE:	AIM 	L00DA,#$FE
;
;	
; TO VSV into L00C4,#08
EBE1	CED35C		LDX 	#TABLE_29
EBE4	BDF1E6		JSR 	LF1E6			; table look up v WTS limit to 75C to -30C (returns ON time?)
EBE7	8F824001	BRCLR 	L0082,#$40,LEBEC
EBEB	4F		CLRA 	
EBEC	CE0100	 LEBEC:LDX 	#$0100
EBEF	8F810204	BRCLR 	L0081,#$02,LEBF7
EBF3	A757		STAA 	$57,X			; load TO counter
EBF5	201F		BRA 	LEC16
EBF7	A157	 LEBF7:CMPA 	$57,X			; compare to counter
EBF9	2402		BCC 	LEBFD
EBFB	A757		STAA 	$57,X			; store to counter
EBFD	A657	 LEBFD:	LDAA 	$57,X			; get counter
EBFF	271B		BEQ 	LEC1C
EC01	8F94040D	BRCLR 	L0094,#$04,LEC12
EC05	CED354		LDX 	#TABLE_28
EC08	BDF1E0		JSR 	LF1E0			; table look up v WTS limit to 105C to -30C (returns RPM?) 
EC0B	9150		CMPA 	RPM_3125		; get RPM/31.25
EC0D	2203		BHI 	LEC12
EC0F	7A0157		DEC 	L0157			; decrement TO counter
EC12	877B4006 LEC12:BRSET 	L007B,#$40,LEC1C
EC16	03C408	 LEC16:	OIM 	L00C4#$08		; set TO VSV?
EC19	03DA01		OIM 	L00DA#$01
EC1C	8F07081C LEC1C:BRCLR 	PORT4,#R302,LEC3C	; AT/MT config
EC20	87824018	BRSET 	L0082,#$40,LEC3C
EC24	87C02014	BRSET 	L00C0,#$20,LEC3C
EC28	87804010	BRSET 	L0080,#$40,LEC3C
EC2C	8797100C	BRSET 	L0097,#$10,LEC3C
EC30	87782008	BRSET 	L0078,#$20,LEC3C
;
EC34	B60137		LDAA 	L0137			; is this another counter?
EC37	2603		BNE 	LEC3C
EC39	03C408		OIM 	L00C4 #$08		; TO VSV
;
; update Port5 and PORT6
EC3C	0F	 LEC3C:	SEI 	
EC3D	9616		LDAA 	PORT5			;
EC3F	84A2		ANDA 	#$A2			; clear P57,54,53,52,50
EC41	9AC3		ORAA 	L00C3			; set bits from C3
EC43	8840		EORA 	#$40			; watchdog?
EC45	9716		STAA 	PORT5
EC47	962F		LDAA 	PORT6			; get Port6
EC49	8420		ANDA 	#$20			; clear watchdog???
EC4B	9AC4		ORAA 	L00C4			; update rest of Port6 bits
EC4D	972F		STAA 	PORT6			; update port6
EC4F	0E		CLI 	
;
; Update fault code registers
; copy codes to working registers L00C3, L00C4, L00C5
;
EC50	9644		LDAA 	FCODES1			; get current fault codes
EC52	D648		LDAB 	FCODES2
EC54	DDC3		STD 	L00C3			; copy to L00C3, L00C4
EC56	964C		LDAA 	FCODES5			; get California codes
EC58	97C5		STAA 	L00C5			; copy to L00C5
EC5A	8F81030D	BRCLR 	L0081,#$03,LEC6B
EC5E	CEFFA8		LDX 	#$FFA8
EC61	D67D		LDAB 	L007D			; get L007D		
EC63	58		ASLB 				; multiply by two
EC64	966C		LDAA 	WTS_RAW2		; wts v L007D
EC66	BDF318		JSR 	LF318			; do something once with table
EC69	D77D		STAB 	L007D
EC6B	CE0100	 LEC6B: LDX 	#$0100
EC6E	8F788005	BRCLR 	L0078,#$80,LEC77
EC72	02C4EF		AIM 	L00C4#$EF		; clear tmpFCodes2, idle O/C
EC75	2012		BRA 	LEC89
EC77	8781030E LEC77:BRSET 	L0081,#$03,LEC89
EC7B	9650		LDAA 	RPM_3125		; test RPM/32
EC7D	8120		CMPA 	#$20			; 1000rpm
EC7F	2408		BCC 	LEC89
EC81	8F070808	BRCLR 	PORT4,#R302,LEC8D	; AT/MT config
EC85	87782004	BRSET 	L0078,#$20,LEC8D
EC89	C664	 LEC89:	LDAB 	#$64
EC8B	E744		STAB 	$44,X
EC8D	E644	 LEC8D:	LDAB	$44,X
EC8F	2603		BNE 	LEC94
EC91	03C410		OIM 	L00C4#$10		; set tmpFCodes2, idle O/C	
EC94	87788005 LEC94:BRSET 	L0078,#$80,LEC9D
EC98	02C4DF		AIM 	L00C4#$DF		; clear tmpFCodes2, idle S/C
EC9B	201F		BRA 	LECBC
EC9D	8781021B LEC9D:BRSET 	L0081,#$02,LECBC
ECA1	9650		LDAA 	RPM_3125		; get RPM/32
ECA3	815D		CMPA 	#$5D			; 2900rpm
ECA5	250A		BCS 	LECB1
ECA7	87820606	BRSET 	L0082,#$06,LECB1
ECAB	965C		LDAA 	MAPX256			; 8-bit=MAP/5 
ECAD	8156		CMPA 	#$56			; 430 mBar
ECAF	240F		BCC 	LECC0
ECB1	0F	 LECB1:	SEI 	
ECB2	965B		LDAA 	TPSV			; get TPS volts
ECB4	87820804	BRSET 	L0082,#$08,LECBC
ECB8	813D		CMPA 	#$3D			; TPS>1.2V
ECBA	2404		BCC 	LECC0			; if idle switch closed above
ECBC	C632	 LECBC:	LDAB 	#$32			; 1.2V then its short circuit
ECBE	E745		STAB 	$45,X
ECC0	0E	 LECC0:	CLI 	
ECC1	E645		LDAB	$45,X
ECC3	2603		BNE 	LECC8
ECC5	03C420		OIM 	L00C4#$20		; set tmpFCodes2, idle S/C
ECC8	8F830108 LECC8:BRCLR 	L0083,#$01,LECD4
ECCC	0283FE		AIM 	L0083#$FE
ECCF	02C4F7		AIM 	L00C4#$F7		; clear tmpFCodes2, camshaft sensor
ECD2	2004		BRA 	LECD8
ECD4	87794004 LECD4:BRSET 	L0079,#$40,LECDC
ECD8	C678	 LECD8:	LDAB 	#$78
ECDA	E739		STAB 	$39,X
ECDC	E639	 LECDC:	LDAB	$39,X
ECDE	2603		BNE 	LECE3
ECE0	03C408		OIM 	L00C4#$08		; set tmpFCodes2, camshaft sensor
ECE3	87824005 LECE3:BRSET 	L0082,#$40,LECEC
ECE7	02C3F9		AIM 	L00C3#$F9		; clear tmpFCodes1, WTS high, low
ECEA	2004		BRA 	LECF0
ECEC	8F810304 LECEC:BRCLR 	L0081,#$03,LECF4
ECF0	C632	 LECF0:	LDAB 	#$32
ECF2	E740		STAB 	$40,X
ECF4	E640	 LECF4:LDAB	$40,X
ECF6	2613		BNE 	LED0B
ECF8	87C3060F	BRSET 	L00C3,#$06,LED0B	; bra if a WTS fault set
ECFC	9654		LDAA 	WTS_RAW
ECFE	43		COMA 	
ECFF	8112		CMPA 	#$12
ED01	2505		BCS 	LED08
ED03	03C304		OIM 	L00C3#$04		; clear tmpFCodes1, WTS low
ED06	2003		BRA 	LED0B
ED08	03C302	 LED08:	OIM 	L00C3#$02		; clear tmpFCodes1, WTS high
ED0B	87828005 LED0B:BRSET 	L0082,#$80,LED14
ED0F	02C35F		AIM 	L00C3#$5F		; clear tmpFCodes1, IAT high, low
ED12	2004		BRA 	LED18
ED14	8F810304 LED14:BRCLR 	L0081,#$03,LED1C
ED18	C632	 LED18:	LDAB 	#$32			;some init done?
ED1A	E743		STAB 	$43,X
ED1C	E643	 LED1C:	LDAB	$43,X			; 
ED1E	2613		BNE 	LED33			; is it zero
ED20	87C3A00F	BRSET 	L00C3,#$A0,LED33	; bra if IAT fault
ED24	9655		LDAA 	IAT_RAW
ED26	43		COMA 	
ED27	8115		CMPA 	#$15
ED29	2505		BCS 	LED30
ED2B	03C380		OIM 	L00C3#$80		; set tmpFCodes1, IAT low
ED2E	2003		BRA 	LED33
ED30	03C320	 LED30:	OIM 	L00C3#$20		; set tmpFCodes1, IAT high
ED33	0F	 LED33:	SEI 	
ED34	9659		LDAA 	MAP_5
ED36	87820106	BRSET 	L0082,#$01,LED40
ED3A	0E		CLI 	
ED3B	02C4FC		AIM 	L00C4#$FC		; clear tmpFCodes2, MAP high, low
ED3E	2019		BRA 	LED59
ED40	0E	 LED40:	CLI 	
ED41	87810314	BRSET 	L0081,#$03,LED59
ED45	81E8		CMPA 	#$E8			; 1160mBar
ED47	2214		BHI 	LED5D
ED49	D650		LDAB 	RPM_3125		; get RPM/32
ED4B	C130		CMPB	#$30			; 1500rpm
ED4D	250E		BCS 	LED5D
ED4F	87823006	BRSET 	L0082,#$30,LED59
ED53	D66F		LDAB 	TPSA		; get TPSA
ED55	C10C		CMPB	#$0C
ED57	2404		BCC 	LED5D
ED59	C632	 LED59: LDAB 	#$32
ED5B	E742		STAB 	$42,X
ED5D	E642	 LED5D: LDAB	$42,X
ED5F	2610		BNE 	LED71
ED61	87C4030C	BRSET 	L00C4,#$03,LED71	; bra if tmpFCodes2 MAP fault
ED65	81E8		CMPA 	#$E8
ED67	2205		BHI 	LED6E
ED69	03C402		OIM 	L00C4#$02		; set tmpFCodes2, MAP Low
ED6C	2003		BRA 	LED71
ED6E	03C401	 LED6E: OIM 	L00C4#$01		; set tmpFCodes2, MAP High
ED71	0F	 LED71: SEI 	
ED72	965B		LDAA 	TPSV
ED74	87820806	BRSET 	L0082,#$08,LED7E
ED78	0E		CLI 	
ED79	02C3E7		AIM 	L00C3#$E7		; clear tmpFCodes1, TPS High, low 
ED7C	2005		BRA 	LED83
ED7E	0E	 LED7E: CLI 	
ED7F	8F810304	BRCLR 	L0081,#$03,LED87
ED83	C632	 LED83: LDAB 	#$32
ED85	E741		STAB 	$41,X
ED87	E641	 LED87: LDAB	$41,X
ED89	2610		BNE 	LED9B
ED8B	87C3180C	BRSET 	L00C3,#$18,LED9B	; bra if tmpFCodes1, TPS fault
ED8F	81F8		CMPA 	#$F8
ED91	2205		BHI 	LED98
ED93	03C310		OIM 	L00C3#$10		; set tmpFCodes1, TPS Low
ED96	2003		BRA 	LED9B
ED98	03C308	 LED98: OIM 	L00C3#$08		; set tmpFCodes1, TPS High
ED9B	8F810305 LED9B: BRCLR 	L0081,#$03,LEDA4
ED9F	03C004		OIM 	L00C0#$04
EDA2	201A		BRA 	LEDBE
EDA4	8F950403 LEDA4: BRCLR 	O2STAT,#$04,LEDAB	; test O2 status ?????
EDA8	02C0FB		AIM 	L00C0#$FB
EDAB	8781800F LEDAB:BRSET 	L0081,#$80,LEDBE
EDAF	8F81100B	BRCLR 	L0081,#$10,LEDBE
EDB3	A650		LDAA 	$50,X
EDB5	2607		BNE 	LEDBE
EDB7	87950203	BRSET 	O2STAT,#$02,LEDBE	; rich/lean
EDBB	03C004		OIM 	L00C0#$04
EDBE	8F954007 LEDBE:BRCLR 	O2STAT,#$40,LEDC9
EDC2	877A0203	BRSET 	L007A,#$02,LEDC9
EDC6	03C008		OIM 	L00C0#$08
EDC9	87810716 LEDC9:BRSET 	L0081,#$07,LEDE3
EDCD	8782C612	BRSET 	L0082,#$C6,LEDE3
EDD1	966C		LDAA 	WTS_RAW2			
EDD3	81D6		CMPA 	#$D6			; approx. 70C
EDD5	250C		BCS 	LEDE3
EDD7	9650		LDAA 	RPM_3125		; get RPM/32
EDD9	8153		CMPA 	#$53			; 2600rpm		
EDDB	2506		BCS 	LEDE3
EDDD	965C		LDAA 	MAPX256			; 8-bit=MAP/5
EDDF	815E		CMPA 	#$5E			; 470 mBar
EDE1	2406		BCC 	LEDE9
EDE3	860F	 LEDE3:	LDAA 	#$0F
EDE5	A752		STAA 	$52,X
EDE7	2021		BRA 	LEE0A
EDE9	A652	 LEDE9:	LDAA	$52,X 	
EDEB	261D		BNE 	LEE0A
EDED	8FC00419	BRCLR 	L00C0,#$04,LEE0A
EDF1	8FC00815	BRCLR 	L00C0,#$08,LEE0A
EDF5	02C0F7		AIM 	L00C0#$F7
EDF8	87C0020E	BRSET 	L00C0,#$02,LEE0A
EDFC	03C002		OIM 	L00C0#$02
EDFF	A660		LDAA 	$60,X	
EE01	2704		BEQ 	LEE07
EE03	6A60		DEC 	
EE05	2603		BNE 	LEE0A
EE07	03C301	 LEE07: OIM 	L00C3#$01		; set tmpFCodes1, O2 sensor
EE0A	87C00407 LEE0A:BRSET 	L00C0,#$04,LEE15
EE0E	8602		LDAA 	#$02
EE10	A760		STAA 	$60,X
EE12	02C3FE		AIM 	L00C3#$FE		; clear tmpFCodes1, O2 sensor
;
EE15	87780107 LEE15:BRSET 	L0078,#$01,LEE20	; test calif status
;
;
; Test EGR Temp status
;
EE19	6F46		CLR 	
EE1B	6F58		CLR 	
EE1D	7EEF22		JMP 	LEF22
EE20	87810368 LEE20:BRSET 	L0081,#$03,LEE8C
EE24	9650		LDAA 	RPM_3125		; get RPM/32
EE26	8153		CMPA 	#$53			; 2600rpm
EE28	2562		BCS 	LEE8C
EE2A	8176		CMPA 	#$76			; 3690rpm
EE2C	245E		BCC 	LEE8C
EE2E	8782C656	BRSET 	L0082,#$C6,LEE88
EE32	8F814052	BRCLR 	L0081,#$40,LEE88
EE36	966C		LDAA 	WTS_RAW2		
EE38	81DB		CMPA 	#$DB			; approx 75C
EE3A	254C		BCS 	LEE88
EE3C	966E		LDAA 	IAT_LIM
EE3E	8191		CMPA 	#$91			; IAT=29C?
EE40	2546		BCS 	LEE88
EE42	81D2		CMPA 	#$D2			; IAT=68C?
EE44	2442		BCC 	LEE88
EE46	965C		LDAA 	MAPX256			; 8-bit=MAP/5 
EE48	8164		CMPA 	#$64			; 500 mBar
EE4A	253C		BCS 	LEE88
EE4C	81A2		CMPA 	#$A2			; 810 mBar
EE4E	2438		BCC 	LEE88
EE50	9640		LDAA 	BARO
EE52	802B		SUBA 	#$2B			
EE54	2401		BCC 	LEE57
EE56	4F		CLRA 	
EE57	915C	 LEE57:	CMPA 	MAPX256			; 8-bit=MAP/5
EE59	232D		BLS 	LEE88
EE5B	9650		LDAA 	RPM_3125		; get RPM/32
EE5D	D65C		LDAB 	MAPX256			; 8-bit=MAP/5
EE5F	3D		MUL 	
EE60	C30040		ADDD 	#$0040
EE63	05		LSLD 	
EE64	2402		BCC 	LEE68
EE66	86FF		LDAA 	#$FF
EE68	87070814 LEE68:BRSET 	PORT4,#R302,LEE80	; AT/MT config
EE6C	D650		LDAB 	RPM_3125		; get RPM/32
EE6E	C153		CMPB	#$53			; 2600rpm
EE70	2404		BCC 	LEE76
EE72	8152		CMPA 	#$52
EE74	2002		BRA 	LEE78
EE76	814C	 LEE76:	CMPA 	#$4C
EE78	250E	 LEE78:	BCS 	LEE88
EE7A	817C		CMPA 	#$7C
EE7C	2521		BCS 	LEE9F
EE7E	2008		BRA 	LEE88
EE80	8152	 LEE80:	CMPA 	#$52
EE82	2504		BCS 	LEE88
EE84	817C		CMPA 	#$7C
EE86	2517		BCS 	LEE9F
EE88	E646	 LEE88:	LDAB	$46,X
EE8A	2606		BNE 	LEE92
EE8C	6F46	 LEE8C:	CLR 	
EE8E	6F58		CLR 	
EE90	2023		BRA 	LEEB5
EE92	8F94041F LEE92:BRCLR 	L0094,#$04,LEEB5
EE96	A658		LDAA 	$58,X
EE98	271B		BEQ 	LEEB5
EE9A	4A		DECA 	
EE9B	A758		STAA 	$58,X
EE9D	2016		BRA 	LEEB5
EE9F	C678	 LEE9F:	LDAB 	#$78
EEA1	E746		STAB 	$46,X
EEA3	8F940408	BRCLR 	L0094,#$04,LEEAF
EEA7	A658		LDAA 	$58,X	
EEA9	8B02		ADDA 	#$02
EEAB	2502		BCS 	LEEAF
EEAD	A758		STAA 	$58,X
EEAF	A658	 LEEAF:	LDAA 	$58,X
EEB1	8178		CMPA 	#$78
EEB3	2408		BCC 	LEEBD
EEB5	C650	 LEEB5:	LDAB 	#$50
EEB7	E74A		STAB 	$4A,X	
EEB9	E749		STAB 	$47,X
EEBB	2039		BRA 	LEEF6
EEBD	966E	 LEEBD:	LDAA 	IAT_LIM
EEBF	CDCEE363	LDY 	#$E363		; limit IAT to 10C to 90C 
EEC3	BDF2AA		JSR 	LIM2Y
EEC6	CED366		LDX 	#TABLE_30
EEC9	BDF216		JSR 	LF216		; table look up
EECC	CE0100		LDX 	#$0100
EECF	36		PSHA 	
EED0	9650		LDAA 	RPM_3125	; get RPM/32
EED2	D65C		LDAB 	MAPX256		; 8-bit=MAP/5
EED4	3D		MUL 	
EED5	C30040		ADDD 	#$0040
EED8	05		LSLD 	
EED9	2402		BCC 	LEEDD
EEDB	86FF		LDAA 	#$FF
EEDD	8046	 LEEDD:	SUBA 	#$46
EEDF	2401		BCC 	LEEE2
EEE1	4F		CLRA 	
EEE2	C6DA	 LEEE2:	LDAB 	#$DA
EEE4	3D		MUL 	
EEE5	C30080		ADDD 	#$0080
EEE8	33		PULB 	
EEE9	1B		ABA	
EEEA	9177		CMPA 	NEGRT		; test against EGR temp
EEEC	220A		BHI 	LEEF8
EEEE	C650		LDAB 	#$50
EEF0	E749		STAB 	$49,X
EEF2	E64A		LDAB	$4A,X
EEF4	272C		BEQ 	LEF22
EEF6	201A	 LEEF6:	BRA 	LEF12
EEF8	C650	 LEEF8:	LDAB 	#$50
EEFA	E74A		STAB 	$4A,X
EEFC	E649		LDAB	$49,X
EEFE	2612		BNE 	LEF12
EF00	87C0010E	BRSET 	L00C0,#$01,LEF12
EF04	03C001		OIM 	L00C0#$01
EF07	E661		LDAB	$61,X
EF09	2704		BEQ 	LEF0F
EF0B	6A61		DEC 	
EF0D	2603		BNE 	LEF12
;test EGRT
EF0F	03C501	 LEF0F: OIM 	L00C5#$01		; set tmpFCodes3, EGR fault
EF12	9677	 LEF12: LDAA 	NEGRT			; test against EGR temp
EF14	81A7		CMPA 	#$A7			; limit 1
EF16	2517		BCS 	LEF2F
EF18	87810313	BRSET 	L0081,#$03,LEF2F
EF1C	96D9		LDAA 	TFSTART			; get time from start
EF1E	8B19		ADDA 	#$19			
EF20	250D		BCS 	LEF2F			; bra if < 50secs from start
EF22	C602	 LEF22: LDAB 	#$02
EF24	E761		STAB 	$61,X
EF26	02C5FE		AIM 	L00C5#$FE		; clear tmpFCodes3, EGR fault
EF29	C650		LDAB 	#$50
EF2B	E74A		STAB 	$4A,X	
EF2D	E749		STAB 	$49,X
EF2F	8F780106 LEF2F: BRCLR 	L0078,#$01,LEF39
EF33	9677		LDAA 	NEGRT			; test against EGR temp
EF35	81F8		CMPA 	#$F8			; limit 2		
EF37	2205		BHI 	LEF3E
EF39	02C5FD	 LEF39:	AIM 	L00C5#$FD		; clear tmpFCodes3, EGRT S/C
EF3C	200E		BRA 	LEF4C
EF3E	8781030A LEF3E:BRSET 	L0081,#$03,LEF4C
EF42	87824006	BRSET 	L0082,#$40,LEF4C
EF46	966C		LDAA 	WTS_RAW2
EF48	81A9		CMPA 	#$A9			; approx 37C
EF4A	2504		BCS 	LEF50
EF4C	C61E	 LEF4C:	LDAB 	#$1E
EF4E	E747		STAB 	$47,X
EF50	E647	 LEF50:	LDAB	$47,X
EF52	2603		BNE 	LEF57
EF54	03C502		OIM 	L00C5#$02		; set tmpFCodes3, EGRT S/C
EF57	8781030C LEF57:BRSET 	L0081,#$03,LEF67
EF5B	966C		LDAA 	WTS_RAW2
EF5D	81D6		CMPA 	#$D6			; approx. 70C
EF5F	2506		BCS 	LEF67
EF61	966E		LDAA 	IAT_LIM
EF63	81B8		CMPA 	#$B8			; approx. 47C 
EF65	2404		BCC 	LEF6B
EF67	8628	 LEF67:	LDAA 	#$28			; approx. very cold!
EF69	A753		STAA 	$57,X			; default for TO VSV?
EF6B	8F780106 LEF6B:BRCLR 	L0078,#$01,LEF75
EF6F	9677		LDAA 	NEGRT
EF71	811F		CMPA 	#$1F			; test against EGR temp
EF73	2505		BCS 	LEF7A
EF75	02C5FB	 LEF75:	AIM 	L00C5#$FB		; clear tmpFCodes3, EGRT O/C 
EF78	2004		BRA 	LEF7E
EF7A	A653	 LEF7A:	LDAA 	$53,X
EF7C	2704		BEQ 	LEF82
EF7E	C61E	 LEF7E:	LDAB 	#$1E
EF80	E748		STAB 	$48,X
EF82	E648	 LEF82:	LDAB	$48,X
EF84	2603		BNE 	LEF89
EF86	03C504		OIM 	L00C5#$04		; set tmpFCodes3, EGRT O/C	
EF89	02C4BF	 LEF89:	AIM 	L00C4#$BF		; clear tmpFCodes2, EGR
EF8C	8FC50703	BRCLR 	L00C5,#$07,LEF93	; bra if no EGR codes
EF90	03C440		OIM 	L00C4#$40		; set tmpFCodes2, EGR fault
EF93	87780116 LEF93:BRSET 	L0078,#$01,LEFAD	; go to clear California code???
EF97	87810315	BRSET 	L0081,#$03,LEFB0
EF9B	9677		LDAA 	NEGRT			; test against EGR temp
EF9D	8125		CMPA 	#$25
EF9F	2413		BCC 	LEFB4
EFA1	966C		LDAA 	WTS_RAW2
EFA3	81D6		CMPA 	#$D6			; approx. 70C
EFA5	2509		BCS 	LEFB0
EFA7	966E		LDAA 	IAT_LIM
EFA9	81B8		CMPA 	#$B8			; approx. 47C
EFAB	2503		BCS 	LEFB0

EFAD	02C47F	 LEFAD:	AIM 	L00C4#$7F		; clear tmpFCodes2, gnd cct
EFB0	C61E	 LEFB0:	LDAB 	#$1E
EFB2	E74C		STAB 	$4C,X
EFB4	E64C	 LEFB4:	LDAB	$4C,X
EFB6	2603		BNE 	LEFBB
EFB8	03C480		OIM 	L00C4#$80		; set tmpFCodes2, gnd cct
EFBB	9691	 LEFBB:	LDAA 	L0091
EFBD	2705		BEQ 	LEFC4
EFBF	02C3BF		AIM 	L00C3#$BF		; clear tmpFCodes1, VSS
EFC2	2004		BRA 	LEFC8
EFC4	87810404 LEFC4:BRSET 	L0081,#$04,LEFCC
EFC8	8632	 LEFC8:	LDAA 	#$32
EFCA	A74B		STAA 	$4B,X
EFCC	A64B	 LEFCC:	LDAA 	$4B,X
EFCE	2603		BNE 	LEFD3
EFD0	03C340		OIM 	L00C3#$40		; set tmpFCodes1, VSS
EFD3	02C4FB	 LEFD3:	AIM 	L00C4#$FB		; clear tmpFCodes2, IFS
EFD6	8FB30606	BRCLR 	L00B3,#$06,LEFE0	; IFS OK
EFDA	02B3FB		AIM 	L00B3#$FB		; clear L00B3,bit2
EFDD	03C404		OIM 	L00C4#$04		; set tmpFCodes2, IFS
EFE0	BDD7E6	 LEFE0:	JSR 	LD7E6			; test for EGR faults???
EFE3	2708		BEQ 	LEFED
EFE5	BDD812		JSR 	LD812
EFE8	0243FD		AIM 	L0043#$FD		; clear L0043 bit1
EFEB	203A		BRA 	LF027
EFED	96C5	 LEFED:	LDAA 	L00C5			; get tmpFCodes3		
EFEF	8F780402	BRCLR 	L0078,#$04,LEFF5
EFF3	944C	 LEFF3:	ANDA 	FCODES5			; and with present codes
EFF5	974C	 LEFF5:	STAA 	FCODES5			; store updated codes
EFF7	96C3		LDAA 	L00C3			; get L00C3
EFF9	8F780402	BRCLR 	L0078,#$04,LEFFF
EFFD	9444		ANDA 	FCODES1			; clear fcodes
EFFF	16	 LEFFF:	TAB 	
F000	53		COMB 	
F001	DD44		STD 	FCODES1			; store nfaultcodes1
F003	96C4		LDAA 	L00C4
F005	8F780402	BRCLR 	L0078,#$04,LF00B
F009	9448		ANDA 	FCODES2
F00B	16	 LF00B:	TAB 	
F00C	53		COMB 	
F00D	DD48		STD 	FCODES2
F00F	9644		LDAA 	FCODES1			; get fcodes1
F011	8AFF		ORAA 	#$FF			; set all codes
F013	9446		ANDA 	FCODES3			; clear all except history
F015	9A44		ORAA 	FCODES1			; set current codes
F017	16		TAB 	
F018	53		COMB 	
F019	DD46		STD 	FCODES3			; update history codes 1
F01B	9648		LDAA 	FCODES2
F01D	8AE7		ORAA 	#$E7
F01F	944A		ANDA 	FCODES4
F021	9A48		ORAA 	FCODES2
F023	16		TAB 	
F024	53		COMB 	
F025	DD4A		STD 	FCODES4
F027	87780404 LF027:BRSET 	L0078,#$04,LF02F
F02B	8778020A	BRSET 	L0078,#$02,LF039
F02F	6F38	 LF02F:	CLR 	
F031	6F15		CLR 	
F033	6F16		CLR 	
F035	8601		LDAA 	#$01
F037	A717		STAA 	$17,X
F039	87780437 LF039:BRSET 	L0078,#$04,LF074
F03D	87780217	BRSET 	L0078,#$02,LF058
F041	8F7A0110	BRCLR 	L007A,#$01,LF055
F045	8F7D8004	BRCLR 	L007D,#$80,LF04D
F049	87480308	BRSET 	FCODES2,#$03,LF055	; bra if MAP fault
F04D	8744FF04 LF04D:BRSET 	FCODES1,#$FF,LF055
F051	8F48E41F	BRCLR 	FCODES2,#$E4,LF074	; bra if no EGR, idle or IFS fault
F055	7EF0E2	 LF055:	JMP 	LF0E2
F058	A638	 LF058:	LDAA 	$38,X
F05A	261B		BNE 	LF077
F05C	8716201A	BRSET 	PORT5,#$20,LF07A	;CEL
F060	8678		LDAA 	#$78
F062	E615		LDAB	$15,X
F064	C101		CMPB	#$01
F066	270A		BEQ 	LF072
F068	8628		LDAA 	#$28
F06A	C4F0		ANDB 	#$F0
F06C	C110		CMPB	#$10
F06E	2702		BEQ 	LF072
F070	860C		LDAA 	#$0C
F072	A738	 LF072:	STAA 	$38,X	
F074	031620	 LF074:	OIM 	PORT5#$20	;set CEL?
F077	7EF0E5	 LF077:	JMP 	LF0E5
F07A	A615	 LF07A:	LDAA 	$15,X
F07C	85F0		BITA 	#$F0
F07E	2704		BEQ 	LF084
F080	8010		SUBA 	#$10
F082	2005		BRA 	LF089
F084	850F	 LF084:	BITA 	#$0F
F086	2701		BEQ 	LF089
F088	4A		DECA 	
F089	A715	 LF089:	STAA 	$15, X	
F08B	2650		BNE 	LF0DD
F08D	6A17		DEC 	
F08F	263E		BNE 	LF0CF
F091	D646		LDAB 	FCODES3
F093	964A		LDAA 	FCODES4
F095	DDC1		STD 	L00C1
F097	2607		BNE 	LF0A0
F099	6F16		CLR 	
F09B	13170120	BRCLR 	L0017,#$01,LF0BF
F09F	2F13		BLE 	LF0B4
F0A1	17		TBA 	
F0A2	03E616		OIM 	L00E6#$16
F0A5	C110		CMPB	#$10
F0A7	2502		BCS 	LF0AB
F0A9	6F16	 LF0A9:	CLR 	
F0AB	CE0000	 LF0AB:	LDX 	#$0000
F0AE	DCC1		LDD 	L00C1
F0B0	1A		XGDX 	
F0B1	F10116		CMPB 	L0116
F0B4	2405	 LF0B4:	BCC 	LF0BB
F0B6	1A		XGDX 	
F0B7	08		INX 	
F0B8	04		LSRD 	
F0B9	20F5		BRA 	LEFC6
F0BB	1A	 LF0BB:	XGDX 	
F0BC	08		INX 	
F0BD	04		LSRD 	
F0BE	2406		BCC 	LF0C6
F0C0	1A		XGDX 	
F0C1	F70116		STAB 	L0116
F0C4	2009		BRA 	LF0CF
F0C6	26E8	 LF0C6:	BNE 	LEFE0
F0C8	7F0116		CLR 	L0116
F0CB	DCC1		LDD 	L00C1
F0CD	26DC		BNE 	LEFF3
F0CF	F60116	 LF0CF:	LDAB 	L0116
F0D2	CEFF02		LDX 	#$FF02
F0D5	3A		ABX 	
F0D6	A600		LDAA 	$00,X
F0D8	B70115		STAA 	L0115
F0DB	2708		BEQ 	LF0E5
F0DD	860C	 LF0DD:	LDAA 	#$0C
F0DF	B70138		STAA 	L0138
F0E2	0216DF	 LF0E2:	AIM 	PORT5#$DF		; clear CEL?
F0E5	0283BF	 LF0E5:	AIM 	L0083#$BF
F0E8	7ED6E9		JMP 	LD6E9
;
; zero Fuel Trim counts??? and injpw
;
F0EB	0F	 LF0EB:	SEI 	
F0EC	4F		CLRA 	
F0ED	5F		CLRB 	
F0EE	97F1		STAA 	L00F1
F0F0	DDEF		STD 	L00EF
F0F2	0297FE		AIM 	L0097#$FE
F0F5	0E		CLI 	
F0F6	39		RTS
;
;
; 	
F0F7	E133	 LF0F7:	CMPB 	
F0F9	2502		BCS 	LF0FD
F0FB	E733		STAB 	$33,X	
F0FD	39	 LF0FD:	RTS
;
;
; 	
F0FE	ED07	 LF0FE:	STD 	$07,X	
F100	ED09		STD 	$09,X
F102	ED0B		STD 	$0B,X
F104	39		RTS 
;
;
;	
F105	EC00	 LF105:	LDD 	0,X	
F107	8B08		ADDA 	#$08
F109	2504		BCS 	LF10F
F10B	8196		CMPA 	#$96
F10D	2503		BCS 	LF112
F10F	8696	 LF10F:	LDAA 	#$96
F111	5F		CLRB 	
F112	ED00	 LF112:	STD 	
F114	39		RTS 
;
;
;	
F115	5F	 LF115:	CLRB 	
F116	8658		LDAA 	#$58
F118	AB10		ADDA 	
F11A	2403		BCC 	LF11F
F11C	CCFFFF		LDD 	#$FFFF
F11F	39	 LF11F:	RTS 
;
; 
;	
F120	DEC6		LDX 	L00C6 		; get value from C6 for 16x16 maths
;
; 16*16 multiplication
; call with values in X and B
; returns with value in C1,C2
;
F122	DFC1	 LF122:	STX 	L00C1		; save X in C1, C2
F124	37	 LF124:	PSHB 			; save B
F125	96C2		LDAA 	L00C2		; A = C2
F127	3D		MUL 			
F128	DDC2		STD 	L00C2		; C2 = C2*B
F12A	96C1		LDAA 	L00C1		; A = was X
F12C	33		PULB 			; B = was B
F12D	3D		MUL 			; A*B
F12E	DBC2		ADDB 	L00C2		 
F130	8900		ADCA 	#$00
F132	DDC1		STD 	L00C1		;answer in D and C1,C2
F134	39		RTS 
;
;
;	
F135	36	 LF135:	PSHA 	
F136	37		PSHB 	
F137	A601		LDAA 	$01,X
F139	3D		MUL 	
F13A	97C9		STAA 	L00C9
F13C	33		PULB 	
F13D	A600		LDAA 	$00,X
F13F	3D		MUL 	
F140	DBC9		ADDB 	L00C9
F142	8900		ADCA 	#$00
F144	DDC8		STD 	L00C8
F146	32		PULA 	
F147	36		PSHA 	
F148	E601		LDAB	$01,X
F14A	3D		MUL 	
F14B	D3C8		ADDD 	L00C8
F14D	DDC8		STD 	L00C8
F14F	32		PULA 	
F150	56		RORB 	
F151	C480		ANDB 	#$80
F153	37		PSHB 	
F154	E600		LDAB	$00,X
F156	3D		MUL 	
F157	1A		XGDX 	
F158	33		PULB 	
F159	3A		ABX 	
F15A	3A		ABX 	
F15B	D6C8	 LF15B:	LDAB 	L00C8
F15D	3A		ABX 	
F15E	1A		XGDX 	
F15F	7800C9		ASL  	L00C9
F162	C900		ADCB 	#$00
F164	8900		ADCA 	#$00
F166	39		RTS 
;
; 960000 divided by C4,C5 (RPM calculation)
;
F167	DDC4	 LF167:	STD 	L00C4		; D->denominator
F169	CCA600		LDD 	#$A600		; numerator = $A600 
F16C	DDC2		STD 	L00C2		
F16E	CC000E		LDD 	#$000E		; numerator = $0EA600 
F171	2003		BRA 	LF176		; 32-bit/16-bit fractional division
F173	7F00C3		CLR 	L00C3
;
; Fractional Division
;
; input: A,B,L00C2,C3 = 32 bit numerator; 
;        L00C4,C5 = 16 bit denominator
;
; output: D = quotient
;         X = remainder
;
F176	1DC4	 LF176:	CPD 	L00C4		
F178	2505		BCS 	LF17F		 
F17A	CCFFFF		LDD 	#$FFFF		; denominator<=numerator, D=0.99998.... 
F17D	2019		BRA 	LF198		; return
;
F17F	CDCE0010 LF17F:LDY 	#$0010		; loop 16 times
F183	DEC2		LDX 	L00C2
F185	1A		XGDX 	
F186	05		LSLD 	
F187	1A		XGDX 	
F188	59		ROLB 	
F189	49		ROLA 	
F18A	2504		BCS 	LF190
F18C	1DC4		CPD 	L00C4
F18E	2503		BCS 	LF193
F190	93C4	 LF190:	SUBD 	L00C4
F192	08		INX 	
F193	CD09	 LF193:	DEY 	
F195	26EE		BNE 	LF0A9
F197	1A		XGDX 	
F198	39	 LF198:	RTS 
;
; do some maths before a table look up
;	
F199	DCC6	 LF199:	LDD 	L00C6
F19B	CDDFC3		STY 	LDFC3
F19E	97C5		STAA 	L00C5
F1A0	4F		CLRA 	
F1A1	05		LSLD 	
F1A2	05		LSLD 	
F1A3	05		LSLD 	
F1A4	05		LSLD 	
F1A5	37		PSHB 	
F1A6	D6C3		LDAB 	L00C3
F1A8	3D		MUL 	
F1A9	DFC1		STX 	L00C1
F1AB	D3C1		ADDD 	L00C1
F1AD	DDC1		STD 	L00C1
F1AF	DEC1		LDX 	L00C1
F1B1	3C		PSHX 	
F1B2	D6C3		LDAB 	L00C3
F1B4	3A		ABX 	
F1B5	8D0D		BSR 	LF1C4
F1B7	D7C3		STAB 	L00C3
F1B9	38		PULX 	
F1BA	8D08		BSR 	LF1C4
F1BC	D7C2		STAB 	L00C2
F1BE	32		PULA 	
F1BF	CE00C2		LDX 	#$00C2
F1C2	205F		BRA 	LF223
;
;
F1C4	96C5	 LF1C4:	LDAA 	L00C5
F1C6	5F		CLRB 	
F1C7	04		LSRD 	
F1C8	04		LSRD 	
F1C9	04		LSRD 	
F1CA	04		LSRD 	
F1CB	37		PSHB 	
F1CC	16		TAB 	
F1CD	32		PULA 	
F1CE	3A		ABX 	
F1CF	E600		LDAB	$00,X
F1D1	DBC4		ADDB 	L00C4
F1D3	D7C1		STAB 	L00C1
F1D5	E601		LDAB	$01,X
F1D7	DBC4		ADDB 	L00C4
F1D9	D7C2		STAB 	L00C2
F1DB	CE00C1		LDX 	#$00C1
F1DE	2043		BRA 	LF223
;
; look up v WTS
;
; limit to 105C to -30C	(normal running)
F1E0	CDCEA030 LF1E0:LDY 	#$A030
F1E4	2004		BRA 	LF1EA
;
; limit to 75C to -30C (warm up)
F1E6	CDCEC030 LF1E6:LDY 	#$C030		; table look up v WTS
F1EA	966D	 LF1EA:	LDAA 	WTS
F1EC	BDF2AA		JSR 	LIM2Y
F1EF	2025		BRA 	LF216		; table look up
;
; look up v RPM/2
;
F1F1	9650	 LF1F1:	LDAA 	RPM_3125	; get RPM divided by 32
F1F3	CDCEE010	LDY 	#$E010		; limits are E0, 10
F1F7	BDF2AA		JSR 	LIM2Y		;
F1FA	201A		BRA 	LF216		; table look up
;
; table look up v batt volts
;
F1FC	9658	 LF1FC:	LDAA 	BATTV		; table look up v batt volts
F1FE	8137		CMPA 	#$37		; test against 4V? (reset at 4.75V!)
F200	2402	 LF200:	BCC 	LF204
F202	86BF		LDAA 	#$BF
F204	CDCEF637 LF204:LDY 	#$F637	
F208	BDF2AA		JSR 	LIM2Y		; limit to 4V->18V
F20B	C696		LDAB 	#$96		; 150
F20D	3D		MUL 			; 150*batt volts?
F20E	200B		BRA 	LF21B
;
; Table axis scaling?
;
F210	5F	 LF210:	CLRB
F211	200A		BRA 	LF21D		; goto div by four
;
F213	5F	 LF213:	CLRB 	
F214	2006		BRA 	LF21C		; goto div by eight
;
F216	5F	 LF216:	CLRB 	
F217	2002		BRA 	LF21B		; goto div by sixteen
;
F219	5F		CLRB 	
F21A	04		LSRD 			; div by thirtytwo
F21B	04	 LF21B:	LSRD 			; div by sixteen
F21C	04	 LF21C:	LSRD 			; div by eight
F21D	04	 LF21D:	LSRD 			; div by four
F21E	04		LSRD 			; div by two
;
;
;table look up entry point?
F21F	37	 LF21F:	PSHB 	
F220	16		TAB 	
F221	32		PULA 	
F222	3A		ABX 	
F223	4D	 LF223:	TSTA 	
F224	270B		BEQ 	LF231
F226	E601		LDAB	$01,X
F228	E000		SUBB 	
F22A	2403		BCC 	LF22F
F22C	08		INX 	
F22D	50		NEGB 	
F22E	40		NEGA 	
F22F	3D	 LF22F:	MUL 	
F230	58		ASLB 	
F231	A900	 LF231:	ADCA 	
F233	16		TAB 	
F234	39		RTS 
;
;
; 16x16 multiplication?
F235	16	 LF235:	TAB 			; set up B	
F236	DEFC		LDX 	L00FC		; and X
F238	BDF122		JSR 	LF122		; to do 16x16 mult, answer in D and C1,C2
F23B	7800C3		ASL  	L00C3
F23E	59		ROLB 			; answer *2
F23F	49		ROLA 	
F240	200C		BRA 	LF24E
;
;
F242	DEFC	 LF242:LDX 	L00FC
F244	DFC4		STX 	L00C4
F246	8DED		BSR 	LF15B
F248	D3C4		ADDD 	L00C4
F24A	2002		BRA 	LF24E
F24C	D3FC	 LF24C:	ADDD 	L00FC
F24E	240F	 LF24E:	BCC 	LF25F
F250	CCFFFF		LDD 	#$FFFF
F253	200A		BRA 	LF25F
F255	DDC1	 LF255:	STD 	L00C1
F257	DCFC		LDD 	L00FC
F259	93C1		SUBD 	L00C1
F25B	2402		BCC 	LF25F
F25D	4F		CLRA 	
F25E	5F		CLRB 	
F25F	DDFC	 LF25F:STD 	L00FC		; 
F261	39		RTS
;
; Battery volt correction for injector PW??
; 	
F262	CED346	 LF262:	LDX 	#TABLE_26
F265	BDF1FC		JSR 	LF1FC			; table look up v BattVolts
F268	B70102		STAA 	L0102			; save this in L0102	
F26B	C608		LDAB 	#$08
F26D	3D		MUL 	
F26E	D3C3		ADDD 	L00C3
F270	2403		BCC 	LF275
F272	CCFFFF		LDD 	#$FFFF
F275	1C0064	 LF275:	CPD 	#$0064
F278	2402		BCC 	LF27C
F27A	C664		LDAB 	#$64
F27C	39	 LF27C:	RTS 
;
;	
F27D	04		LSRD 			;divide by 128
F27E	04		LSRD 			;divide by 64
F27F	04		LSRD 			;divide by 32
F280	04		LSRD 			;divide by 16
F281	04	 LF281:	LSRD 			;divide by 8
F282	04		LSRD 			;divide by 4
F283	04	 LF283:	LSRD 			;divide by 2
F284	C900		ADCB 	#$00		
F286	8900		ADCA 	#$00
F288	39		RTS 
;
;
;	
F289	04		LSRD 			;div by 128
F28A	04		LSRD 			;div by 64
F28B	04		LSRD 			;div by 32
F28C	04	 LF28C: LSRD 			;div by 16
F28D	04	 LF28D: LSRD 			;div by 8
F28E	04		LSRD 			;div by 4
F28F	04	 LF28F: LSRD 			;div by 2
F290	C900		ADCB 	#$00		;add carry
F292	8900		ADCA 	#$00		;add carry
F294	4D		TSTA 			;A-00
F295	2702		BEQ 	LF299		
F297	C6FF		LDAB 	#$FF
F299	39	 LF299: RTS 
;
;
; compare against limits passed in Y?
;	
F29A	CDDFC1	 LF29A: STY 	L00C1		;store in C1 and C2
F29D	91C1		CMPA 	L00C1
F29F	2402		BCC 	LF2A3
F2A1	96C1		LDAA 	L00C1
F2A3	91C2	 LF2A3: CMPA 	L00C2
F2A5	2502		BCS 	LF2A9
F2A7	96C2		LDAA 	L00C2
F2A9	39	 LF2A9: RTS 
;
; also compare against limits passed in Y?
;	
F2AA	CDDFC1	 LIM2Y:	STY 	L00C1		
F2AD	91C1		CMPA 	L00C1
F2AF	2502		BCS 	LF2B3
F2B1	96C1		LDAA 	L00C1
F2B3	90C2	 LF2B3:	SUBA 	L00C2
F2B5	2401		BCC 	LF2B8
F2B7	4F		CLRA 	
F2B8	39	 LF2B8:	RTS 
;
;
;	
F2B9	A180		CMPA 	
F2BB	2505		BCS 	LF2C2
F2BD	CD09		DEY 	
F2BF	A680		LDAA 	$80,X	
F2C1	5F		CLRB 	
F2C2	A080	 LF2C2:SUBA 	
F2C4	2402		BCC 	LF2C8
F2C6	4F		CLRA 	
F2C7	5F		CLRB 	
F2C8	EE80	 LF2C8: LDX $00,Y 	
F2CA	A180		CMPA 	
F2CC	24FA		BCC 	LF1D4
F2CE	DFC1		STX 	L00C1
F2D0	9BC1		ADDA 	L00C1
F2D2	7A00C2		DEC 	L00C2
F2D5	2703		BEQ 	LF2DA
F2D7	04		LSRD 	
F2D8	20F8		BRA 	LF1E2
F2DA	39	 LF2DA:	RTS 
;
;
;	
F2DB	DC4D	 LF2DB:	LDD 	RPMH		; Get RPM
F2DD	05		LSLD 	
F2DE	05		LSLD 			; RPM*4
F2DF	2014		BRA 	LF2F5		; L00FC*A
;
;
F2E1	DC5C	 LF2E1:	LDD 	MAPX256		
F2E3	1A	 LF2E3:	XGDX 			; X = MAP 16-bit value
F2E4	C698		LDAB 	#$98		; and B	= 152
F2E6	BDF122		JSR 	LF122		; 16x16 mult with answer in D and C1,C2
F2E9	83199A		SUBD 	#$199A		; subtract 6554
F2EC	2402		BCC 	LF2F0
F2EE	4F		CLRA 	
F2EF	5F		CLRB 	
F2F0	2001	 LF2F0:	BRA 	LF2F3
;
F2F2	04	 LF2F2:	LSRD 	;divide by 8
F2F3	04	 LF2F3:	LSRD 	;divide by 4
F2F4	04		LSRD 	;divide by 2
F2F5	8DC2	 LF2F5:	BSR 	LF235		; L00FC*A
F2F7	7EF28C		JMP 	LF28C
;
; ADC routine
; call with ADCCTRL in A
; returns result in B
;
F2FA	DD1F	 LF2FA:	STD 	ADCCR		
F2FC	21FE		BRN 	LF200	
F2FE	15FF		FDIV 			; dummy instructions implement a delay
F300	3D		MUL 	
F301	3D		MUL 	
F302	3D		MUL 	
F303	3D		MUL 	
F304	3D		MUL 	
F305	3D		MUL 	
F306	3D		MUL 	
F307	DC1F		LDD 	ADCCR		; before we get the result
F309	39		RTS
;
; repeat F318 up to eight times ????
; related to the counter at L007B ??
; 	
F30A	8D0C	 LF30A:	BSR 	LF318		;
F30C	8D0A	 LF30C:	BSR 	LF318		
F30E	8D08	 LF30E:	BSR 	LF318
F310	8D06	 LF310:	BSR 	LF318
F312	8D04	 LF312:	BSR 	LF318
F314	8D02	 LF314:	BSR 	LF318
F316	8D00	 LF316:	BSR 	LF318		; do something once times with table
;
F318	2404	 LF318:	BCC 	LF31E
F31A	A100		CMPA 	0,X
F31C	2002		BRA 	LF320
F31E	A101	 LF31E:	CMPA 	1,X	
F320	56	 LF320:	RORB 			; rotate right through carry
F321	C880		EORB 	#$80		; toggle bit7
F323	08		INX 	
F324	08		INX 			; X+2
F325	39		RTS 
;
; could be 16 x 16 multiplication ?????
;	
F326	96CD	 LF326:	LDAA 	L00CD		; get temp reg
F328	C620		LDAB 	#$20		
F32A	3D		MUL 			; multiply by 64
F32B	1A		XGDX 			; put result in X
F32C	96CE		LDAA 	L00CE		; get temp reg 2
F32E	C620		LDAB 	#$20		
F330	3D		MUL 			; multiply by 64
F331	16		TAB 			; copy MSbyte to B?
F332	3A		ABX 	
F333	DFCB		STX 	L00CB		; move original result to CB
F335	DCCD		LDD 	L00CD		; get temp reg again
F337	939A		SUBD 	L009A		; subtract L009A
F339	2404		BCC 	LF33F
F33B	40		NEGA 	
F33C	50		NEGB 	
F33D	8200		SBCA 	#$00
F33F	93CB	 LF33F:	SUBD 	L00CB
F341	39		RTS
;
;
;
;
; Input Capture 1 ISR??? – This includes the CAS
;	
F342	DE29	IC1_ISR:LDX 	FRC2			; get counter 2 in X
F344	D608		LDAB 	T1CSR1			
F346	DC0D		LDD 	T1ICR1			; clear input capture flag
F348	DC2D		LDD 	FRC3			; get FRC3 in D
F34A	DDCB		STD 	L00CB			; use FRC3 unless
F34C	87080203	BRSET 	T1CSR1,#$02,LF353	;input edge select = 1 
F350	7EF474		JMP 	LF474			; big jump!!!!!
F353	87191003 LF353:BRSET 	T1CSR3,#$10,LF35A	; input edge select 2=0
F357	1A		XGDX 				; then use FRC2
F358	DDCB		STD 	L00CB			; input edge select 2 = 1
F35A	939E	LF35A:	SUBD 	L009E			; timer – 9E
F35C	1C007D		CPD 	#$007D			; test against 7D
F35F	2406		BCC 	LF367
F361	968F		LDAA 	L008F
F363	810E		CMPA 	#$0E
F365	241F		BCC 	LF386
F367	DCCB	 LF367:	LDD 	L00CB
F369	93A0		SUBD 	L00A0
F36B	DDCD		STD 	L00CD
F36D	D690		LDAB 	L0090
F36F	2707		BEQ 	LF378
F371	4D		TSTA 	
F372	2B09		BMI 	LF37D
F374	C10E		CMPB	#$0E
F376	2205		BHI 	LF37D
F378	CCFFFF	 LF378:LDD 	#$FFFF
F37B	DDCD		STD 	L00CD
F37D	DCCB	 LF37D:LDD 	L00CB
F37F	C3000E		ADDD 	#$000E
F382	87160103	BRSET 	PORT5,#$01,LF389	; CAS is ?
F386	7EF471	 LF386:JMP 	LF471
F389	1D29	 LF389:CPD 	FRC2
F38B	2AF5		BPL	LF298
F38D	BDFD40		JSR 	LFD40			; test serial port
F390	8635		LDAA 	#$35
F392	9790		STAA 	L0090
F394	DCCB		LDD 	L00CB
F396	DDA0		STD 	L00A0
F398	8FB2FF04	BRCLR 	L00B2,#$FF,LF3A0
F39C	96CD		LDAA 	L00CD
F39E	2A11		BPL	LF3B1
F3A0	4F	 LF3A0:CLRA 	
F3A1	9798		STAA 	L0098
F3A3	9799		STAA 	L0099
F3A5	03190C		OIM 	T1CSR3#$0C		
F3A8	031A0A		OIM 	T2CSR1#$0A			;enable OC1 on positive edge
F3AB	021AF0		AIM 	T2CSR1#$F0			;clear flags, disable IC1
F3AE	7EF442		JMP 	LF442
F3B1	8F980208 LF3B1:BRCLR 	L0098,#$02,LF3BD
F3B5	87160212	BRSET 	PORT5,#$02,LF3CB		;CEL
F3B9	8F99030E	BRCLR 	L0099,#$03,LF3CB
F3BD	03190C	 LF3BD: OIM 	T1CSR3#$0C
F3C0	DE29		LDX 	FRC2
F3C2	08		INX 	
F3C3	08		INX 	
F3C4	DF2B		STX 	T2OC3				;T2 Output Compare
F3C6	DFAA		STX 	L00AA
F3C8	4F		CLRA 	
F3C9	9799		STAA 	L0099
F3CB	8F980273 LF3CB:BRCLR 	L0098,#$02,LF442
F3CF	96B1		LDAA 	L00B1
F3D1	5F		CLRB 	
F3D2	04		LSRD 	
F3D3	04		LSRD 	
F3D4	04		LSRD 	
F3D5	04		LSRD 	
F3D6	DDCB		STD 	L00CB
F3D8	96CE		LDAA 	L00CE
F3DA	C660		LDAB 	#$60
F3DC	3D		MUL 	
F3DD	97A6		STAA 	L00A6
F3DF	96CD		LDAA 	L00CD
F3E1	C660		LDAB 	#$60
F3E3	3D		MUL 	
F3E4	DBA6		ADDB 	L00A6
F3E6	8900		ADCA 	#$00
F3E8	05		LSLD 	
F3E9	2504		BCS 	LF3EF
F3EB	1DCB		CPD 	L00CB
F3ED	2502		BCS 	LF3F1
F3EF	DCCB	 LF3EF:LDD 	L00CB
F3F1	DDA6	 LF3F1:STD 	L00A6
F3F3	D6CE		LDAB 	L00CE
F3F5	869C		LDAA 	#$9C
F3F7	3D		MUL 	
F3F8	97CC		STAA 	L00CC
F3FA	96CD		LDAA 	L00CD
F3FC	C69C		LDAB 	#$9C
F3FE	3D		MUL 	
F3FF	DBCC		ADDB 	L00CC
F401	8900		ADCA 	#$00
F403	D3A4		ADDD 	L00A4
F405	93A6		SUBD 	L00A6
F407	D3A0		ADDD 	L00A0
F409	DDCB		STD 	L00CB
F40B	DCAA		LDD 	L00AA
F40D	C300FA		ADDD 	#$00FA
F410	1DCB		CPD 	L00CB
F412	2B02		BMI 	LF416
F414	DDCB		STD 	L00CB
F416	8F160220 LF416:BRCLR 	PORT5,#$02,LF43A		;CEL
F41A	87990220	BRSET 	L0099,#$02,LF43E
F41E	DC29		LDD 	FRC2
F420	C3000A		ADDD 	#$000A
F423	1A		XGDX 	
F424	9CCB		CPX 	L00CB
F426	2A02		BPL	LF42A
F428	DECB		LDX 	L00CB
F42A	DF2B	 LF42A:	STX 	T2OC3
F42C	961A		LDAA 	T2CSR1
F42E	DF2B		STX 	T2OC3
F430	DFAC		STX 	L00AC
F432	0219FB		AIM 	T1CSR3#$FB
F435	4F		CLRA 	
F436	9799		STAA 	L0099
F438	2008		BRA 	LF442
F43A	8F990304 LF43A:BRCLR 	L0099,#$03,LF442
F43E	DCCB	 LF43E:	LDD 	L00CB
F440	DDAC		STD 	L00AC
F442	9619	 LF442:	LDAA 	T1CSR3
F444	840C		ANDA 	#$0C
F446	8A42		ORAA 	#$42
F448	D608		LDAB 	T1CSR1
F44A	C419		ANDB 	#$19
F44C	DE0D		LDX 	T1ICR1
F44E	9719		STAA 	T1CSR3
F450	D708		STAB 	T1CSR1
F452	8618		LDAA 	#$18
F454	87064001	BRSET 	PORT3,#$40,LF459		;watchdog?
F458	48		ASLA 	
F459	B7012A	 LF459:	STAA 	L012A
F45C	C650		LDAB 	#$50
F45E	D78D		STAB 	L008D
F460	8F830203	BRCLR 	L0083,#$02,LF467
F464	038304		OIM 	L0083#$04
F467	C614	 LF467:	LDAB 	#$14
F469	D789		STAB 	L0089
F46B	7F00E5		CLR 	L00E5
F46E	038303		OIM 	L0083#$03
F471	7EF7C2	 LF471:	JMP 	LF7C2			; big jump to test serial port
F474	8F191003 LF474:BRCLR 	T1CSR3,#$10,LF47B	; we just jumped a load of code!!
F478	1A		XGDX 	
F479	DDCB		STD 	L00CB
F47B	93A0	 LF47B:	SUBD 	L00A0
F47D	1C00FA		CPD 	#$00FA
F480	2406		BCC 	LF488
F482	9690		LDAA 	L0090
F484	810E		CMPA 	#$0E
F486	244D		BCC 	LF4D5
F488	DCCB	 LF488:LDD 	L00CB
F48A	939E		SUBD 	L009E
F48C	DDCD		STD 	L00CD
F48E	D68F		LDAB 	L008F
F490	2707		BEQ 	LF499
F492	4D		TSTA 	
F493	2B09		BMI 	LF49E
F495	C10E		CMPB	#$0E
F497	2205		BHI 	LF49E
F499	CCFFFF	 LF499:LDD 	#$FFFF
F49C	DDCD		STD 	L00CD
F49E	9698	 LF49E:LDAA 	L0098
F4A0	8405		ANDA 	#$05
F4A2	48		ASLA 	
F4A3	8A35		ORAA 	#$35
F4A5	DECD		LDX 	L00CD
F4A7	8C061A		CPX 	#$061A
F4AA	251E		BCS 	LF4CA
F4AC	84DF		ANDA 	#$DF
F4AE	8C1081		CPX 	#$1081
F4B1	2502		BCS 	LF4B5
F4B3	84FB		ANDA 	#$FB
F4B5	8C1306	 LF4B5:CPX 	#$1306
F4B8	2502		BCS 	LF4BC
F4BA	84EF		ANDA 	#$EF
F4BC	C649	 LF4BC:LDAB 	#$49
F4BE	8502		BITA 	#$02
F4C0	2602		BNE 	LF4C4
F4C2	C63A		LDAB 	#$3A
F4C4	D1CD	 LF4C4:CMPB 	L00CD
F4C6	2202		BHI 	LF4CA
F4C8	84FE		ANDA 	#$FE
F4CA	97CF	 LF4CA:	STAA 	L00CF
F4CC	DCCB		LDD 	L00CB
F4CE	C3000E		ADDD 	#$000E
F4D1	8F160103	BRCLR 	PORT5,#$01,LF4D8		;CAS?
F4D5	7EF7C2	 LF4D5:	JMP 	LF7C2
;
;
F4D8	1D29	 LF4D8:	CPD 	FRC2
F4DA	2AF5		BPL	LF3E7
F4DC	BDFD40		JSR 	LFD40		; test serial port
F4DF	DCCB		LDD 	L00CB
F4E1	DD9E		STD 	L009E
F4E3	96CF		LDAA 	L00CF
F4E5	9798		STAA 	L0098
F4E7	8635		LDAA 	#$35
F4E9	978F		STAA 	L008F
F4EB	DCA2		LDD 	L00A2
F4ED	830027		SUBD 	#$0027
F4F0	96B0		LDAA 	L00B0
F4F2	11		CBA 	
F4F3	230B		BLS 	LF500
F4F5	CB3B		ADDB	#$3B
F4F7	2512		BCS 	LF50B
F4F9	11		CBA 	
F4FA	250F		BCS 	LF50B
F4FC	C003		SUBB 	#$03
F4FE	200C		BRA 	LF50C
F500	C011	 LF500:	SUBB 	#$11
F502	2507		BCS 	LF50B
F504	11		CBA 	
F505	2204		BHI 	LF50B
F507	CB03		ADDB	#$03
F509	2001		BRA 	LF50C
F50B	16	 LF50B:	TAB 	
F50C	CE0027	 LF50C:	LDX 	#$0027
F50F	3A		ABX 	
F510	DFA2		STX 	L00A2
F512	DBB5		ADDB 	L00B5				; 
F514	D7AF		STAB 	SPKADV				; spark advance (diag?)
F516	8F980164	BRCLR 	L0098,#$01,LF57E
F51A	8F064060	BRCLR 	PORT3,#$40,LF57E		; watchdog?
F51E	8F02305C	BRCLR 	PORT1,#$30,LF57E
F522	8798020C	BRSET 	L0098,#$02,LF532
F526	BDF326		JSR 	LF326
F529	2453		BCC 	LF57E
F52B	DECD		LDX 	L00CD
F52D	DF9A		STX 	L009A
F52F	7EF63E		JMP 	LF63E
F532	8798203D LF532:BRSET 	L0098,#$20,LF573
F536	96CD		LDAA 	L00CD
F538	8118		CMPA 	#$18
F53A	2307		BLS 	LF543
F53C	BDF326		JSR 	LF326
F53F	2502		BCS 	LF543
F541	203B		BRA 	LF57E
F543	DCCD	 LF543:	LDD 	L00CD
F545	811D		CMPA 	#$1D
F547	242A		BCC 	LF573
F549	04		LSRD 	
F54A	04		LSRD 	
F54B	04		LSRD 	
F54C	04		LSRD 	
F54D	04		LSRD 	
F54E	04		LSRD 	
F54F	DDCB		STD 	L00CB
F551	DC9A		LDD 	L009A
F553	93CD		SUBD 	L00CD
F555	240E		BCC 	LF565
F557	DCCD		LDD 	L00CD
F559	939A		SUBD 	L009A
F55B	93CB		SUBD 	L00CB
F55D	2514		BCS 	LF573
F55F	D3CD		ADDD 	L00CD
F561	251B		BCS 	LF57E
F563	2010		BRA 	LF575
F565	93CB	 LF565:	SUBD 	L00CB
F567	250A		BCS 	LF573
F569	DDCB		STD 	L00CB
F56B	DCCD		LDD 	L00CD
F56D	93CB		SUBD 	L00CB
F56F	250D		BCS 	LF57E
F571	2002		BRA 	LF575
F573	DCCD	 LF573:	LDD 	L00CD
F575	DD9C	 LF575:	STD 	L009C
F577	2B05		BMI 	LF57E
F579	1C0146		CPD 	#$0146
F57C	2403		BCC 	LF581
F57E	7EF637	 LF57E:	JMP 	LF637
F581	DCCD	 LF581:	LDD 	L00CD
F583	DD9A		STD 	L009A
F585	D6A3		LDAB 	L00A3
F587	969D		LDAA 	L009D
F589	3D		MUL 	
F58A	97CB		STAA 	L00CB
F58C	96A3		LDAA 	L00A3
F58E	D69C		LDAB 	L009C
F590	3D		MUL 	
F591	DBCB		ADDB 	L00CB
F593	8900		ADCA 	#$00
F595	8FA2FF02	BRCLR 	L00A2,#$FF,LF59B
F599	D39C		ADDD 	L009C
F59B	04	 LF59B:	LSRD 	
F59C	DDA4		STD 	L00A4
F59E	8F160252	BRCLR 	PORT5,#$02,LF5F4		;CEL
F5A2	8602		LDAA 	#$02
F5A4	9799		STAA 	L0099
F5A6	8F980406	BRCLR 	L0098,#$04,LF5B0
F5AA	DCA6		LDD 	L00A6
F5AC	87980816	BRSET 	L0098,#$08,LF5C6
F5B0	96B1	 LF5B0:	LDAA 	L00B1
F5B2	5F		CLRB 	
F5B3	04		LSRD 	
F5B4	04		LSRD 	
F5B5	04		LSRD 	
F5B6	04		LSRD 	
F5B7	DDCD		STD 	L00CD
F5B9	DC9C		LDD 	L009C
F5BB	831130		SUBD 	#$1130
F5BE	2508		BCS 	LF5C8
F5C0	04		LSRD 	
F5C1	04		LSRD 	
F5C2	04		LSRD 	
F5C3	04		LSRD 	
F5C4	D3CD		ADDD 	L00CD
F5C6	DDCD	 LF5C6:	STD 	L00CD
F5C8	DCA4	 LF5C8:	LDD 	L00A4
F5CA	93CD		SUBD 	L00CD
F5CC	D39E		ADDD 	L009E
F5CE	DDCD		STD 	L00CD
F5D0	DCAA		LDD 	L00AA
F5D2	C300FA		ADDD 	#$00FA
F5D5	1DCD		CPD 	L00CD
F5D7	2B02		BMI 	LF5DB
F5D9	DDCD		STD 	L00CD
F5DB	DC29	 LF5DB:	LDD 	FRC2
F5DD	C3000A		ADDD 	#$000A
F5E0	1A		XGDX 	
F5E1	9CCD		CPX 	L00CD
F5E3	2A02		BPL	LF5E7
F5E5	DECD		LDX 	L00CD
F5E7	DF2B	 LF5E7:	STX 	T2OC3
F5E9	961A		LDAA 	T2CSR1
F5EB	DF2B		STX 	T2OC3
F5ED	DFA8		STX 	L00A8
F5EF	0219FB		AIM 	T1CSR3#$FB
F5F2	2009		BRA 	LF5FD
F5F4	DE29	 LF5F4:	LDX 	FRC2
F5F6	09		DEX 	
F5F7	DF2B		STX 	T2OC3
F5F9	8601		LDAA 	#$01
F5FB	9799		STAA 	L0099
F5FD	DCA4	 LF5FD:	LDD 	L00A4
F5FF	D39E		ADDD 	L009E
F601	DDAA		STD 	L00AA
F603	9699		LDAA 	L0099
F605	8102		CMPA 	#$02
F607	2717		BEQ 	LF620
F609	DC29		LDD 	FRC2
F60B	C30006		ADDD 	#$0006
F60E	1A		XGDX 	
F60F	9CAA		CPX 	L00AA
F611	2A02		BPL	LF615
F613	DEAA		LDX 	L00AA
F615	DF2B	 LF615:STX 	T2OC3
F617	961A		LDAA 	T2CSR1
F619	DF2B		STX 	T2OC3
F61B	03190C		OIM 	T1CSR3#$0C
F61E	DFAA		STX 	L00AA
F620	DC9C	 LF620:LDD 	L009C
F622	93A6		SUBD 	L00A6
F624	D3A4		ADDD 	L00A4
F626	D39E		ADDD 	L009E
F628	DDAC		STD 	L00AC
F62A	DCAA		LDD 	L00AA
F62C	C300FA		ADDD 	#$00FA
F62F	1DAC		CPD 	L00AC
F631	2B02		BMI 	LF635			; branch if minus
F633	DDAC		STD 	L00AC
F635	202E	 LF635:BRA 	LF665
F637	DECD	 LF637:LDX 	L00CD
F639	DF9A		STX 	L009A
F63B	4F		CLRA 	
F63C	2002		BRA 	LF640
F63E	8601	 LF63E:LDAA 	#$01
F640	9798	 LF640:STAA 	L0098
F642	DE29		LDX 	FRC2
F644	09		DEX 	
F645	DF2B		STX 	T2OC3
F647	961A		LDAA 	T2CSR1
F649	DF2B		STX 	T2OC3
F64B	0219FB		AIM 	T1CSR3#$FB
F64E	8609		LDAA 	#$09
F650	971A		STAA 	T2CSR1
F652	4F		CLRA 	
F653	971A		STAA 	T2CSR1
F655	DC9A		LDD 	L009A
F657	DD9C		STD 	L009C
F659	4F		CLRA 	
F65A	CE00C7		LDX 	#$00C7
F65D	DFA2		STX 	L00A2
F65F	9799		STAA 	L0099			
F661	86A0		LDAA 	#$A0		; 160 = 5 degrees
F663	97AF		STAA 	SPKADV		; ignition timing
F665	BDFD40	 LF665:	JSR 	LFD40		; test serial port
;
;
;
F668	DC9A		LDD 	L009A
F66A	05		LSLD 	
F66B	2402		BCC 	LF66F
F66D	86FF		LDAA 	#$FF
;
;	timer interrupt ????
; 	CAS is done in this interrupt
;
F66F	97AE	 LF66F:	STAA 	L00AE
F671	9619		LDAA 	T1CSR3
F673	840C		ANDA 	#$0C
F675	8A52		ORAA 	#$52
F677	D608		LDAB 	T1CSR1
F679	C419		ANDB 	#$19
F67B	CA02		ORAB 	#$02
F67D	DE0D		LDX 	T1ICR1
F67F	9719		STAA 	T1CSR3
F681	D708		STAB 	T1CSR1
F683	8633		LDAA 	#$33
F685	97B2		STAA 	L00B2
F687	CE0184		LDX 	#$0184			;Shuffle the CAS buffer
F68A	EC04		LDD 	$4,X
F68C	ED06		STD 	$6,X
F68E	EC02		LDD 	$2,X
F690	ED04		STD 	$4,X
F692	EC00		LDD 	$0,X
F694	ED02		STD 	$2,X
F696	DC9A		LDD 	L009A			;get timer value??
F698	04		LSRD 				;timer/2?
F699	ED00		STD 	0,X			;store latest CAS value
F69B	03B380		OIM 	L00B3#$80		; set L00B3 (CAS updated)
F69E	8F1A4003	BRCLR 	T2CSR1,#$40,LF6A5
F6A2	BDFD03		JSR 	LFD03
F6A5	96B4	 LF6A5:LDAA 	L00B4
F6A7	2701		BEQ 	LF6AA
F6A9	4A		DECA 	
F6AA	8FB30105 LF6AA:BRCLR 	L00B3,#$01,LF6B3	; injector status??? 
F6AE	02B3FC		AIM 	L00B3#$FC		; clear L00B3 bits1,0
F6B1	8606		LDAA 	#$06
F6B3	97B4	 LF6B3:STAA 	L00B4
F6B5	2603		BNE 	LF6BA
F6B7	03B306		OIM 	L00B3#$06		; L00B3?
F6BA	9674	 LF6BA:	LDAA 	L0074
F6BC	812E		CMPA 	#$2E
F6BE	2504		BCS 	LF6C4
F6C0	87970245	BRSET 	L0097,#$02,LF709
;
; Load a value from LFFAA to LFFB0
;
F6C4	CEFFAA	 LF6C4:	LDX 	#$FFAA
F6C7	E600		LDAB	$00,X			;B=FFAA
F6C9	8F788008	BRCLR 	L0078,#$80,LF6D5
F6CD	8F7A0219	BRCLR 	L007A,#$02,LF6EA
F6D1	87974015	BRSET 	L0097,#$40,LF6EA
F6D5	877E1003 LF6D5:BRSET 	L007E,#$10,LF6DC
F6D9	CEFFAD		LDX 	#$FFAD
F6DC	E601	 LF6DC:	LDAB	$01,X			;B=FFAE
F6DE	8F7B1008	BRCLR 	L007B,#$10,LF6EA
F6E2	E602		LDAB	$02,X			;B=FFAF
F6E4	8F7B2002	BRCLR 	L007B,#$20,LF6EA
F6E8	E603		LDAB	$03,X			;B=FFB0
F6EA	9674	 LF6EA:	LDAA 	L0074
F6EC	812E		CMPA 	#$2E
F6EE	2506		BCS 	LF6F6
F6F0	4F		CLRA 	
F6F1	50		NEGB 	
F6F2	8200		SBCA 	#$00
F6F4	2001		BRA 	LF6F7
F6F6	4F	 LF6F6:	CLRA 	
F6F7	D3E9	 LF6F7:	ADDD 	L00E9
F6F9	8161		CMPA 	#$61
F6FB	2403		BCC 	LF700
F6FD	8661	 LF6FD:	LDAA 	#$61
F6FF	5F		CLRB 	
F700	81A8	 LF700:	CMPA 	#$A8
F702	2503		BCS 	LF707
F704	86A8		LDAA 	#$A8
F706	5F		CLRB 	
F707	DDE9	 LF707:STD 	L00E9
F709	96F2	 LF709:LDAA 	L00F2
F70B	2703		BEQ 	LF710
F70D	4A		DECA 	
F70E	97F2		STAA 	L00F2
F710	8680	 LF710:LDAA 	#$80
F712	8F81101A	BRCLR 	L0081,#$10,LF730
F716	96F2		LDAA 	L00F2
F718	2718		BEQ 	LF732
F71A	DCE9		LDD 	L00E9
F71C	C30080		ADDD 	#$0080
F71F	16		TAB 	
F720	4F		CLRA 	
F721	D3EF		ADDD 	L00EF
F723	DDEF		STD 	L00EF
F725	7A00F1		DEC 	L00F1
F728	260E		BNE 	LF738
F72A	039701		OIM 	L0097#$01
F72D	C30080		ADDD 	#$0080
F730	97E8	 LF730:STAA 	STFT
F732	4F	 LF732:CLRA 	
F733	5F		CLRB 	
F734	97F1		STAA 	L00F1
F736	DDEF		STD 	L00EF
F738	96F6	 LF738:LDAA 	L00F6
F73A	90F7		SUBA 	L00F7
F73C	2401		BCC 	LF73F
F73E	4F		CLRA 	
F73F	97F9	 LF73F:STAA 	L00F9
F741	D6F8		LDAB 	L00F8
F743	87DA0821	BRSET 	L00DA,#$08,LF768
F747	B60154		LDAA 	L0154
F74A	261C		BNE 	LF768
F74C	877E200A	BRSET 	L007E,#$20,LF75A
F750	87822806	BRSET 	L0082,#$28,LF75A
F754	9670		LDAA 	TPSA
F756	817B		CMPA 	#$7B
F758	240E		BCC 	LF768
F75A	87788008 LF75A:BRSET 	L0078,#$80,LF766
F75E	87070806	BRSET 	PORT4,#R302,LF768	; AT/MT config
F762	968B		LDAA 	L008B
F764	2702		BEQ 	LF768
F766	C6DA	 LF766:LDAB 	#$DA
F768	87824015 LF768:BRSET 	L0082,#$40,LF781
F76C	87810411	BRSET 	L0081,#$04,LF781
F770	87DA080D	BRSET 	L00DA,#$08,LF781
F774	8F951009	BRCLR 	O2STAT,#$10,LF781
F778	B60130		LDAA 	L0130
F77B	2704		BEQ 	LF781
F77D	8F950118	BRCLR 	O2STAT,#$01,LF799	; rich/lean?
F781	8F070808 LF781:BRCLR 	PORT4,#R302,LF78D	; AT/MT config
F785	8FDA0804	BRCLR 	L00DA,#$08,LF78D
F789	96DD		LDAA 	L00DD
F78B	2607		BNE 	LF794
F78D	96F6	 LF78D:LDAA 	L00F6
F78F	3D		MUL 	
F790	97F6		STAA 	L00F6
F792	97F7		STAA 	L00F7
F794	0297F7	 LF794:AIM 	L0097#$F7
F797	2007		BRA 	LF7A0
F799	96F6	 LF799:LDAA 	L00F6
F79B	2703		BEQ 	LF7A0
F79D	039708		OIM 	L0097#$08
F7A0	96DD	 LF7A0:LDAA 	L00DD
F7A2	2701		BEQ 	LF7A5
F7A4	4A		DECA 	
F7A5	97DD	 LF7A5:STAA 	L00DD
F7A7	C6C0		LDAB 	#$C0
F7A9	8F78800E	BRCLR 	L0078,#$80,LF7BB
F7AD	87781006	BRSET 	L0078,#$10,LF7B7
F7B1	8F7A0208	BRCLR 	L007A,#$02,LF7BD
F7B5	2004		BRA 	LF7BB
F7B7	8F7A4002 LF7B7:BRCLR 	L007A,#$40,LF7BD
F7BB	C6F0	 LF7BB:LDAB 	#$F0
F7BD	96FA	 LF7BD:LDAA 	L00FA
F7BF	3D		MUL 	
F7C0	97FA		STAA 	L00FA
F7C2	BDFD40	 LF7C2:	JSR 	LFD40			; test serial port
F7C5	3B		RTI
;
; Input Capture 2 ISR
; Injector Handler
; 	
F7C6	9618	IC2_ISR:LDAA 	T1CSR2
F7C8	DE1D		LDX 	T1ICR2
F7CA	87B3010C	BRSET 	L00B3,#$01,LF7DA	; injector status??
F7CE	03B301		OIM 	L00B3#$01		; set injector status bit
F7D1	87810305	BRSET 	L0081,#$03,LF7DA	; ???
F7D5	DCFE		LDD 	INJPWH			; begin injector pulse?
F7D7	BDF7DB		JSR 	LF7DB			; set up injector pulse
F7DA	3B	 LF7DA:	RTI 
;
;  Set up injector pulse??
;	
F7DB	DDCB	 LF7DB:	STD 	L00CB			; pulsewidth into L00CB
F7DD	DC0B		LDD 	T1OCR1			; get T1 Output Compare reg	
F7DF	9309		SUBD 	FRC1			; subtract FRC1
F7E1	8F02080A	BRCLR 	PORT1,#$08,LF7EF	; test P13 (through IC2)
F7E5	01		NOP				
F7E6	830014		SUBD 	#$0014			; subtract 14 from whats left
F7E9	2504		BCS 	LF7EF			; overflow?
F7EB	93CB		SUBD 	L00CB			; no subtract inj pw
F7ED	2413		BCC 	LF802			; return
F7EF	031820	 LF7EF:	OIM 	T1CSR2#$20		; set output level 4/P13
F7F2	DC09		LDD 	FRC1			; get FRC1 
F7F4	C30005		ADDD 	#$0005			; add 5
F7F7	DD0B		STD 	T1OCR1			; output compare in 5?
F7F9	21FE		BRN 	LF6FD			; branch back?		
F7FB	0218DF		AIM 	T1CSR2#$DF		; otherwise clear level 4/P13
F7FE	D3CB		ADDD 	L00CB			; add inj. pulsewidth
F800	DD0B		STD 	T1OCR1			; set up output compare
F802	39	 LF802:	RTS 
;
;
;
; RTI ISR
;	
F803	9626 RTI_ISR:	LDAA 	RTICR			;RTI control reg.
F805	9627		LDAA 	RTIFCR			;RTI freq control reg.
F807	7C0084		INC 	L0084			;increment L0084
F80A	8F023004	BRCLR 	PORT1,#$30,LF812	;test 
F80E	8706401A	BRSET 	PORT3,#$40,LF82C	;watchdog
F812	87160116 LF812:BRSET 	PORT5,#$01,LF82C	;CAS
F816	4F		CLRA 	
F817	9798		STAA 	L0098
F819	9799		STAA 	L0099
F81B	8633		LDAA 	#$33
F81D	97B2		STAA 	L00B2
F81F	87088009	BRSET 	T1CSR1,#$80,LF82C	; test input capture 1 flag
F823	0219FB		AIM 	T1CSR3#$FB		; clear level????
F826	DE29		LDX 	FRC2			; get FRC2
F828	08		INX 	
F829	08		INX 				; add 2
F82A	DF2B		STX 	T2OC3			; set up T2 OC3 (16-bit?)
F82C	B60114	 LF82C:	LDAA 	L0114			; IAC DC
F82F	4C		INCA 	
F830	8132		CMPA 	#$32
F832	2501		BCS 	LF835
F834	4F		CLRA 	
F835	B70114	 LF835:	STAA 	L0114
F838	91D8		CMPA 	IACADJM			;IAC ADJ MON.
F83A	2405		BCC 	LF841
F83C	02167F		AIM 	PORT5#$7F		;DIAG SW?
F83F	2003		BRA 	LF844
F841	031680	 LF841:	OIM 	PORT5#$80		;DIAG SW?
F844	01	 LF844:	NOP	
F845	01		NOP	
F846	01		NOP	
F847	8FD2400D	BRCLR 	L00D2,#$40,LF858
F84B	DC09		LDD 	FRC1
F84D	B30196		SUBD 	L0196
F850	1C0780		CPD 	#$0780
F853	2503		BCS 	LF858
F855	BDFD5B		JSR 	LFD5B		; reset serial port
F858	8F840101 LF858:BRCLR 	L0084,#$01,LF85D	;next subroutine
F85C	3B		RTI 
;
; RTI_SUB1
;	
F85D	0226BF	 LF85D:AIM 	RTICR#$BF		; clear RTI IF???
F860	0E		CLI 				; enable interrupts
F861	9687		LDAA 	L0087			; watchdog counter???
F863	2706		BEQ 	LF86B
F865	962F		LDAA 	PORT6			; 
F867	8820		EORA 	#$20			
F869	972F		STAA 	PORT6			;toggle watchdog?
F86B	9691	 LF86B:LDAA 	L0091
F86D	2705		BEQ 	LF874
F86F	4A		DECA 	
F870	9791		STAA 	L0091
F872	2003		BRA 	LF877
F874	02DAFD	 LF874:AIM 	L00DA#$FD
F877	D685	 LF877:LDAB 	L0085
F879	790085		ROL 	L0085
F87C	9602		LDAA 	PORT1
F87E	49		ROLA 	
F87F	760085		ROR 	L0085
F882	D885		EORB 	L0085
F884	2A10		BPL	LF896
F886	D691		LDAB 	L0091
F888	2708		BEQ 	LF892
F88A	C664		LDAB 	#$64
F88C	F7013C		STAB 	L013C
F88F	03DA02		OIM 	L00DA#$02
F892	C6C8	 LF892:LDAB 	#$C8
F894	D791		STAB 	L0091
F896	8F840303 LF896:BRCLR 	L0084,#$03,LF89D
F89A	7EFBA2		JMP 	LFBA2
F89D	CE0086	 LF89D:LDX 	#$0086
F8A0	C60B		LDAB 	#$0B
F8A2	A600		LDAA 	$00,X
F8A4	2702		BEQ 	LF8A8
F8A6	6A00		DEC 	
F8A8	08	 LF8A8:INX 	
F8A9	5A		DECB 	
F8AA	26F6		BNE 	LF7B6
F8AC	9686		LDAA 	L0086			; whats this ?????
F8AE	2606		BNE 	LF8B6			; Vehicle Speed Routine
F8B0	038605		OIM 	L0086#$05
F8B3	038501		OIM 	L0085#$01
;
; Get vehicle speed this appears to be a down counter not a pulse accumulator?
;
F8B6	9692	 LF8B6: LDAA 	PAGate			; get the gate time
F8B8	2703		BEQ 	LF8BD				; is it zero?
F8BA	4A			DECA 						; no decrement
F8BB	260F		BNE 	LF8CC				; and quit
; if the gate time has reached zero
F8BD	86FF	 LF8BD:	LDAA 	#$FF			
F8BF	87248002	BRSET 	PACTL,#$80,LF8C5	; if Pulse accumulator has overflowed then VSS = max speed
F8C3	9625		LDAA 	PACNT				; else VSS = pulse accumulator count
F8C5	9793	 LF8C5:	STAA 	VSS				; Store VSS
F8C7	4F			CLRA 	
F8C8	9725		STAA 	PACNT				; reset pulse accumulator
F8CA	868D		LDAA 	#$8D				
F8CC	9792	 LF8CC:	STAA 	PAGate			; reset gate time = 8D*RTI period ???
;
;
;
F8CE	8F840703	BRCLR 	L0084,#$07,LF8D5
F8D2	7EF9DB		JMP 	LF9DB			; skip to do O2 sensor
;
; Set up and execute A/D conversion for TPS
; Do the idle values if appropriate or do TPS Angle (TPSA)
; buffer this and do a bunch of tests
;
F8D5	860F	 LF8D5:	LDAA 	#$0F			; ADC GO + channel 7
F8D7	0F		SEI 	
F8D8	BDF2FA		JSR 	LF2FA			; ADC routine returns double = ADCCTL
F8DB	0E		CLI 	
F8DC	D75B		STAB 	TPSV			; Store TPS Volts
F8DE	C1F8		CMPB	#$F8			; upper limit
F8E0	2209		BHI 	LF8EB
F8E2	C108		CMPB	#$08			; lower limit
F8E4	2505		BCS 	LF8EB
F8E6	0282F7		AIM 	L0082#$F7
F8E9	2008		BRA 	LF8F3
F8EB	038208	 LF8EB:	OIM 	L0082#$08
F8EE	8628		LDAA 	#$28
F8F0	B70128		STAA 	L0128
F8F3	DC41	 LF8F3:	LDD 	L0041			 ; get TPS idle values
F8F5	53		COMB 	
F8F6	11		CBA 				; test for valid
F8F7	270B		BEQ 	LF904			; OK skip fault tests?
F8F9	0243FB		AIM 	#$FB
F8FC	034302		OIM 	L0043#$02		; set L0043, bit 1 = new TPS value
F8FF	CC39C6		LDD 	#$39C6			
F902	DD41		STD 	L0041			; idle default values = 39C6 
F904	8F79803F LF904:BRCLR 	L0079,#$80,LF947
F908	8781033B	BRSET 	L0081,#$03,LF947
F90C	872F0837	BRSET 	PORT6,#$08,LF947	; TO VSV - if TO VSV is set then don't test idle sw?
F910	965B		LDAA 	TPSV			; get TPS volts
F912	811D		CMPA 	#$1D
F914	2531		BCS 	LF947
F916	8139		CMPA 	#$39
F918	222D		BHI 	LF947
F91A	87430408	BRSET 	L0043,#$04,LF926
F91E	9141		CMPA 	L0041			; idle value?
F920	2404		BCC 	LF926
F922	16		TAB 	
F923	53		COMB 	
F924	DD41		STD 	L0041			; idle value
F926	90E7	 LF926:SUBA 	L00E7			; TPSV
F928	251D		BCS 	LF947
F92A	8101		CMPA 	#$01
F92C	2219		BHI 	LF947
F92E	B60126		LDAA 	L0126
F931	261D		BNE 	LF950
F933	96E7		LDAA 	L00E7			; TPSV
F935	9141		CMPA 	L0041			; idle value
F937	2307		BLS 	LF940
F939	87482013	BRSET 	FCODES2,#$20,LF950	; bra if idle sw s/c
F93D	9641		LDAA 	L0041			; get idle value?
F93F	4C		INCA 				; do two’s complement
F940	16	 LF940:	TAB 				
F941	53		COMB 				 
F942	DD41		STD 	L0041			; store both idle values?
F944	034304		OIM 	L0043#$04		; set L0043 bit 4
F947	965B	 LF947:	LDAA 	TPSV
F949	97E7		STAA 	L00E7			; TPSV
F94B	8678		LDAA 	#$78			
F94D	B70126		STAA 	L0126			; L0126 = 120
F950	8743040A LF950:BRSET 	L0043,#$04,LF95E
F954	B60128		LDAA 	L0128
F957	2705		BEQ 	LF95E
F959	CC39C6		LDD 	#$39C6
;
;
;copy 
F95C	DD41		STD 	L0041		; idle value?	
F95E	DC71	 LF95E:	LDD 	TPSA2		; get L0071,L0072
F960	DD72		STD 	TPSA3		; and shift down to L0072,L0073
F962	D670		LDAB 	TPSA1		; get L0070 in A
F964	965B		LDAA 	TPSV		; and TPSV in B
F966	9041		SUBA 	L0041		; idle value?
F968	2401		BCC 	LF96B		; bra if not at idle?
F96A	4F		CLRA 			; zero TPSA?
F96B	DD70	 LF96B:	STD 	TPSA1		; store TPSA1 and TPSA??????
F96D	9670		LDAA 	TPSA1		; get TPSA1
F96F	9072		SUBA 	TPSA3		; subtract TPSA3
F971	2401		BCC 	LF974
F973	40		NEGA 	
F974	8F830804 LF974:BRCLR 	L0083,#$08,LF97C
F978	8101		CMPA 	#$01
F97A	2002		BRA 	LF97E
F97C	8103	 LF97C:CMPA 	#$03
F97E	2509	 LF97E:BCS 	LF989
F980	8628		LDAA 	#$28
F982	978A		STAA 	L008A
F984	038308		OIM 	L0083#$08	; L0083, bit7 is a TPS test
F987	2003		BRA 	LF98C
F989	0283F7	 LF989:	AIM 	L0083#$F7
F98C	D670	 LF98C:	LDAB 	TPSA1		; get TPSA1
F98E	C18F		CMPB	#$8F		; TPSA1–71degs
F990	2421		BCC 	LF9B3		
F992	D171		CMPB 	TPSA2		; TPSA2
F994	221D		BHI 	LF9B3
F996	9673		LDAA 	TPSA4		; TPSA4
F998	10		SBA 	
F999	2518		BCS 	LF9B3
F99B	8103		CMPA 	#$03
F99D	2514		BCS 	LF9B3
F99F	9671		LDAA 	TPSA2		; TPSA2
F9A1	9070		SUBA 	TPSA1		; TPSA1
F9A3	C603		LDAB 	#$03
F9A5	3D		MUL 	
F9A6	4D		TSTA 	
F9A7	2605		BNE 	LF9AE
F9A9	0F		SEI 	
F9AA	DBFA		ADDB 	L00FA
F9AC	2402		BCC 	LF9B0
F9AE	C6FF	 LF9AE:	LDAB 	#$FF
F9B0	D7FA	 LF9B0:	STAB 	L00FA
F9B2	0E		CLI 	
F9B3	8781031E LF9B3:BRSET 	L0081,#$03,LF9D5
F9B7	8782281A	BRSET 	L0082,#$28,LF9D5
F9BB	B60128		LDAA 	L0128
F9BE	2615		BNE 	LF9D5
F9C0	87070807	BRSET 	PORT4,#R302,LF9CB	; AT/MT config
F9C4	B6014E		LDAA 	L014E
F9C7	8B06		ADDA 	#$06
F9C9	250A		BCS 	LF9D5
F9CB	9670	 LF9CB:	LDAA 	TPSA1
F9CD	9073		SUBA 	TPSA4
F9CF	2507		BCS 	LF9D8
F9D1	8103		CMPA 	#$03
F9D3	2503		BCS 	LF9D8
F9D5	7F00FA	 LF9D5:	CLR 	L00FA
F9D8	7EFB2F	 LF9D8:	JMP 	LFB2F
;
; do O2 sensor
;
F9DB	860E	 LF9DB:	LDAA 	#$0E			; ADC GO + channel 6 
F9DD	0F		SEI 	
F9DE	BDF2FA		JSR 	LF2FA			; call ADC routine
F9E1	0E		CLI 	
F9E2	D75A		STAB 	O2SENSE			; O2 sensor volts
F9E4	4F		CLRA 	
F9E5	5F		CLRB 	
F9E6	8F070802	BRCLR 	PORT4,#R302,LF9EC	; test for emissions ECU ????
F9EA	CB28		ADDB	#$28			; no set B = 0.78V
F9EC	7EFED1	 LF9EC:	JMP 	LFED1			; not code !!!!!!!!!!
F9EF	01		NOP	
F9F0	CB14	 LF9F0:	ADDB	#$14			; B = 20
F9F2	C3D52F	 LF9F2:	ADDD 	#$D52F			; D52F is base address
F9F5	1A		XGDX 				; X = stuff + D52F
F9F6	5F		CLRB 	
F9F7	8F788004	BRCLR 	L0078,#$80,LF9FF
F9FB	87974008	BRSET 	L0097,#$40,LFA07
F9FF	D696	 LF9FF:	LDAB 	L0096			 
FA01	C10A		CMPB	#$0A			
FA03	2502		BCS 	LFA07			; bra if L0096 > 0A
FA05	C00A		SUBB 	#$0A
FA07	58	 LFA07:	ASLB 	
FA08	9674		LDAA 	L0074
FA0A	812E		CMPA 	#$2E
FA0C	2401		BCC 	LFA0F
FA0E	5C		INCB 	
FA0F	3A	 LFA0F:	ABX 				; add B to X
FA10	965A		LDAA 	O2SENSE			; A = O2 sensor voltage
FA12	E600		LDAB	$00,X			; load B from table
FA14	2605		BNE 	LFA1B			; O2*B
FA16	05		LSLD 	
FA17	2427		BCC 	LFA40
FA19	2022		BRA 	LFA3D
FA1B	3D	 LFA1B:	MUL 	
FA1C	DDC8		STD 	L00C8			; L00C8 is modified O2?
FA1E	9676		LDAA 	L0076
FA20	E600		LDAB	$00,X
FA22	3D		MUL 	
FA23	97CA		STAA 	L00CA
FA25	9675		LDAA 	L0075
FA27	E600		LDAB	$00,X
FA29	3D		MUL 	
FA2A	DBCA		ADDB 	L00CA
FA2C	8900		ADCA 	#$00
FA2E	04		LSRD 	
FA2F	C900		ADCB 	#$00
FA31	8900		ADCA 	#$00
FA33	40		NEGA 	
FA34	50		NEGB 	
FA35	8200		SBCA 	#$00
FA37	D375		ADDD 	L0075
FA39	D3C8		ADDD 	L00C8
FA3B	2403		BCC 	LFA40
FA3D	CCFFFF	 LFA3D:	LDD 	#$FFFF
FA40	DD75	 LFA40:	STD 	L0075
FA42	04		LSRD 	
FA43	C30080		ADDD 	#$0080
FA46	D674		LDAB 	L0074
FA48	C12E		CMPB	#$2E
FA4A	2408		BCC 	LFA54
FA4C	812E		CMPA 	#$2E
FA4E	2516		BCS 	LFA66
FA50	862E		LDAA 	#$2E
FA52	2007		BRA 	LFA5B
FA54	812E	 LFA54:	CMPA 	#$2E
FA56	240E		BCC 	LFA66
FA58	862E		LDAA 	#$2E
FA5A	4A		DECA 	
FA5B	16	 LFA5B:	TAB 	
FA5C	58		ASLB 	
FA5D	2402		BCC 	LFA61
FA5F	C6FF		LDAB 	#$FF
FA61	D775	 LFA61:	STAB 	L0075
FA63	7F0076		CLR 	L0076
FA66	9774	 LFA66:	STAA 	L0074
FA68	8F822912	BRCLR 	L0082,#$29,LFA7E
;
; execute next code if TPS>100% ??????
;
FA6C	87810304	BRSET 	L0081,#$03,LFA74
FA70	C6CD		LDAB 	#$CD
FA72	D740		STAB 	BARO		; default for baro ????
FA74	038304	 LFA74:	OIM 	L0083#$04
FA77	8628		LDAA 	#$28
FA79	9788		STAA 	L0088
FA7B	7EFB1F		JMP 	LFB1F
;
; execute next code if TPS>30% and <100%
;
;
FA7E	87810307 LFA7E:BRSET 	L0081,#$03,LFA89
FA82	D670		LDAB 	TPSA1
FA84	F10119		CMPB 	L0119		; a TPSA value ??
FA87	2406		BCC 	LFA8F
FA89	8628	 LFA89:LDAA 	#$28
FA8B	9788		STAA 	L0088
FA8D	200D		BRA 	LFA9C
FA8F	9688	 LFA8F:LDAA 	L0088
FA91	2609		BNE 	LFA9C
FA93	DC64		LDD 	VACUUM
FA95	04		LSRD 	
FA96	04		LSRD 	
FA97	FB011A		ADDB 	L011A
FA9A	D740		STAB 	BARO	
;		; 
FA9C	87830242 LFA9C:BRSET 	L0083,#$02,LFAE2
FAA0	9658		LDAA 	BATTV
FAA2	816D		CMPA 	#$6D			; batt – 8V
FAA4	250E		BCS 	LFAB4			; bra if batt volts<8V 
FAA6	D659		LDAB 	MAP_5
FAA8	D1E4		CMPB 	L00E4
FAAA	2402		BCC 	LFAAE
FAAC	D7E4		STAB 	L00E4			; MAP max or min???
FAAE	D1E5	 LFAAE:	CMPB 	L00E5
FAB0	2302		BLS 	LFAB4
FAB2	D7E5		STAB 	L00E5			; MAP max or min???
FAB4	87830467 LFAB4:BRSET 	L0083,#$04,LFB1F
FAB8	8F064006	BRCLR 	PORT3,#$40,LFAC2	; watchdog?
FABC	9658		LDAA 	BATTV
FABE	816D		CMPA 	#$6D		; BattV – 8V	
FAC0	2406		BCC 	LFAC8		; bra if BattV >8V
FAC2	8614	 LFAC2:LDAA 	#$14
FAC4	9789		STAA 	L0089
FAC6	2057		BRA 	LFB1F
FAC8	9689	 LFAC8:LDAA 	L0089
FACA	2653		BNE 	LFB1F
FACC	96E5		LDAA 	L00E5
FACE	90E4		SUBA 	L00E4
FAD0	8105		CMPA 	#$05
FAD2	224B		BHI 	LFB1F
FAD4	D659		LDAB 	MAP_5		; get MAP RAW
FAD6	C004		SUBB 	#$04		; subtract 20mBar
FAD8	2401		BCC 	LFADB
FADA	5F		CLRB 	
FADB	D740	 LFADB:STAB 	BARO		; store MAP as Baro
FADD	038304		OIM 	L0083#$04
FAE0	203D		BRA 	LFB1F
FAE2	9650	 LFAE2:LDAA 	RPM_3125	; get RPM/32
FAE4	8130		CMPA 	#$30		; 1500rpm
FAE6	2510		BCS 	LFAF8
FAE8	9658		LDAA 	BATTV		; test battery voltage
FAEA	816D		CMPA 	#$6D		; battv – 8V
FAEC	250A		BCS 	LFAF8		; bra if battV < 8V
FAEE	DC64		LDD 	VACUUM
FAF0	04		LSRD 	
FAF1	04		LSRD 	
FAF2	D140		CMPB 	BARO
FAF4	2302		BLS 	LFAF8
FAF6	D740		STAB 	BARO
FAF8	87830423 LFAF8:BRSET 	L0083,#$04,LFB1F
FAFC	9658		LDAA 	BATTV
FAFE	816D		CMPA 	#$6D		; battv – 8V
FB00	2508		BCS 	LFB0A		; bra if battV < 8V
FB02	D659		LDAB 	MAP_5
FB04	D1E5		CMPB 	L00E5
FB06	2302		BLS 	LFB0A
FB08	D7E5		STAB 	L00E5
FB0A	9689	 LFB0A:LDAA 	L0089
FB0C	2611		BNE 	LFB1F
FB0E	D6E5		LDAB 	L00E5
FB10	270D		BEQ 	LFB1F
FB12	D0E4		SUBB 	L00E4
FB14	C10B		CMPB	#$0B
FB16	2204		BHI 	LFB1C
FB18	D6E5		LDAB 	L00E5
FB1A	D740		STAB 	BARO
FB1C	038304	 LFB1C:OIM 	L0083#$04
FB1F	D640	 LFB1F:LDAB 	BARO
FB21	C17C		CMPB	#$7C
FB23	2402		BCC 	LFB27
FB25	C67C		LDAB 	#$7C
FB27	C1D8	 LFB27:CMPB	#$D8
FB29	2302		BLS 	LFB2D
FB2B	C6D8		LDAB 	#$D8
FB2D	D740	 LFB2D:STAB 	BARO
FB2F	968E	 LFB2F:LDAA 	L008E
FB31	2612		BNE 	LFB45
FB33	8F81020E	BRCLR 	L0081,#$02,LFB45
FB37	038E08		OIM 	L008E#$08
FB3A	968D		LDAA 	L008D
FB3C	2707		BEQ 	LFB45
FB3E	DCFE		LDD 	INJPWH
FB40	0F		SEI 	
FB41	BDF7DB		JSR 	LF7DB			; set up injector pulse?
FB44	0E		CLI 	
FB45	87810356 LFB45:BRSET 	L0081,#$03,LFB9F
FB49	9670		LDAA 	TPSA1			; TPS Angle
FB4B	D6FB		LDAB 	L00FB			; whats this???
FB4D	11		CBA 	
FB4E	2330		BLS 	LFB80
FB50	17		TBA 	
FB51	CB04		ADDB	#$04
FB53	2402		BCC 	LFB57
FB55	C6FF		LDAB 	#$FF
FB57	D7FB	 LFB57: STAB 	L00FB
FB59	87978004	BRSET 	L0097,#$80,LFB61
FB5D	8177		CMPA 	#$77
FB5F	243E		BCC 	LFB9F
FB61	8781033A LFB61:BRSET 	L0081,#$03,LFB9F
FB65	87480436	BRSET 	FCODES2,#$04,LFB9F	; bra if IFS fault
FB69	87822832	BRSET 	L0082,#$28,LFB9F
FB6D	B60128		LDAA 	L0128
FB70	262D		BNE 	LFB9F
FB72	87068029	BRSET 	PORT3,#$80,LFB9F	; idle switch set?
FB76	FC0100		LDD 	L0100			; no load L0100
FB79	0F		SEI 	
FB7A	BDF7DB		JSR 	LF7DB			; set up injector pulse?
FB7D	0E		CLI 	
FB7E	201F		BRA 	LFB9F
FB80	8B03	 LFB80:ADDA 	#$03
FB82	2517		BCS 	LFB9B
FB84	C004		SUBB 	#$04
FB86	11		CBA 	
FB87	2216		BHI 	LFB9F
FB89	C604		LDAB 	#$04
FB8B	D7C8		STAB 	L00C8
FB8D	16		TAB 	
FB8E	4F		CLRA 	
FB8F	15C8		FDIV 	
FB91	4D		TSTA 	
FB92	2701		BEQ 	LFB95
FB94	5C		INCB 	
FB95	96C8	 LFB95:LDAA 	L00C8
FB97	3D		MUL 	
FB98	4D		TSTA 	
FB99	2702		BEQ 	LFB9D
FB9B	C6FF	 LFB9B:LDAB 	#$FF
FB9D	D7FB	 LFB9D:STAB 	L00FB
;
FB9F	7EFCB4	 LFB9F:JMP 	LFCB4		;idle switch set
;
FBA2	860D	 LFBA2:LDAA 	#$0D		; ADC GO + channel 5
FBA4	0F		SEI 	
FBA5	BDF2FA		JSR 	LF2FA		; call ADC routine
FBA8	0E		CLI 	
FBA9	D759		STAB 	MAP_5
FBAB	C1E8		CMPB	#$E8		; 1160mBar
FBAD	2214		BHI 	LFBC3
FBAF	C10B		CMPB	#$0B		; 55mBar
FBB1	2415		BCC 	LFBC8
FBB3	9650		LDAA 	RPM_3125		; get RPM/32
FBB5	8130		CMPA 	#$30			; 1500rpm
FBB7	250A		BCS 	LFBC3
FBB9	8782280E	BRSET 	L0082,#$28,LFBCB
FBBD	9670		LDAA 	TPSA1			
FBBF	810C		CMPA 	#$0C			; TPSA ??
FBC1	2508		BCS 	LFBCB
FBC3	038201	 LFBC3:	OIM 	L0082#$01
FBC6	2003		BRA 	LFBCB
FBC8	0282FE	 LFBC8:	AIM 	L0082#$FE
FBCB	DC62	 LFBCB:	LDD 	MAP_MOD3
FBCD	CEFC32		LDX 	#$FC32
FBD0	BDF135		JSR 	LF135
FBD3	CD1A		XGDY 	
FBD5	DC60		LDD 	MAP_MOD2
FBD7	CEFC30		LDX 	#$FC30
FBDA	BDF135		JSR 	LF135
FBDD	05		LSLD 	
FBDE	7900CA		ROL 	L00CA
FBE1	CDDFC8		STY 	LDFC8
FBE4	93C8		SUBD 	L00C8
FBE6	2408		BCC 	LFBF0
FBE8	87CA0108	BRSET 	L00CA,#$01,LFBF4
FBEC	4F		CLRA 	
FBED	5F		CLRB 	
FBEE	2004		BRA 	LFBF4
FBF0	87CA010B LFBF0:BRSET 	L00CA,#$01,LFBFF
FBF4	DDC8	 LFBF4:STD 	L00C8
FBF6	4F		CLRA 	
FBF7	D659		LDAB 	MAP_5
FBF9	05		LSLD 	
FBFA	05		LSLD 	
FBFB	D3C8		ADDD 	L00C8
FBFD	2403		BCC 	LFC02			
FBFF	CCFFFF	 LFBFF:LDD 	#$FFFF
FC02	DD5E	 LFC02:STD 	MAP_MOD1
FC04	D362		ADDD 	MAP_MOD3
FC06	46		RORA 	
FC07	56		RORB 	
FC08	C900		ADCB 	#$00
FC0A	8900		ADCA 	#$00
FC0C	D360		ADDD 	MAP_MOD2
FC0E	46		RORA 	
FC0F	56		RORB 	
FC10	C900		ADCB 	#$00
FC12	8900		ADCA 	#$00
FC14	CEFC2E		LDX 	#$FC2E
FC17	BDF135		JSR 	LF135
FC1A	04		LSRD 	
FC1B	04		LSRD 	
FC1C	04		LSRD 	
FC1D	04		LSRD 	
FC1E	C900		ADCB 	#$00
FC20	8900		ADCA 	#$00
FC22	DD64		STD 	VACUUM			; manifold vacuum in mm/Hg ???
FC24	DC60		LDD 	MAP_MOD2
FC26	DD62		STD 	MAP_MOD3
FC28	DC5E		LDD 	MAP_MOD1
FC2A	DD60		STD 	MAP_MOD2
FC2C	2006		BRA 	LFC34
FC2E	5A		DECB 	
FC2F	D2E3		SBCB 	L00E3
FC31	AACD		ORAA 	
FC33	02DC64		AIM 	L00DC#$64
FC36	04		LSRD 	
FC37	04		LSRD 	
FC38	4D		TSTA 	
FC39	2702		BEQ 	LFC3D
FC3B	C6FF		LDAB 	#$FF
FC3D	17	 LFC3D:TBA 	
FC3E	D66A		LDAB 	MAP_SH5
FC40	DE68		LDX 	MAP_T2
FC42	DF69		STX 	MAP_T3
FC44	DE66		LDX 	MAP_T
FC46	DF67		STX 	MAP_T1
FC48	9766		STAA 	MAP_T
FC4A	9167		CMPA 	MAP_T1
FC4C	2533		BCS 	LFC81
FC4E	10		SBA 	
FC4F	254C		BCS 	LFC9D
FC51	F60154		LDAB 	L0154
FC54	2608		BNE 	LFC5E
FC56	87781004	BRSET 	L0078,#$10,LFC5E
FC5A	87802004	BRSET 	L0080,#$20,LFC62
FC5E	8103	 LFC5E:CMPA 	#$03
FC60	200A		BRA 	LFC6C
FC62	87070804 LFC62:BRSET 	PORT4,#R302,LFC6A	; AT/MT config
FC66	8106		CMPA 	#$06
FC68	2002		BRA 	LFC6C
FC6A	8106	 LFC6A:CMPA 	#$06
FC6C	252F	 LFC6C:BCS 	LFC9D
FC6E	9666		LDAA 	MAP_T
FC70	9067		SUBA 	MAP_T1
FC72	48		ASLA 	
FC73	2505		BCS 	LFC7A
FC75	0F		SEI 	
FC76	9BF6		ADDA 	L00F6
FC78	2402		BCC 	LFC7C
FC7A	86FF	 LFC7A:LDAA 	#$FF
FC7C	97F6	 LFC7C:STAA 	L00F6
FC7E	0E		CLI 	
FC7F	201C		BRA 	LFC9D
FC81	10	 LFC81:SBA 	
FC82	2419		BCC 	LFC9D
FC84	40		NEGA 	
FC85	8103		CMPA 	#$03
FC87	2514		BCS 	LFC9D
FC89	9667		LDAA 	MAP_T1
FC8B	9066		SUBA 	MAP_T
FC8D	48		ASLA 	
FC8E	2509		BCS 	LFC99
FC90	97C8		STAA 	L00C8
FC92	0F		SEI 	
FC93	96F6		LDAA 	L00F6
FC95	90C8		SUBA 	L00C8
FC97	2401		BCC 	LFC9A
FC99	4F	 LFC99:	CLRA 	
FC9A	97F6	 LFC9A:	STAA 	L00F6
FC9C	0E		CLI 	
FC9D	87810304 LFC9D:BRSET 	L0081,#$03,LFCA5
FCA1	8F820103	BRCLR 	L0082,#$01,LFCA8
FCA5	7F00F6	 LFCA5:CLR 	L00F6
FCA8	9659	 LFCA8:	LDAA 	MAP_5
FCAA	87810304	BRSET 	L0081,#$03,LFCB2
FCAE	91E6		CMPA 	L00E6
FCB0	2402		BCC 	LFCB4
FCB2	97E6	 LFCB2:	STAA 	L00E6
FCB4	0F	 LFCB4:	SEI 	
FCB5	032640		OIM 	RTICR#$40
FCB8	3B		RTI 
;
;
;
;	OC2 ISR = ISC?
;	
FCB9	9618	OC2_ISR:LDAA 	T1CSR2			; clear interupt flag
FCBB	DE1B		LDX 	T1OCR2
FCBD	DF1B		STX 	T1OCR2
FCBF	8801		EORA 	#$01			
FCC1	9718		STAA 	T1CSR2			; toggle the output level for OC2
FCC3	DCBE		LDD 	L00BE			; get L00BE
FCC5	8718011D	BRSET 	T1CSR2,#$01,LFCE6	; check what polarity the pin will be when its set next
	; do the following if OC2 is currently 1
FCC9	7A015E		DEC 	L015E			
FCCC	260D		BNE 	LFCDB
FCCE	36		PSHA 	
FCCF	8604		LDAA 	#$04
FCD1	B7015E		STAA 	L015E
FCD4	96B8		LDAA 	L00B8
FCD6	8801		EORA 	#$01
FCD8	97B8		STAA 	L00B8
FCDA	32		PULA 	
FCDB	87B80103 LFCDB:BRSET 	L00B8,#$01,LFCE2
FCDF	8300FA		SUBD 	#$00FA
FCE2	D3BC	 LFCE2:ADDD 	L00BC
FCE4	2005		BRA 	LFCEB
	; do the following if OC2 is currently 0
FCE6	C31388	 LFCE6:ADDD 	#$1388 		; =5000
FCE9	DDBE		STD 	L00BE
	; always come here?
FCEB	37	 LFCEB:PSHB 	
FCEC	36		PSHA 	
FCED	38	 LFCED:PULX 	
FCEE	831388		SUBD 	#$1388
FCF1	9309		SUBD 	FRC1
FCF3	83EC87		SUBD 	#$EC87
FCF6	2405		BCC 	LFCFD
FCF8	C609		LDAB 	#$09
FCFA	DE09		LDX 	FRC1
FCFC	3A		ABX 	
FCFD	DF1B	 LFCFD:STX 	T1OCR2			;this is the ISC period
FCFF	3B		RTI 
;
; OC3 ISR
;	
FD00	8D01	OC3_ISR:BSR 	LFD03
FD02	3B		RTI 	
;
;
FD03	DE29	 LFD03:LDX 	FRC2
FD05	09		DEX 	
FD06	DF2B		STX 	T2OC3
FD08	961A		LDAA 	T2CSR1
FD0A	DF2B		STX 	T2OC3
FD0C	87990218	BRSET 	L0099,#$02,LFD28
FD10	8F990128	BRCLR 	L0099,#$01,LFD3C
FD14	DC29		LDD 	FRC2
FD16	C30009		ADDD 	#$0009
FD19	1DAC		CPD 	L00AC
FD1B	2A02		BPL	LFD1F
FD1D	DCAC		LDD 	L00AC
FD1F	DD2B	 LFD1F:STD 	T2OC3
FD21	0219FB		AIM 	T1CSR3#$FB
FD24	4F		CLRA 	
FD25	9799		STAA 	L0099
FD27	39		RTS
;
;
; 	
FD28	DC29	 LFD28:LDD 	FRC2
FD2A	C30008		ADDD 	#$0008
FD2D	1DAA		CPD 	L00AA
FD2F	2A02		BPL	LFD33
FD31	DCAA		LDD 	L00AA
FD33	DD2B	 LFD33:STD 	T2OC3
FD35	03190C		OIM 	T1CSR3#$0C
FD38	8601		LDAA 	#$01
FD3A	9799		STAA 	L0099
FD3C	39	 LFD3C:RTS
;
;
; 	
FD3D	8D01	RX_ISR:	BSR 	LFD40	; test serial port
FD3F	3B		RTI 
;
;	
FD40	DC11	 LFD40:	LDD 	SCSR	
FD42	DE09		LDX 	FRC1	; 
FD44	8510		BITA 	#$10	; test RX IE (not sure this is correct)
FD46	270A		BEQ 	LFD52	; branch to TX tests
FD48	8540		BITA 	#$40	; test for framing error
FD4A	260F		BNE 	LFD5B	; reset serial port
FD4C	8580		BITA 	#$80	; test for data received
FD4E	2717		BEQ 	LFD67	; yes, process data
FD50	2016		BRA 	LFD68	; no must be TX interrupt??
FD52	8424	 LFD52:	ANDA 	#$24	
FD54	8124		CMPA 	#$24	; test for TE and TDRE
FD56	260F		BNE 	LFD67		 
FD58	7EFDED		JMP 	LFDED
;
; reset serial status and port
;
FD5B	4F	 LFD5B:	CLRA 	
FD5C	97D3		STAA 	L00D3		; clear byte counter
FD5E	97D4		STAA 	L00D4		; clear checksum
FD60	02D2BF		AIM 	L00D2 #$BF	; clear status register
FD63	8619		LDAA 	#$19		
FD65	9711		STAA 	SCSR		; enable RX, RIE and WU
FD67	39	 LFD67:	RTS
;
;UART
; 	
FD68	FF0196	 LFD68:	STX 	L0196		; Rx buffer
FD6B	17		TBA 	
FD6C	9BD4		ADDA 	L00D4		
FD6E	97D4		STAA 	L00D4		; add to checksum
FD70	96D3		LDAA 	L00D3		; byte count = 0?
FD72	271D		BEQ 	LFD91		; Parse SDL headers
FD74	4A		DECA 	
FD75	2736		BEQ 	LFDAD
FD77	4A		DECA 	
FD78	B1018D		CMPA 	L018D
FD7B	2556		BCS 	LFDD3
FD7D	26DC		BNE 	LFCA3
FD7F	96D4		LDAA 	L00D4		; test checksum
FD81	26D8		BNE 	LFCAB
FD83	97D3		STAA 	L00D3		; byte count
FD85	97D4		STAA 	L00D4		; checksum
FD87	8678		LDAA 	#$78
FD89	B70127		STAA 	L0127
FD8C	860E		LDAA 	#$0E
FD8E	9711	 LFD8E:	STAA 	SCSR
FD90	39		RTS
;
; TX data – Parse by Headers ??
; 	
FD91	F7018C	 LFD91:	STAB 	L018C
FD94	C110		CMPB	#$10		; Header 10
FD96	270C		BEQ 	LFDA4
FD98	C113		CMPB	#$13		; Header 13
FD9A	25BF		BCS 	LFCDD
FD9C	C115		CMPB	#$15		; Header 15
FD9E	2304		BLS 	LFDA4
FDA0	C11E		CMPB	#$1E		; Header 1E
FDA2	26B7		BNE 	LFCED
FDA4	03D240	 LFDA4:	OIM 	L00D2 #$40
FDA7	8618		LDAA 	#$18
FDA9	9711		STAA 	SCSR
FDAB	2022		BRA 	LFDCF
FDAD	C003	 LFDAD:	SUBB 	#$03		; RX or TXLength?
FDAF	F7018D		STAB 	L018D		
FDB2	17		TBA 	
FDB3	CEFF36		LDX 	#$FF36		;
;
;	parse headers again?
;
FDB6	F6018C		LDAB 	L018C		; Header byte??
FDB9	C010		SUBB 	#$10		; subtract 10
FDBB	2708		BEQ 	LFDC5
FDBD	C002		SUBB 	#$02		; subtract 2
FDBF	C103		CMPB	#$03		; is it 15???
FDC1	2302		BLS 	LFDC5		; less than 15??
FDC3	C604	 LFDC3: LDAB 	#$04
FDC5	58	 LFDC5: ASLB 	
FDC6	3A		ABX 			;B+X
FDC7	A100		CMPA 	
FDC9	2590		BCS 	LFD3B
FDCB	A101		CMPA 	
FDCD	228C		BHI 	LFD43
FDCF	7C00D3	 LFDCF: INC 	L00D3		; increment byte count
FDD2	39		RTS
;
;
; 	
FDD3	B6018C	 LFDD3: LDAA 	L018C		; header byte again
FDD6	8113		CMPA 	#$13		; header 13?
FDD8	2606		BNE 	LFDE0
FDDA	CEFF16		LDX 	#$FF16		; Diagnostic LUT
FDDD	3A		ABX 			; add requested address
FDDE	E600		LDAB	$00,X
FDE0	17	 LFDE0: TBA 	
FDE1	CE018C		LDX 	#$018C		; RX Buffer base address??
FDE4	D6D3		LDAB 	L00D3		; get byte count
FDE6	3A		ABX 	
FDE7	A700		STAA 	$00,X
FDE9	5C		INCB 	
FDEA	D7D3		STAB 	L00D3		; increment byte counter
FDEC	39		RTS
;
;
; 	
FDED	FF0196	 LFDED: STX 	L0196		; TX Buffer maybe?????
FDF0	96D3		LDAA 	L00D3		; get byte count
FDF2	2730		BEQ 	LFE24
FDF4	4A		DECA 	
FDF5	2717		BEQ 	LFE0E
FDF7	4A		DECA 	
FDF8	B1018D		CMPA 	L018D		; RX Msg length
FDFB	2518		BCS 	LFE15
FDFD	2720		BEQ 	LFE1F
FDFF	4F		CLRA 	
FE00	97D3		STAA 	L00D3		; clear byte count
FE02	97D4		STAA 	L00D4		; clear checksum
FE04	DC11		LDD 	SCSR		; read then write to clear flags??
FE06	861B		LDAA 	#$1B		 
FE08	9711		STAA 	SCSR		
FE0A	02D2BF		AIM 	L00D2#$BF	; status reg
FE0D	39		RTS
;
;
; Parse RX Data
;	
FE0E	B6018D	 LFE0E:LDAA 	L018D		; RX MSG Length??
FE11	8B03		ADDA 	#$03		; Add 3?
FE13	206D		BRA 	LFE82		; Send Data
FE15	CC018C	 LFE15:LDD 	#$018C
FE18	DBD3		ADDB 	L00D3		; add to byte counter
FE1A	1A		XGDX 	
FE1B	A600		LDAA 	$00,X
FE1D	2063		BRA 	LFE82		; Send Data
FE1F	4F	 LFE1F:CLRA 	
FE20	90D4		SUBA 	L00D4		; checksum
FE22	205E		BRA 	LFE82		; Send data
FE24	B6018C	 LFE24:LDAA 	L018C
FE27	8010		SUBA 	#$10		; Header 10?
FE29	2731		BEQ 	LFE5C		; send ECU ID
FE2B	8003		SUBA 	#$03		; Header 13?
FE2D	273A		BEQ 	LFE69		; send live data
FE2F	4A		DECA 			; Header 14?
FE30	275A		BEQ 	LFE8C		; Reset ECU
FE32	4A		DECA 			; Header 15?
FE33	2761		BEQ 	LFE96		; Parse Command
FE35	8608		LDAA 	#$08
FE37	B7018D		STAA 	L018D
FE3A	CE018E		LDX 	#$018E		; Maybe TX checksum????
FE3D	E600		LDAB	$00,X
FE3F	4F		CLRA 	
FE40	CD1A		XGDY 	
FE42	E680		LDAB 	$80,X
FE44	E700		STAB 	$00,X
FE46	08		INX 	
FE47	8C0192		CPX 	#$0192		; top of RX buffer???
FE4A	25F1		BCS 	LFD5B		; reset serial port
FE4C	CDEE00		LDY 	
FE4F	EC80		LDD 	
FE51	ED00		STD 	
FE53	08		INX 	
FE54	08		INX 	
FE55	8C0196		CPX 	#$0196
FE58	25F2		BCS 	LFD68
FE5A	2023		BRA 	LFE7F
; Send ECU ID String
FE5C	8602	 LFE5C:LDAA 	#$02		; data length?
FE5E	B7018D		STAA 	L018D		
FE61	CC1112		LDD 	#$1112		; ECU ID String
FE64	FD018E		STD 	L018E		; store in TX buffer
FE67	2016		BRA 	LFE7F		
FE69	CE018D	 LFE69:LDX 	#$018D
FE6C	F6018D		LDAB 	L018D
FE6F	3A		ABX 	
FE70	E600		LDAB	$00,X
FE72	4F		CLRA 	
FE73	CD1A		XGDY 	
FE75	E680		LDAB 	$80,X
FE77	E700		STAB 	$00,X
FE79	09		DEX 	
FE7A	8C018E		CPX 	#$018E
FE7D	24F1		BCC 	LFD8E
;
FE7F	B6018C	 LFE7F:LDAA 	L018C		; Send header
FE82	9713	 LFE82:STAA 	TXD		
FE84	9BD4		ADDA 	L00D4		;Checksum
FE86	97D4		STAA 	L00D4
FE88	7C00D3		INC 	L00D3		;byte counter
FE8B	39		RTS
;
;
; 	
FE8C	4C	 LFE8C:INCA 	
FE8D	B7018D		STAA 	L018D
FE90	4C		INCA 	
FE91	B7018E		STAA 	L018E
FE94	20E9		BRA 	LFDAD
;
; Parse Header 15 message
;
FE96	B7018D	 LFE96:STAA 	L018D
FE99	FC018E		LDD 	L018E
FE9C	FD015C		STD 	L015C		; store 2-byte actuator command
FE9F	20DE		BRA 	LFDC3
;
; /NMI ISR
;
FEA1	0214BF	NMI_ISR:AIM 	RAMCR#$BF
FEA4	4F		CLRA 	
FEA5	5F		CLRB 	
FEA6	DD00		STD 	P1DDR
FEA8	DD04		STD 	P3DDR
FEAA	9715		STAA 	P5DDR
FEAC	3E		WAI 	
;
;
;
FEAD	87823009 LFEAD:BRSET 	L0082,#$30,LFEBA
FEB1	D66F		LDAB 	TPSA		; get TPSA
FEB3	C188		CMPB	#$88
FEB5	2503		BCS 	LFEBA
FEB7	7EE1BC		JMP 	LE1BC
FEBA	7EE48E	 LFEBA:JMP 	LE48E
;
; data section 1 alternative to LFEE5 ???
;
FEBD	31		INS 	;increment stack pointer??
FEBE	31		INS 	
FEBF	2560		BCS 	LFF21
FEC1	2E60		BGT 	LFF23
FEC3	48		ASLA 	
FEC4	6025		NEG 	
FEC6	602E		NEG 	
FEC8	604D		NEG 	
FECA	6025		NEG 	
FECC	602E		NEG 	
FECE	38		PULX 	
FECF	4D		TSTA 	
FED0	2887		BVC 	LFE4B
FED2	07		TPA 	
FED3	04		LSRD 	
FED4	07		TPA 	
FED5	8F070106	BRCLR 	PORT4,#CALI,LFEDF	; california
FED9	7EF9F0		JMP 	LF9F0
FEDC	C3298E		ADDD 	#$298E
;
FEDF	7EF9F2	 LFEDF:JMP 	LF9F2
;
; FILL ????
;
FEE2	FFFFFF		STX 	LFFFF
;
; Data Section 2 ???? alternative to LFEBD
;
FEE5	31		INS 	
FEE6	31		INS 	
FEE7	2530		BCS 	LFF19
FEE9	2E30		BGT 	LFF1B
FEEB	48		ASLA 	
FEEC	30		TSX 	
FEED	2530		BCS 	LFF1F
FEEF	2E30		BGT 	LFF21
FEF1	4D		TSTA 	
FEF2	30		TSX 	
FEF3	2530		BCS 	LFF25
FEF5	2E30		BGT 	LFF27
FEF7	4D		TSTA 	
FEF8	18		XGXY 	
FEF9	FFFFFF		STX 	LFFFF
FEFC	FFFFFF		STX 	LFFFF
;
;	ISR
;
FEFF	7ED57F		JMP 	LD57F
;
;
;	Diagnostic Look Up table?				; offset
LFF16 	db	44, 48, 46, 4a, 4c, 4d, 4e, d5, 93, 6d, d6, d7, 70, 5b, 5a, af
	db	fe, ff, 66, 40, ba, d8, e8, eb, f5, d9, 58, 16, 2f, 95, 06, 02
;
;
LFF36	db	00, 00, 01, 08, 00, 00, 08, 08, 08, 08, 1c, 02, 00, 01, 04, 04
        db	02, ff, 1a, 02, 00
;
LFF3D
;	WTS Linearisation table
LFF79	
;	IAT Linearisation table
LFF89
;	EGRT Linearisation table
LFF99
;	constant (EGRT related?)
LFFA8
;	table of byte values
LFFAA  
;	target idle (alternative to LFFB9)
LFFB1
;	target idle (alternative to LFFB1)
LFFB9	
;
FFCF	C669	LFFCF:	LDAB 	#$69
FFD1	8F070402	BRCLR 	L0007,#$04,LFFD7
FFD5	C673		LDAB 	#$73
FFD7	DBD9	LFFD7:	ADDB 	TFSTART			;TFSTART
FFD9	7EDCD3		JMP 	LDCD3
;
FILL	#$FF, 4
;
;	Interrupt Vectors
;
LFFE0	dw	RX_ISR		; FD3D
LFFE2	dw	RESET		; D57F
LFFE4	dw	RTI_ISR		; F803
LFFE6	dw	RESET		; D57F
LFFE8	dw	RESET		; D57F
LFFEA	dw	RESET		; D57F (T1 overflow)
LFFEC	dw	OC3_ISR		; FD00
LFFEE	dw	OC2_ISR		; FCB9 
LFFF0	dw	OC1_ISR		; D57F
LFFF2	dw	RESET		; D57F
LFFF4	dw	IC2_ISR		; F7C6
LFFF6	dw	IC1_ISR		; F342
LFFF8	dw	RESET		; nIRQ
LFFFA	dw	RESET		; SWI
LFFFC	dw	/NMI		; FEA1
LFFFE	dw	START		; FEFF
