//-----------------------------------------------------------------------------
// 
// ESL demo
// Version: 1.0
// Creator: Rene Moll
// Date: 10th April 2012
//
//-----------------------------------------------------------------------------
//
// Demo application which sets and reads form a register in the demo IP.
// 
// IOWR/IORD are part of the HAL, see the Nios 2 Software developer’s handbook
// for more information.
//
//-----------------------------------------------------------------------------

#include <stdio.h>
#include <string.h>
#include <unistd.h>

#include <io.h>
#include "system.h"

int main()
{
	// Say hello through the debug interface
	printf("Hello from Nios II!\n");

	// Put 0x08 in the memory of the IP and enable the count down
	IOWR(ESL_ENCODER_0_BASE, 0x00, 0);

	int i = 0;

	// Now loop forever ...
	while(1){

		for(i=0; i<0x20000; i++);

		// Verify that it is there
		unsigned int nReadOut = IORD(ESL_ENCODER_0_BASE, 0x00);
		printf("From the IP: %08x \n\r", nReadOut);
	}

	return 0;
}
