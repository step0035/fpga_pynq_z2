/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xuartps.h"
#include "xtmrctr.h"

#define A_CSV_SIZE 1821
#define B_CSV_SIZE 22

XUartPs Uart_PS;		/* Instance of the UART Device */
XTmrCtr TimerCounter; /* The instance of the Tmrctr Device */
static char a_csv[A_CSV_SIZE];	/* Buffer for Receiving Data */
static u8 b_csv[B_CSV_SIZE];	/* Buffer for Receiving Data */
static u8 matrix_a[64][8];
static u8 matrix_b[8];
static u64 matrix_r[64];

u8 row;
u8 col;
char *token1;
char *token2;
char *rest1;
char *rest2;

int main()
{
	int Status;
	XUartPs_Config *Config;
	XTmrCtr *TmrCtrInstancePtr = &TimerCounter;
	unsigned int ReceivedCount;
	int start_time;
	int end_time;
    int computation_time;

    /* ===========================================init uart start=========================================== */
	Config = XUartPs_LookupConfig(UART_DEVICE_ID);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XUartPs_CfgInitialize(&Uart_PS, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    // set baudrate to 115200
    Status = XUartPs_SetBaudRate(&Uart_PS, 115200);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    // uart self test
	Status = XUartPs_SelfTest(&Uart_PS);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    // set uart to normal mode
	XUartPs_SetOperMode(&Uart_PS, XUARTPS_OPER_MODE_NORMAL);
    /* ===========================================init uart end=========================================== */

    /* ===========================================init timer start=========================================== */
	Status = XTmrCtr_Initialize(TmrCtrInstancePtr, TMRCTR_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    // timer self test
	Status = XTmrCtr_SelfTest(TmrCtrInstancePtr, TIMER_COUNTER_0);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

    // enable autoreload mode of timer counters
	XTmrCtr_SetOptions(TmrCtrInstancePtr, TIMER_COUNTER_0,
				XTC_AUTO_RELOAD_OPTION);
    /* ===========================================init timer end=========================================== */

    /* ===========================================read and parse csv start=========================================== */
    printf("Send A.csv...\r\n");

    // in every poll, we read as many bytes as we can and empty the FIFO
    // receive A.csv
    ReceivedCount = 0;
    while(ReceivedCount < A_CSV_SIZE) {
		ReceivedCount += XUartPs_Recv(&Uart_PS, &a_csv[ReceivedCount], A_CSV_SIZE - ReceivedCount);
    }

    // parse a.csv
    row = 0;
    rest1 = a_csv;
    while((token1 = strtok_r(rest1, "\r", &rest1)))
    {
        col = 0;
        rest2 = token1;
        while((token2 = strtok_r(rest2, ",", &rest2)))
        {
            matrix_a[row][col] = atoi(token2);
            col++;
        }
        row++;
    }

    printf("Finish receiving A.csv\r\n");

    printf("Send B.csv...\r\n");

    // receive B.csv
    ReceivedCount = 0;
    while(ReceivedCount < B_CSV_SIZE) {
		ReceivedCount += XUartPs_Recv(&Uart_PS, &b_csv[ReceivedCount], B_CSV_SIZE - ReceivedCount);
    }
    
    printf("Finish receiving B.csv\r\n");

    // parse b.csv
    row = 0;
    rest1 = b_csv;
    while((token1 = strtok_r(rest1, "\r", &rest1)))
    {
        matrix_b[row] = atoi(token1);
        row++;
    }
    /* ===========================================read and parse csv end=========================================== */

    /* ===========================================computation start=========================================== */
	start_time = XTmrCtr_GetValue(TmrCtrInstancePtr, TIMER_COUNTER_0);
    XTmrCtr_Start(TmrCtrInstancePtr, TIMER_COUNTER_0);

    for (size_t i=0; i<64; i++)
    {
        matrix_r[i] = 0;
        for (size_t j=0; j<8; j++)
        {
            matrix_r[i] += matrix_a[i][j] * matrix_b[j];
        }
        matrix_r[i] /= 256;
    }

	end_time = XTmrCtr_GetValue(TmrCtrInstancePtr, TIMER_COUNTER_0);
    /* ===========================================computation end=========================================== */
    
    computation_time = end_time - start_time;
    printf("computation_time: %d\r\n", computation_time);

    for (size_t i=0; i<64; i++)
    {
        printf("%llu\r\n", matrix_r[i]);
    }

    // disable autoreload
	XTmrCtr_SetOptions(TmrCtrInstancePtr, TIMER_COUNTER_0, 0);

    return 0;
}
