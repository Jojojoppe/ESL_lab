#include "system.h"
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <io.h>

#include "xxmodel_pan.h"

int ENCA_startval;
const int ENCA_ppr = 1000;

// ---------------------
// IO functions
// ---------------------
void setPWMA(unsigned char val, unsigned char dir){
	IOWR(ESL_PWM_0_BASE, 0, val | dir<<8);
}
void setPWMB(unsigned char val, unsigned char dir){
	IOWR(ESL_PWM_1_BASE, 0, val | dir<<8);
}
int getENCA(){
	return IORD(ESL_ENCODER_0_BASE, 0);
}
int getENCB(){
	return IORD(ESL_ENCODER_1_BASE, 0);
}
// ---------------------

int main(){
	//int uart = open("/dev/uart_0", O_RDWR);

	// Stop motors
	setPWMA(0, 0);
	setPWMB(0, 0);

	ENCA_startval = getENCA();

	printf("%d\r\n", ENCA_startval);

	float input, setpoint, output;
	int iinput, isetpoint, ioutput, direction;
	setpoint = 0.35f;

	for(;;){
		// Get ENCA value [-2pi, 2pi]
		iinput = getENCA() - ENCA_startval;
		input = (float)iinput/(float)ENCA_ppr;

		xx_V[8] = input;
		xx_V[7] = setpoint;
		XXCalculateDynamic();
		XXCalculateOutput();
		output = xx_V[9];

		// Get PWM values [-1, 1]
		ioutput = (int)(output*256.0);
		direction = 1;
		if(ioutput<0){
			ioutput = -1*ioutput;
			direction = 0;
		}
		setPWMA(ioutput, direction);
	}

	//close(uart);
	return 0;
}
