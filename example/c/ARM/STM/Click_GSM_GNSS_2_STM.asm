Click_GSM_GNSS_2_STM_gsmgnss2_configTimer:
;click_gsm_gnss_2_timer.h,15 :: 		static void gsmgnss2_configTimer()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;click_gsm_gnss_2_timer.h,17 :: 		RCC_APB1ENR.TIM2EN = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(RCC_APB1ENR+0)
MOVT	R0, #hi_addr(RCC_APB1ENR+0)
_SX	[R0, ByteOffset(RCC_APB1ENR+0)]
;click_gsm_gnss_2_timer.h,18 :: 		TIM2_CR1.CEN = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM2_CR1+0)
MOVT	R0, #hi_addr(TIM2_CR1+0)
_SX	[R0, ByteOffset(TIM2_CR1+0)]
;click_gsm_gnss_2_timer.h,19 :: 		TIM2_PSC = 1;
MOVS	R1, #1
MOVW	R0, #lo_addr(TIM2_PSC+0)
MOVT	R0, #hi_addr(TIM2_PSC+0)
STR	R1, [R0, #0]
;click_gsm_gnss_2_timer.h,20 :: 		TIM2_ARR = 35999;
MOVW	R1, #35999
MOVW	R0, #lo_addr(TIM2_ARR+0)
MOVT	R0, #hi_addr(TIM2_ARR+0)
STR	R1, [R0, #0]
;click_gsm_gnss_2_timer.h,21 :: 		NVIC_IntEnable(IVT_INT_TIM2);
MOVW	R0, #44
BL	_NVIC_IntEnable+0
;click_gsm_gnss_2_timer.h,22 :: 		TIM2_DIER.UIE = 1;
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM2_DIER+0)
MOVT	R0, #hi_addr(TIM2_DIER+0)
_SX	[R0, ByteOffset(TIM2_DIER+0)]
;click_gsm_gnss_2_timer.h,23 :: 		TIM2_CR1.CEN = 1;
MOVW	R0, #lo_addr(TIM2_CR1+0)
MOVT	R0, #hi_addr(TIM2_CR1+0)
_SX	[R0, ByteOffset(TIM2_CR1+0)]
;click_gsm_gnss_2_timer.h,24 :: 		EnableInterrupts();
BL	_EnableInterrupts+0
;click_gsm_gnss_2_timer.h,25 :: 		}
L_end_gsmgnss2_configTimer:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of Click_GSM_GNSS_2_STM_gsmgnss2_configTimer
_Timer_interrupt:
;click_gsm_gnss_2_timer.h,27 :: 		void Timer_interrupt() iv IVT_INT_TIM2
SUB	SP, SP, #4
STR	LR, [SP, #0]
;click_gsm_gnss_2_timer.h,29 :: 		timerCounter++;
MOVW	R1, #lo_addr(_timerCounter+0)
MOVT	R1, #hi_addr(_timerCounter+0)
LDR	R0, [R1, #0]
ADDS	R0, R0, #1
STR	R0, [R1, #0]
;click_gsm_gnss_2_timer.h,30 :: 		gsmgnss2_tick();
BL	_gsmgnss2_tick+0
;click_gsm_gnss_2_timer.h,31 :: 		TIM2_SR.UIF = 0;
MOVS	R1, #0
SXTB	R1, R1
MOVW	R0, #lo_addr(TIM2_SR+0)
MOVT	R0, #hi_addr(TIM2_SR+0)
_SX	[R0, ByteOffset(TIM2_SR+0)]
;click_gsm_gnss_2_timer.h,32 :: 		}
L_end_Timer_interrupt:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _Timer_interrupt
_gsmgnss_default_handler:
;Click_GSM_GNSS_2_STM.c,58 :: 		void gsmgnss_default_handler( uint8_t *rsp, uint8_t *evArgs )
; rsp start address is: 0 (R0)
SUB	SP, SP, #4
STR	LR, [SP, #0]
; rsp end address is: 0 (R0)
; rsp start address is: 0 (R0)
;Click_GSM_GNSS_2_STM.c,63 :: 		mikrobus_logWrite( tmp, _LOG_TEXT );
MOVS	R1, #1
; rsp end address is: 0 (R0)
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,64 :: 		}
L_end_gsmgnss_default_handler:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _gsmgnss_default_handler
_systemInit:
;Click_GSM_GNSS_2_STM.c,66 :: 		void systemInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_GSM_GNSS_2_STM.c,68 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #0
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_GSM_GNSS_2_STM.c,69 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_PWM_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #6
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_GSM_GNSS_2_STM.c,70 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
MOVS	R2, #1
MOVS	R1, #7
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_GSM_GNSS_2_STM.c,71 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #1
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_GSM_GNSS_2_STM.c,72 :: 		mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );
MOVS	R2, #0
MOVS	R1, #2
MOVS	R0, #0
BL	_mikrobus_gpioInit+0
;Click_GSM_GNSS_2_STM.c,74 :: 		mikrobus_uartInit( _MIKROBUS1, &_GSMGNSS2_UART_CFG[0] );
MOVW	R0, #lo_addr(__GSMGNSS2_UART_CFG+0)
MOVT	R0, #hi_addr(__GSMGNSS2_UART_CFG+0)
MOV	R1, R0
MOVS	R0, #0
BL	_mikrobus_uartInit+0
;Click_GSM_GNSS_2_STM.c,75 :: 		mikrobus_logInit( _LOG_USBUART_A, 9600 );
MOVW	R1, #9600
MOVS	R0, #32
BL	_mikrobus_logInit+0
;Click_GSM_GNSS_2_STM.c,76 :: 		mikrobus_logWrite("---- Start Init ----", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr1_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr1_Click_GSM_GNSS_2_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,77 :: 		}
L_end_systemInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _systemInit
_applicationInit:
;Click_GSM_GNSS_2_STM.c,79 :: 		void applicationInit()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_GSM_GNSS_2_STM.c,82 :: 		gsmgnss2_configTimer();
BL	Click_GSM_GNSS_2_STM_gsmgnss2_configTimer+0
;Click_GSM_GNSS_2_STM.c,85 :: 		gsmgnss2_uartDriverInit((T_GSMGNSS2_P)&_MIKROBUS1_GPIO, (T_GSMGNSS2_P)&_MIKROBUS1_UART);
MOVW	R1, #lo_addr(__MIKROBUS1_UART+0)
MOVT	R1, #hi_addr(__MIKROBUS1_UART+0)
MOVW	R0, #lo_addr(__MIKROBUS1_GPIO+0)
MOVT	R0, #hi_addr(__MIKROBUS1_GPIO+0)
BL	_gsmgnss2_uartDriverInit+0
;Click_GSM_GNSS_2_STM.c,86 :: 		gsmgnss2_coreInit( gsmgnss_default_handler, 1500 );
MOVW	R0, #lo_addr(_gsmgnss_default_handler+0)
MOVT	R0, #hi_addr(_gsmgnss_default_handler+0)
MOVW	R1, #1500
BL	_gsmgnss2_coreInit+0
;Click_GSM_GNSS_2_STM.c,89 :: 		gsmgnss2_hfcEnable( 1 );
MOVS	R0, #1
BL	_gsmgnss2_hfcEnable+0
;Click_GSM_GNSS_2_STM.c,90 :: 		gsmgnss2_modulePower( 1 );
MOVS	R0, #1
BL	_gsmgnss2_modulePower+0
;Click_GSM_GNSS_2_STM.c,93 :: 		gsmgnss2_cmdSingle( &GSM_CMD_AT[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_AT+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_AT+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,94 :: 		gsmgnss2_cmdSingle( &GSM_CMD_ATI[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATI+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATI+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,95 :: 		gsmgnss2_cmdSingle( &GSM_CMD_ATE[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATE+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATE+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,96 :: 		gsmgnss2_cmdSingle( &GSM_CMD_IFC[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_IFC+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_IFC+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,97 :: 		gsmgnss2_cmdSingle( &GSM_CMD_CMGF[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_CMGF+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_CMGF+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,98 :: 		mikrobus_logWrite("---- GSM Init done ---", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr2_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr2_Click_GSM_GNSS_2_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,100 :: 		gsmgnss2_cmdSingle( "AT+CGNSPWR=1" );
MOVW	R0, #lo_addr(?lstr3_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr3_Click_GSM_GNSS_2_STM+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,101 :: 		Delay_ms( 3000 );
MOVW	R7, #20735
MOVT	R7, #549
NOP
NOP
L_applicationInit0:
SUBS	R7, R7, #1
BNE	L_applicationInit0
NOP
NOP
NOP
;Click_GSM_GNSS_2_STM.c,103 :: 		mikrobus_logWrite("---- GNSS Init done ---", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr4_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr4_Click_GSM_GNSS_2_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,104 :: 		mikrobus_logWrite("---- Please, call me :) ----", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr5_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr5_Click_GSM_GNSS_2_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,105 :: 		}
L_end_applicationInit:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationInit
_applicationTask:
;Click_GSM_GNSS_2_STM.c,107 :: 		void applicationTask()
SUB	SP, SP, #4
STR	LR, [SP, #0]
;Click_GSM_GNSS_2_STM.c,110 :: 		gsmgnss2_process();
BL	_gsmgnss2_process+0
;Click_GSM_GNSS_2_STM.c,112 :: 		if (0 == gsmgnss2_chackRing())
BL	_gsmgnss2_chackRing+0
CMP	R0, #0
IT	NE
BNE	L_applicationTask2
;Click_GSM_GNSS_2_STM.c,114 :: 		gsmgnss2_cmdSingle( &GSM_CMD_CLCC[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_CLCC+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_CLCC+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,115 :: 		mikrobus_logWrite("--- Call detected ---", _LOG_LINE);
MOVW	R0, #lo_addr(?lstr6_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr6_Click_GSM_GNSS_2_STM+0)
MOVS	R1, #2
BL	_mikrobus_logWrite+0
;Click_GSM_GNSS_2_STM.c,116 :: 		gsmgnss2_cmdSingle( &GSM_CMD_ATH[0] );
MOVW	R0, #lo_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATH+0)
MOVT	R0, #hi_addr(Click_GSM_GNSS_2_STM_GSM_CMD_ATH+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,117 :: 		Delay_ms( 3000 );
MOVW	R7, #20735
MOVT	R7, #549
NOP
NOP
L_applicationTask3:
SUBS	R7, R7, #1
BNE	L_applicationTask3
NOP
NOP
NOP
;Click_GSM_GNSS_2_STM.c,118 :: 		}
L_applicationTask2:
;Click_GSM_GNSS_2_STM.c,120 :: 		if(timerCounter > 5000)
MOVW	R0, #lo_addr(_timerCounter+0)
MOVT	R0, #hi_addr(_timerCounter+0)
LDR	R1, [R0, #0]
MOVW	R0, #5000
CMP	R1, R0
IT	LS
BLS	L_applicationTask5
;Click_GSM_GNSS_2_STM.c,122 :: 		gsmgnss2_cmdSingle( "AT+CGNSSEQ=\"GGA\"" );
MOVW	R0, #lo_addr(?lstr7_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr7_Click_GSM_GNSS_2_STM+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,123 :: 		gsmgnss2_cmdSingle( "AT+CGNSINF" );
MOVW	R0, #lo_addr(?lstr8_Click_GSM_GNSS_2_STM+0)
MOVT	R0, #hi_addr(?lstr8_Click_GSM_GNSS_2_STM+0)
BL	_gsmgnss2_cmdSingle+0
;Click_GSM_GNSS_2_STM.c,124 :: 		timerCounter = 0;
MOVS	R1, #0
MOVW	R0, #lo_addr(_timerCounter+0)
MOVT	R0, #hi_addr(_timerCounter+0)
STR	R1, [R0, #0]
;Click_GSM_GNSS_2_STM.c,125 :: 		}
L_applicationTask5:
;Click_GSM_GNSS_2_STM.c,126 :: 		}
L_end_applicationTask:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _applicationTask
_main:
;Click_GSM_GNSS_2_STM.c,128 :: 		void main()
;Click_GSM_GNSS_2_STM.c,130 :: 		systemInit();
BL	_systemInit+0
;Click_GSM_GNSS_2_STM.c,131 :: 		applicationInit();
BL	_applicationInit+0
;Click_GSM_GNSS_2_STM.c,133 :: 		while (1)
L_main6:
;Click_GSM_GNSS_2_STM.c,135 :: 		applicationTask();
BL	_applicationTask+0
;Click_GSM_GNSS_2_STM.c,136 :: 		}
IT	AL
BAL	L_main6
;Click_GSM_GNSS_2_STM.c,137 :: 		}
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
