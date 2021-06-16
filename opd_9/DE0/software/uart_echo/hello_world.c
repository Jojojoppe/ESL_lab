#include "system.h"

#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>


int main(){
	int i;
	printf("Hello world!\r\n");

	int f = open("/dev/uart_0", O_RDWR);
	printf("%d\r\n", f);

	unsigned char s[256];

	while(1){
		int rd = read(f, s, 256);
		if(rd>0){
			for(i=0; i<rd; i++){
				printf("%02x %c\r\n", s[i], s[i]);
			}
		}
	}

  return 0;
}
