--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with A0B.ARMv7M;
with A0B.Types;

package A0B.STM32H723
  with Preelaborate, No_Elaboration_Code_All
is

   subtype Interrupt_Number is
     A0B.ARMv7M.External_Interrupt_Number range 0 .. 162;

   WWDG1                  : constant Interrupt_Number := 0;
   PVD_PVM                : constant Interrupt_Number := 1;
   RTC_TAMP_STAMP_CSS_LSE : constant Interrupt_Number := 2;
   RTC_WKUP               : constant Interrupt_Number := 3;
   FLASH                  : constant Interrupt_Number := 4;
   RCC                    : constant Interrupt_Number := 5;
   EXTI0                  : constant Interrupt_Number := 6;
   EXTI1                  : constant Interrupt_Number := 7;
   EXTI2                  : constant Interrupt_Number := 8;
   EXTI3                  : constant Interrupt_Number := 9;
   EXTI4                  : constant Interrupt_Number := 10;
   DMA1_STR0              : constant Interrupt_Number := 11;
   DMA1_STR1              : constant Interrupt_Number := 12;
   DMA1_STR2              : constant Interrupt_Number := 13;
   DMA1_STR3              : constant Interrupt_Number := 14;
   DMA1_STR4              : constant Interrupt_Number := 15;
   DMA1_STR5              : constant Interrupt_Number := 16;
   DMA1_STR6              : constant Interrupt_Number := 17;
   ADC1_2                 : constant Interrupt_Number := 18;
   FDCAN1_IT0             : constant Interrupt_Number := 19;
   FDCAN2_IT0             : constant Interrupt_Number := 20;
   FDCAN1_IT1             : constant Interrupt_Number := 21;
   FDCAN2_IT1             : constant Interrupt_Number := 22;
   EXTI9_5                : constant Interrupt_Number := 23;
   TIM1_BRK               : constant Interrupt_Number := 24;
   TIM1_UP                : constant Interrupt_Number := 25;
   TIM1_TRG_COM           : constant Interrupt_Number := 26;
   TIM1_CC                : constant Interrupt_Number := 27;
   TIM2                   : constant Interrupt_Number := 28;
   TIM3                   : constant Interrupt_Number := 29;
   TIM4                   : constant Interrupt_Number := 30;
   I2C1_EV                : constant Interrupt_Number := 31;
   I2C1_ER                : constant Interrupt_Number := 32;
   I2C2_EV                : constant Interrupt_Number := 33;
   I2C2_ER                : constant Interrupt_Number := 34;
   SPI1                   : constant Interrupt_Number := 35;
   SPI2                   : constant Interrupt_Number := 36;
   USART1                 : constant Interrupt_Number := 37;
   USART2                 : constant Interrupt_Number := 38;
   USART3                 : constant Interrupt_Number := 39;
   EXTI15_10              : constant Interrupt_Number := 40;
   RTC_ALARM              : constant Interrupt_Number := 41;

   TIM8_BRK_TIM12         : constant Interrupt_Number := 43;
   TIM8_UP_TIM13          : constant Interrupt_Number := 44;
   TIM8_TRG_COM_TIM14     : constant Interrupt_Number := 45;
   TIM8_CC                : constant Interrupt_Number := 46;
   DMA1_STR7              : constant Interrupt_Number := 47;
   FMC                    : constant Interrupt_Number := 48;
   SDMMC1                 : constant Interrupt_Number := 49;
   TIM5                   : constant Interrupt_Number := 50;
   SPI3                   : constant Interrupt_Number := 51;
   UART4                  : constant Interrupt_Number := 52;
   UART5                  : constant Interrupt_Number := 53;
   TIM6_DAC               : constant Interrupt_Number := 54;
   TIM7                   : constant Interrupt_Number := 55;
   DMA2_STR0              : constant Interrupt_Number := 56;
   DMA2_STR1              : constant Interrupt_Number := 57;
   DMA2_STR2              : constant Interrupt_Number := 58;
   DMA2_STR3              : constant Interrupt_Number := 59;
   DMA2_STR4              : constant Interrupt_Number := 60;
   ETH                    : constant Interrupt_Number := 61;
   ETH_WKUP               : constant Interrupt_Number := 62;
   FDCAN_CAL              : constant Interrupt_Number := 63;

   DMA2_STR5              : constant Interrupt_Number := 68;
   DMA2_STR6              : constant Interrupt_Number := 69;
   DMA2_STR7              : constant Interrupt_Number := 70;
   USART6                 : constant Interrupt_Number := 71;
   I2C3_EV                : constant Interrupt_Number := 72;
   I2C3_ER                : constant Interrupt_Number := 73;
   OTG_HS_EP1_OUT         : constant Interrupt_Number := 74;
   OTG_HS_EP1_IN          : constant Interrupt_Number := 75;
   OTG_HS_WKUP            : constant Interrupt_Number := 76;
   OTG_HS                 : constant Interrupt_Number := 77;
   DCMI_PSSI              : constant Interrupt_Number := 78;

   HASH_RNG               : constant Interrupt_Number := 80;
   FPU                    : constant Interrupt_Number := 81;
   UART7                  : constant Interrupt_Number := 82;
   UART8                  : constant Interrupt_Number := 83;
   SPI4                   : constant Interrupt_Number := 84;
   SPI5                   : constant Interrupt_Number := 85;
   SPI6                   : constant Interrupt_Number := 86;
   SAI1                   : constant Interrupt_Number := 87;
   LTDC                   : constant Interrupt_Number := 88;
   LTDC_ERR               : constant Interrupt_Number := 89;
   DMA2D                  : constant Interrupt_Number := 90;

   OCTOSPI1               : constant Interrupt_Number := 92;
   LPTIM1                 : constant Interrupt_Number := 93;
   CEC                    : constant Interrupt_Number := 94;
   I2C4_EV                : constant Interrupt_Number := 95;
   I2C4_ER                : constant Interrupt_Number := 96;
   SPDIF                  : constant Interrupt_Number := 97;

   DMAMUX1_OV             : constant Interrupt_Number := 102;

   DFSDM1_FLT0            : constant Interrupt_Number := 110;
   DFSDM1_FLT1            : constant Interrupt_Number := 111;
   DFSDM1_FLT2            : constant Interrupt_Number := 112;
   DFSDM1_FLT3            : constant Interrupt_Number := 113;

   SWPMI1                 : constant Interrupt_Number := 115;
   TIM15                  : constant Interrupt_Number := 116;
   TIM16                  : constant Interrupt_Number := 117;
   TIM17                  : constant Interrupt_Number := 118;
   MDIOS_WKUP             : constant Interrupt_Number := 119;
   MDIOS                  : constant Interrupt_Number := 120;

   MDMA                   : constant Interrupt_Number := 122;

   SDMMC2                 : constant Interrupt_Number := 124;
   HSEM0                  : constant Interrupt_Number := 125;

   ADC3                   : constant Interrupt_Number := 127;
   DMAMUX2_OVR            : constant Interrupt_Number := 128;
   BDMA_CH0               : constant Interrupt_Number := 129;
   BDMA_CH1               : constant Interrupt_Number := 130;
   BDMA_CH2               : constant Interrupt_Number := 131;
   BDMA_CH3               : constant Interrupt_Number := 132;
   BDMA_CH4               : constant Interrupt_Number := 133;
   BDMA_CH5               : constant Interrupt_Number := 134;
   BDMA_CH6               : constant Interrupt_Number := 135;
   BDMA_CH7               : constant Interrupt_Number := 136;
   COMP                   : constant Interrupt_Number := 137;
   LPTIM2                 : constant Interrupt_Number := 138;
   LPTIM3                 : constant Interrupt_Number := 139;
   LPTIM4                 : constant Interrupt_Number := 140;
   LPTIM5                 : constant Interrupt_Number := 141;
   LPUART                 : constant Interrupt_Number := 142;

   CRS                    : constant Interrupt_Number := 144;
   ECC_DIAG_IT            : constant Interrupt_Number := 145;
   SAI4                   : constant Interrupt_Number := 146;
   TEMP_IT                : constant Interrupt_Number := 147;

   WKUP                   : constant Interrupt_Number := 149;
   OCTOSPI2               : constant Interrupt_Number := 150;

   FMAC                   : constant Interrupt_Number := 153;
   CORDIC_IT              : constant Interrupt_Number := 154;
   UART9                  : constant Interrupt_Number := 155;
   USART10                : constant Interrupt_Number := 156;
   I2C5_EV                : constant Interrupt_Number := 157;
   I2C5_ER                : constant Interrupt_Number := 158;
   FDCAN3_IT0             : constant Interrupt_Number := 159;
   FDCAN3_IT1             : constant Interrupt_Number := 160;
   TIM23                  : constant Interrupt_Number := 161;
   TIM24                  : constant Interrupt_Number := 162;

   type GPIO_Controller_Identifier is (A, B, C, D, E, F, G, H)
     with Size => 4;
   for GPIO_Controller_Identifier use
     (A => 0, B => 1, C => 2, D => 3, E => 4, F => 5, G => 6, H => 7);

   type GPIO_Line_Identifier is range 0 .. 15;

   type Function_Line_Descriptor (<>) is limited private
     with Preelaborable_Initialization;

private

   type GPIO_Alternative_Function is mod 2 ** 4;

   type Function_Line_Configuration is record
      Controller           : GPIO_Controller_Identifier;
      Line                 : GPIO_Line_Identifier;
      Alternative_Function : GPIO_Alternative_Function;
   end record with Pack;

   type Function_Line_Descriptor is
     array (A0B.Types.Unsigned_8 range <>) of Function_Line_Configuration;

end A0B.STM32H723;
