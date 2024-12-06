pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.HSEM is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype HSEM_R_PROCID_Field is A0B.Types.SVD.Byte;
   subtype HSEM_R_MASTERID_Field is A0B.Types.SVD.Byte;

   --  HSEM register HSEM_R0 HSEM_R31
   type HSEM_R_Register is record
      --  Semaphore ProcessID
      PROCID         : HSEM_R_PROCID_Field := 16#0#;
      --  Semaphore MasterID
      MASTERID       : HSEM_R_MASTERID_Field := 16#0#;
      --  unspecified
      Reserved_16_30 : A0B.Types.SVD.UInt15 := 16#0#;
      --  Lock indication
      LOCK           : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for HSEM_R_Register use record
      PROCID         at 0 range 0 .. 7;
      MASTERID       at 0 range 8 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   subtype HSEM_RLR_PROCID_Field is A0B.Types.SVD.Byte;
   subtype HSEM_RLR_MASTERID_Field is A0B.Types.SVD.Byte;

   --  HSEM Read lock register
   type HSEM_RLR_Register is record
      --  Read-only. Semaphore ProcessID
      PROCID         : HSEM_RLR_PROCID_Field;
      --  Read-only. Semaphore MasterID
      MASTERID       : HSEM_RLR_MASTERID_Field;
      --  unspecified
      Reserved_16_30 : A0B.Types.SVD.UInt15;
      --  Read-only. Lock indication
      LOCK           : Boolean;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for HSEM_RLR_Register use record
      PROCID         at 0 range 0 .. 7;
      MASTERID       at 0 range 8 .. 15;
      Reserved_16_30 at 0 range 16 .. 30;
      LOCK           at 0 range 31 .. 31;
   end record;

   --  HSEM_C1IER_ISEM array
   type HSEM_C1IER_ISEM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  HSEM Interrupt enable register
   type HSEM_C1IER_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ISEM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  ISEM as an array
            Arr : HSEM_C1IER_ISEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1IER_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  HSEM_C1ICR_ISEM array
   type HSEM_C1ICR_ISEM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  HSEM Interrupt clear register
   type HSEM_C1ICR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ISEM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  ISEM as an array
            Arr : HSEM_C1ICR_ISEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1ICR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  HSEM_C1ISR_ISEM array
   type HSEM_C1ISR_ISEM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  HSEM Interrupt status register
   type HSEM_C1ISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ISEM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  ISEM as an array
            Arr : HSEM_C1ISR_ISEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1ISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   --  HSEM_C1MISR_ISEM array
   type HSEM_C1MISR_ISEM_Field_Array is array (0 .. 31) of Boolean
     with Component_Size => 1, Size => 32;

   --  HSEM Masked interrupt status register
   type HSEM_C1MISR_Register
     (As_Array : Boolean := False)
   is record
      case As_Array is
         when False =>
            --  ISEM as a value
            Val : A0B.Types.SVD.UInt32;
         when True =>
            --  ISEM as an array
            Arr : HSEM_C1MISR_ISEM_Field_Array;
      end case;
   end record
     with Unchecked_Union, Size => 32, Object_Size => 32,
          Bit_Order => System.Low_Order_First;

   for HSEM_C1MISR_Register use record
      Val at 0 range 0 .. 31;
      Arr at 0 range 0 .. 31;
   end record;

   subtype HSEM_CR_COREID_Field is A0B.Types.SVD.UInt4;
   subtype HSEM_CR_KEY_Field is A0B.Types.SVD.UInt16;

   --  HSEM Clear register
   type HSEM_CR_Register is record
      --  unspecified
      Reserved_0_7   : A0B.Types.SVD.Byte := 16#0#;
      --  MasterID of semaphores to be cleared
      COREID         : HSEM_CR_COREID_Field := 16#0#;
      --  unspecified
      Reserved_12_15 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Semaphore clear Key
      KEY            : HSEM_CR_KEY_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for HSEM_CR_Register use record
      Reserved_0_7   at 0 range 0 .. 7;
      COREID         at 0 range 8 .. 11;
      Reserved_12_15 at 0 range 12 .. 15;
      KEY            at 0 range 16 .. 31;
   end record;

   subtype HSEM_KEYR_KEY_Field is A0B.Types.SVD.UInt16;

   --  HSEM Interrupt clear register
   type HSEM_KEYR_Register is record
      --  unspecified
      Reserved_0_15 : A0B.Types.SVD.UInt16 := 16#0#;
      --  Semaphore Clear Key
      KEY           : HSEM_KEYR_KEY_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for HSEM_KEYR_Register use record
      Reserved_0_15 at 0 range 0 .. 15;
      KEY           at 0 range 16 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  HSEM
   type HSEM_Peripheral is record
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R0     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R0);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R1     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R1);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R2     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R2);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R3     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R3);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R4     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R4);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R5     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R5);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R6     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R6);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R7     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R7);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R8     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R8);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R9     : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R9);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R10    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R10);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R11    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R11);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R12    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R12);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R13    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R13);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R14    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R14);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R15    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R15);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R16    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R16);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R17    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R17);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R18    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R18);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R19    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R19);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R20    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R20);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R21    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R21);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R22    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R22);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R23    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R23);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R24    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R24);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R25    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R25);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R26    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R26);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R27    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R27);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R28    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R28);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R29    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R29);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R30    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R30);
      --  HSEM register HSEM_R0 HSEM_R31
      HSEM_R31    : aliased HSEM_R_Register;
      pragma Volatile_Full_Access (HSEM_R31);
      --  HSEM Read lock register
      HSEM_RLR0   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR0);
      --  HSEM Read lock register
      HSEM_RLR1   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR1);
      --  HSEM Read lock register
      HSEM_RLR2   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR2);
      --  HSEM Read lock register
      HSEM_RLR3   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR3);
      --  HSEM Read lock register
      HSEM_RLR4   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR4);
      --  HSEM Read lock register
      HSEM_RLR5   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR5);
      --  HSEM Read lock register
      HSEM_RLR6   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR6);
      --  HSEM Read lock register
      HSEM_RLR7   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR7);
      --  HSEM Read lock register
      HSEM_RLR8   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR8);
      --  HSEM Read lock register
      HSEM_RLR9   : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR9);
      --  HSEM Read lock register
      HSEM_RLR10  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR10);
      --  HSEM Read lock register
      HSEM_RLR11  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR11);
      --  HSEM Read lock register
      HSEM_RLR12  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR12);
      --  HSEM Read lock register
      HSEM_RLR13  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR13);
      --  HSEM Read lock register
      HSEM_RLR14  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR14);
      --  HSEM Read lock register
      HSEM_RLR15  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR15);
      --  HSEM Read lock register
      HSEM_RLR16  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR16);
      --  HSEM Read lock register
      HSEM_RLR17  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR17);
      --  HSEM Read lock register
      HSEM_RLR18  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR18);
      --  HSEM Read lock register
      HSEM_RLR19  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR19);
      --  HSEM Read lock register
      HSEM_RLR20  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR20);
      --  HSEM Read lock register
      HSEM_RLR21  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR21);
      --  HSEM Read lock register
      HSEM_RLR22  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR22);
      --  HSEM Read lock register
      HSEM_RLR23  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR23);
      --  HSEM Read lock register
      HSEM_RLR24  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR24);
      --  HSEM Read lock register
      HSEM_RLR25  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR25);
      --  HSEM Read lock register
      HSEM_RLR26  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR26);
      --  HSEM Read lock register
      HSEM_RLR27  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR27);
      --  HSEM Read lock register
      HSEM_RLR28  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR28);
      --  HSEM Read lock register
      HSEM_RLR29  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR29);
      --  HSEM Read lock register
      HSEM_RLR30  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR30);
      --  HSEM Read lock register
      HSEM_RLR31  : aliased HSEM_RLR_Register;
      pragma Volatile_Full_Access (HSEM_RLR31);
      --  HSEM Interrupt enable register
      HSEM_C1IER  : aliased HSEM_C1IER_Register;
      pragma Volatile_Full_Access (HSEM_C1IER);
      --  HSEM Interrupt clear register
      HSEM_C1ICR  : aliased HSEM_C1ICR_Register;
      pragma Volatile_Full_Access (HSEM_C1ICR);
      --  HSEM Interrupt status register
      HSEM_C1ISR  : aliased HSEM_C1ISR_Register;
      pragma Volatile_Full_Access (HSEM_C1ISR);
      --  HSEM Masked interrupt status register
      HSEM_C1MISR : aliased HSEM_C1MISR_Register;
      pragma Volatile_Full_Access (HSEM_C1MISR);
      --  HSEM Clear register
      HSEM_CR     : aliased HSEM_CR_Register;
      pragma Volatile_Full_Access (HSEM_CR);
      --  HSEM Interrupt clear register
      HSEM_KEYR   : aliased HSEM_KEYR_Register;
      pragma Volatile_Full_Access (HSEM_KEYR);
   end record
     with Volatile;

   for HSEM_Peripheral use record
      HSEM_R0     at 16#0# range 0 .. 31;
      HSEM_R1     at 16#4# range 0 .. 31;
      HSEM_R2     at 16#8# range 0 .. 31;
      HSEM_R3     at 16#C# range 0 .. 31;
      HSEM_R4     at 16#10# range 0 .. 31;
      HSEM_R5     at 16#14# range 0 .. 31;
      HSEM_R6     at 16#18# range 0 .. 31;
      HSEM_R7     at 16#1C# range 0 .. 31;
      HSEM_R8     at 16#20# range 0 .. 31;
      HSEM_R9     at 16#24# range 0 .. 31;
      HSEM_R10    at 16#28# range 0 .. 31;
      HSEM_R11    at 16#2C# range 0 .. 31;
      HSEM_R12    at 16#30# range 0 .. 31;
      HSEM_R13    at 16#34# range 0 .. 31;
      HSEM_R14    at 16#38# range 0 .. 31;
      HSEM_R15    at 16#3C# range 0 .. 31;
      HSEM_R16    at 16#40# range 0 .. 31;
      HSEM_R17    at 16#44# range 0 .. 31;
      HSEM_R18    at 16#48# range 0 .. 31;
      HSEM_R19    at 16#4C# range 0 .. 31;
      HSEM_R20    at 16#50# range 0 .. 31;
      HSEM_R21    at 16#54# range 0 .. 31;
      HSEM_R22    at 16#58# range 0 .. 31;
      HSEM_R23    at 16#5C# range 0 .. 31;
      HSEM_R24    at 16#60# range 0 .. 31;
      HSEM_R25    at 16#64# range 0 .. 31;
      HSEM_R26    at 16#68# range 0 .. 31;
      HSEM_R27    at 16#6C# range 0 .. 31;
      HSEM_R28    at 16#70# range 0 .. 31;
      HSEM_R29    at 16#74# range 0 .. 31;
      HSEM_R30    at 16#78# range 0 .. 31;
      HSEM_R31    at 16#7C# range 0 .. 31;
      HSEM_RLR0   at 16#80# range 0 .. 31;
      HSEM_RLR1   at 16#84# range 0 .. 31;
      HSEM_RLR2   at 16#88# range 0 .. 31;
      HSEM_RLR3   at 16#8C# range 0 .. 31;
      HSEM_RLR4   at 16#90# range 0 .. 31;
      HSEM_RLR5   at 16#94# range 0 .. 31;
      HSEM_RLR6   at 16#98# range 0 .. 31;
      HSEM_RLR7   at 16#9C# range 0 .. 31;
      HSEM_RLR8   at 16#A0# range 0 .. 31;
      HSEM_RLR9   at 16#A4# range 0 .. 31;
      HSEM_RLR10  at 16#A8# range 0 .. 31;
      HSEM_RLR11  at 16#AC# range 0 .. 31;
      HSEM_RLR12  at 16#B0# range 0 .. 31;
      HSEM_RLR13  at 16#B4# range 0 .. 31;
      HSEM_RLR14  at 16#B8# range 0 .. 31;
      HSEM_RLR15  at 16#BC# range 0 .. 31;
      HSEM_RLR16  at 16#C0# range 0 .. 31;
      HSEM_RLR17  at 16#C4# range 0 .. 31;
      HSEM_RLR18  at 16#C8# range 0 .. 31;
      HSEM_RLR19  at 16#CC# range 0 .. 31;
      HSEM_RLR20  at 16#D0# range 0 .. 31;
      HSEM_RLR21  at 16#D4# range 0 .. 31;
      HSEM_RLR22  at 16#D8# range 0 .. 31;
      HSEM_RLR23  at 16#DC# range 0 .. 31;
      HSEM_RLR24  at 16#E0# range 0 .. 31;
      HSEM_RLR25  at 16#E4# range 0 .. 31;
      HSEM_RLR26  at 16#E8# range 0 .. 31;
      HSEM_RLR27  at 16#EC# range 0 .. 31;
      HSEM_RLR28  at 16#F0# range 0 .. 31;
      HSEM_RLR29  at 16#F4# range 0 .. 31;
      HSEM_RLR30  at 16#F8# range 0 .. 31;
      HSEM_RLR31  at 16#FC# range 0 .. 31;
      HSEM_C1IER  at 16#100# range 0 .. 31;
      HSEM_C1ICR  at 16#104# range 0 .. 31;
      HSEM_C1ISR  at 16#108# range 0 .. 31;
      HSEM_C1MISR at 16#10C# range 0 .. 31;
      HSEM_CR     at 16#140# range 0 .. 31;
      HSEM_KEYR   at 16#144# range 0 .. 31;
   end record;

   --  HSEM
   HSEM_Periph : aliased HSEM_Peripheral
     with Import, Address => HSEM_Base;

end A0B.STM32H723.SVD.HSEM;
