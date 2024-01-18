// Tablefinder.idc
// RhinoPower Ltd
// http://www.rhinopower.org
// 4th August 2012
//
// Intended for ECUs using processors with the Motorola 8-bit type architecture
// such as the 63B01 and 76C series of devices
// This code looks for tables indexed by "ldy     #$C......" which is usually the data area
// Change the range of valid addresses to suit the code
// 51G72 code space is 



#include <idc.idc>

static main()
{
	
	auto ea;
	auto end;
	auto xr;
	auto disass;
	auto xrstr;
	auto testStr;
	auto ROMSTART;
	auto CODESTART;
	auto CODEEND;
	auto test;
	
	CODESTART = 0xC997;
	CODEEND = 0xFDE7;


	Message("Checking for data indexed from main code" + "\n");

	ea = CODESTART;

	do{ 		
		disass = GetDisasm(ea);
		if( strstr(disass, "ldy     #$C") != -1) {			// look for string indicating indexed access
			xr = strstr(disass, "#$");				// find start of value
			xrstr = substr(disass, (xr+2), (xr+6));			// extract address
			xr = xtol(xrstr);
			testStr = ltoa(xr,16);
			Message("Possible table at 0x" + testStr + "\n");
			MakeName(xr,("Y_" + xrstr));
			
		}//  if( strstr......)
	
	 test = ltoa(ea,16);

	 Message("ea " + test + "\n");
	

	ea = NextHead(ea,CODEEND);

	}while(ea!=BADADDR); 
	
	Message("Done" + "\n");	 

} // end main