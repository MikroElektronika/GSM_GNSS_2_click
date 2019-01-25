#line 1 "D:/Clicks_git/G/GSM_GNSS_2_Click/SW/example/c/ARM/STM/Click_GSM_GNSS_2_STM.c"
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_types.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"





typedef signed char int8_t;
typedef signed int int16_t;
typedef signed long int int32_t;
typedef signed long long int64_t;


typedef unsigned char uint8_t;
typedef unsigned int uint16_t;
typedef unsigned long int uint32_t;
typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef signed int int_least16_t;
typedef signed long int int_least32_t;
typedef signed long long int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned int uint_least16_t;
typedef unsigned long int uint_least32_t;
typedef unsigned long long uint_least64_t;



typedef signed long int int_fast8_t;
typedef signed long int int_fast16_t;
typedef signed long int int_fast32_t;
typedef signed long long int_fast64_t;


typedef unsigned long int uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long long uint_fast64_t;


typedef signed long int intptr_t;
typedef unsigned long int uintptr_t;


typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdbool.h"



 typedef char _Bool;
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_config.h"
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_types.h"
#line 3 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_config.h"
const uint32_t _GSMGNSS2_TIMER_LIMIT = 5;
const uint16_t _GSMGNSS2_BUF_WARNING = 192;
const uint8_t _GSMGNSS2_POLL_ENABLE = 1;
const uint8_t _GSMGNSS2_CALLBACK_ENABLE = 1;

const uint32_t _GSMGNSS2_UART_CFG[ 4 ] =
{
 9600,
 _UART_8_BIT_DATA,
 _UART_NOPARITY,
 _UART_ONE_STOPBIT
};
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_timer.h"
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_types.h"
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdbool.h"
#line 53 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
extern const uint8_t _GSMGNSS2_UNKNOWN ;
extern const uint8_t _GSMGNSS2_TEST ;
extern const uint8_t _GSMGNSS2_SET ;
extern const uint8_t _GSMGNSS2_GET ;
extern const uint8_t _GSMGNSS2_URC ;
extern const uint8_t _GSMGNSS2_EXEC ;



extern const uint8_t _GSMGNSS2_EVARG_START_T ;
extern const uint8_t _GSMGNSS2_EVARG_END_T ;
extern const uint8_t _GSMGNSS2_EVARG_EVENT_T ;

extern const uint8_t _GSMGNSS2_EVENT_RESPONSE ;
extern const uint8_t _GSMGNSS2_EVENT_TIMEOUT ;
extern const uint8_t _GSMGNSS2_EVENT_BUFFER_OUT ;
extern const uint8_t _GSMGNSS2_EVENT_CALLBACK ;
#line 75 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
typedef void ( *T_gsmgnss2_handler )( char *buffer, uint8_t *evArgs );
#line 91 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_uartDriverInit( const uint8_t*  gpioObj,  const uint8_t*  uartObj);
#line 103 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_coreInit( T_gsmgnss2_handler defaultHdl, uint32_t defaultWdog );
#line 115 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_hfcEnable(  _Bool  hfcState );
#line 124 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_modulePower(  _Bool  powerState );
#line 135 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_putc( char rxInput );
#line 143 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_tick();
#line 154 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
uint16_t gsmgnss2_setHandler( char *pCmd, uint32_t timeout, T_gsmgnss2_handler pHandler );
#line 164 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_cmdSingle( char *pCmd );
#line 176 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_cmdDouble( char *pCmd, char *pArg1 );
#line 189 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_cmdTriple( char *pCmd, char *pArg1, char *pArg2 );
#line 196 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
void gsmgnss2_process();

uint8_t gsmgnss2_chackRing();
#line 13 "d:/clicks_git/g/gsm_gnss_2_click/sw/example/c/arm/stm/click_gsm_gnss_2_timer.h"
uint32_t timerCounter = 0;

static void gsmgnss2_configTimer()
{
 RCC_APB1ENR.TIM2EN = 1;
 TIM2_CR1.CEN = 0;
 TIM2_PSC = 1;
 TIM2_ARR = 35999;
 NVIC_IntEnable(IVT_INT_TIM2);
 TIM2_DIER.UIE = 1;
 TIM2_CR1.CEN = 1;
 EnableInterrupts();
}

void Timer_interrupt() iv IVT_INT_TIM2
{
 timerCounter++;
 gsmgnss2_tick();
 TIM2_SR.UIF = 0;
}
#line 1 "d:/clicks_git/g/gsm_gnss_2_click/sw/library/__gsmgnss2_driver.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdint.h"
#line 1 "c:/users/public/documents/mikroelektronika/mikroc pro for arm/include/stdbool.h"
#line 46 "D:/Clicks_git/G/GSM_GNSS_2_Click/SW/example/c/ARM/STM/Click_GSM_GNSS_2_STM.c"
static char GSM_CMD_AT[3] = "AT";
static char GSM_CMD_ATI[4] = "ATI";
static char GSM_CMD_ATE[5] = "ATE0";
static char GSM_CMD_IFC[12] = "AT+IFC=2,2";
static char GSM_CMD_CMGF[10] = "AT+CMGF=1";
static char GSM_CMD_ATH[4] = "ATH";
static char GSM_CMD_CLCC[8] = "AT+CLCC";
static char GSM_CMD_CPOWD[12] = "AT+CPOWD=1";

static char GNSS_CMD_CGNSSEQ[25] = "AT+CGNSSEQ=\"GGA\"";
static char GNSS_CMD_CGNSINF[15] = "AT+CGNSINF";

void gsmgnss_default_handler( uint8_t *rsp, uint8_t *evArgs )
{
 char *tmp;
 tmp = rsp;

 mikrobus_logWrite( tmp, _LOG_TEXT );
}

void systemInit()
{
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_AN_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_PWM_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_INT_PIN, _GPIO_INPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_RST_PIN, _GPIO_OUTPUT );
 mikrobus_gpioInit( _MIKROBUS1, _MIKROBUS_CS_PIN, _GPIO_OUTPUT );

 mikrobus_uartInit( _MIKROBUS1, &_GSMGNSS2_UART_CFG[0] );
 mikrobus_logInit( _LOG_USBUART_A, 9600 );
 mikrobus_logWrite("---- Start Init ----", _LOG_LINE);
}

void applicationInit()
{

 gsmgnss2_configTimer();


 gsmgnss2_uartDriverInit(( const uint8_t* )&_MIKROBUS1_GPIO, ( const uint8_t* )&_MIKROBUS1_UART);
 gsmgnss2_coreInit( gsmgnss_default_handler, 1500 );


 gsmgnss2_hfcEnable( 1 );
 gsmgnss2_modulePower( 1 );


 gsmgnss2_cmdSingle( &GSM_CMD_AT[0] );
 gsmgnss2_cmdSingle( &GSM_CMD_ATI[0] );
 gsmgnss2_cmdSingle( &GSM_CMD_ATE[0] );
 gsmgnss2_cmdSingle( &GSM_CMD_IFC[0] );
 gsmgnss2_cmdSingle( &GSM_CMD_CMGF[0] );
 mikrobus_logWrite("---- GSM Init done ---", _LOG_LINE);

 gsmgnss2_cmdSingle( "AT+CGNSPWR=1" );
 Delay_ms( 3000 );

 mikrobus_logWrite("---- GNSS Init done ---", _LOG_LINE);
 mikrobus_logWrite("---- Please, call me :) ----", _LOG_LINE);
}

void applicationTask()
{

 gsmgnss2_process();

 if (0 == gsmgnss2_chackRing())
 {
 gsmgnss2_cmdSingle( &GSM_CMD_CLCC[0] );
 mikrobus_logWrite("--- Call detected ---", _LOG_LINE);
 gsmgnss2_cmdSingle( &GSM_CMD_ATH[0] );
 Delay_ms( 3000 );
 }

 if(timerCounter > 5000)
 {
 gsmgnss2_cmdSingle( "AT+CGNSSEQ=\"GGA\"" );
 gsmgnss2_cmdSingle( "AT+CGNSINF" );
 timerCounter = 0;
 }
}

void main()
{
 systemInit();
 applicationInit();

 while (1)
 {
 applicationTask();
 }
}
