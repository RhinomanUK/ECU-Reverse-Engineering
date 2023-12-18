// 6301.idc
// RhinoPower Ltd
// 8th May 2012
// Names interrupt vectors and disassembles the code pointed to by them
// Names registers
// Does not name interrupt service routines because these could by called from more than one place (ie start address is often defined for all unused interrupts)
// http://www.rhinopower.org


#include <idc.idc>

static main()
{
 
 auto i;
 auto codestart;
 
// define all vectors
// and seek out code

 for(i=0xFFF0;i<0xFFFF;i=i+2){ MakeWord(i); } // they are all 16-bit so do that first

 
 MakeNameEx(0xFFFE,"RESET",0);
 codestart = Word(0xFFFE);
 MakeCode(codestart);
 
 MakeNameEx(0xFFEE,"TRAP",0);
 codestart = Word(0xFFEE);
 MakeCode(codestart);

 MakeNameEx(0xFFFC,"NMI",0);
 codestart = Word(0xFFFC);
 MakeCode(codestart);

 MakeNameEx(0xFFFA,"SWI",0);
 codestart = Word(0xFFFA);
 MakeCode(codestart);

 MakeNameEx(0xFFF8,"IRQ",0);
 codestart = Word(0xFFF8);
 MakeCode(codestart);

 MakeNameEx(0xFFF6,"IC1",0);
 codestart = Word(0xFFF6);
 MakeCode(codestart);

 MakeNameEx(0xFFF4,"OC1",0);
 codestart = Word(0xFFF4);
 MakeCode(codestart);

 MakeNameEx(0xFFF2,"TOI",0);
 codestart = Word(0xFFF2);
 MakeCode(codestart);

 MakeNameEx(0xFFF0,"SIO",0);
 codestart = Word(0xFFF0);
 MakeCode(codestart);


// define all registers - these are all 8 bits but a word access is often used so make them all 8-bits

 for(i=0x0;i<0x22;i=i+1){ MakeByte(i); } // they are all 8-bit so do that first

 
 MakeNameEx(0x00,"P1DDR",0);
 MakeNameEx(0x01,"P2DDR",0);
 MakeNameEx(0x02,"PORT1",0);
 MakeNameEx(0x03,"PORT2",0);
 MakeNameEx(0x04,"P3DDR",0);
 MakeNameEx(0x05,"P4DDR",0);
 MakeNameEx(0x06,"PORT3",0);
 MakeNameEx(0x07,"PORT4",0);
 MakeNameEx(0x08,"TCSR1",0);
 MakeNameEx(0x09,"FRCH",0);
 MakeNameEx(0x0A,"FRCL",0);
 MakeNameEx(0x0B,"OCR1H",0);
 MakeNameEx(0x0C,"OCR1L",0);
 MakeNameEx(0x0D,"ICRH",0);
 MakeNameEx(0x0E,"ICRL",0);
 MakeNameEx(0x0F,"P3CSR",0);

 MakeNameEx(0x10,"RMCR",0);
 MakeNameEx(0x11,"TRCSR1",0);
 MakeNameEx(0x12,"RDR",0);
 MakeNameEx(0x13,"TDR",0);
 MakeNameEx(0X14,"RAMCR",0);
  
}





