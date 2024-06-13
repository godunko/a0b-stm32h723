--
--  Copyright (C) 2024, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

pragma Restrictions (No_Elaboration_Code);

with A0B.ARMv7M;

package A0B.STM32H723
  with Preelaborate
is

   EXTI0       : constant A0B.ARMv7M.External_Interrupt_Number := 6;
   EXTI1       : constant A0B.ARMv7M.External_Interrupt_Number := 7;
   EXTI2       : constant A0B.ARMv7M.External_Interrupt_Number := 8;
   EXTI3       : constant A0B.ARMv7M.External_Interrupt_Number := 9;
   EXTI4       : constant A0B.ARMv7M.External_Interrupt_Number := 10;
   DMA1_STR0   : constant A0B.ARMv7M.External_Interrupt_Number := 11;
   DMA1_STR1   : constant A0B.ARMv7M.External_Interrupt_Number := 12;
   DMA1_STR2   : constant A0B.ARMv7M.External_Interrupt_Number := 13;
   DMA1_STR3   : constant A0B.ARMv7M.External_Interrupt_Number := 14;
   DMA1_STR4   : constant A0B.ARMv7M.External_Interrupt_Number := 15;
   DMA1_STR5   : constant A0B.ARMv7M.External_Interrupt_Number := 16;
   DMA1_STR6   : constant A0B.ARMv7M.External_Interrupt_Number := 17;

   EXTI9_5     : constant A0B.ARMv7M.External_Interrupt_Number := 23;

   I2C1_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 31;
   I2C1_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 32;
   I2C2_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 33;
   I2C2_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 34;

   EXTI15_10   : constant A0B.ARMv7M.External_Interrupt_Number := 40;

   DMA1_STR7   : constant A0B.ARMv7M.External_Interrupt_Number := 47;

   DMA2_STR0   : constant A0B.ARMv7M.External_Interrupt_Number := 56;
   DMA2_STR1   : constant A0B.ARMv7M.External_Interrupt_Number := 57;
   DMA2_STR2   : constant A0B.ARMv7M.External_Interrupt_Number := 58;
   DMA2_STR3   : constant A0B.ARMv7M.External_Interrupt_Number := 59;
   DMA2_STR4   : constant A0B.ARMv7M.External_Interrupt_Number := 60;

   DMA2_STR5   : constant A0B.ARMv7M.External_Interrupt_Number := 68;
   DMA2_STR6   : constant A0B.ARMv7M.External_Interrupt_Number := 69;
   DMA2_STR7   : constant A0B.ARMv7M.External_Interrupt_Number := 70;

   I2C3_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 72;
   I2C3_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 73;

   DCMI_PSSI   : constant A0B.ARMv7M.External_Interrupt_Number := 78;

   DMA2D       : constant A0B.ARMv7M.External_Interrupt_Number := 90;

   I2C4_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 95;
   I2C4_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 96;

   DMAMUX1_OV  : constant A0B.ARMv7M.External_Interrupt_Number := 102;

   MDMA        : constant A0B.ARMv7M.External_Interrupt_Number := 122;

   DMAMUX2_OVR : constant A0B.ARMv7M.External_Interrupt_Number := 128;
   BDMA_CH0    : constant A0B.ARMv7M.External_Interrupt_Number := 129;
   BDMA_CH1    : constant A0B.ARMv7M.External_Interrupt_Number := 130;
   BDMA_CH2    : constant A0B.ARMv7M.External_Interrupt_Number := 131;
   BDMA_CH3    : constant A0B.ARMv7M.External_Interrupt_Number := 132;
   BDMA_CH4    : constant A0B.ARMv7M.External_Interrupt_Number := 133;
   BDMA_CH5    : constant A0B.ARMv7M.External_Interrupt_Number := 134;
   BDMA_CH6    : constant A0B.ARMv7M.External_Interrupt_Number := 135;
   BDMA_CH7    : constant A0B.ARMv7M.External_Interrupt_Number := 136;

   I2C5_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 157;
   I2C5_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 158;

   type Function_Line is
     (FMC_A0,
      FMC_A1,
      FMC_A2,
      FMC_A3,
      FMC_A4,
      FMC_A5,
      FMC_A6,
      FMC_A7,
      FMC_A8,
      FMC_A9,
      FMC_A10,
      FMC_A11,
      FMC_A12,
      FMC_A13,
      FMC_A14,
      FMC_A15,
      FMC_A16,
      FMC_A17,
      FMC_A18,
      FMC_A19,
      FMC_A20,
      FMC_A21,
      FMC_A22,
      FMC_A23,
      FMC_A24,
      FMC_A25,
      FMC_AD0,
      FMC_AD1,
      FMC_AD2,
      FMC_AD3,
      FMC_AD4,
      FMC_AD5,
      FMC_AD6,
      FMC_AD7,
      FMC_AD8,
      FMC_AD9,
      FMC_AD10,
      FMC_AD11,
      FMC_AD12,
      FMC_AD13,
      FMC_AD14,
      FMC_AD15,
      FMC_D0,
      FMC_D1,
      FMC_D2,
      FMC_D3,
      FMC_D4,
      FMC_D5,
      FMC_D6,
      FMC_D7,
      FMC_D8,
      FMC_D9,
      FMC_D10,
      FMC_D11,
      FMC_D12,
      FMC_D13,
      FMC_D14,
      FMC_D15,
      FMC_ALE,
      FMC_BA0,
      FMC_BA1,
      FMC_CLE,
      FMC_CLK,
      FMC_INT,
      FMC_NBL0,
      FMC_NBL1,
      FMC_NCAS,
      FMC_NCE,
      FMC_NE1,
      FMC_NE2,
      FMC_NE3,
      FMC_NE4,
      FMC_NL,
      FMC_NOE,
      FMC_NRAS,
      FMC_NWAIT,
      FMC_NWE,
      FMC_SDCKE0,
      FMC_SDCKE1,
      FMC_SDCLK,
      FMC_SDNE0,
      FMC_SDNE1,
      FMC_SDNWE,

      LPTIM1_ETR,
      LPTIM1_IN1,
      LPTIM1_IN2,
      LPTIM1_OUT,
      LPTIM2_ETR,
      LPTIM2_IN1,
      LPTIM2_IN2,
      LPTIM2_OUT,
      LPTIM3_OUT,
      LPTIM4_OUT,
      LPTIM5_OUT,

      PSSI_D0,
      PSSI_D1,
      PSSI_D2,
      PSSI_D3,
      PSSI_D4,
      PSSI_D5,
      PSSI_D6,
      PSSI_D7,
      PSSI_D8,
      PSSI_D9,
      PSSI_D10,
      PSSI_D11,
      PSSI_D12,
      PSSI_D13,
      PSSI_D14,
      PSSI_D15,
      PSSI_DE,
      PSSI_PDCK,
      PSSI_RDY,

      SPI6_MISO,
      SPI6_MOSI,
      SPI6_SCK,
      SPI6_NSS);

end A0B.STM32H723;
