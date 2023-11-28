//
// +-------------------------------------------------------------------------+
// |   This file has been generated by The Interactive Disassembler (IDA)    |
// |        Copyright (c) 2009 by Hex-Rays, <support@hex-rays.com>           |
// |                      License info: 54-F19A-B286-08                      |
// |                              James Holland                              |
// +-------------------------------------------------------------------------+
//
//
//      This file should be used in the following way:
//         - reload executable into IDA with using switch -c
//         - use File, Load IDC file and load this file.
//
//      NOTE: This file doesn't contain all information from the database.
//

#define UNLOADED_FILE   1
#include <idc.idc>

static main(void)
{
  // set 'loading idc file' mode
  SetCharPrm(INF_GENFLAGS, INFFL_LOADIDC|GetCharPrm(INF_GENFLAGS));
  GenInfo();            // various settings
  Segments();           // segmentation
  Enums();              // enumerations
  Structures();         // structure types
  Patches();            // manual patches
  SegRegs();            // segment register values
  Bytes();              // individual bytes (code,data)
  Functions();          // function definitions
  // clear 'loading idc file' mode
  SetCharPrm(INF_GENFLAGS, ~INFFL_LOADIDC&GetCharPrm(INF_GENFLAGS));
}

//------------------------------------------------------------------------
// General information

static GenInfo(void) {

        DeleteAll();    // purge database
	SetPrcsr("6301");
	StringStp(0xA);
	Tabs(1);
	Comments(0);
	Voids(0);
	XrefShow(2);
	AutoShow(1);
	Indent(16);
	CmtIndent(40);
	TailDepth(0x10);
}

//------------------------------------------------------------------------
// Information about segmentation

static Segments(void) {
	SetSelector(0X1,0X0);
	;
	SegCreate(0X0,0X100,0X0,0,1,2);
	SegRename(0X0,"RAM");
	SegClass (0X0,"");
	SegCreate(0XC000,0XC008,0X0,0,1,2);
	SegRename(0XC000,"PE");
	SegClass (0XC000,"");
	SegCreate(0XD000,0XD004,0X0,0,1,2);
	SegRename(0XD000,"ADC");
	SegClass (0XD000,"");
	SegCreate(0XE000,0X10000,0X0,0,1,2);
	SegRename(0XE000,"ROM");
	SegClass (0XE000,"CODE");
	SetSegmentType(0XE000,2);
	LowVoids(0x0);
	HighVoids(0x10000);
}

//------------------------------------------------------------------------
// Information about enum types

static Enums(void) {
        auto id;
}

//------------------------------------------------------------------------
// Information about structure types

static Structures(void) {
        auto id;
}

//------------------------------------------------------------------------
// Information about bytes

static Bytes_0(void) {
        auto x;
#define id x

	MakeComm	(0X0,	"=FEh");
	ExtLinA		(0X0,	0,	"; File Name   : P:\\ECUs_no_sync\\GL1200\\GL1200.bin");
	ExtLinA		(0X0,	1,	"; Format      : Binary file");
	ExtLinA		(0X0,	2,	"; Base Address: 0000h Range: E000h - 10000h Loaded length: 2000h");
	ExtLinA		(0X0,	3,	";");
	ExtLinA		(0X0,	4,	"; 1985 Honda GL1200 ECU");
	ExtLinA		(0X0,	5,	"; This ECU appears to use a Toshiba TMP76C40 processor.");
	ExtLinA		(0X0,	6,	"; A second 40-pin chip contains an ADC and some other ");
	ExtLinA		(0X0,	7,	"; (TBD - timer and port expander?) functions       ");
	ExtLinA		(0X0,	8,	"; Date: 23rd November 2023");
	MakeByte	(0X0);
	MakeName	(0X0,	"P1DDR");
	MakeComm	(0X1,	"=1Eh");
	MakeName	(0X1,	"P2DDR");
	ExtLinA		(0X2,	0,	";");
	ExtLinA		(0X2,	1,	"; Port 1 Data register  ");
	ExtLinA		(0X2,	2,	"; bit 7 (0x80): out - LED3                                          ");
	ExtLinA		(0X2,	3,	"; bit 6 (0x40): out - LED2");
	ExtLinA		(0X2,	4,	"; bit 5 (0x20): out - LED1");
	ExtLinA		(0X2,	5,	"; bit 4 (0x10): out - LED0");
	ExtLinA		(0X2,	6,	"; bit 3 (0x08): out - ");
	ExtLinA		(0X2,	7,	"; bit 2 (0x04): out -");
	ExtLinA		(0X2,	8,	"; bit 1 (0x02): out - ");
	ExtLinA		(0X2,	9,	"; bit 0 (0x01): in  - Right Cam Sensor");
	MakeByte	(0X2);
	MakeName	(0X2,	"PORT1");
	ExtLinA		(0X3,	0,	";");
	ExtLinA		(0X3,	1,	"; Port 2 Data register  ");
	ExtLinA		(0X3,	2,	"; bit 7 (0x80): in - no external connection");
	ExtLinA		(0X3,	3,	"; bit 6 (0x40): in - no external connection ");
	ExtLinA		(0X3,	4,	"; bit 5 (0x20): in - no external connection ");
	ExtLinA		(0X3,	5,	"; bit 4 (0x10): out - Watchdog Reset");
	ExtLinA		(0X3,	6,	"; bit 3 (0x08): out - IRQ IF Clear");
	ExtLinA		(0X3,	7,	"; bit 2 (0x04): out -");
	ExtLinA		(0X3,	8,	"; bit 1 (0x02): out - ");
	ExtLinA		(0X3,	9,	"; bit 0 (0x01): in  - Crank Sensor (Ns)");
	MakeByte	(0X3);
	MakeName	(0X3,	"PORT2");
	MakeByte	(0X4);
	MakeName	(0X4,	"P3DDR");
	MakeByte	(0X5);
	MakeName	(0X5,	"P4DDR");
	MakeByte	(0X6);
	MakeName	(0X6,	"PORT3");
	MakeByte	(0X7);
	MakeName	(0X7,	"PORT4");
	ExtLinA		(0X8,	0,	";");
	ExtLinA		(0X8,	1,	"; Timer 1 Control & Status Register 1");
	ExtLinA		(0X8,	2,	"; bit 7 (0x80):");
	ExtLinA		(0X8,	3,	"; bit 6 (0x40):");
	ExtLinA		(0X8,	4,	"; bit 5 (0x20): ");
	ExtLinA		(0X8,	5,	"; bit 4 (0x10):");
	ExtLinA		(0X8,	6,	"; bit 3 (0x08):");
	ExtLinA		(0X8,	7,	"; bit 2 (0x04):");
	ExtLinA		(0X8,	8,	"; bit 1 (0x02):");
	ExtLinA		(0X8,	9,	"; bit 0 (0x01):  ");
	MakeByte	(0X8);
	MakeName	(0X8,	"TCSR1");
	MakeByte	(0X9);
	MakeName	(0X9,	"FRCH");
	MakeByte	(0XA);
	MakeName	(0XA,	"FRCL");
	MakeByte	(0XB);
	MakeName	(0XB,	"OCR1H");
	MakeByte	(0XC);
	MakeName	(0XC,	"OCR1L");
	MakeByte	(0XD);
	MakeName	(0XD,	"ICR1H");
	MakeByte	(0XE);
	MakeName	(0XE,	"ICR1L");
	ExtLinA		(0XF,	0,	";");
	ExtLinA		(0XF,	1,	"; Timer 1 Control & Status Register 2");
	ExtLinA		(0XF,	2,	"; bit 7 (0x80):");
	ExtLinA		(0XF,	3,	"; bit 6 (0x40):");
	ExtLinA		(0XF,	4,	"; bit 5 (0x20): ");
	ExtLinA		(0XF,	5,	"; bit 4 (0x10):");
	ExtLinA		(0XF,	6,	"; bit 3 (0x08):");
	ExtLinA		(0XF,	7,	"; bit 2 (0x04):");
	ExtLinA		(0XF,	8,	"; bit 1 (0x02):");
	ExtLinA		(0XF,	9,	"; bit 0 (0x01):  ");
	MakeByte	(0XF);
	MakeName	(0XF,	"P3CSR");
	MakeByte	(0X10);
	MakeName	(0X10,	"RMCR");
	MakeByte	(0X11);
	MakeName	(0X11,	"TRCSR1");
	MakeByte	(0X12);
	MakeName	(0X12,	"RDR");
	MakeByte	(0X13);
	MakeName	(0X13,	"TDR");
	MakeByte	(0X14);
	MakeName	(0X14,	"RAMCR");
	MakeByte	(0X15);
	MakeByte	(0X16);
	MakeByte	(0X17);
	ExtLinA		(0X18,	0,	"; Timer Control & Status Register 2                                            ");
	ExtLinA		(0X18,	1,	"; bit 0 (0x01):  ");
	ExtLinA		(0X18,	2,	"; bit 1 (0x02):");
	ExtLinA		(0X18,	3,	"; bit 2 (0x04):");
	ExtLinA		(0X18,	4,	"; bit 3 (0x08):");
	ExtLinA		(0X18,	5,	"; bit 4 (0x10):  ");
	ExtLinA		(0X18,	6,	"; bit 5 (0x20):  ");
	ExtLinA		(0X18,	7,	"; bit 6 (0x40):");
	ExtLinA		(0X18,	8,	"; bit 7 (0x80): ");
	MakeByte	(0X18);
	MakeName	(0X18,	"TCSR2");
	MakeByte	(0X19);
	MakeByte	(0X1A);
	MakeByte	(0X1B);
	MakeName	(0X1B,	"OCR2H");
	MakeByte	(0X1C);
	MakeByte	(0X1D);
	MakeName	(0X1D,	"ICR2H");
	MakeByte	(0X1E);
	MakeByte	(0X1F);
	MakeByte	(0X20);
	MakeByte	(0X21);
	MakeByte	(0X40);
	MakeByte	(0X42);
	MakeByte	(0X44);
	MakeByte	(0X45);
	MakeByte	(0X46);
	MakeByte	(0X48);
	MakeByte	(0X4A);
	MakeByte	(0X4C);
	MakeByte	(0X4D);
	MakeByte	(0X4E);
	MakeByte	(0X50);
	MakeByte	(0X51);
	MakeName	(0X51,	"count_51");
	MakeByte	(0X52);
	MakeByte	(0X54);
	MakeByte	(0X56);
	MakeByte	(0X58);
	MakeByte	(0X5A);
	MakeName	(0X5A,	"VBatt_5A");
	MakeByte	(0X5C);
	MakeByte	(0X5E);
	MakeName	(0X5E,	"Baro_IAT_5E");
	MakeByte	(0X5F);
	MakeByte	(0X60);
	MakeByte	(0X61);
	MakeByte	(0X62);
	MakeRptCmt	(0X63,	"from LUT at E500");
	MakeByte	(0X63);
	MakeByte	(0X64);
	MakeName	(0X64,	"CTS_64");
	MakeByte	(0X65);
	MakeByte	(0X66);
	MakeByte	(0X68);
	MakeRptCmt	(0X69,	"from the LUT at E190");
	MakeByte	(0X69);
	MakeName	(0X69,	"VBatt_69");
	MakeByte	(0X6B);
	MakeByte	(0X6D);
	MakeName	(0X6D,	"count_6D");
	MakeByte	(0X6E);
	MakeName	(0X6E,	"CTS");
	MakeByte	(0X6F);
	MakeName	(0X6F,	"IAT");
	MakeByte	(0X70);
	MakeName	(0X70,	"Baro_70");
	MakeByte	(0X71);
	MakeByte	(0X72);
	MakeByte	(0X73);
	MakeName	(0X73,	"MAPL");
	MakeByte	(0X74);
	MakeName	(0X74,	"MAPR");
	MakeByte	(0X75);
	MakeName	(0X75,	"TPS");
	MakeByte	(0X76);
	MakeByte	(0X77);
	MakeByte	(0X78);
	MakeByte	(0X79);
	MakeByte	(0X7A);
	MakeRptCmt	(0X7B,	"VBatt = B+ * 0.2857");
	MakeByte	(0X7B);
	MakeName	(0X7B,	"VBatt");
	MakeByte	(0X7C);
	MakeName	(0X7C,	"Baro_7C");
	MakeByte	(0X7D);
	MakeName	(0X7D,	"IAT_7D");
	MakeByte	(0X7E);
	MakeByte	(0X80);
	MakeByte	(0X82);
	MakeByte	(0X84);
	MakeByte	(0X85);
	MakeByte	(0X86);
	MakeByte	(0X88);
	MakeByte	(0X89);
	MakeByte	(0X8A);
	MakeByte	(0X8B);
	MakeByte	(0X8C);
	MakeByte	(0X8E);
	MakeByte	(0X8F);
	MakeName	(0X8F,	"count_8F");
	MakeByte	(0X90);
	MakeByte	(0X91);
	MakeName	(0X91,	"count_91");
	MakeName	(0X92,	"IAT_Raw");
	MakeName	(0X93,	"CTS_Raw");
	MakeName	(0X94,	"BARO_Raw");
	MakeByte	(0X95);
	MakeName	(0X95,	"MAPL_Raw");
	MakeByte	(0X96);
	MakeName	(0X96,	"MAPR_Raw");
	MakeByte	(0X97);
	MakeName	(0X97,	"TPS_Raw");
	MakeByte	(0X98);
	MakeName	(0X98,	"count_98");
	MakeByte	(0X9D);
	MakeName	(0X9D,	"Count_9D");
	MakeByte	(0X9E);
	MakeByte	(0X9F);
	MakeByte	(0XA0);
	MakeName	(0XA0,	"status_A0");
	MakeByte	(0XA1);
	MakeName	(0XA1,	"count_A1");
	MakeByte	(0XA2);
	MakeByte	(0XA3);
	MakeByte	(0XA4);
	MakeByte	(0XA5);
	MakeByte	(0XA6);
	MakeByte	(0XA7);
	MakeByte	(0XA8);
	MakeByte	(0XA9);
	MakeByte	(0XAA);
	MakeByte	(0XAC);
	MakeByte	(0XAD);
	MakeByte	(0XAE);
	MakeRptCmt	(0XAF,	"temporary register (Heap)?");
	MakeByte	(0XAF);
	MakeByte	(0XB0);
	MakeByte	(0XB1);
	MakeByte	(0XB2);
	MakeByte	(0XB3);
	MakeByte	(0XB5);
	MakeByte	(0XB6);
	MakeByte	(0XB7);
	MakeByte	(0XB9);
	MakeByte	(0XBB);
	MakeByte	(0XBC);
	MakeByte	(0XBE);
	MakeName	(0XBE,	"CTS_BE");
	MakeByte	(0XC0);
	MakeName	(0XC0,	"CTS_C0");
	MakeByte	(0XC2);
	MakeName	(0XC2,	"count_C2");
	MakeByte	(0XC4);
	MakeByte	(0XD2);
	MakeByte	(0XF9);
	MakeComm	(0XC000,	"only read compared to 56h or A9h\nbit7 is ctrl bit\nbit0 is status - action on 1");
	MakeByte	(0XC000);
	MakeRptCmt	(0XC001,	"read/write");
	MakeByte	(0XC001);
	MakeRptCmt	(0XC002,	"read only shift and test (RTC like?)");
	MakeWord	(0XC002);
	MakeRptCmt	(0XC004,	"read only used as a ptr to upper addresses in this chip?");
	MakeByte	(0XC004);
	MakeWord	(0XC006);
	ExtLinA		(0XD000,	0,	"; IC402 is a hitherto undocumented 40-pin DIP IC.");
	ExtLinA		(0XD000,	1,	"; It is a Port Expander/Peripheral Interface Adapter");
	ExtLinA		(0XD000,	2,	"; PIA Ctrl appears to address 1 of two control registers");
	ExtLinA		(0XD000,	3,	"; MSB = 0 - unknownn function, written with 2x");
	ExtLinA		(0XD000,	4,	"; MSB = 1 - writes to the ADC control register");
	ExtLinA		(0XD000,	5,	"; AN0 - MAPL");
	ExtLinA		(0XD000,	6,	"; AN1 - MAPR");
	ExtLinA		(0XD000,	7,	"; AN2 - Baro");
	ExtLinA		(0XD000,	8,	"; AN3 - IAT");
	ExtLinA		(0XD000,	9,	"; AN4 - CTS");
	ExtLinA		(0XD000,	10,	"; AN5 - VBatt");
	ExtLinA		(0XD000,	11,	"; AN6 - ");
	ExtLinA		(0XD000,	12,	"; AN7 - ");
	MakeByte	(0XD000);
	MakeName	(0XD000,	"PIA_Base");
	ExtLinA		(0XD001,	0,	";");
	ExtLinA		(0XD001,	1,	"; ADC Control Register");
	ExtLinA		(0XD001,	2,	"; bit 7 (0x80): ADC control");
	ExtLinA		(0XD001,	3,	"; bit 6 (0x40): Unknown/unimplemented");
	ExtLinA		(0XD001,	4,	"; bit 5 (0x20): Unknown/unimplemented ");
	ExtLinA		(0XD001,	5,	"; bit 4 (0x10): Unknown/unimplemented");
	ExtLinA		(0XD001,	6,	"; bit 3 (0x08): Unknown/unimplemented");
	ExtLinA		(0XD001,	7,	"; bit 2 (0x04): ADC Channel Select bit 2");
	ExtLinA		(0XD001,	8,	"; bit 1 (0x02): ADC Channel Select bit 1");
	ExtLinA		(0XD001,	9,	"; bit 0 (0x01): ADC Channel Select bit 0  ");
	MakeByte	(0XD001);
	MakeName	(0XD001,	"PIA_Ctrl");
	ExtLinA		(0XD002,	0,	";");
	ExtLinA		(0XD002,	1,	"; ADC Status Register");
	ExtLinA		(0XD002,	2,	"; bit 7 (0x80): Done");
	ExtLinA		(0XD002,	3,	"; bit 6 (0x40): Unknown/unimplemented");
	ExtLinA		(0XD002,	4,	"; bit 5 (0x20): Unknown/unimplemented ");
	ExtLinA		(0XD002,	5,	"; bit 4 (0x10): Unknown/unimplemented");
	ExtLinA		(0XD002,	6,	"; bit 3 (0x08): Unknown/unimplemented");
	ExtLinA		(0XD002,	7,	"; bit 2 (0x04): Unknown/unimplemented");
	ExtLinA		(0XD002,	8,	"; bit 1 (0x02): Unknown/unimplemented");
	ExtLinA		(0XD002,	9,	"; bit 0 (0x01): Unknown/unimplemented  ");
	MakeByte	(0XD002);
	MakeName	(0XD002,	"PIA_Status");
	ExtLinA		(0XD003,	0,	";");
	ExtLinA		(0XD003,	1,	"; ADC Result Register");
	ExtLinA		(0XD003,	2,	"; returns an 8-bit result");
	MakeByte	(0XD003);
	MakeName	(0XD003,	"PIA_Result");
	MakeWord	(0XE000);
	MakeName	(0XE000,	"X_E000");
	MakeWord	(0XE002);
	MakeWord	(0XE004);
	MakeWord	(0XE006);
	MakeName	(0XE008,	"X_E008");
	MakeWord	(0XE00C);
	MakeName	(0XE00E,	"X_E00E");
	MakeName	(0XE010,	"X_E010");
	MakeByte	(0XE011);
	MakeByte	(0XE012);
	MakeName	(0XE015,	"X_E015");
	MakeWord	(0XE019);
	MakeByte	(0XE01B);
	MakeByte	(0XE01C);
	MakeByte	(0XE01D);
	MakeByte	(0XE01E);
	MakeByte	(0XE01F);
	MakeByte	(0XE020);
	MakeWord	(0XE021);
	MakeWord	(0XE023);
	MakeWord	(0XE025);
	MakeWord	(0XE027);
	MakeByte	(0XE029);
	MakeByte	(0XE02A);
	MakeByte	(0XE02B);
	MakeByte	(0XE02C);
	MakeByte	(0XE02D);
	MakeName	(0XE02E,	"X_E02E");
	MakeName	(0XE030,	"X_E030");
	MakeWord	(0XE032);
	MakeByte	(0XE034);
	MakeByte	(0XE035);
	MakeWord	(0XE036);
	MakeByte	(0XE039);
	MakeByte	(0XE03A);
	MakeByte	(0XE03B);
	MakeByte	(0XE03C);
	MakeRptCmt	(0XE040,	"sensor limits?");
	MakeName	(0XE040,	"X_E040");
	MakeByte	(0XE042);
	MakeName	(0XE042,	"MAPL_Default");
	MakeRptCmt	(0XE046,	"MAP default value");
	MakeName	(0XE046,	"MAPR_Default");
	MakeByte	(0XE058);
	MakeWord	(0XE060);
	MakeComm	(0XE064,	"limits for byte_90");
	MakeName	(0XE064,	"X_E064");
	MakeName	(0XE0C0,	"X_E0C0");
	MakeComm	(0XE0C1,	"sensor limits?");
	MakeName	(0XE0C1,	"X_E0C1");
	MakeRptCmt	(0XE0C4,	"sensor limits start here? (+4)");
	ExtLinA		(0XE0C4,	0,	" ");
	MakeName	(0XE0C4,	"sensorLimits");
	MakeByte	(0XE0E0);
	MakeByte	(0XE0E1);
	MakeByte	(0XE0E2);
	MakeByte	(0XE110);
	MakeArray	(0XE110,	0X8);
	MakeName	(0XE110,	"IAT_E110");
	MakeByte	(0XE120);
	MakeArray	(0XE120,	0X8);
	MakeName	(0XE120,	"Baro_E120");
	MakeByte	(0XE130);
	MakeArray	(0XE130,	0X10);
	MakeName	(0XE130,	"X_E130");
	MakeByte	(0XE150);
	MakeArray	(0XE150,	0XC);
	MakeName	(0XE150,	"VBatt_E150");
	MakeByte	(0XE160);
	MakeArray	(0XE160,	0X8);
	MakeName	(0XE160,	"CTS_E160");
	MakeByte	(0XE170);
	MakeArray	(0XE170,	0X10);
	MakeName	(0XE170,	"CTS_E170");
	MakeByte	(0XE180);
	MakeArray	(0XE180,	0X10);
	MakeName	(0XE180,	"CTS_E180");
	MakeByte	(0XE190);
	MakeArray	(0XE190,	0X10);
	MakeName	(0XE190,	"VBatt_E190");
	MakeName	(0XE1A0,	"X_E1A0");
	MakeByte	(0XE1B0);
	MakeArray	(0XE1B0,	0X7);
	MakeName	(0XE1B0,	"X_E1B0");
	MakeByte	(0XE1C0);
	MakeArray	(0XE1C0,	0X4);
	MakeName	(0XE1C0,	"X_E1C0");
	MakeByte	(0XE200);
	MakeArray	(0XE200,	0X100);
	MakeName	(0XE200,	"X_E200");
	MakeByte	(0XE400);
	MakeArray	(0XE400,	0X100);
	MakeName	(0XE400,	"X_E400");
	MakeByte	(0XE500);
	MakeArray	(0XE500,	0X100);
	MakeName	(0XE500,	"X_E500");
	MakeByte	(0XE600);
	MakeArray	(0XE600,	0X100);
	MakeName	(0XE600,	"X_E600");
	MakeName	(0XE77E,	"X_E77E");
	MakeWord	(0XE780);
	MakeArray	(0XE780,	0X8);
	MakeName	(0XE780,	"X_E780");
	ExtLinA		(0XE7A0,	0,	"sub_E7A0:");
	ExtLinA		(0XE7A0,	1,	"There isn't anything at C000h so this should never be executed.");
	MakeCode	(0XE7A0);
	MakeComm	(0XE7A3,	"what is at C000h?");
	MakeCode	(0XE7D1);
	MakeCode	(0XE7E7);
	MakeCode	(0XE800);
	MakeName	(0XE800,	"nIRQ_IntHandler");
	MakeComm	(0XE804,	"toggle P23 to clear nIRQ");
	MakeComm	(0XE815,	"test IC2IF");
	MakeRptCmt	(0XE817,	"bra if no IC2 interrupt");
	MakeRptCmt	(0XE837,	"byte_84!!!");
	MakeCode	(0XE83D);
	MakeCode	(0XE880);
	MakeCode	(0XE88A);
	MakeCode	(0XE8AB);
	MakeCode	(0XE8B2);
	ExtLinA		(0XE900,	0,	"; IC_IntHandler:");
	ExtLinA		(0XE900,	1,	"; IC1 is the crank sensor input");
	ExtLinA		(0XE900,	2,	"; IC2 is ???");
	MakeCode	(0XE900);
	MakeName	(0XE900,	"IC_IntHandler");
	MakeComm	(0XE902,	"test IC1 IF");
	MakeRptCmt	(0XE904,	"bra if no IC1 interrupt");
	MakeRptCmt	(0XE909,	"clear interrupt flags");
	MakeCode	(0XE909);
	MakeCode	(0XE937);
	ExtLinA		(0XEA00,	0,	"code_EA00:");
	ExtLinA		(0XEA00,	1,	"called from F091 and jmp_table1");
	MakeCode	(0XEA00);
	MakeName	(0XEA00,	"code_EA00");
	MakeRptCmt	(0XEA09,	"E7A0 = B6h");
	MakeRptCmt	(0XEA0C,	"There isn't anything at C000?");
	MakeRptCmt	(0XEA10,	"always call");
	MakeCode	(0XEA34);
	MakeCode	(0XEA41);
	MakeCode	(0XEA64);
	MakeCode	(0XEA8B);
	MakeCode	(0XEB00);
	MakeCode	(0XEB10);
	MakeCode	(0XEB2C);
	MakeCode	(0XEB39);
	MakeCode	(0XEB5F);
	MakeCode	(0XEB68);
	MakeName	(0XEB68,	"tableLU_3Db");
	MakeCode	(0XEB74);
	MakeCode	(0XEB7F);
	MakeCode	(0XEB8F);
	MakeCode	(0XEB91);
	MakeCode	(0XEB9E);
	MakeCode	(0XEBAC);
	MakeCode	(0XEBC7);
	MakeCode	(0XEBD3);
	MakeCode	(0XEBDB);
	MakeCode	(0XEBE3);
	MakeCode	(0XEC00);
	MakeRptCmt	(0XEC05,	"byte_8E - FRCH");
	MakeComm	(0XEC07,	"loop back if A<FRCH");
	MakeName	(0XEC09,	"next_EC09");
	MakeRptCmt	(0XEC0D,	"byte_8E = FRC+4096");
	MakeCode	(0XEC3C);
	MakeComm	(0XEC4C,	"clear byte_86");
	MakeComm	(0XEC6E,	"clear LED3 and LED2");
	MakeRptCmt	(0XEC72,	"clear byte_86");
	MakeRptCmt	(0XEC74,	"clear byte_AD");
	MakeRptCmt	(0XEC7B,	"toggle watchdog reset");
	MakeCode	(0XED00);
	MakeCode	(0XED01);
	MakeCode	(0XED55);
	MakeCode	(0XEDBA);
	MakeWord	(0XEE00);
	MakeWord	(0XEE02);
	MakeWord	(0XEE04);
	MakeWord	(0XEE06);
	ExtLinA		(0XEE40,	0,	"call with:");
	ExtLinA		(0XEE40,	1,	"X = table base address + offfset");
	ExtLinA		(0XEE40,	2,	"top of stack = return address");
	ExtLinA		(0XEE40,	3,	"stack+1 = ADC value");
	ExtLinA		(0XEE40,	4,	"");
	MakeCode	(0XEE40);
	MakeCode	(0XEE54);
	MakeCode	(0XEE63);
	MakeCode	(0XEE7C);
	MakeCode	(0XEEA6);
	MakeCode	(0XEEC8);
	MakeCode	(0XEEF9);
	MakeComm	(0XEEFD,	"disable interrupts");
	MakeCode	(0XEEFD);
	MakeName	(0XEEFD,	"INIT");
	ExtLinA		(0XEEFE,	0,	"initialise ports");
	MakeRptCmt	(0XEF01,	"PORT1 = FC\nPORT2 = 08 (WDogReset=1)");
	MakeComm	(0XEF06,	"P1DDR = FE\nP2DDR = 1E");
	MakeRptCmt	(0XEF09,	"toggle WDogReset");
	ExtLinA		(0XEF0B,	0,	"initialise timers");
	MakeComm	(0XEF0E,	"TCSR1 = 1B\n");
	MakeComm	(0XEF10,	"TCSR1 = 1B\n");
	MakeRptCmt	(0XEF15,	"set up a pulse 1E00h long");
	MakeRptCmt	(0XEF17,	"init OCR1 pulse");
	MakeRptCmt	(0XEF19,	"init OCR2 pulse");
	MakeRptCmt	(0XEF1B,	"clear any timer1 interrupt flags");
	MakeRptCmt	(0XEF1D,	"clear any timer1 interrupts part2");
	MakeRptCmt	(0XEF1F,	"clear any timer2 interrupt flags");
	MakeRptCmt	(0XEF21,	"clear any timer2 interrupts part2");
	MakeRptCmt	(0XEF23,	"test the length of RAM??");
	ExtLinA		(0XEF23,	0,	"Initialise and test RAM from FF down");
	MakeRptCmt	(0XEF29,	"test for stuck at 1");
	MakeName	(0XEF29,	"testRAM");
	MakeRptCmt	(0XEF2F,	"if RAM failed loop forever");
	MakeComm	(0XEF31,	"test for stuck at 0");
	MakeRptCmt	(0XEF35,	"if RAM failed loop forever");
	ExtLinA		(0XEF3A,	0,	"initialise some more RAM variables");
	ExtLinA		(0XEF4B,	0,	"initialise ADC");
	MakeRptCmt	(0XEF4E,	"start a conversion channel 0?");
	MakeRptCmt	(0XEF51,	"write to the result register?");
	ExtLinA		(0XEF54,	0,	"initialise some more RAM");
	ExtLinA		(0XEF58,	0,	"toggle the watchdog reset line");
	MakeRptCmt	(0XEF5C,	"toggle the watchdog");
	ExtLinA		(0XEF5E,	0,	"test for nIRQ code?");
	MakeRptCmt	(0XEF6C,	"loop forever");
	ExtLinA		(0XEF6E,	0,	"toggle watchdog");
	MakeRptCmt	(0XEF74,	"this needs checking!!");
	ExtLinA		(0XEF74,	0,	"test for code at 8000h - should always skip this");
	MakeRptCmt	(0XEF7B,	"there is no code here (test code?)");
	MakeComm	(0XEFBA,	"do something");
	MakeRptCmt	(0XEFBD,	"if not zero jump");
	MakeRptCmt	(0XEFBF,	"else byte_A9 = 7F");
	MakeName	(0XEFC3,	"X_EFC3");
	MakeComm	(0XEFC4,	"jump to start");
	MakeName	(0XEFC7,	"JMP_TBLE1");
	MakeRptCmt	(0XEFC9,	"jump to address EA00");
	MakeWord	(0XEFC9);
	MakeComm	(0XEFCD,	"jump to address F2AC");
	MakeWord	(0XEFCD);
	MakeComm	(0XEFD1,	"jump to address F47A");
	MakeWord	(0XEFD1);
	MakeRptCmt	(0XEFD5,	"jump to address F1EC");
	MakeWord	(0XEFD5);
	MakeRptCmt	(0XEFD9,	"jump to address F5E6");
	MakeWord	(0XEFD9);
	MakeByte	(0XEFDC);
	ExtLinA		(0XEFDE,	0,	"");
	ExtLinA		(0XEFDE,	1,	"");
	MakeCode	(0XF000);
	MakeName	(0XF000,	"Reset");
	MakeComm	(0XF001,	"end of stack = FFh");
	MakeRptCmt	(0XF006,	"Port 4 are all outputs");
	MakeRptCmt	(0XF008,	"is there code present in 'otherchip'?");
	MakeRptCmt	(0XF00D,	"no looop forever!!");
	MakeRptCmt	(0XF00F,	"yes - execute the code");
	ExtLinA		(0XF012,	0,	"loc_F012:");
	ExtLinA		(0XF012,	1,	"called when jmp_table1 isn't used (0,x = 0)");
	MakeCode	(0XF012);
	MakeCode	(0XF041);
	MakeComm	(0XF081,	"pointer to jump table at EFC7");
	MakeRptCmt	(0XF084,	"search for a match in the jump table");
	MakeRptCmt	(0XF085,	"EFC7 = 1");
	MakeRptCmt	(0XF087,	"bra if 0 (don't use jump table)");
	MakeComm	(0XF08F,	"get address of code");
	MakeName	(0XF08F,	"code_F08F");
	MakeRptCmt	(0XF091,	"and call that code");
	MakeComm	(0XF093,	"loop back");
	ExtLinA		(0XF096,	0,	"how do we get here?");
	MakeCode	(0XF096);
	MakeRptCmt	(0XF09F,	"E7A0 = B6h");
	MakeRptCmt	(0XF0A6,	"always call");
	MakeCode	(0XF0C7);
	MakeComm	(0XF0F2,	"80h = MAPL");
	ExtLinA		(0XF0F2,	0,	"; get_MAP:");
	ExtLinA		(0XF0F2,	1,	"; get MAP values from ADC, check against fault limits");
	ExtLinA		(0XF0F2,	2,	"; apply default values if out of range");
	ExtLinA		(0XF0F2,	3,	"");
	MakeCode	(0XF0F2);
	MakeName	(0XF0F2,	"Get_MAP");
	MakeName	(0XF0F4,	"get_MAPL");
	MakeRptCmt	(0XF0F8,	"return address = 95");
	MakeRptCmt	(0XF0FB,	"pointer to limits");
	MakeRptCmt	(0XF0FD,	"apply limits");
	MakeComm	(0XF10F,	"81h = MAPR");
	MakeName	(0XF10F,	"get_MAPR");
	MakeRptCmt	(0XF118,	"pointer to limits");
	MakeRptCmt	(0XF11A,	"apply limits");
	MakeRptCmt	(0XF11F,	"bra if MAPR = 0");
	MakeRptCmt	(0XF127,	"load default value");
	MakeCode	(0XF12D);
	MakeCode	(0XF13A);
	MakeCode	(0XF16E);
	MakeCode	(0XF17E);
	MakeCode	(0XF19A);
	MakeCode	(0XF1A7);
	MakeName	(0XF1C0,	"tableLU_3D");
	MakeCode	(0XF1CC);
	MakeCode	(0XF1E8);
	MakeComm	(0XF1EC,	"83h = IAT");
	ExtLinA		(0XF1EC,	0,	"get_Temps:");
	ExtLinA		(0XF1EC,	1,	"get the IAT and CTS readings");
	ExtLinA		(0XF1EC,	2,	"called from jmp_table1");
	MakeCode	(0XF1EC);
	MakeName	(0XF1EC,	"get_Temps");
	MakeRptCmt	(0XF1F1,	"IAT_RAW");
	MakeRptCmt	(0XF1F4,	"pointer to limits");
	MakeRptCmt	(0XF1F6,	"test against limits");
	MakeRptCmt	(0XF203,	"84h = CTS");
	MakeRptCmt	(0XF208,	"CTS_Raw");
	MakeRptCmt	(0XF20B,	"pointer to limits");
	MakeComm	(0XF260,	"start ADC conversion");
	ExtLinA		(0XF260,	0,	"readADC:");
	ExtLinA		(0XF260,	1,	"   call with channel number in A");
	ExtLinA		(0XF260,	2,	"   return result in B");
	MakeCode	(0XF260);
	MakeName	(0XF260,	"readADC");
	MakeComm	(0XF266,	"test the status bit");
	MakeRptCmt	(0XF268,	"loop back if not complete");
	MakeComm	(0XF26A,	"else get the result");
	MakeCode	(0XF26E);
	MakeName	(0XF26E,	"get_BARO");
	MakeComm	(0XF274,	"Baro = AN2");
	MakeRptCmt	(0XF27A,	"94 = Baro");
	MakeComm	(0XF299,	"B=54h =84");
	MakeComm	(0XF29C,	"Baro_70*84");
	ExtLinA		(0XF2AC,	0,	"sub_F2AC:");
	ExtLinA		(0XF2AC,	1,	"Called from jump_table1");
	MakeCode	(0XF2AC);
	MakeRptCmt	(0XF2CD,	"get PORT1 pin values");
	MakeComm	(0XF2D3,	"set P12 (timer output)?");
	MakeRptCmt	(0XF2D7,	"test P27");
	MakeCode	(0XF2D7);
	MakeRptCmt	(0XF313,	"E065 = F0h");
	MakeCode	(0XF31B);
	MakeRptCmt	(0XF31C,	"E064 = 10h");
	MakeCode	(0XF327);
	MakeCode	(0XF32A);
	MakeComm	(0XF342,	"VBAtt = AN5");
	MakeCode	(0XF342);
	MakeName	(0XF342,	"get_VBatt");
	MakeRptCmt	(0XF363,	"A= A-B");
	MakeName	(0XF374,	"code_F374");
	MakeCode	(0XF38C);
	MakeRptCmt	(0XF3AB,	"3-cyle NOP, modified code or duff binary?");
	MakeCode	(0XF3B0);
	MakeName	(0XF3B0,	"maybe_TPS?");
	MakeCode	(0XF3C2);
	MakeCode	(0XF3DA);
	MakeCode	(0XF3E8);
	MakeCode	(0XF463);
	ExtLinA		(0XF47A,	0,	"sub_F47A:");
	ExtLinA		(0XF47A,	1,	"called from jmp_table1");
	MakeCode	(0XF47A);
	ExtLinA		(0XF485,	0,	"PIA_F484:");
	ExtLinA		(0XF485,	1,	"Called with 27, 2A, 2B or 2C");
	ExtLinA		(0XF485,	2,	"returns a value in A");
	MakeCode	(0XF485);
	MakeName	(0XF485,	"PIA_F485");
	MakeRptCmt	(0XF488,	"get status");
	MakeRptCmt	(0XF48B,	"test bit6");
	MakeRptCmt	(0XF48D,	"loop back if not done");
	MakeComm	(0XF48F,	"clear all but bit5");
	MakeCode	(0XF492);
	MakeCode	(0XF49A);
	MakeCode	(0XF4AF);
	MakeCode	(0XF4CE);
	MakeCode	(0XF4E5);
	MakeComm	(0XF511,	"get MAPL");
	ExtLinA		(0XF511,	0,	"sub_F511:");
	ExtLinA		(0XF511,	1,	" called with X = E00Eh, B=1h");
	ExtLinA		(0XF511,	2,	" or          X = E030h, B=2h");
	ExtLinA		(0XF511,	3,	" sets (fault?) flags in status_A0");
	MakeCode	(0XF511);
	MakeComm	(0XF515,	"get MAPR");
	MakeRptCmt	(0XF519,	"get TPS");
	MakeComm	(0XF51B,	"bra if no fault");
	MakeRptCmt	(0XF51D,	"else set bit1 or bit0");
	MakeName	(0XF51D,	"TPS_fault");
	MakeCode	(0XF521);
	MakeRptCmt	(0XF523,	"bra if fault");
	MakeRptCmt	(0XF525,	"elase clear flags");
	MakeComm	(0XF526,	"clear flags?");
	MakeComm	(0XF52A,	"retrieve table pointer");
	MakeCode	(0XF52A);
	MakeRptCmt	(0XF52F,	"set status_A0 bit2");
	MakeCode	(0XF532);
	MakeRptCmt	(0XF534,	"TPS - table value 1");
	MakeRptCmt	(0XF536,	"bra if TPS>table value");
	MakeRptCmt	(0XF538,	"else clear flags");
	MakeRptCmt	(0XF53D,	"TPS - table value 2");
	MakeCode	(0XF53D);
	MakeRptCmt	(0XF53F,	"bra if TPS< table value 2");
	MakeRptCmt	(0XF541,	"else set status_A0 bit0 or 1");
	MakeRptCmt	(0XF545,	"clear status_A0 flags");
	MakeCode	(0XF548);
	MakeCode	(0XF553);
	MakeCode	(0XF565);
	MakeCode	(0XF571);
	MakeCode	(0XF57F);
	MakeCode	(0XF59A);
	MakeCode	(0XF5A6);
	MakeCode	(0XF5BA);
	MakeCode	(0XF5C2);
	ExtLinA		(0XF5E6,	0,	"sub_F5E6:");
	ExtLinA		(0XF5E6,	1,	"called from jmp_table1");
	MakeCode	(0XF5E6);
	MakeCode	(0XF5F0);
	ExtLinA		(0XF5F1,	0,	"limits_F5F1:");
	ExtLinA		(0XF5F1,	1,	"This code appears to check the ADC values against limits ");
	ExtLinA		(0XF5F1,	2,	"to check for sensor faults");
	MakeCode	(0XF5F1);
	MakeName	(0XF5F1,	"limits_F5F1");
	MakeRptCmt	(0XF5F3,	"point X to table");
	MakeRptCmt	(0XF5F6,	"a flag?");
	MakeRptCmt	(0XF5F9,	"bra if flag? is zero");
	MakeRptCmt	(0XF5FB,	"else point to other table");
	MakeRptCmt	(0XF5FF,	"B = B * 4");
	MakeRptCmt	(0XF600,	"X = base address + (B*4)");
	MakeComm	(0XF601,	"A - limit 1");
	MakeRptCmt	(0XF603,	"bra if A<limit");
	MakeRptCmt	(0XF605,	"else A - Limit 2");
	MakeRptCmt	(0XF607,	"bra if A>limit");
	MakeRptCmt	(0XF609,	"else get default value?");
	MakeRptCmt	(0XF610,	"16-bit table?");
	MakeRptCmt	(0XF62A,	"return byte_AF in A");
	MakeCode	(0XF62A);
	MakeCode	(0XF62D);
	MakeCode	(0XF630);
	MakeCode	(0XF679);
	MakeCode	(0XF683);
	MakeCode	(0XF686);
	MakeCode	(0XF699);
	MakeCode	(0XF6AF);
	MakeCode	(0XF6BB);
	MakeCode	(0XF6CB);
	MakeCode	(0XF6EB);
	MakeCode	(0XF6F2);
	MakeComm	(0XF6FC,	"get bank counter");
	ExtLinA		(0XF6FC,	0,	"sub_F6FC:");
	ExtLinA		(0XF6FC,	1,	"This may be the cylinder counter");
	MakeCode	(0XF6FC);
	MakeRptCmt	(0XF6FE,	"test bit1 (10h=4)");
	MakeRptCmt	(0XF700,	"if not 4 skip ?????");
	MakeRptCmt	(0XF702,	"else increment count");
	MakeRptCmt	(0XF703,	"and update");
	MakeCode	(0XF706);
	MakeCode	(0XF73F);
	MakeCode	(0XF745);
	MakeRptCmt	(0XF751,	"test IC2 IF");
	MakeRptCmt	(0XF753,	"bra if ??");
	MakeName	(0XF757,	"IC2_F757?");
	MakeCode	(0XF776);
	MakeCode	(0XF77C);
	MakeCode	(0XF79A);
	MakeCode	(0XF7B2);
	MakeCode	(0XF7FA);
	MakeCode	(0XF805);
	MakeCode	(0XF82A);
	MakeCode	(0XF84C);
	MakeCode	(0XF85C);
	MakeCode	(0XF865);
	MakeCode	(0XF876);
	MakeCode	(0XF89C);
	MakeCode	(0XF8C4);
	MakeRptCmt	(0XF8D1,	"=3h");
	MakeRptCmt	(0XF8E1,	"Bh");
	MakeRptCmt	(0XF8F1,	"B*2");
	MakeRptCmt	(0XF8F8,	"jump to code poinnted to from F8FA");
	MakeCode	(0XF8FA);
	MakeCode	(0XF942);
	MakeCode	(0XF974);
	MakeCode	(0XF990);
	MakeCode	(0XF995);
	MakeCode	(0XF99F);
	MakeCode	(0XF9BB);
	MakeCode	(0XF9C4);
	MakeCode	(0XF9C7);
	MakeCode	(0XF9E2);
	MakeCode	(0XF9EB);
	MakeCode	(0XFA0D);
	MakeCode	(0XFA29);
	MakeCode	(0XFA53);
	MakeByte	(0XFA56);
	MakeCode	(0XFA71);
	MakeCode	(0XFA7D);
	MakeCode	(0XFA96);
	MakeCode	(0XFAA2);
	MakeCode	(0XFABB);
	MakeCode	(0XFAC9);
	MakeCode	(0XFAE9);
	MakeCode	(0XFB06);
	MakeCode	(0XFB26);
	MakeCode	(0XFB39);
	MakeCode	(0XFB84);
	MakeCode	(0XFBC8);
	MakeCode	(0XFBF0);
	MakeCode	(0XFBF8);
	MakeCode	(0XFC2A);
	MakeName	(0XFC2A,	"OC_IntHandler");
	MakeComm	(0XFC2F,	"Timer 1 OCIF and OCIE");
	MakeRptCmt	(0XFC33,	"Timer 2 OCIF and OCIE");
	MakeRptCmt	(0XFC35,	"test for Timer 2 OC interrupt");
	MakeRptCmt	(0XFC3D,	"test P11 (timer pin)");
	MakeName	(0XFC3D,	"OC1_IntHandler?");
	MakeCode	(0XFC85);
	MakeCode	(0XFC91);
	MakeName	(0XFC91,	"OC2_IntHandler?");
	MakeCode	(0XFC9A);
	MakeCode	(0XFCA7);
	MakeCode	(0XFCBF);
	MakeCode	(0XFCE0);
	MakeCode	(0XFCEF);
	MakeCode	(0XFD07);
	MakeCode	(0XFD28);
	MakeCode	(0XFD37);
	MakeCode	(0XFD60);
	MakeCode	(0XFD9A);
	ExtLinA		(0XFDB5,	0,	"sub_FDB5:");
	ExtLinA		(0XFDB5,	1,	"Calls code from a jump table at FDD6");
	ExtLinA		(0XFDB5,	2,	"called with X = 40h or 48h or something else");
	MakeCode	(0XFDB5);
	MakeRptCmt	(0XFDD1,	"add offset to X");
	MakeComm	(0XFDD4,	"jump to sub-routine");
	ExtLinA		(0XFDD6,	0,	"JMP_TBL2:");
	ExtLinA		(0XFDD6,	1,	"Where does the code start?");
	MakeName	(0XFDD6,	"JMP_TBL2");
	MakeComm	(0XFDDE,	"FDD6+8");
	MakeCode	(0XFDDE);
	MakeComm	(0XFDE9,	"FDD6+14");
	MakeCode	(0XFDE9);
	MakeComm	(0XFDEB,	"FDD6+15");
	MakeCode	(0XFDEC);
	MakeRptCmt	(0XFDEE,	"FDD6+18");
	MakeCode	(0XFDEE);
	MakeComm	(0XFDFE,	"FDFF+29 brings us to the second byte!!");
	MakeCode	(0XFE00);
	MakeComm	(0XFE05,	"FDD6+2F");
	MakeCode	(0XFE05);
	MakeCode	(0XFE14);
	MakeCode	(0XFE2A);
	MakeCode	(0XFE3C);
	MakeRptCmt	(0XFE5C,	"4ms again?");
	MakeCode	(0XFE7A);
	MakeCode	(0XFE88);
	MakeCode	(0XFE99);
	MakeComm	(0XFE9D,	"memory error - this should be 10h = 4.096ms");
	MakeName	(0XFEAB,	"tableLU_2D");
	MakeCode	(0XFEBF);
	MakeName	(0XFEBF,	"tableLU_3Da");
	MakeCode	(0XFEE5);
	MakeCode	(0XFEE7);
	MakeCode	(0XFF11);
	MakeCode	(0XFF28);
	MakeCode	(0XFF32);
	MakeCode	(0XFF5D);
	MakeName	(0XFF5D,	"Mult_FF5D");
	MakeCode	(0XFF86);
	MakeCode	(0XFFA6);
	MakeCode	(0XFFB2);
	MakeCode	(0XFFC6);
	MakeCode	(0XFFE7);
	MakeName	(0XFFEE,	"TRAP");
	MakeWord	(0XFFF0);
	MakeName	(0XFFF0,	"SIO");
	MakeWord	(0XFFF2);
	MakeName	(0XFFF2,	"TOI");
	MakeWord	(0XFFF4);
	MakeName	(0XFFF4,	"OC1");
	MakeWord	(0XFFF6);
	MakeName	(0XFFF6,	"IC1");
	MakeWord	(0XFFF8);
	MakeName	(0XFFF8,	"IRQ");
	MakeWord	(0XFFFA);
	MakeName	(0XFFFA,	"SWI");
	MakeWord	(0XFFFC);
	MakeName	(0XFFFC,	"NMI");
	MakeWord	(0XFFFE);
	MakeName	(0XFFFE,	"RESET");
}

static Functions_0(void) {

	MakeFunction    (0XE7A0,0XE7EC);
	SetFunctionFlags(0XE7A0,0x400);
	MakeFunction    (0XE880,0XE8BC);
	SetFunctionFlags(0XE880,0x400);
	MakeFunction    (0XEA34,0XEA8B);
	SetFunctionFlags(0XEA34,0x400);
	MakeFunction    (0XEB68,0XEB74);
	SetFunctionFlags(0XEB68,0x400);
	MakeFunction    (0XEEA6,0XEEFD);
	SetFunctionFlags(0XEEA6,0x400);
	MakeFunction    (0XF0C7,0XF0F2);
	SetFunctionFlags(0XF0C7,0x400);
	MakeFunction    (0XF0F2,0XF12D);
	SetFunctionFlags(0XF0F2,0x400);
	MakeNameEx(0XF10D, "store_MAPL", SN_LOCAL);
	MakeNameEx(0XF12A, "store_MAPR", SN_LOCAL);
	MakeFunction    (0XF12D,0XF16E);
	SetFunctionFlags(0XF12D,0x400);
	MakeFunction    (0XF1C0,0XF1CC);
	SetFunctionFlags(0XF1C0,0x400);
	MakeFunction    (0XF1CC,0XF1EC);
	SetFunctionFlags(0XF1CC,0x400);
	MakeFunction    (0XF1EC,0XF260);
	SetFunctionFlags(0XF1EC,0x400);
	MakeFunction    (0XF260,0XF26E);
	SetFunctionFlags(0XF260,0x400);
	MakeFunction    (0XF26E,0XF2AC);
	SetFunctionFlags(0XF26E,0x400);
	MakeFunction    (0XF2AC,0XF342);
	SetFunctionFlags(0XF2AC,0x400);
	MakeFunction    (0XF342,0XF3B0);
	SetFunctionFlags(0XF342,0x400);
	MakeFunction    (0XF3B0,0XF3C2);
	SetFunctionFlags(0XF3B0,0x400);
	MakeFunction    (0XF3C2,0XF425);
	SetFunctionFlags(0XF3C2,0x400);
	MakeFunction    (0XF463,0XF47A);
	SetFunctionFlags(0XF463,0x400);
	MakeFunction    (0XF47A,0XF485);
	SetFunctionFlags(0XF47A,0x400);
	MakeFunction    (0XF485,0XF492);
	SetFunctionFlags(0XF485,0x400);
	MakeFunction    (0XF4E5,0XF511);
	SetFunctionFlags(0XF4E5,0x400);
	MakeFunction    (0XF511,0XF548);
	SetFunctionFlags(0XF511,0x400);
	MakeNameEx(0XF521, "MAP_fault_F521", SN_LOCAL);
	MakeFunction    (0XF5E6,0XF5F1);
	SetFunctionFlags(0XF5E6,0x400);
	MakeFunction    (0XF5F1,0XF630);
	SetFunctionFlags(0XF5F1,0x400);
	MakeNameEx(0XF626, "setToZero", SN_LOCAL);
	MakeFunction    (0XF630,0XF660);
	SetFunctionFlags(0XF630,0x400);
	MakeFunction    (0XF660,0XF686);
	SetFunctionFlags(0XF660,0x400);
	MakeFunction    (0XF686,0XF6BB);
	SetFunctionFlags(0XF686,0x400);
	MakeFunction    (0XF6BB,0XF6FC);
	SetFunctionFlags(0XF6BB,0x400);
	MakeFunction    (0XF6FC,0XF706);
	SetFunctionFlags(0XF6FC,0x400);
	MakeFunction    (0XFA71,0XFA96);
	SetFunctionFlags(0XFA71,0x0);
	MakeFunction    (0XFA96,0XFABB);
	SetFunctionFlags(0XFA96,0x0);
	MakeFunction    (0XFABB,0XFAC9);
	SetFunctionFlags(0XFABB,0x400);
	MakeFunction    (0XFAC9,0XFAE9);
	SetFunctionFlags(0XFAC9,0x400);
	MakeFunction    (0XFB06,0XFB26);
	SetFunctionFlags(0XFB06,0x400);
	MakeFunction    (0XFB26,0XFB39);
	SetFunctionFlags(0XFB26,0x400);
	MakeFunction    (0XFB39,0XFB84);
	SetFunctionFlags(0XFB39,0x400);
	MakeFunction    (0XFB84,0XFB95);
	SetFunctionFlags(0XFB84,0x400);
	MakeFunction    (0XFB95,0XFBB3);
	SetFunctionFlags(0XFB95,0x400);
	MakeFunction    (0XFBB3,0XFBBB);
	SetFunctionFlags(0XFBB3,0x400);
	MakeFunction    (0XFBBB,0XFBC8);
	SetFunctionFlags(0XFBBB,0x400);
	MakeFunction    (0XFBC8,0XFBF8);
	SetFunctionFlags(0XFBC8,0x400);
	MakeFunction    (0XFBF8,0XFC2A);
	SetFunctionFlags(0XFBF8,0x400);
	MakeFunction    (0XFC9A,0XFCA7);
	SetFunctionFlags(0XFC9A,0x400);
	MakeFunction    (0XFCA7,0XFCEF);
	SetFunctionFlags(0XFCA7,0x400);
	MakeFunction    (0XFCEF,0XFD37);
	SetFunctionFlags(0XFCEF,0x400);
	MakeFunction    (0XFD37,0XFD60);
	SetFunctionFlags(0XFD37,0x400);
	MakeFunction    (0XFD60,0XFD78);
	SetFunctionFlags(0XFD60,0x400);
	MakeFunction    (0XFD78,0XFDB5);
	SetFunctionFlags(0XFD78,0x400);
	MakeFunction    (0XFDB5,0XFDD6);
	SetFunctionFlags(0XFDB5,0x400);
	MakeFunction    (0XFE7A,0XFE88);
	SetFunctionFlags(0XFE7A,0x400);
	MakeFunction    (0XFE88,0XFE99);
	SetFunctionFlags(0XFE88,0x400);
	MakeFunction    (0XFE99,0XFEAB);
	SetFunctionFlags(0XFE99,0x400);
	MakeFunction    (0XFEAB,0XFEBF);
	SetFunctionFlags(0XFEAB,0x400);
	MakeFunction    (0XFEBF,0XFEE7);
	SetFunctionFlags(0XFEBF,0x400);
	MakeFunction    (0XFEE7,0XFF28);
	SetFunctionFlags(0XFEE7,0x400);
	MakeFunction    (0XFF5D,0XFF86);
	SetFunctionFlags(0XFF5D,0x400);
	MakeFunction    (0XFF86,0XFFC6);
	SetFunctionFlags(0XFF86,0x400);
	MakeFunction    (0XFFC6,0XFFF0);
	SetFunctionFlags(0XFFC6,0x400);
}

//------------------------------------------------------------------------
// Information about functions

static Functions(void) {

	Functions_0();
}

//------------------------------------------------------------------------
// Information about segment registers

static SegRegs(void) {
}

//------------------------------------------------------------------------
// Information about all patched bytes:

static Patches(void) {
}

//------------------------------------------------------------------------
// Call all byte feature functions:

static Bytes(void) {
	Bytes_0();
}

// End of file.
