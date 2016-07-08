------------------------------------------------------------
-- VHDL Sheet1
-- 2016 3 19 0 21 55
-- Created By "Altium Designer VHDL Generator"
-- "Copyright (c) 2002-2004 Altium Limited"
------------------------------------------------------------

------------------------------------------------------------
-- VHDL Sheet1
------------------------------------------------------------

Library IEEE;
Use     IEEE.std_logic_1164.all;

Entity Sheet1 Is
  attribute MacroCell : boolean;

End Sheet1;
------------------------------------------------------------

------------------------------------------------------------
architecture structure of Sheet1 is
   Component X_8_HEADER
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC;
        X_3 : inout STD_LOGIC;
        X_4 : inout STD_LOGIC;
        X_5 : inout STD_LOGIC;
        X_6 : inout STD_LOGIC;
        X_7 : inout STD_LOGIC;
        X_8 : inout STD_LOGIC
      );
   End Component;

   Component X_89C51
      port
      (
        X_1  : inout STD_LOGIC;
        X_2  : inout STD_LOGIC;
        X_3  : inout STD_LOGIC;
        X_4  : inout STD_LOGIC;
        X_5  : inout STD_LOGIC;
        X_6  : inout STD_LOGIC;
        X_7  : inout STD_LOGIC;
        X_8  : inout STD_LOGIC;
        X_9  : inout STD_LOGIC;
        X_10 : inout STD_LOGIC;
        X_11 : inout STD_LOGIC;
        X_12 : inout STD_LOGIC;
        X_13 : inout STD_LOGIC;
        X_14 : inout STD_LOGIC;
        X_15 : inout STD_LOGIC;
        X_16 : inout STD_LOGIC;
        X_17 : inout STD_LOGIC;
        X_18 : inout STD_LOGIC;
        X_19 : inout STD_LOGIC;
        X_20 : inout STD_LOGIC;
        X_21 : inout STD_LOGIC;
        X_22 : inout STD_LOGIC;
        X_23 : inout STD_LOGIC;
        X_24 : inout STD_LOGIC;
        X_25 : inout STD_LOGIC;
        X_26 : inout STD_LOGIC;
        X_27 : inout STD_LOGIC;
        X_28 : inout STD_LOGIC;
        X_29 : inout STD_LOGIC;
        X_30 : inout STD_LOGIC;
        X_31 : inout STD_LOGIC;
        X_32 : inout STD_LOGIC;
        X_33 : inout STD_LOGIC;
        X_34 : inout STD_LOGIC;
        X_35 : inout STD_LOGIC;
        X_36 : inout STD_LOGIC;
        X_37 : inout STD_LOGIC;
        X_38 : inout STD_LOGIC;
        X_39 : inout STD_LOGIC;
        X_40 : inout STD_LOGIC
      );
   End Component;

   Component LED4_LWQ
      port
      (
        X_1  : inout STD_LOGIC;
        X_2  : inout STD_LOGIC;
        X_3  : inout STD_LOGIC;
        X_4  : inout STD_LOGIC;
        X_5  : inout STD_LOGIC;
        X_6  : inout STD_LOGIC;
        X_7  : inout STD_LOGIC;
        X_8  : inout STD_LOGIC;
        X_9  : inout STD_LOGIC;
        X_10 : inout STD_LOGIC;
        X_11 : inout STD_LOGIC;
        X_12 : inout STD_LOGIC
      );
   End Component;

   Component NPN
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC;
        X_3 : inout STD_LOGIC
      );
   End Component;

   Component RES
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;

   Component RES2
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;

   Component XTAL
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;

   Component X
      port
      (
        A : inout STD_LOGIC;
        K : inout STD_LOGIC
      );
   End Component;

   Component X
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;

   Component X
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;

   Component X
      port
      (
        X_1 : inout STD_LOGIC;
        X_2 : inout STD_LOGIC
      );
   End Component;


    Signal NamedSignal_P0_0   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_0
    Signal NamedSignal_P0_1   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_1
    Signal NamedSignal_P0_2   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_2
    Signal NamedSignal_P0_3   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_3
    Signal NamedSignal_P0_4   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_4
    Signal NamedSignal_P0_5   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_5
    Signal NamedSignal_P0_6   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_6
    Signal NamedSignal_P0_7   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P0_7
    Signal NamedSignal_P1_0   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_0
    Signal NamedSignal_P1_1   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_1
    Signal NamedSignal_P1_2   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_2
    Signal NamedSignal_P1_3   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_3
    Signal NamedSignal_P1_4   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_4
    Signal NamedSignal_P1_5   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_5
    Signal NamedSignal_P1_6   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_6
    Signal NamedSignal_P1_7   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P1_7
    Signal NamedSignal_P2_0   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P2_0
    Signal NamedSignal_P2_1   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P2_1
    Signal NamedSignal_P2_2   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P2_2
    Signal NamedSignal_P2_3   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=P2_3
    Signal PinSignal_89c51_18 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Net89c51_18
    Signal PinSignal_89c51_19 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Net89c51_19
    Signal PinSignal_89c51_40 : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Net89c51_40
    Signal PinSignal_89c51_9  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Net89c51_9
    Signal PinSignal_C3_2     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetC3_2
    Signal PinSignal_D1_K     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetD1_K
    Signal PinSignal_led4_10  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Netled4_10
    Signal PinSignal_led4_11  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Netled4_11
    Signal PinSignal_led4_12  : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Netled4_12
    Signal PinSignal_led4_9   : STD_LOGIC; -- ObjectKind=Net|PrimaryId=Netled4_9
    Signal PinSignal_Q1_3     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetQ1_3
    Signal PinSignal_Q2_3     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetQ2_3
    Signal PinSignal_Q3_3     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetQ3_3
    Signal PinSignal_Q4_3     : STD_LOGIC; -- ObjectKind=Net|PrimaryId=NetQ4_3
    Signal PowerSignal_GND    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=GND
    Signal PowerSignal_VCC    : STD_LOGIC; -- ObjectKind=Net|PrimaryId=VCC

begin
    XTAL : XTAL
      Port Map
      (
        X_1 => PinSignal_89c51_18,
        X_2 => PinSignal_89c51_19
      );

    S9 : X
      Port Map
      (
        X_2 => PinSignal_89c51_9
      );

    S8 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_7
      );

    S7 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_6
      );

    S6 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_5
      );

    S5 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_4
      );

    S4 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_3
      );

    S3 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_2
      );

    S2 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_1
      );

    S1 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => NamedSignal_P1_0
      );

    R6 : RES2
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => PinSignal_C3_2
      );

    R5 : RES
      Port Map
      (
        X_1 => PinSignal_D1_K,
        X_2 => PowerSignal_GND
      );

    R4 : RES
      Port Map
      (
        X_1 => PinSignal_Q4_3,
        X_2 => PowerSignal_VCC
      );

    R3 : RES
      Port Map
      (
        X_1 => PinSignal_Q3_3,
        X_2 => PowerSignal_VCC
      );

    R2 : RES
      Port Map
      (
        X_1 => PinSignal_Q2_3,
        X_2 => PowerSignal_VCC
      );

    R1 : RES
      Port Map
      (
        X_1 => PinSignal_Q1_3,
        X_2 => PowerSignal_VCC
      );

    Q4 : NPN
      Port Map
      (
        X_1 => PinSignal_led4_12,
        X_2 => NamedSignal_P2_3,
        X_3 => PinSignal_Q4_3
      );

    Q3 : NPN
      Port Map
      (
        X_1 => PinSignal_led4_11,
        X_2 => NamedSignal_P2_2,
        X_3 => PinSignal_Q3_3
      );

    Q2 : NPN
      Port Map
      (
        X_1 => PinSignal_led4_10,
        X_2 => NamedSignal_P2_1,
        X_3 => PinSignal_Q2_3
      );

    Q1 : NPN
      Port Map
      (
        X_1 => PinSignal_led4_9,
        X_2 => NamedSignal_P2_0,
        X_3 => PinSignal_Q1_3
      );

    led4 : LED4_LWQ
      Port Map
      (
        X_1  => NamedSignal_P0_0,
        X_2  => NamedSignal_P0_1,
        X_3  => NamedSignal_P0_2,
        X_4  => NamedSignal_P0_3,
        X_5  => NamedSignal_P0_4,
        X_6  => NamedSignal_P0_5,
        X_7  => NamedSignal_P0_6,
        X_8  => NamedSignal_P0_7,
        X_9  => PinSignal_led4_9,
        X_10 => PinSignal_led4_10,
        X_11 => PinSignal_led4_11,
        X_12 => PinSignal_led4_12
      );

    JP1 : X_8_HEADER
      Port Map
      (
        X_1 => NamedSignal_P0_0,
        X_2 => NamedSignal_P0_1,
        X_3 => NamedSignal_P0_2,
        X_4 => NamedSignal_P0_3,
        X_5 => NamedSignal_P0_4,
        X_6 => NamedSignal_P0_5,
        X_7 => NamedSignal_P0_6,
        X_8 => NamedSignal_P0_7
      );

    D1 : X
      Port Map
      (
        A => PinSignal_89c51_40,
        K => PinSignal_D1_K
      );

    C3 : X
      Port Map
      (
        X_1 => PowerSignal_VCC,
        X_2 => PinSignal_C3_2
      );

    C2 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => PinSignal_89c51_19
      );

    C1 : X
      Port Map
      (
        X_1 => PowerSignal_GND,
        X_2 => PinSignal_89c51_18
      );

    X_89c51 : X_89C51
      Port Map
      (
        X_1  => NamedSignal_P1_0,
        X_2  => NamedSignal_P1_1,
        X_3  => NamedSignal_P1_2,
        X_4  => NamedSignal_P1_3,
        X_5  => NamedSignal_P1_4,
        X_6  => NamedSignal_P1_5,
        X_7  => NamedSignal_P1_6,
        X_8  => NamedSignal_P1_7,
        X_9  => PinSignal_89c51_9,
        X_18 => PinSignal_89c51_18,
        X_19 => PinSignal_89c51_19,
        X_21 => NamedSignal_P2_0,
        X_22 => NamedSignal_P2_1,
        X_23 => NamedSignal_P2_2,
        X_24 => NamedSignal_P2_3,
        X_32 => NamedSignal_P0_7,
        X_33 => NamedSignal_P0_6,
        X_34 => NamedSignal_P0_5,
        X_35 => NamedSignal_P0_4,
        X_36 => NamedSignal_P0_3,
        X_37 => NamedSignal_P0_2,
        X_38 => NamedSignal_P0_1,
        X_39 => NamedSignal_P0_0,
        X_40 => PinSignal_89c51_40
      );

    -- Signal Assignments
    ---------------------
    PowerSignal_GND <= '0'; -- ObjectKind=Net|PrimaryId=GND
    PowerSignal_VCC <= '1'; -- ObjectKind=Net|PrimaryId=VCC

end structure;
------------------------------------------------------------

