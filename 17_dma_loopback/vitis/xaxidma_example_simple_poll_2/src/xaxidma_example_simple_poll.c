#include <stdio.h>
#include "xil_printf.h"


int main()
{
	float* ptr = (float*)0x1000000;



	xil_printf("Entering main");
	xil_printf("%f", *ptr);
}
