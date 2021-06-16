/**
 * @file example.c
 * @brief c example file.
 * @author Jan Jaap Kempenaar, Sander Grimm, University of Twente.
 */

#include "stdio.h"
#include "gpmc_driver_c.h"

#include <fcntl.h>      // open()
#include <unistd.h>     // close()

int main(int argc, char* argv[])
{
  int fd; // File descriptor.
  if (2 != argc)
  {
    //printf("Usage: %s <device_name>\n", argv[0]);
    return 1;
  }
  
  printf("GPMC driver c-example\n");
  
  // open connection to device.
  //printf("Opening gpmc_fpga...\n");
  fd = open(argv[1], 0);
  if (0 > fd)
  {
    //printf("Error, could not open device: %s.\n", argv[1]);
    return 1;
  }
  
  	setGPMCValue(fd, 0x20, 2);
  	setGPMCValue(fd, 0x20, 3);

	// keep reading
	while(1){
		unsigned short v = getGPMCValue(fd, 0);
		printf("Encoder value A: %d\r\n", v);
		v = getGPMCValue(fd, 1);
		printf("Encoder value B: %d\r\n", v);
		int i;
		for(i=0; i<0x100000; i++);
	}


  printf("Exiting...\n");
  // close connection to free resources.
  close(fd);
  return 0;
}
