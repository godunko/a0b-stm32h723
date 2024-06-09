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

   DMA1_STR0   : constant A0B.ARMv7M.External_Interrupt_Number := 11;
   DMA1_STR1   : constant A0B.ARMv7M.External_Interrupt_Number := 12;
   DMA1_STR2   : constant A0B.ARMv7M.External_Interrupt_Number := 13;
   DMA1_STR3   : constant A0B.ARMv7M.External_Interrupt_Number := 14;
   DMA1_STR4   : constant A0B.ARMv7M.External_Interrupt_Number := 15;
   DMA1_STR5   : constant A0B.ARMv7M.External_Interrupt_Number := 16;
   DMA1_STR6   : constant A0B.ARMv7M.External_Interrupt_Number := 17;

   I2C1_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 31;
   I2C1_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 32;
   I2C2_EV     : constant A0B.ARMv7M.External_Interrupt_Number := 33;
   I2C2_ER     : constant A0B.ARMv7M.External_Interrupt_Number := 34;

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

end A0B.STM32H723;
