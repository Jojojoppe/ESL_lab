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

double readEncoderA(int fd){
	const int pulsePerRotation = 2000;
	int location = (int)getGMPCValue(fd, 1);
	double d = (float)location/(float)pulsePerRotation;
	return (float)2*M_PI*d;
}

void setPWMA(int fd, double out){
	int i = (int)(out*256.0);
	int dir = 0;
	if(i<0.0){
		dir = 1;
		i = -1*i;
	}

	setGPMCValue(fd, i&0xff | dir<<8, 2);
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

	double setpoint = 0.0;
	double input = readEncoderA(fd);

	setPWMA(fd, 0.0);

	// keep reading
	while(1){
		input = readEncoderA(fd);
		xx_V[8] = input;
		xx_V[7] = setpoint;

		XXCalculateDynamic();
		XXCalculateOutput();

		setPWMA(fd, xx_V[9]);
	}


  printf("Exiting...\n");
  // close connection to free resources.
  close(fd);
  return 0;
}
