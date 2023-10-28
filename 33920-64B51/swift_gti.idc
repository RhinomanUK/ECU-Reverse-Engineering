// swift_gti.idc
// RhinoPower Ltd
// 8th October 2012
// Names UPP registers
// 
// http://www.rhinopower.org


#include <idc.idc>

static main()
{
 
 auto i;
 auto codestart;

// create register segment

 AddSeg(0x1000,0x13FF,0x00, 0,0,0);
 SegRename(0x1000, "UPP_REG");

// create RAM segment

 AddSeg(0x1400,0x17FF,0x00, 0,0,0);	//RAM at 1400 to 17FF
 SegRename(0x1400, "UPP_RAM");


// define all registers - these are all 8 bits but a word access is often used so make them all 8-bits

 for(i=0x0;i<0x22;i=i+1){ MakeByte(i); } // they are all 8-bit so do that first

 
 MakeNameEx(0x1000,"UPP_DDR2",0);
 MakeNameEx(0x1001,"UPP_DDR1",0);
 MakeNameEx(0x1002,"UPP_P2",0);
 MakeNameEx(0x1003,"UPP_P1",0);
 MakeNameEx(0x1004,"UPP_NK",0);
 MakeNameEx(0x1005,"UPP_WDTR",0);
 MakeNameEx(0x1006,"ADCSR",0);
 MakeNameEx(0x1007,"ADDR0H",0);
 MakeNameEx(0x1008,"ADDR0L",0);
 MakeNameEx(0x1009,"ADDR1H",0);
 MakeNameEx(0x100A,"ADDR1L",0);
 MakeNameEx(0x100B,"ADDR2H",0);
 MakeNameEx(0x100C,"ADDR2L",0);
 MakeNameEx(0x100D,"ADDR3H",0);
 MakeNameEx(0x100E,"ADDR3L",0);
 MakeNameEx(0x100F,"UPP_RAMCR",0);

 MakeNameEx(0x1010,"UCER2",0);
 MakeNameEx(0x1011,"UCER1",0);
 MakeNameEx(0x1012,"UOR2",0);
 MakeNameEx(0x1013,"UOR1",0);
 MakeNameEx(0x1014,"NDER",0);

 MakeNameEx(0x1016,"NDR",0);

 MakeNameEx(0x1020,"USCR",0);
 MakeNameEx(0x1021,"MFNR",0);
 MakeNameEx(0x1022,"FNR",0);
 MakeNameEx(0x1023,"CMR",0);
 MakeNameEx(0x1024,"RASRA",0);
 MakeNameEx(0x1025,"RASRB",0);
 MakeNameEx(0x1026,"IOARA",0);
 MakeNameEx(0x1027,"IOARB",0);
 MakeNameEx(0x1028,"IOARC",0);
 MakeNameEx(0x1029,"IOARD",0);
 MakeNameEx(0x102A,"IER3",0);
 MakeNameEx(0x102B,"IER2",0);
 MakeNameEx(0x102C,"IER1",0);
 MakeNameEx(0x102D,"IRQR3",0);
 MakeNameEx(0x102E,"IRQR2",0);
 MakeNameEx(0x102F,"IRQR1",0);

 MakeNameEx(0x1030,"ISR3",0);
 MakeNameEx(0x1031,"ISR2",0);
 MakeNameEx(0x1032,"ISR1",0);
 MakeNameEx(0x1033,"ISCR3",0);
 MakeNameEx(0x1034,"ISCR2",0);
 MakeNameEx(0x1035,"ISCR1",0);
 MakeNameEx(0x1036,"UIOR",0);

 MakeNameEx(0x1040,"UDR0H",0);
 MakeNameEx(0x1042,"UDR1H",0);
 MakeNameEx(0x1044,"UDR2H",0);
 MakeNameEx(0x1046,"UDR3H",0);
 MakeNameEx(0x1048,"UDR4H",0);
 MakeNameEx(0x104A,"UDR5H",0);
 MakeNameEx(0x104C,"UDR6H",0);
 MakeNameEx(0x104E,"UDR7H",0);
 MakeNameEx(0x1050,"UDR8H",0);
 MakeNameEx(0x1052,"UDR9H",0);
 MakeNameEx(0x1054,"UDR10H",0);
 MakeNameEx(0x1056,"UDR11H",0);
 MakeNameEx(0x1058,"UDR12H",0);
 MakeNameEx(0x105A,"UDR13H",0);
 MakeNameEx(0x105C,"UDR14H",0);
 MakeNameEx(0x105E,"UDR15H",0);
 MakeNameEx(0x1060,"UDR16H",0);
 MakeNameEx(0x1062,"UDR17H",0);
 MakeNameEx(0x1064,"UDR18H",0);
 MakeNameEx(0x1066,"UDR19H",0);
 MakeNameEx(0x1068,"UDR20H",0);
 MakeNameEx(0x106A,"UDR21H",0);
 MakeNameEx(0x106C,"UDR22H",0);
 MakeNameEx(0x106E,"UDR23H",0);

  
}





