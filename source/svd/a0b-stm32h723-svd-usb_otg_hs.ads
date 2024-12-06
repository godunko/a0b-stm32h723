pragma Style_Checks (Off);

--  This spec has been automatically generated from STM32H723.svd


with A0B.Types.SVD;
with System;

package A0B.STM32H723.SVD.USB_OTG_HS is
   pragma Preelaborate;
   pragma No_Elaboration_Code_All;

   ---------------
   -- Registers --
   ---------------

   subtype OTG_HS_DCFG_DSPD_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_DCFG_DAD_Field is A0B.Types.SVD.UInt7;
   subtype OTG_HS_DCFG_PFIVL_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_DCFG_PERSCHIVL_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device configuration register
   type OTG_HS_DCFG_Register is record
      --  Device speed
      DSPD           : OTG_HS_DCFG_DSPD_Field := 16#0#;
      --  Nonzero-length status OUT handshake
      NZLSOHSK       : Boolean := False;
      --  unspecified
      Reserved_3_3   : A0B.Types.SVD.Bit := 16#0#;
      --  Device address
      DAD            : OTG_HS_DCFG_DAD_Field := 16#0#;
      --  Periodic (micro)frame interval
      PFIVL          : OTG_HS_DCFG_PFIVL_Field := 16#0#;
      --  unspecified
      Reserved_13_23 : A0B.Types.SVD.UInt11 := 16#100#;
      --  Periodic scheduling interval
      PERSCHIVL      : OTG_HS_DCFG_PERSCHIVL_Field := 16#2#;
      --  unspecified
      Reserved_26_31 : A0B.Types.SVD.UInt6 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DCFG_Register use record
      DSPD           at 0 range 0 .. 1;
      NZLSOHSK       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DAD            at 0 range 4 .. 10;
      PFIVL          at 0 range 11 .. 12;
      Reserved_13_23 at 0 range 13 .. 23;
      PERSCHIVL      at 0 range 24 .. 25;
      Reserved_26_31 at 0 range 26 .. 31;
   end record;

   subtype OTG_HS_DCTL_TCTL_Field is A0B.Types.SVD.UInt3;

   --  OTG_HS device control register
   type OTG_HS_DCTL_Register is record
      --  Remote wakeup signaling
      RWUSIG         : Boolean := False;
      --  Soft disconnect
      SDIS           : Boolean := False;
      --  Read-only. Global IN NAK status
      GINSTS         : Boolean := False;
      --  Read-only. Global OUT NAK status
      GONSTS         : Boolean := False;
      --  Test control
      TCTL           : OTG_HS_DCTL_TCTL_Field := 16#0#;
      --  Write-only. Set global IN NAK
      SGINAK         : Boolean := False;
      --  Write-only. Clear global IN NAK
      CGINAK         : Boolean := False;
      --  Write-only. Set global OUT NAK
      SGONAK         : Boolean := False;
      --  Write-only. Clear global OUT NAK
      CGONAK         : Boolean := False;
      --  Power-on programming done
      POPRGDNE       : Boolean := False;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DCTL_Register use record
      RWUSIG         at 0 range 0 .. 0;
      SDIS           at 0 range 1 .. 1;
      GINSTS         at 0 range 2 .. 2;
      GONSTS         at 0 range 3 .. 3;
      TCTL           at 0 range 4 .. 6;
      SGINAK         at 0 range 7 .. 7;
      CGINAK         at 0 range 8 .. 8;
      SGONAK         at 0 range 9 .. 9;
      CGONAK         at 0 range 10 .. 10;
      POPRGDNE       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OTG_HS_DSTS_ENUMSPD_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_DSTS_FNSOF_Field is A0B.Types.SVD.UInt14;

   --  OTG_HS device status register
   type OTG_HS_DSTS_Register is record
      --  Read-only. Suspend status
      SUSPSTS        : Boolean;
      --  Read-only. Enumerated speed
      ENUMSPD        : OTG_HS_DSTS_ENUMSPD_Field;
      --  Read-only. Erratic error
      EERR           : Boolean;
      --  unspecified
      Reserved_4_7   : A0B.Types.SVD.UInt4;
      --  Read-only. Frame number of the received SOF
      FNSOF          : OTG_HS_DSTS_FNSOF_Field;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      EERR           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FNSOF          at 0 range 8 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  OTG_HS device IN endpoint common interrupt mask register
   type OTG_HS_DIEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM           : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  Timeout condition mask (nonisochronous endpoints)
      TOM            : Boolean := False;
      --  IN token received when TxFIFO empty mask
      ITTXFEMSK      : Boolean := False;
      --  IN token received with EP mismatch mask
      INEPNMM        : Boolean := False;
      --  IN endpoint NAK effective mask
      INEPNEM        : Boolean := False;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  FIFO underrun mask
      TXFURM         : Boolean := False;
      --  BNA interrupt mask
      BIM            : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      EPDM           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TOM            at 0 range 3 .. 3;
      ITTXFEMSK      at 0 range 4 .. 4;
      INEPNMM        at 0 range 5 .. 5;
      INEPNEM        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      TXFURM         at 0 range 8 .. 8;
      BIM            at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   --  OTG_HS device OUT endpoint common interrupt mask register
   type OTG_HS_DOEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM          : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM           : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  SETUP phase done mask
      STUPM          : Boolean := False;
      --  OUT token received when endpoint disabled mask
      OTEPDM         : Boolean := False;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  Back-to-back SETUP packets received mask
      B2BSTUP        : Boolean := False;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  OUT packet error mask
      OPEM           : Boolean := False;
      --  BNA interrupt mask
      BOIM           : Boolean := False;
      --  unspecified
      Reserved_10_31 : A0B.Types.SVD.UInt22 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      EPDM           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STUPM          at 0 range 3 .. 3;
      OTEPDM         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      B2BSTUP        at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      OPEM           at 0 range 8 .. 8;
      BOIM           at 0 range 9 .. 9;
      Reserved_10_31 at 0 range 10 .. 31;
   end record;

   subtype OTG_HS_DAINT_IEPINT_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_DAINT_OEPINT_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS device all endpoints interrupt register
   type OTG_HS_DAINT_Register is record
      --  Read-only. IN endpoint interrupt bits
      IEPINT : OTG_HS_DAINT_IEPINT_Field;
      --  Read-only. OUT endpoint interrupt bits
      OEPINT : OTG_HS_DAINT_OEPINT_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DAINT_Register use record
      IEPINT at 0 range 0 .. 15;
      OEPINT at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DAINTMSK_IEPM_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_DAINTMSK_OEPM_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS all endpoints interrupt mask register
   type OTG_HS_DAINTMSK_Register is record
      --  IN EP interrupt mask bits
      IEPM : OTG_HS_DAINTMSK_IEPM_Field := 16#0#;
      --  OUT EP interrupt mask bits
      OEPM : OTG_HS_DAINTMSK_OEPM_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DAINTMSK_Register use record
      IEPM at 0 range 0 .. 15;
      OEPM at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DVBUSDIS_VBUSDT_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS device VBUS discharge time register
   type OTG_HS_DVBUSDIS_Register is record
      --  Device VBUS discharge time
      VBUSDT         : OTG_HS_DVBUSDIS_VBUSDT_Field := 16#17D7#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DVBUSDIS_Register use record
      VBUSDT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DVBUSPULSE_DVBUSP_Field is A0B.Types.SVD.UInt12;

   --  OTG_HS device VBUS pulsing time register
   type OTG_HS_DVBUSPULSE_Register is record
      --  Device VBUS pulsing time
      DVBUSP         : OTG_HS_DVBUSPULSE_DVBUSP_Field := 16#5B8#;
      --  unspecified
      Reserved_12_31 : A0B.Types.SVD.UInt20 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DVBUSPULSE_Register use record
      DVBUSP         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OTG_HS_DTHRCTL_TXTHRLEN_Field is A0B.Types.SVD.UInt9;
   subtype OTG_HS_DTHRCTL_RXTHRLEN_Field is A0B.Types.SVD.UInt9;

   --  OTG_HS Device threshold control register
   type OTG_HS_DTHRCTL_Register is record
      --  Nonisochronous IN endpoints threshold enable
      NONISOTHREN    : Boolean := False;
      --  ISO IN endpoint threshold enable
      ISOTHREN       : Boolean := False;
      --  Transmit threshold length
      TXTHRLEN       : OTG_HS_DTHRCTL_TXTHRLEN_Field := 16#0#;
      --  unspecified
      Reserved_11_15 : A0B.Types.SVD.UInt5 := 16#0#;
      --  Receive threshold enable
      RXTHREN        : Boolean := False;
      --  Receive threshold length
      RXTHRLEN       : OTG_HS_DTHRCTL_RXTHRLEN_Field := 16#0#;
      --  unspecified
      Reserved_26_26 : A0B.Types.SVD.Bit := 16#0#;
      --  Arbiter parking enable
      ARPEN          : Boolean := False;
      --  unspecified
      Reserved_28_31 : A0B.Types.SVD.UInt4 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DTHRCTL_Register use record
      NONISOTHREN    at 0 range 0 .. 0;
      ISOTHREN       at 0 range 1 .. 1;
      TXTHRLEN       at 0 range 2 .. 10;
      Reserved_11_15 at 0 range 11 .. 15;
      RXTHREN        at 0 range 16 .. 16;
      RXTHRLEN       at 0 range 17 .. 25;
      Reserved_26_26 at 0 range 26 .. 26;
      ARPEN          at 0 range 27 .. 27;
      Reserved_28_31 at 0 range 28 .. 31;
   end record;

   subtype OTG_HS_DIEPEMPMSK_INEPTXFEM_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS device IN endpoint FIFO empty interrupt mask register
   type OTG_HS_DIEPEMPMSK_Register is record
      --  IN EP Tx FIFO empty interrupt mask bits
      INEPTXFEM      : OTG_HS_DIEPEMPMSK_INEPTXFEM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPEMPMSK_Register use record
      INEPTXFEM      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   --  OTG_HS device each endpoint interrupt register
   type OTG_HS_DEACHINT_Register is record
      --  unspecified
      Reserved_0_0   : A0B.Types.SVD.Bit := 16#0#;
      --  IN endpoint 1interrupt bit
      IEP1INT        : Boolean := False;
      --  unspecified
      Reserved_2_16  : A0B.Types.SVD.UInt15 := 16#0#;
      --  OUT endpoint 1 interrupt bit
      OEP1INT        : Boolean := False;
      --  unspecified
      Reserved_18_31 : A0B.Types.SVD.UInt14 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DEACHINT_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IEP1INT        at 0 range 1 .. 1;
      Reserved_2_16  at 0 range 2 .. 16;
      OEP1INT        at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   --  OTG_HS device each endpoint interrupt register mask
   type OTG_HS_DEACHINTMSK_Register is record
      --  unspecified
      Reserved_0_0   : A0B.Types.SVD.Bit := 16#0#;
      --  IN Endpoint 1 interrupt mask bit
      IEP1INTM       : Boolean := False;
      --  unspecified
      Reserved_2_16  : A0B.Types.SVD.UInt15 := 16#0#;
      --  OUT Endpoint 1 interrupt mask bit
      OEP1INTM       : Boolean := False;
      --  unspecified
      Reserved_18_31 : A0B.Types.SVD.UInt14 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DEACHINTMSK_Register use record
      Reserved_0_0   at 0 range 0 .. 0;
      IEP1INTM       at 0 range 1 .. 1;
      Reserved_2_16  at 0 range 2 .. 16;
      OEP1INTM       at 0 range 17 .. 17;
      Reserved_18_31 at 0 range 18 .. 31;
   end record;

   subtype OTG_HS_DIEPCTL_MPSIZ_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_DIEPCTL_EPTYP_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_DIEPCTL_TXFNUM_Field is A0B.Types.SVD.UInt4;

   --  OTG device endpoint-0 control register
   type OTG_HS_DIEPCTL_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_HS_DIEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : A0B.Types.SVD.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even/odd frame
      EONUM_DPID     : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_HS_DIEPCTL_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : A0B.Types.SVD.Bit := 16#0#;
      --  STALL handshake
      Stall          : Boolean := False;
      --  TxFIFO number
      TXFNUM         : OTG_HS_DIEPCTL_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set DATA0 PID
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  OTG device endpoint-0 interrupt register
   type OTG_HS_DIEPINT_Register is record
      --  Transfer completed interrupt
      XFRC           : Boolean := False;
      --  Endpoint disabled interrupt
      EPDISD         : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  Timeout condition
      TOC            : Boolean := False;
      --  IN token received when TxFIFO is empty
      ITTXFE         : Boolean := False;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  IN endpoint NAK effective
      INEPNE         : Boolean := False;
      --  Read-only. Transmit FIFO empty
      TXFE           : Boolean := True;
      --  Transmit Fifo Underrun
      TXFIFOUDRN     : Boolean := False;
      --  Buffer not available interrupt
      BNA            : Boolean := False;
      --  unspecified
      Reserved_10_10 : A0B.Types.SVD.Bit := 16#0#;
      --  Packet dropped status
      PKTDRPSTS      : Boolean := False;
      --  Babble error interrupt
      BERR           : Boolean := False;
      --  NAK interrupt
      NAK            : Boolean := False;
      --  unspecified
      Reserved_14_31 : A0B.Types.SVD.UInt18 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPINT_Register use record
      XFRC           at 0 range 0 .. 0;
      EPDISD         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      TOC            at 0 range 3 .. 3;
      ITTXFE         at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      INEPNE         at 0 range 6 .. 6;
      TXFE           at 0 range 7 .. 7;
      TXFIFOUDRN     at 0 range 8 .. 8;
      BNA            at 0 range 9 .. 9;
      Reserved_10_10 at 0 range 10 .. 10;
      PKTDRPSTS      at 0 range 11 .. 11;
      BERR           at 0 range 12 .. 12;
      NAK            at 0 range 13 .. 13;
      Reserved_14_31 at 0 range 14 .. 31;
   end record;

   subtype OTG_HS_DIEPTSIZ0_XFRSIZ_Field is A0B.Types.SVD.UInt7;
   subtype OTG_HS_DIEPTSIZ0_PKTCNT_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device IN endpoint 0 transfer size register
   type OTG_HS_DIEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_HS_DIEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : A0B.Types.SVD.UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : OTG_HS_DIEPTSIZ0_PKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : A0B.Types.SVD.UInt11 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_HS_DTXFSTS_INEPTFSAV_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS device IN endpoint transmit FIFO status register
   type OTG_HS_DTXFSTS_Register is record
      --  Read-only. IN endpoint TxFIFO space avail
      INEPTFSAV      : OTG_HS_DTXFSTS_INEPTFSAV_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DTXFSTS_Register use record
      INEPTFSAV      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DIEPTSIZ_XFRSIZ_Field is A0B.Types.SVD.UInt19;
   subtype OTG_HS_DIEPTSIZ_PKTCNT_Field is A0B.Types.SVD.UInt10;
   subtype OTG_HS_DIEPTSIZ_MCNT_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device endpoint transfer size register
   type OTG_HS_DIEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_HS_DIEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_HS_DIEPTSIZ_PKTCNT_Field := 16#0#;
      --  Multi count
      MCNT           : OTG_HS_DIEPTSIZ_MCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MCNT           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_DOEPCTL0_MPSIZ_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_DOEPCTL0_EPTYP_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device control OUT endpoint 0 control register
   type OTG_HS_DOEPCTL0_Register is record
      --  Read-only. Maximum packet size
      MPSIZ          : OTG_HS_DOEPCTL0_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_2_14  : A0B.Types.SVD.UInt13 := 16#0#;
      --  Read-only. USB active endpoint
      USBAEP         : Boolean := True;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Read-only. Endpoint type
      EPTYP          : OTG_HS_DOEPCTL0_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      Stall          : Boolean := False;
      --  unspecified
      Reserved_22_25 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  unspecified
      Reserved_28_29 : A0B.Types.SVD.UInt2 := 16#0#;
      --  Read-only. Endpoint disable
      EPDIS          : Boolean := False;
      --  Write-only. Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  OTG_HS device endpoint-0 interrupt register
   type OTG_HS_DOEPINT_Register is record
      --  Transfer completed interrupt
      XFRC           : Boolean := False;
      --  Endpoint disabled interrupt
      EPDISD         : Boolean := False;
      --  unspecified
      Reserved_2_2   : A0B.Types.SVD.Bit := 16#0#;
      --  SETUP phase done
      STUP           : Boolean := False;
      --  OUT token received when endpoint disabled
      OTEPDIS        : Boolean := False;
      --  unspecified
      Reserved_5_5   : A0B.Types.SVD.Bit := 16#0#;
      --  Back-to-back SETUP packets received
      B2BSTUP        : Boolean := False;
      --  unspecified
      Reserved_7_13  : A0B.Types.SVD.UInt7 := 16#1#;
      --  NYET interrupt
      NYET           : Boolean := False;
      --  unspecified
      Reserved_15_31 : A0B.Types.SVD.UInt17 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPINT_Register use record
      XFRC           at 0 range 0 .. 0;
      EPDISD         at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STUP           at 0 range 3 .. 3;
      OTEPDIS        at 0 range 4 .. 4;
      Reserved_5_5   at 0 range 5 .. 5;
      B2BSTUP        at 0 range 6 .. 6;
      Reserved_7_13  at 0 range 7 .. 13;
      NYET           at 0 range 14 .. 14;
      Reserved_15_31 at 0 range 15 .. 31;
   end record;

   subtype OTG_HS_DOEPTSIZ0_XFRSIZ_Field is A0B.Types.SVD.UInt7;
   subtype OTG_HS_DOEPTSIZ0_STUPCNT_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device endpoint-0 transfer size register
   type OTG_HS_DOEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_HS_DOEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : A0B.Types.SVD.UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : Boolean := False;
      --  unspecified
      Reserved_20_28 : A0B.Types.SVD.UInt9 := 16#0#;
      --  SETUP packet count
      STUPCNT        : OTG_HS_DOEPTSIZ0_STUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      STUPCNT        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_DOEPCTL_MPSIZ_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_DOEPCTL_EPTYP_Field is A0B.Types.SVD.UInt2;

   --  OTG device endpoint-1 control register
   type OTG_HS_DOEPCTL_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_HS_DOEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : A0B.Types.SVD.UInt4 := 16#0#;
      --  USB active endpoint
      USBAEP         : Boolean := False;
      --  Read-only. Even odd frame/Endpoint data PID
      EONUM_DPID     : Boolean := False;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_HS_DOEPCTL_EPTYP_Field := 16#0#;
      --  Snoop mode
      SNPM           : Boolean := False;
      --  STALL handshake
      Stall          : Boolean := False;
      --  unspecified
      Reserved_22_25 : A0B.Types.SVD.UInt4 := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  Write-only. Set DATA0 PID/Set even frame
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. Set odd frame
      SODDFRM        : Boolean := False;
      --  Endpoint disable
      EPDIS          : Boolean := False;
      --  Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_DOEPTSIZ_XFRSIZ_Field is A0B.Types.SVD.UInt19;
   subtype OTG_HS_DOEPTSIZ_PKTCNT_Field is A0B.Types.SVD.UInt10;
   subtype OTG_HS_DOEPTSIZ_RXDPID_STUPCNT_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS device endpoint-1 transfer size register
   type OTG_HS_DOEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_HS_DOEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_HS_DOEPTSIZ_PKTCNT_Field := 16#0#;
      --  Received data PID/SETUP packet count
      RXDPID_STUPCNT : OTG_HS_DOEPTSIZ_RXDPID_STUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DOEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPID_STUPCNT at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  Session request success The core sets this bit when a session request
   --  initiation is successful. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_SRQSCS_Field is
     (--  Session request failure
      B_0x0,
      --  Session request success
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_SRQSCS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Session request The application sets this bit to initiate a session
   --  request on the USB. The application can clear this bit by writing a 0
   --  when the host negotiation success status change bit in the OTG_GOTGINT
   --  register (HNSSCHG bit in OTG_GOTGINT) is set. The core clears this bit
   --  when the HNSSCHG bit is cleared. If the user uses the USB 1.1 full-speed
   --  serial transceiver interface to initiate the session request, the
   --  application must wait until VBUS discharges to 0.2 V, after the
   --  B-session valid bit in this register (BSVLD bit in OTG_GOTGCTL) is
   --  cleared. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_SRQ_Field is
     (--  No session request
      B_0x0,
      --  Session request
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_SRQ_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  VBUS valid override enable. This bit is used to enable/disable the
   --  software to override the vbusvalid signal using the VBVALOVAL bit. Note:
   --  Only accessible in host mode.
   type OTG_HS_GOTGCTL_VBVALOEN_Field is
     (--  Override is disabled and vbusvalid signal from the respective PHY selected
--  is used internally by the core
      B_0x0,
      --  Internally vbusvalid received from the PHY is overridden with VBVALOVAL bit
--  value
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_VBVALOEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  VBUS valid override value. This bit is used to set override value for
   --  vbusvalid signal when VBVALOEN bit is set. Note: Only accessible in host
   --  mode.
   type OTG_HS_GOTGCTL_VBVALOVAL_Field is
     (--  vbusvalid value is '0' when VBVALOEN = 1
      B_0x0,
      --  vbusvalid value is '1' when VBVALOEN = 1
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_VBVALOVAL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  A-peripheral session valid override enable. This bit is used to
   --  enable/disable the software to override the Avalid signal using the
   --  AVALOVAL bit. Note: Only accessible in host mode.
   type OTG_HS_GOTGCTL_AVALOEN_Field is
     (--  Override is disabled and Avalid signal from the respective PHY selected is
--  used internally by the core
      B_0x0,
      --  Internally Avalid received from the PHY is overridden with AVALOVAL bit
--  value
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_AVALOEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  A-peripheral session valid override value. This bit is used to set
   --  override value for Avalid signal when AVALOEN bit is set. Note: Only
   --  accessible in host mode.
   type OTG_HS_GOTGCTL_AVALOVAL_Field is
     (--  Avalid value is '0' when AVALOEN = 1
      B_0x0,
      --  Avalid value is '1' when AVALOEN = 1
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_AVALOVAL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  B-peripheral session valid override enable. This bit is used to
   --  enable/disable the software to override the Bvalid signal using the
   --  BVALOVAL bit. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_BVALOEN_Field is
     (--  Override is disabled and Bvalid signal from the respective PHY selected is
--  used internally by the core
      B_0x0,
      --  Internally Bvalid received from the PHY is overridden with BVALOVAL bit
--  value
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_BVALOEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  B-peripheral session valid override value. This bit is used to set
   --  override value for Bvalid signal when BVALOEN bit is set. Note: Only
   --  accessible in device mode.
   type OTG_HS_GOTGCTL_BVALOVAL_Field is
     (--  Bvalid value is '0' when BVALOEN = 1
      B_0x0,
      --  Bvalid value is '1' when BVALOEN = 1
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_BVALOVAL_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Host negotiation success The core sets this bit when host negotiation is
   --  successful. The core clears this bit when the HNP request (HNPRQ) bit in
   --  this register is set. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_HNGSCS_Field is
     (--  Host negotiation failure
      B_0x0,
      --  Host negotiation success
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_HNGSCS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  HNP request The application sets this bit to initiate an HNP request to
   --  the connected USB host. The application can clear this bit by writing a
   --  0 when the host negotiation success status change bit in the OTG_GOTGINT
   --  register (HNSSCHG bit in OTG_GOTGINT) is set. The core clears this bit
   --  when the HNSSCHG bit is cleared. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_HNPRQ_Field is
     (--  No HNP request
      B_0x0,
      --  HNP request
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_HNPRQ_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  host set HNP enable The application sets this bit when it has
   --  successfully enabled HNP (using the SetFeature.SetHNPEnable command) on
   --  the connected device. Note: Only accessible in host mode.
   type OTG_HS_GOTGCTL_HSHNPEN_Field is
     (--  Host Set HNP is not enabled
      B_0x0,
      --  Host Set HNP is enabled
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_HSHNPEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Device HNP enabled The application sets this bit when it successfully
   --  receives a SetFeature.SetHNPEnable command from the connected USB host.
   --  Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_DHNPEN_Field is
     (--  HNP is not enabled in the application
      B_0x0,
      --  HNP is enabled in the application
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_DHNPEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Embedded host enable It is used to select between OTG A device state
   --  machine and embedded host state machine.
   type OTG_HS_GOTGCTL_EHEN_Field is
     (--  OTG A device state machine is selected
      B_0x0,
      --  Embedded host state machine is selected
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_EHEN_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Connector ID status Indicates the connector ID status on a connect
   --  event. Note: Accessible in both device and host modes.
   type OTG_HS_GOTGCTL_CIDSTS_Field is
     (--  The OTG_HS controller is in A-device mode
      B_0x0,
      --  The OTG_HS controller is in B-device mode
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_CIDSTS_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Long/short debounce time Indicates the debounce time of a detected
   --  connection. Note: Only accessible in host mode.
   type OTG_HS_GOTGCTL_DBCT_Field is
     (--  Long debounce time, used for physical connections (100 ms + 2.5 Âµs)
      B_0x0,
      --  Short debounce time, used for soft connections (2.5 Âµs)
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_DBCT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  A-session valid Indicates the host mode transceiver status. Note: Only
   --  accessible in host mode.
   type OTG_HS_GOTGCTL_ASVLD_Field is
     (--  A-session is not valid
      B_0x0,
      --  A-session is valid
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_ASVLD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  B-session valid Indicates the device mode transceiver status. In OTG
   --  mode, the user can use this bit to determine if the device is connected
   --  or disconnected. Note: Only accessible in device mode.
   type OTG_HS_GOTGCTL_BSVLD_Field is
     (--  B-session is not valid.
      B_0x0,
      --  B-session is valid.
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_BSVLD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OTG version Selects the OTG revision.
   type OTG_HS_GOTGCTL_OTGVER_Field is
     (--  OTG Version 1.3. OTG1.3 is obsolete for new product development.
      B_0x0,
      --  OTG Version 2.0. In this version the core supports only data line pulsing
--  for SRP.
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_OTGVER_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Current mode of operation Indicates the current mode (host or device).
   type OTG_HS_GOTGCTL_CURMOD_Field is
     (--  Device mode
      B_0x0,
      --  Host mode
      B_0x1)
     with Size => 1;
   for OTG_HS_GOTGCTL_CURMOD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OTG_HS control and status register
   type OTG_HS_GOTGCTL_Register is record
      --  Read-only. Session request success The core sets this bit when a
      --  session request initiation is successful. Note: Only accessible in
      --  device mode.
      SRQSCS         : OTG_HS_GOTGCTL_SRQSCS_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Session request The application sets this bit to initiate a session
      --  request on the USB. The application can clear this bit by writing a 0
      --  when the host negotiation success status change bit in the
      --  OTG_GOTGINT register (HNSSCHG bit in OTG_GOTGINT) is set. The core
      --  clears this bit when the HNSSCHG bit is cleared. If the user uses the
      --  USB 1.1 full-speed serial transceiver interface to initiate the
      --  session request, the application must wait until VBUS discharges to
      --  0.2 V, after the B-session valid bit in this register (BSVLD bit in
      --  OTG_GOTGCTL) is cleared. Note: Only accessible in device mode.
      SRQ            : OTG_HS_GOTGCTL_SRQ_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  VBUS valid override enable. This bit is used to enable/disable the
      --  software to override the vbusvalid signal using the VBVALOVAL bit.
      --  Note: Only accessible in host mode.
      VBVALOEN       : OTG_HS_GOTGCTL_VBVALOEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  VBUS valid override value. This bit is used to set override value for
      --  vbusvalid signal when VBVALOEN bit is set. Note: Only accessible in
      --  host mode.
      VBVALOVAL      : OTG_HS_GOTGCTL_VBVALOVAL_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  A-peripheral session valid override enable. This bit is used to
      --  enable/disable the software to override the Avalid signal using the
      --  AVALOVAL bit. Note: Only accessible in host mode.
      AVALOEN        : OTG_HS_GOTGCTL_AVALOEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  A-peripheral session valid override value. This bit is used to set
      --  override value for Avalid signal when AVALOEN bit is set. Note: Only
      --  accessible in host mode.
      AVALOVAL       : OTG_HS_GOTGCTL_AVALOVAL_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  B-peripheral session valid override enable. This bit is used to
      --  enable/disable the software to override the Bvalid signal using the
      --  BVALOVAL bit. Note: Only accessible in device mode.
      BVALOEN        : OTG_HS_GOTGCTL_BVALOEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  B-peripheral session valid override value. This bit is used to set
      --  override value for Bvalid signal when BVALOEN bit is set. Note: Only
      --  accessible in device mode.
      BVALOVAL       : OTG_HS_GOTGCTL_BVALOVAL_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. Host negotiation success The core sets this bit when host
      --  negotiation is successful. The core clears this bit when the HNP
      --  request (HNPRQ) bit in this register is set. Note: Only accessible in
      --  device mode.
      HNGSCS         : OTG_HS_GOTGCTL_HNGSCS_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  HNP request The application sets this bit to initiate an HNP request
      --  to the connected USB host. The application can clear this bit by
      --  writing a 0 when the host negotiation success status change bit in
      --  the OTG_GOTGINT register (HNSSCHG bit in OTG_GOTGINT) is set. The
      --  core clears this bit when the HNSSCHG bit is cleared. Note: Only
      --  accessible in device mode.
      HNPRQ          : OTG_HS_GOTGCTL_HNPRQ_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  host set HNP enable The application sets this bit when it has
      --  successfully enabled HNP (using the SetFeature.SetHNPEnable command)
      --  on the connected device. Note: Only accessible in host mode.
      HSHNPEN        : OTG_HS_GOTGCTL_HSHNPEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Device HNP enabled The application sets this bit when it successfully
      --  receives a SetFeature.SetHNPEnable command from the connected USB
      --  host. Note: Only accessible in device mode.
      DHNPEN         : OTG_HS_GOTGCTL_DHNPEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x1;
      --  Embedded host enable It is used to select between OTG A device state
      --  machine and embedded host state machine.
      EHEN           : OTG_HS_GOTGCTL_EHEN_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  unspecified
      Reserved_13_15 : A0B.Types.SVD.UInt3 := 16#0#;
      --  Read-only. Connector ID status Indicates the connector ID status on a
      --  connect event. Note: Accessible in both device and host modes.
      CIDSTS         : OTG_HS_GOTGCTL_CIDSTS_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. Long/short debounce time Indicates the debounce time of a
      --  detected connection. Note: Only accessible in host mode.
      DBCT           : OTG_HS_GOTGCTL_DBCT_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. A-session valid Indicates the host mode transceiver
      --  status. Note: Only accessible in host mode.
      ASVLD          : OTG_HS_GOTGCTL_ASVLD_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. B-session valid Indicates the device mode transceiver
      --  status. In OTG mode, the user can use this bit to determine if the
      --  device is connected or disconnected. Note: Only accessible in device
      --  mode.
      BSVLD          : OTG_HS_GOTGCTL_BSVLD_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  OTG version Selects the OTG revision.
      OTGVER         : OTG_HS_GOTGCTL_OTGVER_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. Current mode of operation Indicates the current mode (host
      --  or device).
      CURMOD         : OTG_HS_GOTGCTL_CURMOD_Field :=
                        A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GOTGCTL_Register use record
      SRQSCS         at 0 range 0 .. 0;
      SRQ            at 0 range 1 .. 1;
      VBVALOEN       at 0 range 2 .. 2;
      VBVALOVAL      at 0 range 3 .. 3;
      AVALOEN        at 0 range 4 .. 4;
      AVALOVAL       at 0 range 5 .. 5;
      BVALOEN        at 0 range 6 .. 6;
      BVALOVAL       at 0 range 7 .. 7;
      HNGSCS         at 0 range 8 .. 8;
      HNPRQ          at 0 range 9 .. 9;
      HSHNPEN        at 0 range 10 .. 10;
      DHNPEN         at 0 range 11 .. 11;
      EHEN           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CIDSTS         at 0 range 16 .. 16;
      DBCT           at 0 range 17 .. 17;
      ASVLD          at 0 range 18 .. 18;
      BSVLD          at 0 range 19 .. 19;
      OTGVER         at 0 range 20 .. 20;
      CURMOD         at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  OTG_HS interrupt register
   type OTG_HS_GOTGINT_Register is record
      --  unspecified
      Reserved_0_1   : A0B.Types.SVD.UInt2 := 16#0#;
      --  Session end detected
      SEDET          : Boolean := False;
      --  unspecified
      Reserved_3_7   : A0B.Types.SVD.UInt5 := 16#0#;
      --  Session request success status change
      SRSSCHG        : Boolean := False;
      --  Host negotiation success status change
      HNSSCHG        : Boolean := False;
      --  unspecified
      Reserved_10_16 : A0B.Types.SVD.UInt7 := 16#0#;
      --  Host negotiation detected
      HNGDET         : Boolean := False;
      --  A-device timeout change
      ADTOCHG        : Boolean := False;
      --  Debounce done
      DBCDNE         : Boolean := False;
      --  unspecified
      Reserved_20_31 : A0B.Types.SVD.UInt12 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GOTGINT_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SEDET          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SRSSCHG        at 0 range 8 .. 8;
      HNSSCHG        at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      HNGDET         at 0 range 17 .. 17;
      ADTOCHG        at 0 range 18 .. 18;
      DBCDNE         at 0 range 19 .. 19;
      Reserved_20_31 at 0 range 20 .. 31;
   end record;

   subtype OTG_HS_GAHBCFG_HBSTLEN_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS AHB configuration register
   type OTG_HS_GAHBCFG_Register is record
      --  Global interrupt mask
      GINTMSK       : Boolean := False;
      --  Burst length/type
      HBSTLEN       : OTG_HS_GAHBCFG_HBSTLEN_Field := 16#0#;
      --  DMA enable
      DMAEN         : Boolean := False;
      --  unspecified
      Reserved_6_6  : A0B.Types.SVD.Bit := 16#0#;
      --  TxFIFO empty level
      TXFELVL       : Boolean := False;
      --  Periodic TxFIFO empty level
      PTXFELVL      : Boolean := False;
      --  unspecified
      Reserved_9_31 : A0B.Types.SVD.UInt23 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GAHBCFG_Register use record
      GINTMSK       at 0 range 0 .. 0;
      HBSTLEN       at 0 range 1 .. 4;
      DMAEN         at 0 range 5 .. 5;
      Reserved_6_6  at 0 range 6 .. 6;
      TXFELVL       at 0 range 7 .. 7;
      PTXFELVL      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype OTG_HS_GUSBCFG_TOCAL_Field is A0B.Types.SVD.UInt3;
   subtype OTG_HS_GUSBCFG_TRDT_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS USB configuration register
   type OTG_HS_GUSBCFG_Register is record
      --  FS timeout calibration
      TOCAL          : OTG_HS_GUSBCFG_TOCAL_Field := 16#0#;
      --  unspecified
      Reserved_3_5   : A0B.Types.SVD.UInt3 := 16#0#;
      --  Write-only. USB 2.0 high-speed ULPI PHY or USB 1.1 full-speed serial
      --  transceiver select
      PHYSEL         : Boolean := False;
      --  unspecified
      Reserved_7_7   : A0B.Types.SVD.Bit := 16#0#;
      --  SRP-capable
      SRPCAP         : Boolean := False;
      --  HNP-capable
      HNPCAP         : Boolean := True;
      --  USB turnaround time
      TRDT           : OTG_HS_GUSBCFG_TRDT_Field := 16#2#;
      --  unspecified
      Reserved_14_14 : A0B.Types.SVD.Bit := 16#0#;
      --  PHY Low-power clock select
      PHYLPCS        : Boolean := False;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  ULPI FS/LS select
      ULPIFSLS       : Boolean := False;
      --  ULPI Auto-resume
      ULPIAR         : Boolean := False;
      --  ULPI Clock SuspendM
      ULPICSM        : Boolean := False;
      --  ULPI External VBUS Drive
      ULPIEVBUSD     : Boolean := False;
      --  ULPI external VBUS indicator
      ULPIEVBUSI     : Boolean := False;
      --  TermSel DLine pulsing selection
      TSDPS          : Boolean := False;
      --  Indicator complement
      PCCI           : Boolean := False;
      --  Indicator pass through
      PTCI           : Boolean := False;
      --  ULPI interface protect disable
      ULPIIPD        : Boolean := False;
      --  unspecified
      Reserved_26_28 : A0B.Types.SVD.UInt3 := 16#0#;
      --  Forced host mode
      FHMOD          : Boolean := False;
      --  Forced peripheral mode
      FDMOD          : Boolean := False;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GUSBCFG_Register use record
      TOCAL          at 0 range 0 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PHYSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRPCAP         at 0 range 8 .. 8;
      HNPCAP         at 0 range 9 .. 9;
      TRDT           at 0 range 10 .. 13;
      Reserved_14_14 at 0 range 14 .. 14;
      PHYLPCS        at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      ULPIFSLS       at 0 range 17 .. 17;
      ULPIAR         at 0 range 18 .. 18;
      ULPICSM        at 0 range 19 .. 19;
      ULPIEVBUSD     at 0 range 20 .. 20;
      ULPIEVBUSI     at 0 range 21 .. 21;
      TSDPS          at 0 range 22 .. 22;
      PCCI           at 0 range 23 .. 23;
      PTCI           at 0 range 24 .. 24;
      ULPIIPD        at 0 range 25 .. 25;
      Reserved_26_28 at 0 range 26 .. 28;
      FHMOD          at 0 range 29 .. 29;
      FDMOD          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_GRSTCTL_TXFNUM_Field is A0B.Types.SVD.UInt5;

   --  OTG_HS reset register
   type OTG_HS_GRSTCTL_Register is record
      --  Core soft reset
      CSRST          : Boolean := False;
      --  HCLK soft reset
      HSRST          : Boolean := False;
      --  Host frame counter reset
      FCRST          : Boolean := False;
      --  unspecified
      Reserved_3_3   : A0B.Types.SVD.Bit := 16#0#;
      --  RxFIFO flush
      RXFFLSH        : Boolean := False;
      --  TxFIFO flush
      TXFFLSH        : Boolean := False;
      --  TxFIFO number
      TXFNUM         : OTG_HS_GRSTCTL_TXFNUM_Field := 16#0#;
      --  unspecified
      Reserved_11_29 : A0B.Types.SVD.UInt19 := 16#40000#;
      --  Read-only. DMA request signal enabled for USB OTG HS
      DMAREQ         : Boolean := False;
      --  Read-only. AHB master idle
      AHBIDL         : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRSTCTL_Register use record
      CSRST          at 0 range 0 .. 0;
      HSRST          at 0 range 1 .. 1;
      FCRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_29 at 0 range 11 .. 29;
      DMAREQ         at 0 range 30 .. 30;
      AHBIDL         at 0 range 31 .. 31;
   end record;

   --  Current mode of operation Indicates the current mode. Note: Accessible
   --  in both host and device modes.
   type OTG_HS_GINTSTS_CMOD_Field is
     (--  Device mode
      B_0x0,
      --  Host mode
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTSTS_CMOD_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OTG_HS core interrupt register
   type OTG_HS_GINTSTS_Register is record
      --  Read-only. Current mode of operation Indicates the current mode.
      --  Note: Accessible in both host and device modes.
      CMOD               : OTG_HS_GINTSTS_CMOD_Field :=
                            A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Mode mismatch interrupt The core sets this bit when the application
      --  is trying to access: A host mode register, when the core is operating
      --  in device mode A device mode register, when the core is operating in
      --  host mode The register access is completed on the AHB with an OKAY
      --  response, but is ignored by the core internally and does not affect
      --  the operation of the core. Note: Accessible in both host and device
      --  modes.
      MMIS               : Boolean := False;
      --  Read-only. OTG interrupt The core sets this bit to indicate an OTG
      --  protocol event. The application must read the OTG interrupt status
      --  (OTG_GOTGINT) register to determine the exact event that caused this
      --  interrupt. The application must clear the appropriate status bit in
      --  the OTG_GOTGINT register to clear this bit. Note: Accessible in both
      --  host and device modes.
      OTGINT             : Boolean := False;
      --  Start of frame In host mode, the core sets this bit to indicate that
      --  an SOF (FS), or Keep-Alive (LS) is transmitted on the USB. The
      --  application must write a 1 to this bit to clear the interrupt. In
      --  device mode, in the core sets this bit to indicate that an SOF token
      --  has been received on the USB. The application can read the OTG_DSTS
      --  register to get the current frame number. This interrupt is seen only
      --  when the core is operating in FS. Note: This register may return '1'
      --  if read immediately after power on reset. If the register bit reads
      --  '1' immediately after power on reset it does not indicate that an SOF
      --  has been sent (in case of host mode) or SOF has been received (in
      --  case of device mode). The read value of this interrupt is valid only
      --  after a valid connection between host and device is established. If
      --  the bit is set after power on reset the application can clear the
      --  bit. Note: Accessible in both host and device modes.
      SOF                : Boolean := False;
      --  Read-only. Rx FIFO non-empty Indicates that there is at least one
      --  packet pending to be read from the Rx FIFO. Note: Accessible in both
      --  host and device modes.
      RXFLVL             : Boolean := False;
      --  Read-only. Non-periodic Tx FIFO empty This interrupt is asserted when
      --  the non-periodic Tx FIFO is either half or completely empty, and
      --  there is space for at least one entry to be written to the
      --  non-periodic transmit request queue. The half or completely empty
      --  status is determined by the non-periodic Tx FIFO empty level bit in
      --  the OTG_GAHBCFG register (TXFELVL bit in OTG_GAHBCFG). Note:
      --  Accessible in host mode only.
      NPTXFE             : Boolean := True;
      --  Read-only. Global IN non-periodic NAK effective Indicates that the
      --  Set global non-periodic IN NAK bit in the OTG_DCTL register (SGINAK
      --  bit in OTG_DCTL), set by the application, has taken effect in the
      --  core. That is, the core has sampled the Global IN NAK bit set by the
      --  application. This bit can be cleared by clearing the Clear global
      --  non-periodic IN NAK bit in the OTG_DCTL register (CGINAK bit in
      --  OTG_DCTL). This interrupt does not necessarily mean that a NAK
      --  handshake is sent out on the USB. The STALL bit takes precedence over
      --  the NAK bit. Note: Only accessible in device mode.
      GINAKEFF           : Boolean := False;
      --  Read-only. Global OUT NAK effective Indicates that the Set global OUT
      --  NAK bit in the OTG_DCTL register (SGONAK bit in OTG_DCTL), set by the
      --  application, has taken effect in the core. This bit can be cleared by
      --  writing the Clear global OUT NAK bit in the OTG_DCTL register (CGONAK
      --  bit in OTG_DCTL). Note: Only accessible in device mode.
      GONAKEFF           : Boolean := False;
      --  unspecified
      Reserved_8_9       : A0B.Types.SVD.UInt2 := 16#0#;
      --  Early suspend The core sets this bit to indicate that an Idle state
      --  has been detected on the USB for 3 ms. Note: Only accessible in
      --  device mode.
      ESUSP              : Boolean := False;
      --  USB suspend The core sets this bit to indicate that a suspend was
      --  detected on the USB. The core enters the suspended state when there
      --  is no activity on the data lines for an extended period of time.
      --  Note: Only accessible in device mode.
      USBSUSP            : Boolean := False;
      --  USB reset The core sets this bit to indicate that a reset is detected
      --  on the USB. Note: Only accessible in device mode.
      USBRST             : Boolean := False;
      --  Enumeration done The core sets this bit to indicate that speed
      --  enumeration is complete. The application must read the OTG_DSTS
      --  register to obtain the enumerated speed. Note: Only accessible in
      --  device mode.
      ENUMDNE            : Boolean := False;
      --  Isochronous OUT packet dropped interrupt The core sets this bit when
      --  it fails to write an isochronous OUT packet into the Rx FIFO because
      --  the Rx FIFO does not have enough space to accommodate a maximum size
      --  packet for the isochronous OUT endpoint. Note: Only accessible in
      --  device mode.
      ISOODRP            : Boolean := False;
      --  End of periodic frame interrupt Indicates that the period specified
      --  in the periodic frame interval field of the OTG_DCFG register (PFIVL
      --  bit in OTG_DCFG) has been reached in the current frame. Note: Only
      --  accessible in device mode.
      EOPF               : Boolean := False;
      --  unspecified
      Reserved_16_17     : A0B.Types.SVD.UInt2 := 16#0#;
      --  Read-only. IN endpoint interrupt The core sets this bit to indicate
      --  that an interrupt is pending on one of the IN endpoints of the core
      --  (in device mode). The application must read the OTG_DAINT register to
      --  determine the exact number of the IN endpoint on which the interrupt
      --  occurred, and then read the corresponding OTG_DIEPINTx register to
      --  determine the exact cause of the interrupt. The application must
      --  clear the appropriate status bit in the corresponding OTG_DIEPINTx
      --  register to clear this bit. Note: Only accessible in device mode.
      IEPINT             : Boolean := False;
      --  Read-only. OUT endpoint interrupt The core sets this bit to indicate
      --  that an interrupt is pending on one of the OUT endpoints of the core
      --  (in device mode). The application must read the OTG_DAINT register to
      --  determine the exact number of the OUT endpoint on which the interrupt
      --  occurred, and then read the corresponding OTG_DOEPINTx register to
      --  determine the exact cause of the interrupt. The application must
      --  clear the appropriate status bit in the corresponding OTG_DOEPINTx
      --  register to clear this bit. Note: Only accessible in device mode.
      OEPINT             : Boolean := False;
      --  Incomplete isochronous IN transfer The core sets this interrupt to
      --  indicate that there is at least one isochronous IN endpoint on which
      --  the transfer is not completed in the current frame. This interrupt is
      --  asserted along with the End of periodic frame interrupt (EOPF) bit in
      --  this register. Note: Only accessible in device mode.
      IISOIXFR           : Boolean := False;
      IPXFR_INCOMPISOOUT : Boolean := False;
      --  Data fetch suspended This interrupt is valid only in DMA mode. This
      --  interrupt indicates that the core has stopped fetching data for IN
      --  endpoints due to the unavailability of TxFIFO space or request queue
      --  space. This interrupt is used by the application for an endpoint
      --  mismatch algorithm. For example, after detecting an endpoint
      --  mismatch, the application: Sets a global nonperiodic IN NAK handshake
      --  Disables IN endpoints Flushes the FIFO Determines the token sequence
      --  from the IN token sequence learning queue Re-enables the endpoints
      --  Clears the global nonperiodic IN NAK handshake If the global
      --  nonperiodic IN NAK is cleared, the core has not yet fetched data for
      --  the IN endpoint, and the IN token is received: the core generates an
      --  âIN token received when FIFO emptyâ interrupt. The OTG then
      --  sends a NAK response to the host. To avoid this scenario, the
      --  application can check the FetSusp interrupt in OTG_GINTSTS, which
      --  ensures that the FIFO is full before clearing a global NAK handshake.
      --  Alternatively, the application can mask the âIN token received
      --  when FIFO emptyâ interrupt when clearing a global IN NAK
      --  handshake.
      DATAFSUSP          : Boolean := False;
      --  Reset detected interrupt In device mode, this interrupt is asserted
      --  when a reset is detected on the USB in partial power-down mode when
      --  the device is in suspend. Note: Only accessible in device mode.
      RSTDET             : Boolean := False;
      --  Read-only. Host port interrupt The core sets this bit to indicate a
      --  change in port status of one of the OTG_HS controller ports in host
      --  mode. The application must read the OTG_HPRT register to determine
      --  the exact event that caused this interrupt. The application must
      --  clear the appropriate status bit in the OTG_HPRT register to clear
      --  this bit. Note: Only accessible in host mode.
      HPRTINT            : Boolean := False;
      --  Read-only. Host channels interrupt The core sets this bit to indicate
      --  that an interrupt is pending on one of the channels of the core (in
      --  host mode). The application must read the OTG_HAINT register to
      --  determine the exact number of the channel on which the interrupt
      --  occurred, and then read the corresponding OTG_HCINTx register to
      --  determine the exact cause of the interrupt. The application must
      --  clear the appropriate status bit in the OTG_HCINTx register to clear
      --  this bit. Note: Only accessible in host mode.
      HCINT              : Boolean := False;
      --  Read-only. Periodic Tx FIFO empty Asserted when the periodic transmit
      --  FIFO is either half or completely empty and there is space for at
      --  least one entry to be written in the periodic request queue. The half
      --  or completely empty status is determined by the periodic Tx FIFO
      --  empty level bit in the OTG_GAHBCFG register (PTXFELVL bit in
      --  OTG_GAHBCFG). Note: Only accessible in host mode.
      PTXFE              : Boolean := True;
      --  LPM interrupt In device mode, this interrupt is asserted when the
      --  device receives an LPM transaction and responds with a non-ERRORed
      --  response. In host mode, this interrupt is asserted when the device
      --  responds to an LPM transaction with a non-ERRORed response or when
      --  the host core has completed LPM transactions for the programmed
      --  number of times (RETRYCNT bit in OTG_GLPMCFG). This field is valid
      --  only if the LPMEN bit in OTG_GLPMCFG is set to 1.
      LPMINT             : Boolean := False;
      --  Connector ID status change The core sets this bit when there is a
      --  change in connector ID status. Note: Accessible in both device and
      --  host modes.
      CIDSCHG            : Boolean := False;
      --  Disconnect detected interrupt Asserted when a device disconnect is
      --  detected. Note: Only accessible in host mode.
      DISCINT            : Boolean := False;
      --  Session request/new session detected interrupt In host mode, this
      --  interrupt is asserted when a session request is detected from the
      --  device. In device mode, this interrupt is asserted when VBUS is in
      --  the valid range for a B-peripheral device. Accessible in both device
      --  and host modes.
      SRQINT             : Boolean := False;
      --  Resume/remote wakeup detected interrupt Wakeup interrupt during
      --  suspend(L2) or LPM(L1) state. During suspend(L2): In device mode,
      --  this interrupt is asserted when a resume is detected on the USB. In
      --  host mode, this interrupt is asserted when a remote wakeup is
      --  detected on the USB. During LPM(L1): This interrupt is asserted for
      --  either host initiated resume or device initiated remote wakeup on
      --  USB. Note: Accessible in both device and host modes.
      WKUPINT            : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GINTSTS_Register use record
      CMOD               at 0 range 0 .. 0;
      MMIS               at 0 range 1 .. 1;
      OTGINT             at 0 range 2 .. 2;
      SOF                at 0 range 3 .. 3;
      RXFLVL             at 0 range 4 .. 4;
      NPTXFE             at 0 range 5 .. 5;
      GINAKEFF           at 0 range 6 .. 6;
      GONAKEFF           at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      ESUSP              at 0 range 10 .. 10;
      USBSUSP            at 0 range 11 .. 11;
      USBRST             at 0 range 12 .. 12;
      ENUMDNE            at 0 range 13 .. 13;
      ISOODRP            at 0 range 14 .. 14;
      EOPF               at 0 range 15 .. 15;
      Reserved_16_17     at 0 range 16 .. 17;
      IEPINT             at 0 range 18 .. 18;
      OEPINT             at 0 range 19 .. 19;
      IISOIXFR           at 0 range 20 .. 20;
      IPXFR_INCOMPISOOUT at 0 range 21 .. 21;
      DATAFSUSP          at 0 range 22 .. 22;
      RSTDET             at 0 range 23 .. 23;
      HPRTINT            at 0 range 24 .. 24;
      HCINT              at 0 range 25 .. 25;
      PTXFE              at 0 range 26 .. 26;
      LPMINT             at 0 range 27 .. 27;
      CIDSCHG            at 0 range 28 .. 28;
      DISCINT            at 0 range 29 .. 29;
      SRQINT             at 0 range 30 .. 30;
      WKUPINT            at 0 range 31 .. 31;
   end record;

   --  Mode mismatch interrupt mask Note: Accessible in both device and host
   --  modes.
   type OTG_HS_GINTMSK_MMISM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_MMISM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OTG interrupt mask Note: Accessible in both device and host modes.
   type OTG_HS_GINTMSK_OTGINT_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_OTGINT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Start of frame mask Note: Accessible in both device and host modes.
   type OTG_HS_GINTMSK_SOFM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_SOFM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Receive FIFO non-empty mask Note: Accessible in both device and host
   --  modes.
   type OTG_HS_GINTMSK_RXFLVLM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_RXFLVLM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Non-periodic Tx FIFO empty mask Note: Only accessible in host mode.
   type OTG_HS_GINTMSK_NPTXFEM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_NPTXFEM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Global non-periodic IN NAK effective mask Note: Only accessible in
   --  device mode.
   type OTG_HS_GINTMSK_GINAKEFFM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_GINAKEFFM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Global OUT NAK effective mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_GONAKEFFM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_GONAKEFFM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Early suspend mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_ESUSPM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_ESUSPM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  USB suspend mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_USBSUSPM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_USBSUSPM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  USB reset mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_USBRST_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_USBRST_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Enumeration done mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_ENUMDNEM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_ENUMDNEM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Isochronous OUT packet dropped interrupt mask Note: Only accessible in
   --  device mode.
   type OTG_HS_GINTMSK_ISOODRPM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_ISOODRPM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  End of periodic frame interrupt mask Note: Only accessible in device
   --  mode.
   type OTG_HS_GINTMSK_EOPFM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_EOPFM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  IN endpoints interrupt mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_IEPINT_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_IEPINT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OUT endpoints interrupt mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_OEPINT_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_OEPINT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Incomplete isochronous IN transfer mask Note: Only accessible in device
   --  mode.
   type OTG_HS_GINTMSK_IISOIXFRM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_IISOIXFRM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Data fetch suspended mask Only accessible in peripheral mode.
   type OTG_HS_GINTMSK_FSUSPM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_FSUSPM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Reset detected interrupt mask Note: Only accessible in device mode.
   type OTG_HS_GINTMSK_RSTDETM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_RSTDETM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Host port interrupt mask Note: Only accessible in host mode.
   type OTG_HS_GINTMSK_PRTIM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_PRTIM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Host channels interrupt mask Note: Only accessible in host mode.
   type OTG_HS_GINTMSK_HCIM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_HCIM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Periodic Tx FIFO empty mask Note: Only accessible in host mode.
   type OTG_HS_GINTMSK_PTXFEM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_PTXFEM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  LPM interrupt mask Note: Accessible in both host and device modes.
   type OTG_HS_GINTMSK_LPMINTM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_LPMINTM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Connector ID status change mask Note: Accessible in both host and device
   --  modes.
   type OTG_HS_GINTMSK_CIDSCHGM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_CIDSCHGM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Disconnect detected interrupt mask Note: Only accessible in host mode.
   type OTG_HS_GINTMSK_DISCINT_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_DISCINT_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Session request/new session detected interrupt mask Note: Accessible in
   --  both host and device modes.
   type OTG_HS_GINTMSK_SRQIM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_SRQIM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  Resume/remote wakeup detected interrupt mask Note: Accessible in both
   --  host and device modes.
   type OTG_HS_GINTMSK_WUIM_Field is
     (--  Masked interrupt
      B_0x0,
      --  Unmasked interrupt
      B_0x1)
     with Size => 1;
   for OTG_HS_GINTMSK_WUIM_Field use
     (B_0x0 => 0,
      B_0x1 => 1);

   --  OTG_HS interrupt mask register
   type OTG_HS_GINTMSK_Register is record
      --  unspecified
      Reserved_0_0     : A0B.Types.SVD.Bit := 16#0#;
      --  Mode mismatch interrupt mask Note: Accessible in both device and host
      --  modes.
      MMISM            : OTG_HS_GINTMSK_MMISM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  OTG interrupt mask Note: Accessible in both device and host modes.
      OTGINT           : OTG_HS_GINTMSK_OTGINT_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Start of frame mask Note: Accessible in both device and host modes.
      SOFM             : OTG_HS_GINTMSK_SOFM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Receive FIFO non-empty mask Note: Accessible in both device and host
      --  modes.
      RXFLVLM          : OTG_HS_GINTMSK_RXFLVLM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Non-periodic Tx FIFO empty mask Note: Only accessible in host mode.
      NPTXFEM          : OTG_HS_GINTMSK_NPTXFEM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Global non-periodic IN NAK effective mask Note: Only accessible in
      --  device mode.
      GINAKEFFM        : OTG_HS_GINTMSK_GINAKEFFM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Global OUT NAK effective mask Note: Only accessible in device mode.
      GONAKEFFM        : OTG_HS_GINTMSK_GONAKEFFM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  unspecified
      Reserved_8_9     : A0B.Types.SVD.UInt2 := 16#0#;
      --  Early suspend mask Note: Only accessible in device mode.
      ESUSPM           : OTG_HS_GINTMSK_ESUSPM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  USB suspend mask Note: Only accessible in device mode.
      USBSUSPM         : OTG_HS_GINTMSK_USBSUSPM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  USB reset mask Note: Only accessible in device mode.
      USBRST           : OTG_HS_GINTMSK_USBRST_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Enumeration done mask Note: Only accessible in device mode.
      ENUMDNEM         : OTG_HS_GINTMSK_ENUMDNEM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Isochronous OUT packet dropped interrupt mask Note: Only accessible
      --  in device mode.
      ISOODRPM         : OTG_HS_GINTMSK_ISOODRPM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  End of periodic frame interrupt mask Note: Only accessible in device
      --  mode.
      EOPFM            : OTG_HS_GINTMSK_EOPFM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  unspecified
      Reserved_16_17   : A0B.Types.SVD.UInt2 := 16#0#;
      --  IN endpoints interrupt mask Note: Only accessible in device mode.
      IEPINT           : OTG_HS_GINTMSK_IEPINT_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  OUT endpoints interrupt mask Note: Only accessible in device mode.
      OEPINT           : OTG_HS_GINTMSK_OEPINT_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Incomplete isochronous IN transfer mask Note: Only accessible in
      --  device mode.
      IISOIXFRM        : OTG_HS_GINTMSK_IISOIXFRM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      IPXFRM_IISOOXFRM : Boolean := False;
      --  Data fetch suspended mask Only accessible in peripheral mode.
      FSUSPM           : OTG_HS_GINTMSK_FSUSPM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Reset detected interrupt mask Note: Only accessible in device mode.
      RSTDETM          : OTG_HS_GINTMSK_RSTDETM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Read-only. Host port interrupt mask Note: Only accessible in host
      --  mode.
      PRTIM            : OTG_HS_GINTMSK_PRTIM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Host channels interrupt mask Note: Only accessible in host mode.
      HCIM             : OTG_HS_GINTMSK_HCIM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Periodic Tx FIFO empty mask Note: Only accessible in host mode.
      PTXFEM           : OTG_HS_GINTMSK_PTXFEM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  LPM interrupt mask Note: Accessible in both host and device modes.
      LPMINTM          : OTG_HS_GINTMSK_LPMINTM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Connector ID status change mask Note: Accessible in both host and
      --  device modes.
      CIDSCHGM         : OTG_HS_GINTMSK_CIDSCHGM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Disconnect detected interrupt mask Note: Only accessible in host
      --  mode.
      DISCINT          : OTG_HS_GINTMSK_DISCINT_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Session request/new session detected interrupt mask Note: Accessible
      --  in both host and device modes.
      SRQIM            : OTG_HS_GINTMSK_SRQIM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
      --  Resume/remote wakeup detected interrupt mask Note: Accessible in both
      --  host and device modes.
      WUIM             : OTG_HS_GINTMSK_WUIM_Field :=
                          A0B.STM32H723.SVD.USB_OTG_HS.B_0x0;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GINTMSK_Register use record
      Reserved_0_0     at 0 range 0 .. 0;
      MMISM            at 0 range 1 .. 1;
      OTGINT           at 0 range 2 .. 2;
      SOFM             at 0 range 3 .. 3;
      RXFLVLM          at 0 range 4 .. 4;
      NPTXFEM          at 0 range 5 .. 5;
      GINAKEFFM        at 0 range 6 .. 6;
      GONAKEFFM        at 0 range 7 .. 7;
      Reserved_8_9     at 0 range 8 .. 9;
      ESUSPM           at 0 range 10 .. 10;
      USBSUSPM         at 0 range 11 .. 11;
      USBRST           at 0 range 12 .. 12;
      ENUMDNEM         at 0 range 13 .. 13;
      ISOODRPM         at 0 range 14 .. 14;
      EOPFM            at 0 range 15 .. 15;
      Reserved_16_17   at 0 range 16 .. 17;
      IEPINT           at 0 range 18 .. 18;
      OEPINT           at 0 range 19 .. 19;
      IISOIXFRM        at 0 range 20 .. 20;
      IPXFRM_IISOOXFRM at 0 range 21 .. 21;
      FSUSPM           at 0 range 22 .. 22;
      RSTDETM          at 0 range 23 .. 23;
      PRTIM            at 0 range 24 .. 24;
      HCIM             at 0 range 25 .. 25;
      PTXFEM           at 0 range 26 .. 26;
      LPMINTM          at 0 range 27 .. 27;
      CIDSCHGM         at 0 range 28 .. 28;
      DISCINT          at 0 range 29 .. 29;
      SRQIM            at 0 range 30 .. 30;
      WUIM             at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_GRXSTSR_Host_CHNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSR_Host_BCNT_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_GRXSTSR_Host_DPID_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_GRXSTSR_Host_PKTSTS_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS Receive status debug read register (host mode)
   type OTG_HS_GRXSTSR_Host_Register is record
      --  Read-only. Channel number
      CHNUM          : OTG_HS_GRXSTSR_Host_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_HS_GRXSTSR_Host_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_HS_GRXSTSR_Host_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_HS_GRXSTSR_Host_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : A0B.Types.SVD.UInt11;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRXSTSR_Host_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_HS_GRXSTSR_Device_EPNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSR_Device_BCNT_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_GRXSTSR_Device_DPID_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_GRXSTSR_Device_PKTSTS_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSR_Device_FRMNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSR_Device_STSPHST_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS Receive status debug read register (peripheral mode mode)
   type OTG_HS_GRXSTSR_Device_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_HS_GRXSTSR_Device_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_HS_GRXSTSR_Device_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_HS_GRXSTSR_Device_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_HS_GRXSTSR_Device_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_HS_GRXSTSR_Device_FRMNUM_Field;
      --  unspecified
      Reserved_25_26 : A0B.Types.SVD.UInt2;
      --  Read-only. Frame number
      STSPHST        : OTG_HS_GRXSTSR_Device_STSPHST_Field;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRXSTSR_Device_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      STSPHST        at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_GRXSTSP_Host_CHNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSP_Host_BCNT_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_GRXSTSP_Host_DPID_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_GRXSTSP_Host_PKTSTS_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS status read and pop register (host mode)
   type OTG_HS_GRXSTSP_Host_Register is record
      --  Read-only. Channel number
      CHNUM          : OTG_HS_GRXSTSP_Host_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_HS_GRXSTSP_Host_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_HS_GRXSTSP_Host_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_HS_GRXSTSP_Host_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : A0B.Types.SVD.UInt11;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRXSTSP_Host_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_HS_GRXSTSP_Device_EPNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSP_Device_BCNT_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_GRXSTSP_Device_DPID_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_GRXSTSP_Device_PKTSTS_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSP_Device_FRMNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GRXSTSP_Device_STSPHST_Field is A0B.Types.SVD.UInt4;

   --  OTG_HS status read and pop register (peripheral mode)
   type OTG_HS_GRXSTSP_Device_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_HS_GRXSTSP_Device_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_HS_GRXSTSP_Device_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_HS_GRXSTSP_Device_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_HS_GRXSTSP_Device_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_HS_GRXSTSP_Device_FRMNUM_Field;
      --  unspecified
      Reserved_25_26 : A0B.Types.SVD.UInt2;
      --  Read-only. Frame number
      STSPHST        : OTG_HS_GRXSTSP_Device_STSPHST_Field;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRXSTSP_Device_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_26 at 0 range 25 .. 26;
      STSPHST        at 0 range 27 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_GRXFSIZ_RXFD_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS Receive FIFO size register
   type OTG_HS_GRXFSIZ_Register is record
      --  RxFIFO depth
      RXFD           : OTG_HS_GRXFSIZ_RXFD_Field := 16#200#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GRXFSIZ_Register use record
      RXFD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HNPTXFSIZ_Host_NPTXFSA_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_HNPTXFSIZ_Host_NPTXFD_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS nonperiodic transmit FIFO size register (host mode)
   type OTG_HS_HNPTXFSIZ_Host_Register is record
      --  Nonperiodic transmit RAM start address
      NPTXFSA : OTG_HS_HNPTXFSIZ_Host_NPTXFSA_Field := 16#200#;
      --  Nonperiodic TxFIFO depth
      NPTXFD  : OTG_HS_HNPTXFSIZ_Host_NPTXFD_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HNPTXFSIZ_Host_Register use record
      NPTXFSA at 0 range 0 .. 15;
      NPTXFD  at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DIEPTXF0_Device_TX0FSA_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_DIEPTXF0_Device_TX0FD_Field is A0B.Types.SVD.UInt16;

   --  Endpoint 0 transmit FIFO size (peripheral mode)
   type OTG_HS_DIEPTXF0_Device_Register is record
      --  Endpoint 0 transmit RAM start address
      TX0FSA : OTG_HS_DIEPTXF0_Device_TX0FSA_Field := 16#200#;
      --  Endpoint 0 TxFIFO depth
      TX0FD  : OTG_HS_DIEPTXF0_Device_TX0FD_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPTXF0_Device_Register use record
      TX0FSA at 0 range 0 .. 15;
      TX0FD  at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_GNPTXSTS_NPTXFSAV_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_GNPTXSTS_NPTQXSAV_Field is A0B.Types.SVD.Byte;
   subtype OTG_HS_GNPTXSTS_NPTXQTOP_Field is A0B.Types.SVD.UInt7;

   --  OTG_HS nonperiodic transmit FIFO/queue status register
   type OTG_HS_GNPTXSTS_Register is record
      --  Read-only. Nonperiodic TxFIFO space available
      NPTXFSAV       : OTG_HS_GNPTXSTS_NPTXFSAV_Field;
      --  Read-only. Nonperiodic transmit request queue space available
      NPTQXSAV       : OTG_HS_GNPTXSTS_NPTQXSAV_Field;
      --  Read-only. Top of the nonperiodic transmit request queue
      NPTXQTOP       : OTG_HS_GNPTXSTS_NPTXQTOP_Field;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GNPTXSTS_Register use record
      NPTXFSAV       at 0 range 0 .. 15;
      NPTQXSAV       at 0 range 16 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_HS general core configuration register
   type OTG_HS_GCCFG_Register is record
      --  Data contact detection (DCD) status
      DCDET          : Boolean := False;
      --  Primary detection (PD) status
      PDET           : Boolean := False;
      --  Secondary detection (SD) status
      SDET           : Boolean := False;
      --  DM pull-up detection status
      PS2DET         : Boolean := False;
      --  unspecified
      Reserved_4_15  : A0B.Types.SVD.UInt12 := 16#0#;
      --  Power down
      PWRDWN         : Boolean := False;
      --  Battery charging detector (BCD) enable
      BCDEN          : Boolean := False;
      --  Data contact detection (DCD) mode enable
      DCDEN          : Boolean := False;
      --  Primary detection (PD) mode enable
      PDEN           : Boolean := False;
      --  Secondary detection (SD) mode enable
      SDEN           : Boolean := False;
      --  USB VBUS detection enable
      VBDEN          : Boolean := False;
      --  unspecified
      Reserved_22_31 : A0B.Types.SVD.UInt10 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GCCFG_Register use record
      DCDET          at 0 range 0 .. 0;
      PDET           at 0 range 1 .. 1;
      SDET           at 0 range 2 .. 2;
      PS2DET         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      PWRDWN         at 0 range 16 .. 16;
      BCDEN          at 0 range 17 .. 17;
      DCDEN          at 0 range 18 .. 18;
      PDEN           at 0 range 19 .. 19;
      SDEN           at 0 range 20 .. 20;
      VBDEN          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype OTG_HS_GLPMCFG_BESL_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GLPMCFG_BESLTHRS_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GLPMCFG_LPMRST_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_GLPMCFG_LPMCHIDX_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_GLPMCFG_LPMRCNT_Field is A0B.Types.SVD.UInt3;
   subtype OTG_HS_GLPMCFG_LPMRCNTSTS_Field is A0B.Types.SVD.UInt3;

   --  OTG core LPM configuration register
   type OTG_HS_GLPMCFG_Register is record
      --  LPM support enable
      LPMEN          : Boolean := False;
      --  LPM token acknowledge enable
      LPMACK         : Boolean := False;
      --  Read-only. Best effort service latency
      BESL           : OTG_HS_GLPMCFG_BESL_Field := 16#0#;
      --  Read-only. bRemoteWake value
      REMWAKE        : Boolean := False;
      --  L1 Shallow Sleep enable
      L1SSEN         : Boolean := False;
      --  BESL threshold
      BESLTHRS       : OTG_HS_GLPMCFG_BESLTHRS_Field := 16#0#;
      --  L1 deep sleep enable
      L1DSEN         : Boolean := False;
      --  Read-only. LPM response
      LPMRST         : OTG_HS_GLPMCFG_LPMRST_Field := 16#0#;
      --  Read-only. Port sleep status
      SLPSTS         : Boolean := False;
      --  Read-only. Sleep State Resume OK
      L1RSMOK        : Boolean := False;
      --  LPM Channel Index
      LPMCHIDX       : OTG_HS_GLPMCFG_LPMCHIDX_Field := 16#0#;
      --  LPM retry count
      LPMRCNT        : OTG_HS_GLPMCFG_LPMRCNT_Field := 16#0#;
      --  Send LPM transaction
      SNDLPM         : Boolean := False;
      --  Read-only. LPM retry count status
      LPMRCNTSTS     : OTG_HS_GLPMCFG_LPMRCNTSTS_Field := 16#0#;
      --  Enable best effort service latency
      ENBESL         : Boolean := False;
      --  unspecified
      Reserved_29_31 : A0B.Types.SVD.UInt3 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_GLPMCFG_Register use record
      LPMEN          at 0 range 0 .. 0;
      LPMACK         at 0 range 1 .. 1;
      BESL           at 0 range 2 .. 5;
      REMWAKE        at 0 range 6 .. 6;
      L1SSEN         at 0 range 7 .. 7;
      BESLTHRS       at 0 range 8 .. 11;
      L1DSEN         at 0 range 12 .. 12;
      LPMRST         at 0 range 13 .. 14;
      SLPSTS         at 0 range 15 .. 15;
      L1RSMOK        at 0 range 16 .. 16;
      LPMCHIDX       at 0 range 17 .. 20;
      LPMRCNT        at 0 range 21 .. 23;
      SNDLPM         at 0 range 24 .. 24;
      LPMRCNTSTS     at 0 range 25 .. 27;
      ENBESL         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype OTG_HS_HPTXFSIZ_PTXSA_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_HPTXFSIZ_PTXFD_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS Host periodic transmit FIFO size register
   type OTG_HS_HPTXFSIZ_Register is record
      --  Host periodic TxFIFO start address
      PTXSA : OTG_HS_HPTXFSIZ_PTXSA_Field := 16#600#;
      --  Host periodic TxFIFO depth
      PTXFD : OTG_HS_HPTXFSIZ_PTXFD_Field := 16#200#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HPTXFSIZ_Register use record
      PTXSA at 0 range 0 .. 15;
      PTXFD at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_DIEPTXF_INEPTXSA_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_DIEPTXF_INEPTXFD_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS device IN endpoint transmit FIFO size register
   type OTG_HS_DIEPTXF_Register is record
      --  IN endpoint FIFOx transmit RAM start address
      INEPTXSA : OTG_HS_DIEPTXF_INEPTXSA_Field := 16#400#;
      --  IN endpoint TxFIFO depth
      INEPTXFD : OTG_HS_DIEPTXF_INEPTXFD_Field := 16#200#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_DIEPTXF_Register use record
      INEPTXSA at 0 range 0 .. 15;
      INEPTXFD at 0 range 16 .. 31;
   end record;

   subtype OTG_DIEPTXF8_INEPTXSA_Field is A0B.Types.SVD.UInt16;
   subtype OTG_DIEPTXF8_INEPTXFD_Field is A0B.Types.SVD.UInt16;

   type OTG_DIEPTXF8_Register is record
      --  IN endpoint FIFOx transmit RAM start address This field contains the
      --  memory start address for IN endpoint transmit FIFOx. The address must
      --  be aligned with a 32-bit memory location.
      INEPTXSA : OTG_DIEPTXF8_INEPTXSA_Field := 16#1200#;
      --  IN endpoint Tx FIFO depth This value is in terms of 32-bit words.
      --  Minimum value is 16
      INEPTXFD : OTG_DIEPTXF8_INEPTXFD_Field := 16#200#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_DIEPTXF8_Register use record
      INEPTXSA at 0 range 0 .. 15;
      INEPTXFD at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HCFG_FSLSPCS_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS host configuration register
   type OTG_HS_HCFG_Register is record
      --  FS/LS PHY clock select
      FSLSPCS       : OTG_HS_HCFG_FSLSPCS_Field := 16#0#;
      --  Read-only. FS- and LS-only support
      FSLSS         : Boolean := False;
      --  unspecified
      Reserved_3_31 : A0B.Types.SVD.UInt29 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCFG_Register use record
      FSLSPCS       at 0 range 0 .. 1;
      FSLSS         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OTG_HS_HFIR_FRIVL_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS Host frame interval register
   type OTG_HS_HFIR_Register is record
      --  Frame interval
      FRIVL          : OTG_HS_HFIR_FRIVL_Field := 16#EA60#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HFIR_Register use record
      FRIVL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HFNUM_FRNUM_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_HFNUM_FTREM_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS host frame number/frame time remaining register
   type OTG_HS_HFNUM_Register is record
      --  Read-only. Frame number
      FRNUM : OTG_HS_HFNUM_FRNUM_Field;
      --  Read-only. Frame time remaining
      FTREM : OTG_HS_HFNUM_FTREM_Field;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HFNUM_Register use record
      FRNUM at 0 range 0 .. 15;
      FTREM at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HPTXSTS_PTXFSAVL_Field is A0B.Types.SVD.UInt16;
   subtype OTG_HS_HPTXSTS_PTXQSAV_Field is A0B.Types.SVD.Byte;
   subtype OTG_HS_HPTXSTS_PTXQTOP_Field is A0B.Types.SVD.Byte;

   --  OTG_HS_Host periodic transmit FIFO/queue status register
   type OTG_HS_HPTXSTS_Register is record
      --  Periodic transmit data FIFO space available
      PTXFSAVL : OTG_HS_HPTXSTS_PTXFSAVL_Field := 16#100#;
      --  Read-only. Periodic transmit request queue space available
      PTXQSAV  : OTG_HS_HPTXSTS_PTXQSAV_Field := 16#8#;
      --  Read-only. Top of the periodic transmit request queue
      PTXQTOP  : OTG_HS_HPTXSTS_PTXQTOP_Field := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HPTXSTS_Register use record
      PTXFSAVL at 0 range 0 .. 15;
      PTXQSAV  at 0 range 16 .. 23;
      PTXQTOP  at 0 range 24 .. 31;
   end record;

   subtype OTG_HS_HAINT_HAINT_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS Host all channels interrupt register
   type OTG_HS_HAINT_Register is record
      --  Read-only. Channel interrupts
      HAINT          : OTG_HS_HAINT_HAINT_Field;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HAINT_Register use record
      HAINT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HAINTMSK_HAINTM_Field is A0B.Types.SVD.UInt16;

   --  OTG_HS host all channels interrupt mask register
   type OTG_HS_HAINTMSK_Register is record
      --  Channel interrupt mask
      HAINTM         : OTG_HS_HAINTMSK_HAINTM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : A0B.Types.SVD.UInt16 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HAINTMSK_Register use record
      HAINTM         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_HS_HPRT_PLSTS_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_HPRT_PTCTL_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_HPRT_PSPD_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS host port control and status register
   type OTG_HS_HPRT_Register is record
      --  Read-only. Port connect status
      PCSTS          : Boolean := False;
      --  Port connect detected
      PCDET          : Boolean := False;
      --  Port enable
      PENA           : Boolean := False;
      --  Port enable/disable change
      PENCHNG        : Boolean := False;
      --  Read-only. Port overcurrent active
      POCA           : Boolean := False;
      --  Port overcurrent change
      POCCHNG        : Boolean := False;
      --  Port resume
      PRES           : Boolean := False;
      --  Port suspend
      PSUSP          : Boolean := False;
      --  Port reset
      PRST           : Boolean := False;
      --  unspecified
      Reserved_9_9   : A0B.Types.SVD.Bit := 16#0#;
      --  Read-only. Port line status
      PLSTS          : OTG_HS_HPRT_PLSTS_Field := 16#0#;
      --  Port power
      PPWR           : Boolean := False;
      --  Port test control
      PTCTL          : OTG_HS_HPRT_PTCTL_Field := 16#0#;
      --  Read-only. Port speed
      PSPD           : OTG_HS_HPRT_PSPD_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : A0B.Types.SVD.UInt13 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HPRT_Register use record
      PCSTS          at 0 range 0 .. 0;
      PCDET          at 0 range 1 .. 1;
      PENA           at 0 range 2 .. 2;
      PENCHNG        at 0 range 3 .. 3;
      POCA           at 0 range 4 .. 4;
      POCCHNG        at 0 range 5 .. 5;
      PRES           at 0 range 6 .. 6;
      PSUSP          at 0 range 7 .. 7;
      PRST           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PLSTS          at 0 range 10 .. 11;
      PPWR           at 0 range 12 .. 12;
      PTCTL          at 0 range 13 .. 16;
      PSPD           at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OTG_HS_HCCHAR_MPSIZ_Field is A0B.Types.SVD.UInt11;
   subtype OTG_HS_HCCHAR_EPNUM_Field is A0B.Types.SVD.UInt4;
   subtype OTG_HS_HCCHAR_EPTYP_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_HCCHAR_MC_Field is A0B.Types.SVD.UInt2;
   subtype OTG_HS_HCCHAR_DAD_Field is A0B.Types.SVD.UInt7;

   --  OTG_HS host channel-0 characteristics register
   type OTG_HS_HCCHAR_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_HS_HCCHAR_MPSIZ_Field := 16#0#;
      --  Endpoint number
      EPNUM          : OTG_HS_HCCHAR_EPNUM_Field := 16#0#;
      --  Endpoint direction
      EPDIR          : Boolean := False;
      --  unspecified
      Reserved_16_16 : A0B.Types.SVD.Bit := 16#0#;
      --  Low-speed device
      LSDEV          : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_HS_HCCHAR_EPTYP_Field := 16#0#;
      --  Multi Count (MC) / Error Count (EC)
      MC             : OTG_HS_HCCHAR_MC_Field := 16#0#;
      --  Device address
      DAD            : OTG_HS_HCCHAR_DAD_Field := 16#0#;
      --  Odd frame
      ODDFRM         : Boolean := False;
      --  Channel disable
      CHDIS          : Boolean := False;
      --  Channel enable
      CHENA          : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCCHAR_Register use record
      MPSIZ          at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSDEV          at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      MC             at 0 range 20 .. 21;
      DAD            at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_HS_HCSPLT_PRTADDR_Field is A0B.Types.SVD.UInt7;
   subtype OTG_HS_HCSPLT_HUBADDR_Field is A0B.Types.SVD.UInt7;
   subtype OTG_HS_HCSPLT_XACTPOS_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS host channel-0 split control register
   type OTG_HS_HCSPLT_Register is record
      --  Port address
      PRTADDR        : OTG_HS_HCSPLT_PRTADDR_Field := 16#0#;
      --  Hub address
      HUBADDR        : OTG_HS_HCSPLT_HUBADDR_Field := 16#0#;
      --  XACTPOS
      XACTPOS        : OTG_HS_HCSPLT_XACTPOS_Field := 16#0#;
      --  Do complete split
      COMPLSPLT      : Boolean := False;
      --  unspecified
      Reserved_17_30 : A0B.Types.SVD.UInt14 := 16#0#;
      --  Split enable
      SPLITEN        : Boolean := False;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCSPLT_Register use record
      PRTADDR        at 0 range 0 .. 6;
      HUBADDR        at 0 range 7 .. 13;
      XACTPOS        at 0 range 14 .. 15;
      COMPLSPLT      at 0 range 16 .. 16;
      Reserved_17_30 at 0 range 17 .. 30;
      SPLITEN        at 0 range 31 .. 31;
   end record;

   --  OTG_HS host channel-11 interrupt register
   type OTG_HS_HCINT_Register is record
      --  Transfer completed
      XFRC           : Boolean := False;
      --  Channel halted
      CHH            : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  STALL response received interrupt
      STALL          : Boolean := False;
      --  NAK response received interrupt
      NAK            : Boolean := False;
      --  ACK response received/transmitted interrupt
      ACK            : Boolean := False;
      --  Response received interrupt
      NYET           : Boolean := False;
      --  Transaction error
      TXERR          : Boolean := False;
      --  Babble error
      BBERR          : Boolean := False;
      --  Frame overrun
      FRMOR          : Boolean := False;
      --  Data toggle error
      DTERR          : Boolean := False;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCINT_Register use record
      XFRC           at 0 range 0 .. 0;
      CHH            at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERR          at 0 range 7 .. 7;
      BBERR          at 0 range 8 .. 8;
      FRMOR          at 0 range 9 .. 9;
      DTERR          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  OTG_HS host channel-11 interrupt mask register
   type OTG_HS_HCINTMSK_Register is record
      --  Transfer completed mask
      XFRCM          : Boolean := False;
      --  Channel halted mask
      CHHM           : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  STALL response received interrupt mask
      STALLM         : Boolean := False;
      --  NAK response received interrupt mask
      NAKM           : Boolean := False;
      --  ACK response received/transmitted interrupt mask
      ACKM           : Boolean := False;
      --  response received interrupt mask
      NYET           : Boolean := False;
      --  Transaction error mask
      TXERRM         : Boolean := False;
      --  Babble error mask
      BBERRM         : Boolean := False;
      --  Frame overrun mask
      FRMORM         : Boolean := False;
      --  Data toggle error mask
      DTERRM         : Boolean := False;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCINTMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      CHHM           at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALLM         at 0 range 3 .. 3;
      NAKM           at 0 range 4 .. 4;
      ACKM           at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERRM         at 0 range 7 .. 7;
      BBERRM         at 0 range 8 .. 8;
      FRMORM         at 0 range 9 .. 9;
      DTERRM         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype OTG_HS_HCTSIZ_XFRSIZ_Field is A0B.Types.SVD.UInt19;
   subtype OTG_HS_HCTSIZ_PKTCNT_Field is A0B.Types.SVD.UInt10;
   subtype OTG_HS_HCTSIZ_DPID_Field is A0B.Types.SVD.UInt2;

   --  OTG_HS host channel-11 transfer size register
   type OTG_HS_HCTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_HS_HCTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_HS_HCTSIZ_PKTCNT_Field := 16#0#;
      --  Data PID
      DPID           : OTG_HS_HCTSIZ_DPID_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : A0B.Types.SVD.Bit := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      DPID           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_HS host channel-15 interrupt mask register
   type OTG_HS_HCINTMSK15_Register is record
      --  Transfer completed mask
      XFRCM          : Boolean := False;
      --  Channel halted mask
      CHHM           : Boolean := False;
      --  AHB error
      AHBERR         : Boolean := False;
      --  STALL response received interrupt mask
      STALL          : Boolean := False;
      --  NAK response received interrupt mask
      NAKM           : Boolean := False;
      --  ACK response received/transmitted interrupt mask
      ACKM           : Boolean := False;
      --  Response received interrupt
      NYET           : Boolean := False;
      --  Transaction error
      TXERRM         : Boolean := False;
      --  Babble error
      BBERRM         : Boolean := False;
      --  Frame overrun mask
      FRMORM         : Boolean := False;
      --  Data toggle error mask
      DTERRM         : Boolean := False;
      --  unspecified
      Reserved_11_31 : A0B.Types.SVD.UInt21 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_HCINTMSK15_Register use record
      XFRCM          at 0 range 0 .. 0;
      CHHM           at 0 range 1 .. 1;
      AHBERR         at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAKM           at 0 range 4 .. 4;
      ACKM           at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERRM         at 0 range 7 .. 7;
      BBERRM         at 0 range 8 .. 8;
      FRMORM         at 0 range 9 .. 9;
      DTERRM         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  Power and clock gating control register
   type OTG_HS_PCGCR_Register is record
      --  Stop PHY clock
      STPPCLK       : Boolean := False;
      --  Gate HCLK
      GATEHCLK      : Boolean := False;
      --  unspecified
      Reserved_2_3  : A0B.Types.SVD.UInt2 := 16#0#;
      --  PHY suspended
      PHYSUSP       : Boolean := False;
      --  unspecified
      Reserved_5_31 : A0B.Types.SVD.UInt27 := 16#0#;
   end record
     with Object_Size => 32, Bit_Order => System.Low_Order_First;

   for OTG_HS_PCGCR_Register use record
      STPPCLK       at 0 range 0 .. 0;
      GATEHCLK      at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PHYSUSP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   type OTG1_HS_DEVICE_Disc is
     (CTL5,
      TSIZ6,
      INT5,
      TSIZ7);

   --  USB 1 on the go high speed
   type OTG1_HS_DEVICE_Peripheral
     (Discriminent : OTG1_HS_DEVICE_Disc := CTL5)
   is record
      --  OTG_HS device configuration register
      OTG_HS_DCFG        : aliased OTG_HS_DCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_DCFG);
      --  OTG_HS device control register
      OTG_HS_DCTL        : aliased OTG_HS_DCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DCTL);
      --  OTG_HS device status register
      OTG_HS_DSTS        : aliased OTG_HS_DSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DSTS);
      --  OTG_HS device IN endpoint common interrupt mask register
      OTG_HS_DIEPMSK     : aliased OTG_HS_DIEPMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPMSK);
      --  OTG_HS device OUT endpoint common interrupt mask register
      OTG_HS_DOEPMSK     : aliased OTG_HS_DOEPMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPMSK);
      --  OTG_HS device all endpoints interrupt register
      OTG_HS_DAINT       : aliased OTG_HS_DAINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DAINT);
      --  OTG_HS all endpoints interrupt mask register
      OTG_HS_DAINTMSK    : aliased OTG_HS_DAINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_DAINTMSK);
      --  OTG_HS device VBUS discharge time register
      OTG_HS_DVBUSDIS    : aliased OTG_HS_DVBUSDIS_Register;
      pragma Volatile_Full_Access (OTG_HS_DVBUSDIS);
      --  OTG_HS device VBUS pulsing time register
      OTG_HS_DVBUSPULSE  : aliased OTG_HS_DVBUSPULSE_Register;
      pragma Volatile_Full_Access (OTG_HS_DVBUSPULSE);
      --  OTG_HS Device threshold control register
      OTG_HS_DTHRCTL     : aliased OTG_HS_DTHRCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DTHRCTL);
      --  OTG_HS device IN endpoint FIFO empty interrupt mask register
      OTG_HS_DIEPEMPMSK  : aliased OTG_HS_DIEPEMPMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPEMPMSK);
      --  OTG_HS device each endpoint interrupt register
      OTG_HS_DEACHINT    : aliased OTG_HS_DEACHINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DEACHINT);
      --  OTG_HS device each endpoint interrupt register mask
      OTG_HS_DEACHINTMSK : aliased OTG_HS_DEACHINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_DEACHINTMSK);
      --  OTG device endpoint-0 control register
      OTG_HS_DIEPCTL0    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL0);
      --  OTG device endpoint-0 interrupt register
      OTG_HS_DIEPINT0    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT0);
      --  OTG_HS device IN endpoint 0 transfer size register
      OTG_HS_DIEPTSIZ0   : aliased OTG_HS_DIEPTSIZ0_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ0);
      --  OTG_HS device endpoint-1 DMA address register
      OTG_HS_DIEPDMA1    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS0    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS0);
      --  OTG device endpoint-1 control register
      OTG_HS_DIEPCTL1    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL1);
      --  OTG device endpoint-1 interrupt register
      OTG_HS_DIEPINT1    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT1);
      --  OTG_HS device endpoint transfer size register
      OTG_HS_DIEPTSIZ1   : aliased OTG_HS_DIEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ1);
      --  OTG_HS device endpoint-2 DMA address register
      OTG_HS_DIEPDMA2    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS1    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS1);
      --  OTG device endpoint-2 control register
      OTG_HS_DIEPCTL2    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL2);
      --  OTG device endpoint-2 interrupt register
      OTG_HS_DIEPINT2    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT2);
      --  OTG_HS device endpoint transfer size register
      OTG_HS_DIEPTSIZ2   : aliased OTG_HS_DIEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ2);
      --  OTG_HS device endpoint-3 DMA address register
      OTG_HS_DIEPDMA3    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS2    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS2);
      --  OTG device endpoint-3 control register
      OTG_HS_DIEPCTL3    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL3);
      --  OTG device endpoint-3 interrupt register
      OTG_HS_DIEPINT3    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT3);
      --  OTG_HS device endpoint transfer size register
      OTG_HS_DIEPTSIZ3   : aliased OTG_HS_DIEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ3);
      --  OTG_HS device endpoint-4 DMA address register
      OTG_HS_DIEPDMA4    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS3    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS3);
      --  OTG device endpoint-4 control register
      OTG_HS_DIEPCTL4    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL4);
      --  OTG device endpoint-4 interrupt register
      OTG_HS_DIEPINT4    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT4);
      --  OTG_HS device endpoint transfer size register
      OTG_HS_DIEPTSIZ4   : aliased OTG_HS_DIEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ4);
      --  OTG_HS device endpoint-5 DMA address register
      OTG_HS_DIEPDMA5    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS4    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS4);
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS6    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS6);
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS7    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS7);
      --  OTG_HS device endpoint transfer size register
      OTG_HS_DIEPTSIZ5   : aliased OTG_HS_DIEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ5);
      --  OTG_HS device IN endpoint transmit FIFO status register
      OTG_HS_DTXFSTS5    : aliased OTG_HS_DTXFSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_DTXFSTS5);
      --  OTG device endpoint-6 control register
      OTG_HS_DIEPCTL6    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL6);
      --  OTG device endpoint-6 interrupt register
      OTG_HS_DIEPINT6    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT6);
      --  OTG device endpoint-7 control register
      OTG_HS_DIEPCTL7    : aliased OTG_HS_DIEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPCTL7);
      --  OTG device endpoint-7 interrupt register
      OTG_HS_DIEPINT7    : aliased OTG_HS_DIEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPINT7);
      --  OTG_HS device control OUT endpoint 0 control register
      OTG_HS_DOEPCTL0    : aliased OTG_HS_DOEPCTL0_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL0);
      --  OTG_HS device endpoint-0 interrupt register
      OTG_HS_DOEPINT0    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT0);
      --  OTG_HS device endpoint-0 transfer size register
      OTG_HS_DOEPTSIZ0   : aliased OTG_HS_DOEPTSIZ0_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ0);
      --  OTG device endpoint-1 control register
      OTG_HS_DOEPCTL1    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL1);
      --  OTG_HS device endpoint-1 interrupt register
      OTG_HS_DOEPINT1    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT1);
      --  OTG_HS device endpoint-1 transfer size register
      OTG_HS_DOEPTSIZ1   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ1);
      --  OTG device endpoint-2 control register
      OTG_HS_DOEPCTL2    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL2);
      --  OTG_HS device endpoint-2 interrupt register
      OTG_HS_DOEPINT2    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT2);
      --  OTG_HS device endpoint-2 transfer size register
      OTG_HS_DOEPTSIZ2   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ2);
      --  OTG device endpoint-3 control register
      OTG_HS_DOEPCTL3    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL3);
      --  OTG_HS device endpoint-3 interrupt register
      OTG_HS_DOEPINT3    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT3);
      --  OTG_HS device endpoint-3 transfer size register
      OTG_HS_DOEPTSIZ3   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ3);
      --  OTG device endpoint-4 control register
      OTG_HS_DOEPCTL4    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL4);
      --  OTG_HS device endpoint-4 interrupt register
      OTG_HS_DOEPINT4    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT4);
      --  OTG_HS device endpoint-4 transfer size register
      OTG_HS_DOEPTSIZ4   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ4);
      --  OTG device endpoint-5 control register
      OTG_HS_DOEPCTL5    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL5);
      --  OTG_HS device endpoint-5 interrupt register
      OTG_HS_DOEPINT5    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT5);
      --  OTG_HS device endpoint-5 transfer size register
      OTG_HS_DOEPTSIZ5   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ5);
      --  OTG device endpoint-6 control register
      OTG_HS_DOEPCTL6    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL6);
      --  OTG_HS device endpoint-6 interrupt register
      OTG_HS_DOEPINT6    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT6);
      --  OTG_HS device endpoint-6 transfer size register
      OTG_HS_DOEPTSIZ6   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ6);
      --  OTG device endpoint-7 control register
      OTG_HS_DOEPCTL7    : aliased OTG_HS_DOEPCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPCTL7);
      --  OTG_HS device endpoint-7 interrupt register
      OTG_HS_DOEPINT7    : aliased OTG_HS_DOEPINT_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPINT7);
      --  OTG_HS device endpoint-7 transfer size register
      OTG_HS_DOEPTSIZ7   : aliased OTG_HS_DOEPTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_DOEPTSIZ7);
      case Discriminent is
         when CTL5 =>
            --  OTG device endpoint-5 control register
            OTG_HS_DIEPCTL5 : aliased OTG_HS_DIEPCTL_Register;
            pragma Volatile_Full_Access (OTG_HS_DIEPCTL5);
         when TSIZ6 =>
            --  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ6 : aliased OTG_HS_DIEPTSIZ_Register;
            pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ6);
         when INT5 =>
            --  OTG device endpoint-5 interrupt register
            OTG_HS_DIEPINT5 : aliased OTG_HS_DIEPINT_Register;
            pragma Volatile_Full_Access (OTG_HS_DIEPINT5);
         when TSIZ7 =>
            --  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ7 : aliased OTG_HS_DIEPTSIZ_Register;
            pragma Volatile_Full_Access (OTG_HS_DIEPTSIZ7);
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTG1_HS_DEVICE_Peripheral use record
      OTG_HS_DCFG        at 16#0# range 0 .. 31;
      OTG_HS_DCTL        at 16#4# range 0 .. 31;
      OTG_HS_DSTS        at 16#8# range 0 .. 31;
      OTG_HS_DIEPMSK     at 16#10# range 0 .. 31;
      OTG_HS_DOEPMSK     at 16#14# range 0 .. 31;
      OTG_HS_DAINT       at 16#18# range 0 .. 31;
      OTG_HS_DAINTMSK    at 16#1C# range 0 .. 31;
      OTG_HS_DVBUSDIS    at 16#28# range 0 .. 31;
      OTG_HS_DVBUSPULSE  at 16#2C# range 0 .. 31;
      OTG_HS_DTHRCTL     at 16#30# range 0 .. 31;
      OTG_HS_DIEPEMPMSK  at 16#34# range 0 .. 31;
      OTG_HS_DEACHINT    at 16#38# range 0 .. 31;
      OTG_HS_DEACHINTMSK at 16#3C# range 0 .. 31;
      OTG_HS_DIEPCTL0    at 16#100# range 0 .. 31;
      OTG_HS_DIEPINT0    at 16#108# range 0 .. 31;
      OTG_HS_DIEPTSIZ0   at 16#110# range 0 .. 31;
      OTG_HS_DIEPDMA1    at 16#114# range 0 .. 31;
      OTG_HS_DTXFSTS0    at 16#118# range 0 .. 31;
      OTG_HS_DIEPCTL1    at 16#120# range 0 .. 31;
      OTG_HS_DIEPINT1    at 16#128# range 0 .. 31;
      OTG_HS_DIEPTSIZ1   at 16#130# range 0 .. 31;
      OTG_HS_DIEPDMA2    at 16#134# range 0 .. 31;
      OTG_HS_DTXFSTS1    at 16#138# range 0 .. 31;
      OTG_HS_DIEPCTL2    at 16#140# range 0 .. 31;
      OTG_HS_DIEPINT2    at 16#148# range 0 .. 31;
      OTG_HS_DIEPTSIZ2   at 16#150# range 0 .. 31;
      OTG_HS_DIEPDMA3    at 16#154# range 0 .. 31;
      OTG_HS_DTXFSTS2    at 16#158# range 0 .. 31;
      OTG_HS_DIEPCTL3    at 16#160# range 0 .. 31;
      OTG_HS_DIEPINT3    at 16#168# range 0 .. 31;
      OTG_HS_DIEPTSIZ3   at 16#170# range 0 .. 31;
      OTG_HS_DIEPDMA4    at 16#174# range 0 .. 31;
      OTG_HS_DTXFSTS3    at 16#178# range 0 .. 31;
      OTG_HS_DIEPCTL4    at 16#180# range 0 .. 31;
      OTG_HS_DIEPINT4    at 16#188# range 0 .. 31;
      OTG_HS_DIEPTSIZ4   at 16#190# range 0 .. 31;
      OTG_HS_DIEPDMA5    at 16#194# range 0 .. 31;
      OTG_HS_DTXFSTS4    at 16#198# range 0 .. 31;
      OTG_HS_DTXFSTS6    at 16#1A4# range 0 .. 31;
      OTG_HS_DTXFSTS7    at 16#1AC# range 0 .. 31;
      OTG_HS_DIEPTSIZ5   at 16#1B0# range 0 .. 31;
      OTG_HS_DTXFSTS5    at 16#1B8# range 0 .. 31;
      OTG_HS_DIEPCTL6    at 16#1C0# range 0 .. 31;
      OTG_HS_DIEPINT6    at 16#1C8# range 0 .. 31;
      OTG_HS_DIEPCTL7    at 16#1E0# range 0 .. 31;
      OTG_HS_DIEPINT7    at 16#1E8# range 0 .. 31;
      OTG_HS_DOEPCTL0    at 16#300# range 0 .. 31;
      OTG_HS_DOEPINT0    at 16#308# range 0 .. 31;
      OTG_HS_DOEPTSIZ0   at 16#310# range 0 .. 31;
      OTG_HS_DOEPCTL1    at 16#320# range 0 .. 31;
      OTG_HS_DOEPINT1    at 16#328# range 0 .. 31;
      OTG_HS_DOEPTSIZ1   at 16#330# range 0 .. 31;
      OTG_HS_DOEPCTL2    at 16#340# range 0 .. 31;
      OTG_HS_DOEPINT2    at 16#348# range 0 .. 31;
      OTG_HS_DOEPTSIZ2   at 16#350# range 0 .. 31;
      OTG_HS_DOEPCTL3    at 16#360# range 0 .. 31;
      OTG_HS_DOEPINT3    at 16#368# range 0 .. 31;
      OTG_HS_DOEPTSIZ3   at 16#370# range 0 .. 31;
      OTG_HS_DOEPCTL4    at 16#380# range 0 .. 31;
      OTG_HS_DOEPINT4    at 16#388# range 0 .. 31;
      OTG_HS_DOEPTSIZ4   at 16#390# range 0 .. 31;
      OTG_HS_DOEPCTL5    at 16#3A0# range 0 .. 31;
      OTG_HS_DOEPINT5    at 16#3A8# range 0 .. 31;
      OTG_HS_DOEPTSIZ5   at 16#3B0# range 0 .. 31;
      OTG_HS_DOEPCTL6    at 16#3C0# range 0 .. 31;
      OTG_HS_DOEPINT6    at 16#3C8# range 0 .. 31;
      OTG_HS_DOEPTSIZ6   at 16#3D0# range 0 .. 31;
      OTG_HS_DOEPCTL7    at 16#3E0# range 0 .. 31;
      OTG_HS_DOEPINT7    at 16#3E8# range 0 .. 31;
      OTG_HS_DOEPTSIZ7   at 16#3F0# range 0 .. 31;
      OTG_HS_DIEPCTL5    at 16#1A0# range 0 .. 31;
      OTG_HS_DIEPTSIZ6   at 16#1A0# range 0 .. 31;
      OTG_HS_DIEPINT5    at 16#1A8# range 0 .. 31;
      OTG_HS_DIEPTSIZ7   at 16#1A8# range 0 .. 31;
   end record;

   --  USB 1 on the go high speed
   OTG1_HS_DEVICE_Periph : aliased OTG1_HS_DEVICE_Peripheral
     with Import, Address => OTG1_HS_DEVICE_Base;

   --  USB 1 on the go high speed
   OTG2_HS_DEVICE_Periph : aliased OTG1_HS_DEVICE_Peripheral
     with Import, Address => OTG2_HS_DEVICE_Base;

   type OTG1_HS_GLOBAL_Disc is
     (Host,
      Device,
      HNPTXFSIZ_Host,
      DIEPTXF0_Device);

   --  USB 1 on the go high speed
   type OTG1_HS_GLOBAL_Peripheral
     (Discriminent : OTG1_HS_GLOBAL_Disc := Host)
   is record
      --  OTG_HS control and status register
      OTG_HS_GOTGCTL         : aliased OTG_HS_GOTGCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_GOTGCTL);
      --  OTG_HS interrupt register
      OTG_HS_GOTGINT         : aliased OTG_HS_GOTGINT_Register;
      pragma Volatile_Full_Access (OTG_HS_GOTGINT);
      --  OTG_HS AHB configuration register
      OTG_HS_GAHBCFG         : aliased OTG_HS_GAHBCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_GAHBCFG);
      --  OTG_HS USB configuration register
      OTG_HS_GUSBCFG         : aliased OTG_HS_GUSBCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_GUSBCFG);
      --  OTG_HS reset register
      OTG_HS_GRSTCTL         : aliased OTG_HS_GRSTCTL_Register;
      pragma Volatile_Full_Access (OTG_HS_GRSTCTL);
      --  OTG_HS core interrupt register
      OTG_HS_GINTSTS         : aliased OTG_HS_GINTSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_GINTSTS);
      --  OTG_HS interrupt mask register
      OTG_HS_GINTMSK         : aliased OTG_HS_GINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_GINTMSK);
      --  OTG_HS Receive FIFO size register
      OTG_HS_GRXFSIZ         : aliased OTG_HS_GRXFSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_GRXFSIZ);
      --  OTG_HS nonperiodic transmit FIFO/queue status register
      OTG_HS_GNPTXSTS        : aliased OTG_HS_GNPTXSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_GNPTXSTS);
      --  OTG_HS general core configuration register
      OTG_HS_GCCFG           : aliased OTG_HS_GCCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_GCCFG);
      --  OTG_HS core ID register
      OTG_HS_CID             : aliased A0B.Types.SVD.UInt32;
      --  OTG core LPM configuration register
      OTG_HS_GLPMCFG         : aliased OTG_HS_GLPMCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_GLPMCFG);
      --  OTG_HS Host periodic transmit FIFO size register
      OTG_HS_HPTXFSIZ        : aliased OTG_HS_HPTXFSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HPTXFSIZ);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF1        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF1);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF2        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF2);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF3        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF3);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF4        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF4);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF5        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF5);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF6        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF6);
      OTG_DIEPTXF8           : aliased OTG_DIEPTXF8_Register;
      pragma Volatile_Full_Access (OTG_DIEPTXF8);
      --  OTG_HS device IN endpoint transmit FIFO size register
      OTG_HS_DIEPTXF7        : aliased OTG_HS_DIEPTXF_Register;
      pragma Volatile_Full_Access (OTG_HS_DIEPTXF7);
      case Discriminent is
         when Host =>
            --  OTG_HS Receive status debug read register (host mode)
            OTG_HS_GRXSTSR_Host : aliased OTG_HS_GRXSTSR_Host_Register;
            pragma Volatile_Full_Access (OTG_HS_GRXSTSR_Host);
            --  OTG_HS status read and pop register (host mode)
            OTG_HS_GRXSTSP_Host : aliased OTG_HS_GRXSTSP_Host_Register;
            pragma Volatile_Full_Access (OTG_HS_GRXSTSP_Host);
         when Device =>
            --  OTG_HS Receive status debug read register (peripheral mode
            --  mode)
            OTG_HS_GRXSTSR_Device : aliased OTG_HS_GRXSTSR_Device_Register;
            pragma Volatile_Full_Access (OTG_HS_GRXSTSR_Device);
            --  OTG_HS status read and pop register (peripheral mode)
            OTG_HS_GRXSTSP_Device : aliased OTG_HS_GRXSTSP_Device_Register;
            pragma Volatile_Full_Access (OTG_HS_GRXSTSP_Device);
         when HNPTXFSIZ_Host =>
            --  OTG_HS nonperiodic transmit FIFO size register (host mode)
            OTG_HS_HNPTXFSIZ_Host : aliased OTG_HS_HNPTXFSIZ_Host_Register;
            pragma Volatile_Full_Access (OTG_HS_HNPTXFSIZ_Host);
         when DIEPTXF0_Device =>
            --  Endpoint 0 transmit FIFO size (peripheral mode)
            OTG_HS_DIEPTXF0_Device : aliased OTG_HS_DIEPTXF0_Device_Register;
            pragma Volatile_Full_Access (OTG_HS_DIEPTXF0_Device);
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTG1_HS_GLOBAL_Peripheral use record
      OTG_HS_GOTGCTL         at 16#0# range 0 .. 31;
      OTG_HS_GOTGINT         at 16#4# range 0 .. 31;
      OTG_HS_GAHBCFG         at 16#8# range 0 .. 31;
      OTG_HS_GUSBCFG         at 16#C# range 0 .. 31;
      OTG_HS_GRSTCTL         at 16#10# range 0 .. 31;
      OTG_HS_GINTSTS         at 16#14# range 0 .. 31;
      OTG_HS_GINTMSK         at 16#18# range 0 .. 31;
      OTG_HS_GRXFSIZ         at 16#24# range 0 .. 31;
      OTG_HS_GNPTXSTS        at 16#2C# range 0 .. 31;
      OTG_HS_GCCFG           at 16#38# range 0 .. 31;
      OTG_HS_CID             at 16#3C# range 0 .. 31;
      OTG_HS_GLPMCFG         at 16#54# range 0 .. 31;
      OTG_HS_HPTXFSIZ        at 16#100# range 0 .. 31;
      OTG_HS_DIEPTXF1        at 16#104# range 0 .. 31;
      OTG_HS_DIEPTXF2        at 16#108# range 0 .. 31;
      OTG_HS_DIEPTXF3        at 16#10C# range 0 .. 31;
      OTG_HS_DIEPTXF4        at 16#110# range 0 .. 31;
      OTG_HS_DIEPTXF5        at 16#114# range 0 .. 31;
      OTG_HS_DIEPTXF6        at 16#118# range 0 .. 31;
      OTG_DIEPTXF8           at 16#120# range 0 .. 31;
      OTG_HS_DIEPTXF7        at 16#12C# range 0 .. 31;
      OTG_HS_GRXSTSR_Host    at 16#1C# range 0 .. 31;
      OTG_HS_GRXSTSP_Host    at 16#20# range 0 .. 31;
      OTG_HS_GRXSTSR_Device  at 16#1C# range 0 .. 31;
      OTG_HS_GRXSTSP_Device  at 16#20# range 0 .. 31;
      OTG_HS_HNPTXFSIZ_Host  at 16#28# range 0 .. 31;
      OTG_HS_DIEPTXF0_Device at 16#28# range 0 .. 31;
   end record;

   --  USB 1 on the go high speed
   OTG1_HS_GLOBAL_Periph : aliased OTG1_HS_GLOBAL_Peripheral
     with Import, Address => OTG1_HS_GLOBAL_Base;

   --  USB 1 on the go high speed
   type OTG1_HS_HOST_Peripheral is record
      --  OTG_HS host configuration register
      OTG_HS_HCFG       : aliased OTG_HS_HCFG_Register;
      pragma Volatile_Full_Access (OTG_HS_HCFG);
      --  OTG_HS Host frame interval register
      OTG_HS_HFIR       : aliased OTG_HS_HFIR_Register;
      pragma Volatile_Full_Access (OTG_HS_HFIR);
      --  OTG_HS host frame number/frame time remaining register
      OTG_HS_HFNUM      : aliased OTG_HS_HFNUM_Register;
      pragma Volatile_Full_Access (OTG_HS_HFNUM);
      --  OTG_HS_Host periodic transmit FIFO/queue status register
      OTG_HS_HPTXSTS    : aliased OTG_HS_HPTXSTS_Register;
      pragma Volatile_Full_Access (OTG_HS_HPTXSTS);
      --  OTG_HS Host all channels interrupt register
      OTG_HS_HAINT      : aliased OTG_HS_HAINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HAINT);
      --  OTG_HS host all channels interrupt mask register
      OTG_HS_HAINTMSK   : aliased OTG_HS_HAINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HAINTMSK);
      --  OTG_HS host port control and status register
      OTG_HS_HPRT       : aliased OTG_HS_HPRT_Register;
      pragma Volatile_Full_Access (OTG_HS_HPRT);
      --  OTG_HS host channel-0 characteristics register
      OTG_HS_HCCHAR0    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR0);
      --  OTG_HS host channel-0 split control register
      OTG_HS_HCSPLT0    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT0);
      --  OTG_HS host channel-11 interrupt register
      OTG_HS_HCINT0     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT0);
      --  OTG_HS host channel-11 interrupt mask register
      OTG_HS_HCINTMSK0  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK0);
      --  OTG_HS host channel-11 transfer size register
      OTG_HS_HCTSIZ0    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ0);
      --  OTG_HS host channel-0 DMA address register
      OTG_HS_HCDMA0     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-1 characteristics register
      OTG_HS_HCCHAR1    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR1);
      --  OTG_HS host channel-1 split control register
      OTG_HS_HCSPLT1    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT1);
      --  OTG_HS host channel-1 interrupt register
      OTG_HS_HCINT1     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT1);
      --  OTG_HS host channel-1 interrupt mask register
      OTG_HS_HCINTMSK1  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK1);
      --  OTG_HS host channel-1 transfer size register
      OTG_HS_HCTSIZ1    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ1);
      --  OTG_HS host channel-1 DMA address register
      OTG_HS_HCDMA1     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-2 characteristics register
      OTG_HS_HCCHAR2    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR2);
      --  OTG_HS host channel-2 split control register
      OTG_HS_HCSPLT2    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT2);
      --  OTG_HS host channel-2 interrupt register
      OTG_HS_HCINT2     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT2);
      --  OTG_HS host channel-2 interrupt mask register
      OTG_HS_HCINTMSK2  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK2);
      --  OTG_HS host channel-2 transfer size register
      OTG_HS_HCTSIZ2    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ2);
      --  OTG_HS host channel-2 DMA address register
      OTG_HS_HCDMA2     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-3 characteristics register
      OTG_HS_HCCHAR3    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR3);
      --  OTG_HS host channel-3 split control register
      OTG_HS_HCSPLT3    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT3);
      --  OTG_HS host channel-3 interrupt register
      OTG_HS_HCINT3     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT3);
      --  OTG_HS host channel-3 interrupt mask register
      OTG_HS_HCINTMSK3  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK3);
      --  OTG_HS host channel-3 transfer size register
      OTG_HS_HCTSIZ3    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ3);
      --  OTG_HS host channel-3 DMA address register
      OTG_HS_HCDMA3     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-4 characteristics register
      OTG_HS_HCCHAR4    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR4);
      --  OTG_HS host channel-4 split control register
      OTG_HS_HCSPLT4    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT4);
      --  OTG_HS host channel-4 interrupt register
      OTG_HS_HCINT4     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT4);
      --  OTG_HS host channel-4 interrupt mask register
      OTG_HS_HCINTMSK4  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK4);
      --  OTG_HS host channel-4 transfer size register
      OTG_HS_HCTSIZ4    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ4);
      --  OTG_HS host channel-4 DMA address register
      OTG_HS_HCDMA4     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-5 characteristics register
      OTG_HS_HCCHAR5    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR5);
      --  OTG_HS host channel-5 split control register
      OTG_HS_HCSPLT5    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT5);
      --  OTG_HS host channel-5 interrupt register
      OTG_HS_HCINT5     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT5);
      --  OTG_HS host channel-5 interrupt mask register
      OTG_HS_HCINTMSK5  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK5);
      --  OTG_HS host channel-5 transfer size register
      OTG_HS_HCTSIZ5    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ5);
      --  OTG_HS host channel-5 DMA address register
      OTG_HS_HCDMA5     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-6 characteristics register
      OTG_HS_HCCHAR6    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR6);
      --  OTG_HS host channel-6 split control register
      OTG_HS_HCSPLT6    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT6);
      --  OTG_HS host channel-6 interrupt register
      OTG_HS_HCINT6     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT6);
      --  OTG_HS host channel-6 interrupt mask register
      OTG_HS_HCINTMSK6  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK6);
      --  OTG_HS host channel-6 transfer size register
      OTG_HS_HCTSIZ6    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ6);
      --  OTG_HS host channel-6 DMA address register
      OTG_HS_HCDMA6     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-7 characteristics register
      OTG_HS_HCCHAR7    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR7);
      --  OTG_HS host channel-7 split control register
      OTG_HS_HCSPLT7    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT7);
      --  OTG_HS host channel-7 interrupt register
      OTG_HS_HCINT7     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT7);
      --  OTG_HS host channel-7 interrupt mask register
      OTG_HS_HCINTMSK7  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK7);
      --  OTG_HS host channel-7 transfer size register
      OTG_HS_HCTSIZ7    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ7);
      --  OTG_HS host channel-7 DMA address register
      OTG_HS_HCDMA7     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-8 characteristics register
      OTG_HS_HCCHAR8    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR8);
      --  OTG_HS host channel-8 split control register
      OTG_HS_HCSPLT8    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT8);
      --  OTG_HS host channel-8 interrupt register
      OTG_HS_HCINT8     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT8);
      --  OTG_HS host channel-8 interrupt mask register
      OTG_HS_HCINTMSK8  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK8);
      --  OTG_HS host channel-8 transfer size register
      OTG_HS_HCTSIZ8    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ8);
      --  OTG_HS host channel-8 DMA address register
      OTG_HS_HCDMA8     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-9 characteristics register
      OTG_HS_HCCHAR9    : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR9);
      --  OTG_HS host channel-9 split control register
      OTG_HS_HCSPLT9    : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT9);
      --  OTG_HS host channel-9 interrupt register
      OTG_HS_HCINT9     : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT9);
      --  OTG_HS host channel-9 interrupt mask register
      OTG_HS_HCINTMSK9  : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK9);
      --  OTG_HS host channel-9 transfer size register
      OTG_HS_HCTSIZ9    : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ9);
      --  OTG_HS host channel-9 DMA address register
      OTG_HS_HCDMA9     : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-10 characteristics register
      OTG_HS_HCCHAR10   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR10);
      --  OTG_HS host channel-10 split control register
      OTG_HS_HCSPLT10   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT10);
      --  OTG_HS host channel-10 interrupt register
      OTG_HS_HCINT10    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT10);
      --  OTG_HS host channel-10 interrupt mask register
      OTG_HS_HCINTMSK10 : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK10);
      --  OTG_HS host channel-10 transfer size register
      OTG_HS_HCTSIZ10   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ10);
      --  OTG_HS host channel-10 DMA address register
      OTG_HS_HCDMA10    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-11 characteristics register
      OTG_HS_HCCHAR11   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR11);
      --  OTG_HS host channel-11 split control register
      OTG_HS_HCSPLT11   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT11);
      --  OTG_HS host channel-11 interrupt register
      OTG_HS_HCINT11    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT11);
      --  OTG_HS host channel-11 interrupt mask register
      OTG_HS_HCINTMSK11 : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK11);
      --  OTG_HS host channel-11 transfer size register
      OTG_HS_HCTSIZ11   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ11);
      --  OTG_HS host channel-11 DMA address register
      OTG_HS_HCDMA11    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-12 characteristics register
      OTG_HS_HCCHAR12   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR12);
      --  OTG_HS host channel-12 split control register
      OTG_HS_HCSPLT12   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT12);
      --  OTG_HS host channel-12 interrupt register
      OTG_HS_HCINT12    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT12);
      --  OTG_HS host channel-12 interrupt mask register
      OTG_HS_HCINTMSK12 : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK12);
      --  OTG_HS host channel-12 transfer size register
      OTG_HS_HCTSIZ12   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ12);
      --  OTG_HS host channel-12 DMA address register
      OTG_HS_HCDMA12    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-13 characteristics register
      OTG_HS_HCCHAR13   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR13);
      --  OTG_HS host channel-13 split control register
      OTG_HS_HCSPLT13   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT13);
      --  OTG_HS host channel-13 interrupt register
      OTG_HS_HCINT13    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT13);
      --  OTG_HS host channel-13 interrupt mask register
      OTG_HS_HCINTMSK13 : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK13);
      --  OTG_HS host channel-13 transfer size register
      OTG_HS_HCTSIZ13   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ13);
      --  OTG_HS host channel-13 DMA address register
      OTG_HS_HCDMA13    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-14 characteristics register
      OTG_HS_HCCHAR14   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR14);
      --  OTG_HS host channel-14 split control register
      OTG_HS_HCSPLT14   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT14);
      --  OTG_HS host channel-14 interrupt register
      OTG_HS_HCINT14    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT14);
      --  OTG_HS host channel-14 interrupt mask register
      OTG_HS_HCINTMSK14 : aliased OTG_HS_HCINTMSK_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK14);
      --  OTG_HS host channel-14 transfer size register
      OTG_HS_HCTSIZ14   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ14);
      --  OTG_HS host channel-14 DMA address register
      OTG_HS_HCDMA14    : aliased A0B.Types.SVD.UInt32;
      --  OTG_HS host channel-15 characteristics register
      OTG_HS_HCCHAR15   : aliased OTG_HS_HCCHAR_Register;
      pragma Volatile_Full_Access (OTG_HS_HCCHAR15);
      --  OTG_HS host channel-15 split control register
      OTG_HS_HCSPLT15   : aliased OTG_HS_HCSPLT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCSPLT15);
      --  OTG_HS host channel-15 interrupt register
      OTG_HS_HCINT15    : aliased OTG_HS_HCINT_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINT15);
      --  OTG_HS host channel-15 interrupt mask register
      OTG_HS_HCINTMSK15 : aliased OTG_HS_HCINTMSK15_Register;
      pragma Volatile_Full_Access (OTG_HS_HCINTMSK15);
      --  OTG_HS host channel-15 transfer size register
      OTG_HS_HCTSIZ15   : aliased OTG_HS_HCTSIZ_Register;
      pragma Volatile_Full_Access (OTG_HS_HCTSIZ15);
      --  OTG_HS host channel-15 DMA address register
      OTG_HS_HCDMA15    : aliased A0B.Types.SVD.UInt32;
   end record
     with Volatile;

   for OTG1_HS_HOST_Peripheral use record
      OTG_HS_HCFG       at 16#0# range 0 .. 31;
      OTG_HS_HFIR       at 16#4# range 0 .. 31;
      OTG_HS_HFNUM      at 16#8# range 0 .. 31;
      OTG_HS_HPTXSTS    at 16#10# range 0 .. 31;
      OTG_HS_HAINT      at 16#14# range 0 .. 31;
      OTG_HS_HAINTMSK   at 16#18# range 0 .. 31;
      OTG_HS_HPRT       at 16#40# range 0 .. 31;
      OTG_HS_HCCHAR0    at 16#100# range 0 .. 31;
      OTG_HS_HCSPLT0    at 16#104# range 0 .. 31;
      OTG_HS_HCINT0     at 16#108# range 0 .. 31;
      OTG_HS_HCINTMSK0  at 16#10C# range 0 .. 31;
      OTG_HS_HCTSIZ0    at 16#110# range 0 .. 31;
      OTG_HS_HCDMA0     at 16#114# range 0 .. 31;
      OTG_HS_HCCHAR1    at 16#120# range 0 .. 31;
      OTG_HS_HCSPLT1    at 16#124# range 0 .. 31;
      OTG_HS_HCINT1     at 16#128# range 0 .. 31;
      OTG_HS_HCINTMSK1  at 16#12C# range 0 .. 31;
      OTG_HS_HCTSIZ1    at 16#130# range 0 .. 31;
      OTG_HS_HCDMA1     at 16#134# range 0 .. 31;
      OTG_HS_HCCHAR2    at 16#140# range 0 .. 31;
      OTG_HS_HCSPLT2    at 16#144# range 0 .. 31;
      OTG_HS_HCINT2     at 16#148# range 0 .. 31;
      OTG_HS_HCINTMSK2  at 16#14C# range 0 .. 31;
      OTG_HS_HCTSIZ2    at 16#150# range 0 .. 31;
      OTG_HS_HCDMA2     at 16#154# range 0 .. 31;
      OTG_HS_HCCHAR3    at 16#160# range 0 .. 31;
      OTG_HS_HCSPLT3    at 16#164# range 0 .. 31;
      OTG_HS_HCINT3     at 16#168# range 0 .. 31;
      OTG_HS_HCINTMSK3  at 16#16C# range 0 .. 31;
      OTG_HS_HCTSIZ3    at 16#170# range 0 .. 31;
      OTG_HS_HCDMA3     at 16#174# range 0 .. 31;
      OTG_HS_HCCHAR4    at 16#180# range 0 .. 31;
      OTG_HS_HCSPLT4    at 16#184# range 0 .. 31;
      OTG_HS_HCINT4     at 16#188# range 0 .. 31;
      OTG_HS_HCINTMSK4  at 16#18C# range 0 .. 31;
      OTG_HS_HCTSIZ4    at 16#190# range 0 .. 31;
      OTG_HS_HCDMA4     at 16#194# range 0 .. 31;
      OTG_HS_HCCHAR5    at 16#1A0# range 0 .. 31;
      OTG_HS_HCSPLT5    at 16#1A4# range 0 .. 31;
      OTG_HS_HCINT5     at 16#1A8# range 0 .. 31;
      OTG_HS_HCINTMSK5  at 16#1AC# range 0 .. 31;
      OTG_HS_HCTSIZ5    at 16#1B0# range 0 .. 31;
      OTG_HS_HCDMA5     at 16#1B4# range 0 .. 31;
      OTG_HS_HCCHAR6    at 16#1C0# range 0 .. 31;
      OTG_HS_HCSPLT6    at 16#1C4# range 0 .. 31;
      OTG_HS_HCINT6     at 16#1C8# range 0 .. 31;
      OTG_HS_HCINTMSK6  at 16#1CC# range 0 .. 31;
      OTG_HS_HCTSIZ6    at 16#1D0# range 0 .. 31;
      OTG_HS_HCDMA6     at 16#1D4# range 0 .. 31;
      OTG_HS_HCCHAR7    at 16#1E0# range 0 .. 31;
      OTG_HS_HCSPLT7    at 16#1E4# range 0 .. 31;
      OTG_HS_HCINT7     at 16#1E8# range 0 .. 31;
      OTG_HS_HCINTMSK7  at 16#1EC# range 0 .. 31;
      OTG_HS_HCTSIZ7    at 16#1F0# range 0 .. 31;
      OTG_HS_HCDMA7     at 16#1F4# range 0 .. 31;
      OTG_HS_HCCHAR8    at 16#200# range 0 .. 31;
      OTG_HS_HCSPLT8    at 16#204# range 0 .. 31;
      OTG_HS_HCINT8     at 16#208# range 0 .. 31;
      OTG_HS_HCINTMSK8  at 16#20C# range 0 .. 31;
      OTG_HS_HCTSIZ8    at 16#210# range 0 .. 31;
      OTG_HS_HCDMA8     at 16#214# range 0 .. 31;
      OTG_HS_HCCHAR9    at 16#220# range 0 .. 31;
      OTG_HS_HCSPLT9    at 16#224# range 0 .. 31;
      OTG_HS_HCINT9     at 16#228# range 0 .. 31;
      OTG_HS_HCINTMSK9  at 16#22C# range 0 .. 31;
      OTG_HS_HCTSIZ9    at 16#230# range 0 .. 31;
      OTG_HS_HCDMA9     at 16#234# range 0 .. 31;
      OTG_HS_HCCHAR10   at 16#240# range 0 .. 31;
      OTG_HS_HCSPLT10   at 16#244# range 0 .. 31;
      OTG_HS_HCINT10    at 16#248# range 0 .. 31;
      OTG_HS_HCINTMSK10 at 16#24C# range 0 .. 31;
      OTG_HS_HCTSIZ10   at 16#250# range 0 .. 31;
      OTG_HS_HCDMA10    at 16#254# range 0 .. 31;
      OTG_HS_HCCHAR11   at 16#260# range 0 .. 31;
      OTG_HS_HCSPLT11   at 16#264# range 0 .. 31;
      OTG_HS_HCINT11    at 16#268# range 0 .. 31;
      OTG_HS_HCINTMSK11 at 16#26C# range 0 .. 31;
      OTG_HS_HCTSIZ11   at 16#270# range 0 .. 31;
      OTG_HS_HCDMA11    at 16#274# range 0 .. 31;
      OTG_HS_HCCHAR12   at 16#278# range 0 .. 31;
      OTG_HS_HCSPLT12   at 16#27C# range 0 .. 31;
      OTG_HS_HCINT12    at 16#280# range 0 .. 31;
      OTG_HS_HCINTMSK12 at 16#284# range 0 .. 31;
      OTG_HS_HCTSIZ12   at 16#288# range 0 .. 31;
      OTG_HS_HCDMA12    at 16#28C# range 0 .. 31;
      OTG_HS_HCCHAR13   at 16#290# range 0 .. 31;
      OTG_HS_HCSPLT13   at 16#294# range 0 .. 31;
      OTG_HS_HCINT13    at 16#298# range 0 .. 31;
      OTG_HS_HCINTMSK13 at 16#29C# range 0 .. 31;
      OTG_HS_HCTSIZ13   at 16#2A0# range 0 .. 31;
      OTG_HS_HCDMA13    at 16#2A4# range 0 .. 31;
      OTG_HS_HCCHAR14   at 16#2A8# range 0 .. 31;
      OTG_HS_HCSPLT14   at 16#2AC# range 0 .. 31;
      OTG_HS_HCINT14    at 16#2B0# range 0 .. 31;
      OTG_HS_HCINTMSK14 at 16#2B4# range 0 .. 31;
      OTG_HS_HCTSIZ14   at 16#2B8# range 0 .. 31;
      OTG_HS_HCDMA14    at 16#2BC# range 0 .. 31;
      OTG_HS_HCCHAR15   at 16#2C0# range 0 .. 31;
      OTG_HS_HCSPLT15   at 16#2C4# range 0 .. 31;
      OTG_HS_HCINT15    at 16#2C8# range 0 .. 31;
      OTG_HS_HCINTMSK15 at 16#2CC# range 0 .. 31;
      OTG_HS_HCTSIZ15   at 16#2D0# range 0 .. 31;
      OTG_HS_HCDMA15    at 16#2D4# range 0 .. 31;
   end record;

   --  USB 1 on the go high speed
   OTG1_HS_HOST_Periph : aliased OTG1_HS_HOST_Peripheral
     with Import, Address => OTG1_HS_HOST_Base;

   --  USB 1 on the go high speed
   OTG2_HS_HOST_Periph : aliased OTG1_HS_HOST_Peripheral
     with Import, Address => OTG2_HS_HOST_Base;

   --  USB 1 on the go high speed
   type OTG1_HS_PWRCLK_Peripheral is record
      --  Power and clock gating control register
      OTG_HS_PCGCR : aliased OTG_HS_PCGCR_Register;
      pragma Volatile_Full_Access (OTG_HS_PCGCR);
   end record
     with Volatile;

   for OTG1_HS_PWRCLK_Peripheral use record
      OTG_HS_PCGCR at 0 range 0 .. 31;
   end record;

   --  USB 1 on the go high speed
   OTG1_HS_PWRCLK_Periph : aliased OTG1_HS_PWRCLK_Peripheral
     with Import, Address => OTG1_HS_PWRCLK_Base;

   --  USB 1 on the go high speed
   OTG2_HS_PWRCLK_Periph : aliased OTG1_HS_PWRCLK_Peripheral
     with Import, Address => OTG2_HS_PWRCLK_Base;

end A0B.STM32H723.SVD.USB_OTG_HS;
