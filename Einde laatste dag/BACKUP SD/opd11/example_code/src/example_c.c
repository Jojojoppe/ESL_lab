/**
 * @file example.c
 * @brief c example file.
 * @author Jan Jaap Kempenaar, Sander Grimm, University of Twente.
 */

#include "stdio.h"
#include "gpmc_driver_c.h"

#include "xxmodel.h"

#include <fcntl.h>      // open()
#include <unistd.h>     // close()
#include <math.h>

int startValueEncoderA;

double readEncoderA(int fd){
	const int pulsePerRotation = 1000;
	short location = (short)getGPMCValue(fd, 1) - (short)startValueEncoderA;
	//printf("%d\r\n", location);
	double d = (float)location/(float)pulsePerRotation;
	return (float)2*M_PI*d;
}

void setPWMA(int fd, double out){
	int i = (int)(out*256.0);
	int dir = 1;
	if(i<0.0){
		dir = 0;
		i = -1*i;
	}

	//printf("i=%08x\r\n", i&0xff | dir<<8);
	setGPMCValue(fd, i&0xff | dir<<8, 3);
}

int main(int argc, char* argv[]){
  int fd; // File descriptor.
  if (2 != argc){
    //printf("Usage: %s <device_name>\n", argv[0]);
    return 1;
  }
  
  printf("GPMC driver c-example\n");
  
  // open connection to device.
  //printf("Opening gpmc_fpga...\n");
  fd = open(argv[1], 0);
  if (0 > fd){
    //printf("Error, could not open device: %s.\n", argv[1]);
    return 1;
  }
  
	XXModelInitialize();
	XXCalculateInitial();

	double setpoint = -M_PI_2;
	double input = readEncoderA(fd);
	startValueEncoderA = getGPMCValue(fd, 1);
	printf("startValue %d\r\n", startValueEncoderA);

	setPWMA(fd, 0.0);

	unsigned long i=0;
	unsigned long j=0;

	// keep reading
	while(1){
		input = readEncoderA(fd);
		//printf("enc: %f\r\n", input);
		xx_V[8] = input;
		xx_V[7] = setpoint;

		XXCalculateDynamic();
		XXCalculateOutput();

		//printf("PWM: %f\r\n", xx_V[9]);
		setPWMA(fd, xx_V[9]);

		i++;
		if(i==0x50000){
			setpoint = -1*setpoint;
			printf("setpont %f\r\n", setpoint);
			i = 0;
		}
	}

  setPWMA(fd, 0.0);

  printf("Exiting...\n");
  // close connection to free resources.
  close(fd);
  return 0;
}
