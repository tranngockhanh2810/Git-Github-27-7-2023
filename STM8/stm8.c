//
#include "iostm8s005k6.h"
#include <intrinsics.h>
#include "delay.h"
#include "std_types.h"



#define LOW             0u
#define HIGH            1u

#define L7SEG_A           PB_ODR_ODR3
#define L7SEG_B           PB_ODR_ODR2
#define L7SEG_C           PB_ODR_ODR1
#define L7SEG_D           PB_ODR_ODR0

#define L7SEG_E           PC_ODR_ODR4
#define L7SEG_F           PC_ODR_ODR3
#define L7SEG_G           PC_ODR_ODR2
#define L7SEG_H           PC_ODR_ODR1

#define SPI_CLK           PC_ODR_ODR5
#define SPI_MOSI          PC_ODR_ODR6
#define SPI_MISO          PC_IDR_IDR7
#define HC595_LATCH       PE_ODR_ODR5

#define MAX_LED           4
#define MAX_CHAR          10

const uint8_t scanLed[MAX_LED] = {0x01, 0x02, 0x04, 0x08};

const uint8_t CodeLed[MAX_CHAR] =  {  //font
                                      0x30, 0xF9, 0x52, 0xD0, 0x99,  
                                      0x94, 0x14, 0xF1, 0x10, 0x90
                                    };

uint8_t CharLed[MAX_LED] = {0 ,0 ,0 ,0};

uint8_t DoSang = 4; 


uint8_t SPISoft_WriteRead(uint8_t ByteW)
{
    uint8_t byter = 0;
    uint8_t CountClk = 0;
    
    SPI_CLK = 0;
  
    for(CountClk = 0; CountClk < 8;  CountClk ++)
    {
         SPI_MOSI = (ByteW >> (7 - CountClk)) & 0x01;
         SPI_CLK = 1;
         byter = SPI_MISO;
         SPI_CLK = 0;
         byter = byter << 1;
    }
    
    return byter;
}

uint8_t SPI_WriteRead(uint8_t ByteW)
{
  uint8_t datar = 0x00;
  
  while(SPI_SR_BSY){};
  
  SPI_DR = ByteW;
  while(!SPI_SR_TXE){};
  while(!SPI_SR_RXNE){};
  datar = SPI_DR;
  return datar;
}

void hc595_WriteData(uint8_t data)
{
    SPI_WriteRead(data);
    HC595_LATCH = 0;
    HC595_LATCH = 1;
}


void Init_All()
{
    __disable_interrupt();
    
    CLK_ICKR_LSIEN      = 1;
    CLK_ECKR_HSEEN      = 0;
    CLK_CKDIVR_HSIDIV   = 0x00;   
    CLK_SWCR_SWEN       = 1;
    CLK_SWR             = 0XE1;
    
    TIM2_PSCR            = 5;
    TIM2_ARRH            = (100 >> 8) & 0x00FF;
    TIM2_ARRL            = 100 & 0x00FF;
    TIM2_CR1_ARPE        = 1;
    TIM2_IER_UIE         = 1;
    TIM2_CR1_CEN         = 1;
    
    PB_DDR_DDR3          = 1;
    PB_CR1_C13           = 1;
    PB_ODR_ODR3          = 0;
    
    PB_DDR_DDR2         = 1;
    PB_CR1_C12          = 1;
    PB_ODR_ODR2         = 0;
    
    PB_DDR_DDR1         = 1;
    PB_CR1_C11          = 1;
    PB_ODR_ODR1         = 0;
    
    PB_DDR_DDR0         = 1;
    PB_CR1_C10          = 1;
    PB_ODR_ODR0         = 0;
    
    PC_DDR_DDR4         = 1;
    PC_CR1_C14          = 1;
    PC_ODR_ODR4         = 0;
    
    PC_DDR_DDR3         = 1;
    PC_CR1_C13          = 1;
    PC_ODR_ODR3         = 0;
     
    PC_DDR_DDR2         = 1;
    PC_CR1_C12          = 1;
    PC_ODR_ODR2         = 0;
     
    PC_DDR_DDR1         = 1;
    PC_CR1_C11          = 1;
    PC_ODR_ODR1         = 0;
    
    PC_DDR_DDR5         = 1;
    PC_CR1_C15          = 1;
    PC_ODR_ODR5         = 1;
    
    PC_DDR_DDR6         = 1;
    PC_CR1_C16          = 1;
    PC_ODR_ODR6         = 1;
    
    PC_DDR_DDR7         = 0;
    PC_CR1_C17          = 1;
    PC_ODR_ODR7         = 1;
    
    PE_DDR_DDR5         = 1;
    PE_CR1_C15          = 1;
    PE_ODR_ODR5         = 1;
    
    SPI_CR2             = 0x03;
    SPI_CR1             = 0x44;

     
    
  __enable_interrupt();
}

void L7Seg_ReFresh()
{
    PB_ODR |= 0x0F;
    PC_ODR |= 0x1E;
}

void L7Seg_Scan(uint8_t IDLed)
{
  hc595_WriteData(scanLed[IDLed]);
}

void L7Seg_PushData(uint8_t nchar)
{
    if(nchar > 9)
    {
       nchar = 0;
    }
  
    uint8_t value  = CodeLed[nchar] & 0x0F;
   
    value |= PB_ODR & 0xF0;
    PB_ODR &= value;
  
    value = CodeLed[nchar] >> 3;
    value |= PC_ODR & 0xE1;
    PC_ODR &= value;
}

void L7Seg_ShowNumber(uint16_t number)
{
   uint8_t value = 0;
   
   CharLed[0] = number/1000;
    
   value =  (number/100)%10;
   CharLed[1] = value;
   
   value =  (number/10)%10;
   CharLed[2] = value;
   
   value =  (number/1)%10;
   CharLed[3] = value; 
}

void L7Seg_SetLight(uint8_t Level)
{
   DoSang = Level;
}
int  count  = 0;


int main()
{
   Init_All();

   while(1)
   {
      L7Seg_SetLight(count);
      L7Seg_ShowNumber(1234);
      delay_ms(50);
      
      if(++ count == 8)
      {
         count = 0;
      }
      
   }
}

#pragma vector = TIM2_OVR_UIF_vector
__interrupt void TIM2_OVR_UIF_handler(void)  
{
  static uint8_t Scan = 0;
  static uint8_t CountLight  = 0;
 
  L7Seg_ReFresh();
  if(CountLight < DoSang)
  {
    L7Seg_Scan(Scan);
  }
  else
  {
    hc595_WriteData(0x00);
  }
  
  L7Seg_PushData(CharLed[Scan]);
  if(++ Scan == MAX_LED)
  {
      Scan = 0;
      if(++ CountLight == 8)
      {
        CountLight = 0;
      }
  }
  
  TIM2_SR1_UIF   = 0;
}





































































