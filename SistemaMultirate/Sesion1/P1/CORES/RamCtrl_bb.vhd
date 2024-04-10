--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: RamCtrl_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov 22 11:55:59 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm RamCtrl -w -dir netgen/synthesis -ofmt vhdl -sim RamCtrl.ngc RamCtrl_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: RamCtrl.ngc
-- Output file	: D:\dsp\ise147\Release1\TB147\netgen\synthesis\RamCtrl_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: RamCtrl
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RamCtrl is
  Port (
    CLK             : in    STD_LOGIC;
    RST             : in    STD_LOGIC;
    SampleDirOffset : in    STD_LOGIC_VECTOR (23 downto 1);
    SampleLength    : in    STD_LOGIC_VECTOR (23 downto 1);
    GetTick         : in    STD_LOGIC;
    ReadFinish      : out   STD_LOGIC;
    DataOut         : out   STD_LOGIC_VECTOR (15 downto 0);
    RamDB           : inout STD_LOGIC_VECTOR (15 downto 0);
    RamAdr          : out   STD_LOGIC_VECTOR (23 downto 1); 
    RamClk          : out   STD_LOGIC; 
    RamOEn          : out   STD_LOGIC; 
    RamCSn          : out   STD_LOGIC; 
    RamWRn          : out   STD_LOGIC; 
    RamLBn          : out   STD_LOGIC;
    RamUBn          : out   STD_LOGIC;
    RamCre          : out   STD_LOGIC;
    RamADVn         : out   STD_LOGIC;
    FlashRPn        : out   STD_LOGIC
  );
end RamCtrl;


library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

architecture Structure of RamCtrl is
  signal RamEA_1_X_4_o_wide_mux_24_OUT_15_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_14_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_13_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_12_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_11_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_10_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_9_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_8_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_7_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_6_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_5_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_4_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_3_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_2_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_1_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_24_OUT_0_Q : STD_LOGIC; 
  signal RamEA_FSM_FFd1_81 : STD_LOGIC; 
  signal RamEA_FSM_FFd2_82 : STD_LOGIC; 
  signal NlwRenamedSig_OI_ReadFinish : STD_LOGIC; 
  signal RamEA_1_X_4_o_Mux_22_o : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_3_Q : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_2_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_30_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_29_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_28_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_27_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_26_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_25_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_24_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_23_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_22_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_21_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_20_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_19_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_18_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_17_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_16_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_15_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_14_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_13_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_12_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_11_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_10_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_9_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_8_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_7_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_6_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_5_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_4_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_3_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_2_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_1_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_0_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_30_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_29_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_28_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_27_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_26_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_25_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_24_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_23_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_22_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_21_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_20_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_19_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_18_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_17_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_16_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_15_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_14_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_13_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_12_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_11_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_10_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_9_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_8_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_7_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_6_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_5_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_4_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_3_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_2_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_1_Q : STD_LOGIC; 
  signal RamEA_1_X_4_o_wide_mux_25_OUT_0_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_30_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_29_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_28_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_27_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_26_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_25_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_24_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_23_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_22_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_21_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_20_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_19_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_18_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_17_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_16_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_15_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_14_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_13_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_12_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_11_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_10_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_9_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_8_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_7_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_6_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_5_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_4_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_3_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_2_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_1_Q : STD_LOGIC; 
  signal RamCtrl_cntFin_30_GND_4_o_add_10_OUT_0_Q : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_4_o : STD_LOGIC; 
  signal NlwRenamedSig_OI_RamWRn : STD_LOGIC; 
  signal NlwRenamedSig_OI_FlashRPn : STD_LOGIC; 
  signal RST_inv : STD_LOGIC; 
  signal Q_n0136_inv : STD_LOGIC; 
  signal Q_n0117_inv : STD_LOGIC; 
  signal Q_n0122_inv : STD_LOGIC; 
  signal RamEA_FSM_FFd2_In : STD_LOGIC; 
  signal RamEA_FSM_FFd1_In : STD_LOGIC; 
  signal RamEA_1_inv : STD_LOGIC; 
  signal Mcount_addrREAD : STD_LOGIC; 
  signal Mcount_addrREAD1 : STD_LOGIC; 
  signal Mcount_addrREAD2 : STD_LOGIC; 
  signal Mcount_addrREAD3 : STD_LOGIC; 
  signal Mcount_addrREAD4 : STD_LOGIC; 
  signal Mcount_addrREAD5 : STD_LOGIC; 
  signal Mcount_addrREAD6 : STD_LOGIC; 
  signal Mcount_addrREAD7 : STD_LOGIC; 
  signal Mcount_addrREAD8 : STD_LOGIC; 
  signal Mcount_addrREAD9 : STD_LOGIC; 
  signal Mcount_addrREAD10 : STD_LOGIC; 
  signal Mcount_addrREAD11 : STD_LOGIC; 
  signal Mcount_addrREAD12 : STD_LOGIC; 
  signal Mcount_addrREAD13 : STD_LOGIC; 
  signal Mcount_addrREAD14 : STD_LOGIC; 
  signal Mcount_addrREAD15 : STD_LOGIC; 
  signal Mcount_addrREAD16 : STD_LOGIC; 
  signal Mcount_addrREAD17 : STD_LOGIC; 
  signal Mcount_addrREAD18 : STD_LOGIC; 
  signal Mcount_addrREAD19 : STD_LOGIC; 
  signal Mcount_addrREAD20 : STD_LOGIC; 
  signal Mcount_addrREAD21 : STD_LOGIC; 
  signal Mcount_addrREAD22 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_lut_0_Q : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_0_Q_362 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_Q_363 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_Q_364 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_Q_365 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_Q_366 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_Q_367 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_Q_368 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_Q_369 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_Q_370 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_Q_371 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_Q_372 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_Q_373 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_Q_374 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_Q_375 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_Q_376 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_Q_377 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_Q_378 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_Q_379 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_Q_380 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_Q_381 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_Q_382 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_Q_383 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_Q_384 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_Q_385 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_Q_386 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_Q_387 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_Q_388 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_Q_389 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_Q_390 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_Q_391 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_0_Q_392 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_0_Q_393 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_1_Q_394 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_1_Q_395 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_2_Q_396 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_2_Q_397 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_3_Q_398 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_3_Q_399 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_4_Q_400 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_4_Q_401 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_5_Q_402 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_5_Q_403 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_6_Q_404 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_6_Q_405 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_7_Q_406 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_7_Q_407 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_8_Q_408 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_8_Q_409 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_9_Q_410 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_9_Q_411 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_10_Q_412 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_10_Q_413 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_11_Q_414 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_11_Q_415 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_12_Q_416 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_12_Q_417 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_13_Q_418 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_lut_0_Q_420 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_0_Q_421 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_Q_422 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_2_Q_423 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_3_Q_424 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_Q_425 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_Q_426 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_Q_427 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_Q_428 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_Q_429 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_Q_430 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_Q_431 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_Q_432 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_Q_433 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_Q_434 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_Q_435 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_Q_436 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_Q_437 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_Q_438 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_Q_439 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_Q_440 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_Q_441 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_Q_442 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_Q_443 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_Q_444 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_Q_445 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_Q_446 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_Q_447 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_Q_448 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_Q_449 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_Q_450 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_0_Q_452 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_0_Q_453 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_1_Q_454 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_1_Q_455 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_2_Q_456 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_2_Q_457 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_3_Q_458 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_3_Q_459 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_4_Q_460 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_4_Q_461 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_5_Q_462 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_5_Q_463 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_6_Q_464 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_rt_465 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_rt_466 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_rt_467 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_rt_468 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_rt_469 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_rt_470 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_rt_471 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_rt_472 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_rt_473 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_rt_474 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_rt_475 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_rt_476 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_rt_477 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_rt_478 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_rt_479 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_rt_480 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_rt_481 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_rt_482 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_rt_483 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_rt_484 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_rt_485 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_rt_486 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_rt_487 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_rt_488 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_rt_489 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_rt_490 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_rt_491 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_rt_492 : STD_LOGIC; 
  signal Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_rt_493 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_rt_494 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_rt_495 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_rt_496 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_rt_497 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_rt_498 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_rt_499 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_rt_500 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_rt_501 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_rt_502 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_rt_503 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_rt_504 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_rt_505 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_rt_506 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_rt_507 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_rt_508 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_rt_509 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_rt_510 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_rt_511 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_rt_512 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_rt_513 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_rt_514 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_rt_515 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_rt_516 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_rt_517 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_rt_518 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_rt_519 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_rt_520 : STD_LOGIC; 
  signal Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_30_rt_521 : STD_LOGIC; 
  signal Q_n0136_inv_lut_522 : STD_LOGIC; 
  signal Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_l1 : STD_LOGIC; 
  signal Q_n0136_inv_lut1_524 : STD_LOGIC; 
  signal GND_4_o_RamCtrl_cnt_30_equal_10_o_30_2_lut_525 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal RamCtrl_cntFin : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal RamCtrl_cnt : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal NlwRenamedSig_OI_addrREAD : STD_LOGIC_VECTOR ( 23 downto 1 ); 
  signal Mcount_addrREAD_lut : STD_LOGIC_VECTOR ( 22 downto 0 ); 
  signal Mcount_addrREAD_cy : STD_LOGIC_VECTOR ( 21 downto 0 ); 
begin
  RamAdr(23) <= NlwRenamedSig_OI_addrREAD(23);
  RamAdr(22) <= NlwRenamedSig_OI_addrREAD(22);
  RamAdr(21) <= NlwRenamedSig_OI_addrREAD(21);
  RamAdr(20) <= NlwRenamedSig_OI_addrREAD(20);
  RamAdr(19) <= NlwRenamedSig_OI_addrREAD(19);
  RamAdr(18) <= NlwRenamedSig_OI_addrREAD(18);
  RamAdr(17) <= NlwRenamedSig_OI_addrREAD(17);
  RamAdr(16) <= NlwRenamedSig_OI_addrREAD(16);
  RamAdr(15) <= NlwRenamedSig_OI_addrREAD(15);
  RamAdr(14) <= NlwRenamedSig_OI_addrREAD(14);
  RamAdr(13) <= NlwRenamedSig_OI_addrREAD(13);
  RamAdr(12) <= NlwRenamedSig_OI_addrREAD(12);
  RamAdr(11) <= NlwRenamedSig_OI_addrREAD(11);
  RamAdr(10) <= NlwRenamedSig_OI_addrREAD(10);
  RamAdr(9) <= NlwRenamedSig_OI_addrREAD(9);
  RamAdr(8) <= NlwRenamedSig_OI_addrREAD(8);
  RamAdr(7) <= NlwRenamedSig_OI_addrREAD(7);
  RamAdr(6) <= NlwRenamedSig_OI_addrREAD(6);
  RamAdr(5) <= NlwRenamedSig_OI_addrREAD(5);
  RamAdr(4) <= NlwRenamedSig_OI_addrREAD(4);
  RamAdr(3) <= NlwRenamedSig_OI_addrREAD(3);
  RamAdr(2) <= NlwRenamedSig_OI_addrREAD(2);
  RamAdr(1) <= NlwRenamedSig_OI_addrREAD(1);
  ReadFinish <= NlwRenamedSig_OI_ReadFinish;
  RamClk <= NlwRenamedSig_OI_FlashRPn;
  RamOEn <= NlwRenamedSig_OI_FlashRPn;
  RamWRn <= NlwRenamedSig_OI_RamWRn;
  RamLBn <= NlwRenamedSig_OI_FlashRPn;
  RamUBn <= NlwRenamedSig_OI_FlashRPn;
  RamCre <= NlwRenamedSig_OI_FlashRPn;
  RamADVn <= NlwRenamedSig_OI_FlashRPn;
  FlashRPn <= NlwRenamedSig_OI_FlashRPn;
  XST_VCC : VCC
    port map (
      P => NlwRenamedSig_OI_RamWRn
    );
  XST_GND : GND
    port map (
      G => NlwRenamedSig_OI_FlashRPn
    );
  RamCSn_3 : FDSE
    port map (
      C => CLK,
      CE => RamEA_FSM_FFd2_82,
      D => GND_4_o_RamCtrl_cnt_30_equal_4_o,
      S => RST,
      Q => RamCSn
    );
  ReadFinish_4 : FDE
    port map (
      C => CLK,
      CE => RST_inv,
      D => RamEA_1_X_4_o_Mux_22_o,
      Q => NlwRenamedSig_OI_ReadFinish
    );
  DataOut_0 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_0_Q,
      R => RST,
      Q => DataOut(0)
    );
  DataOut_1 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_1_Q,
      R => RST,
      Q => DataOut(1)
    );
  DataOut_2 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_2_Q,
      R => RST,
      Q => DataOut(2)
    );
  DataOut_3 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_3_Q,
      R => RST,
      Q => DataOut(3)
    );
  DataOut_4 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_4_Q,
      R => RST,
      Q => DataOut(4)
    );
  DataOut_5 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_5_Q,
      R => RST,
      Q => DataOut(5)
    );
  DataOut_6 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_6_Q,
      R => RST,
      Q => DataOut(6)
    );
  DataOut_7 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_7_Q,
      R => RST,
      Q => DataOut(7)
    );
  DataOut_8 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_8_Q,
      R => RST,
      Q => DataOut(8)
    );
  DataOut_9 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_9_Q,
      R => RST,
      Q => DataOut(9)
    );
  DataOut_10 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_10_Q,
      R => RST,
      Q => DataOut(10)
    );
  DataOut_11 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_11_Q,
      R => RST,
      Q => DataOut(11)
    );
  DataOut_12 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_12_Q,
      R => RST,
      Q => DataOut(12)
    );
  DataOut_13 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_13_Q,
      R => RST,
      Q => DataOut(13)
    );
  DataOut_14 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_14_Q,
      R => RST,
      Q => DataOut(14)
    );
  DataOut_15 : FDRE
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => RamEA_1_X_4_o_wide_mux_24_OUT_15_Q,
      R => RST,
      Q => DataOut(15)
    );
  RamCtrl_cntFin_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_0_Q,
      R => RST,
      Q => RamCtrl_cntFin(0)
    );
  RamCtrl_cntFin_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_1_Q,
      R => RST,
      Q => RamCtrl_cntFin(1)
    );
  RamCtrl_cntFin_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_2_Q,
      R => RST,
      Q => RamCtrl_cntFin(2)
    );
  RamCtrl_cntFin_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_3_Q,
      R => RST,
      Q => RamCtrl_cntFin(3)
    );
  RamCtrl_cntFin_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_4_Q,
      R => RST,
      Q => RamCtrl_cntFin(4)
    );
  RamCtrl_cntFin_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_5_Q,
      R => RST,
      Q => RamCtrl_cntFin(5)
    );
  RamCtrl_cntFin_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_6_Q,
      R => RST,
      Q => RamCtrl_cntFin(6)
    );
  RamCtrl_cntFin_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_7_Q,
      R => RST,
      Q => RamCtrl_cntFin(7)
    );
  RamCtrl_cntFin_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_8_Q,
      R => RST,
      Q => RamCtrl_cntFin(8)
    );
  RamCtrl_cntFin_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_9_Q,
      R => RST,
      Q => RamCtrl_cntFin(9)
    );
  RamCtrl_cntFin_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_10_Q,
      R => RST,
      Q => RamCtrl_cntFin(10)
    );
  RamCtrl_cntFin_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_11_Q,
      R => RST,
      Q => RamCtrl_cntFin(11)
    );
  RamCtrl_cntFin_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_12_Q,
      R => RST,
      Q => RamCtrl_cntFin(12)
    );
  RamCtrl_cntFin_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_13_Q,
      R => RST,
      Q => RamCtrl_cntFin(13)
    );
  RamCtrl_cntFin_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_14_Q,
      R => RST,
      Q => RamCtrl_cntFin(14)
    );
  RamCtrl_cntFin_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_15_Q,
      R => RST,
      Q => RamCtrl_cntFin(15)
    );
  RamCtrl_cntFin_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_16_Q,
      R => RST,
      Q => RamCtrl_cntFin(16)
    );
  RamCtrl_cntFin_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_17_Q,
      R => RST,
      Q => RamCtrl_cntFin(17)
    );
  RamCtrl_cntFin_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_18_Q,
      R => RST,
      Q => RamCtrl_cntFin(18)
    );
  RamCtrl_cntFin_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_19_Q,
      R => RST,
      Q => RamCtrl_cntFin(19)
    );
  RamCtrl_cntFin_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_20_Q,
      R => RST,
      Q => RamCtrl_cntFin(20)
    );
  RamCtrl_cntFin_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_21_Q,
      R => RST,
      Q => RamCtrl_cntFin(21)
    );
  RamCtrl_cntFin_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_22_Q,
      R => RST,
      Q => RamCtrl_cntFin(22)
    );
  RamCtrl_cntFin_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_23_Q,
      R => RST,
      Q => RamCtrl_cntFin(23)
    );
  RamCtrl_cntFin_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_24_Q,
      R => RST,
      Q => RamCtrl_cntFin(24)
    );
  RamCtrl_cntFin_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_25_Q,
      R => RST,
      Q => RamCtrl_cntFin(25)
    );
  RamCtrl_cntFin_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_26_Q,
      R => RST,
      Q => RamCtrl_cntFin(26)
    );
  RamCtrl_cntFin_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_27_Q,
      R => RST,
      Q => RamCtrl_cntFin(27)
    );
  RamCtrl_cntFin_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_28_Q,
      R => RST,
      Q => RamCtrl_cntFin(28)
    );
  RamCtrl_cntFin_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_29_Q,
      R => RST,
      Q => RamCtrl_cntFin(29)
    );
  RamCtrl_cntFin_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0117_inv,
      D => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_30_Q,
      R => RST,
      Q => RamCtrl_cntFin(30)
    );
  RamCtrl_cnt_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_0_Q,
      R => RST,
      Q => RamCtrl_cnt(0)
    );
  RamCtrl_cnt_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_1_Q,
      R => RST,
      Q => RamCtrl_cnt(1)
    );
  RamCtrl_cnt_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_2_Q,
      R => RST,
      Q => RamCtrl_cnt(2)
    );
  RamCtrl_cnt_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_3_Q,
      R => RST,
      Q => RamCtrl_cnt(3)
    );
  RamCtrl_cnt_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_4_Q,
      R => RST,
      Q => RamCtrl_cnt(4)
    );
  RamCtrl_cnt_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_5_Q,
      R => RST,
      Q => RamCtrl_cnt(5)
    );
  RamCtrl_cnt_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_6_Q,
      R => RST,
      Q => RamCtrl_cnt(6)
    );
  RamCtrl_cnt_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_7_Q,
      R => RST,
      Q => RamCtrl_cnt(7)
    );
  RamCtrl_cnt_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_8_Q,
      R => RST,
      Q => RamCtrl_cnt(8)
    );
  RamCtrl_cnt_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_9_Q,
      R => RST,
      Q => RamCtrl_cnt(9)
    );
  RamCtrl_cnt_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_10_Q,
      R => RST,
      Q => RamCtrl_cnt(10)
    );
  RamCtrl_cnt_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_11_Q,
      R => RST,
      Q => RamCtrl_cnt(11)
    );
  RamCtrl_cnt_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_12_Q,
      R => RST,
      Q => RamCtrl_cnt(12)
    );
  RamCtrl_cnt_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_13_Q,
      R => RST,
      Q => RamCtrl_cnt(13)
    );
  RamCtrl_cnt_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_14_Q,
      R => RST,
      Q => RamCtrl_cnt(14)
    );
  RamCtrl_cnt_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_15_Q,
      R => RST,
      Q => RamCtrl_cnt(15)
    );
  RamCtrl_cnt_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_16_Q,
      R => RST,
      Q => RamCtrl_cnt(16)
    );
  RamCtrl_cnt_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_17_Q,
      R => RST,
      Q => RamCtrl_cnt(17)
    );
  RamCtrl_cnt_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_18_Q,
      R => RST,
      Q => RamCtrl_cnt(18)
    );
  RamCtrl_cnt_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_19_Q,
      R => RST,
      Q => RamCtrl_cnt(19)
    );
  RamCtrl_cnt_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_20_Q,
      R => RST,
      Q => RamCtrl_cnt(20)
    );
  RamCtrl_cnt_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_21_Q,
      R => RST,
      Q => RamCtrl_cnt(21)
    );
  RamCtrl_cnt_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_22_Q,
      R => RST,
      Q => RamCtrl_cnt(22)
    );
  RamCtrl_cnt_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_23_Q,
      R => RST,
      Q => RamCtrl_cnt(23)
    );
  RamCtrl_cnt_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_24_Q,
      R => RST,
      Q => RamCtrl_cnt(24)
    );
  RamCtrl_cnt_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_25_Q,
      R => RST,
      Q => RamCtrl_cnt(25)
    );
  RamCtrl_cnt_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_26_Q,
      R => RST,
      Q => RamCtrl_cnt(26)
    );
  RamCtrl_cnt_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_27_Q,
      R => RST,
      Q => RamCtrl_cnt(27)
    );
  RamCtrl_cnt_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_28_Q,
      R => RST,
      Q => RamCtrl_cnt(28)
    );
  RamCtrl_cnt_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_29_Q,
      R => RST,
      Q => RamCtrl_cnt(29)
    );
  RamCtrl_cnt_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0122_inv,
      D => RamEA_1_X_4_o_wide_mux_25_OUT_30_Q,
      R => RST,
      Q => RamCtrl_cnt(30)
    );
  Mcount_addrREAD_lut_0_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(1),
      I2 => SampleDirOffset(1),
      O => Mcount_addrREAD_lut(0)
    );
  Mcount_addrREAD_cy_0_Q : MUXCY
    port map (
      CI => RamEA_1_inv,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(0),
      O => Mcount_addrREAD_cy(0)
    );
  Mcount_addrREAD_xor_0_Q : XORCY
    port map (
      CI => RamEA_1_inv,
      LI => Mcount_addrREAD_lut(0),
      O => Mcount_addrREAD
    );
  Mcount_addrREAD_lut_1_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(2),
      I2 => SampleDirOffset(2),
      O => Mcount_addrREAD_lut(1)
    );
  Mcount_addrREAD_cy_1_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(0),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(1),
      O => Mcount_addrREAD_cy(1)
    );
  Mcount_addrREAD_xor_1_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(0),
      LI => Mcount_addrREAD_lut(1),
      O => Mcount_addrREAD1
    );
  Mcount_addrREAD_lut_2_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(3),
      I2 => SampleDirOffset(3),
      O => Mcount_addrREAD_lut(2)
    );
  Mcount_addrREAD_cy_2_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(1),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(2),
      O => Mcount_addrREAD_cy(2)
    );
  Mcount_addrREAD_xor_2_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(1),
      LI => Mcount_addrREAD_lut(2),
      O => Mcount_addrREAD2
    );
  Mcount_addrREAD_lut_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(4),
      I2 => SampleDirOffset(4),
      O => Mcount_addrREAD_lut(3)
    );
  Mcount_addrREAD_cy_3_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(2),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(3),
      O => Mcount_addrREAD_cy(3)
    );
  Mcount_addrREAD_xor_3_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(2),
      LI => Mcount_addrREAD_lut(3),
      O => Mcount_addrREAD3
    );
  Mcount_addrREAD_lut_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(5),
      I2 => SampleDirOffset(5),
      O => Mcount_addrREAD_lut(4)
    );
  Mcount_addrREAD_cy_4_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(3),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(4),
      O => Mcount_addrREAD_cy(4)
    );
  Mcount_addrREAD_xor_4_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(3),
      LI => Mcount_addrREAD_lut(4),
      O => Mcount_addrREAD4
    );
  Mcount_addrREAD_lut_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(6),
      I2 => SampleDirOffset(6),
      O => Mcount_addrREAD_lut(5)
    );
  Mcount_addrREAD_cy_5_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(4),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(5),
      O => Mcount_addrREAD_cy(5)
    );
  Mcount_addrREAD_xor_5_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(4),
      LI => Mcount_addrREAD_lut(5),
      O => Mcount_addrREAD5
    );
  Mcount_addrREAD_lut_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(7),
      I2 => SampleDirOffset(7),
      O => Mcount_addrREAD_lut(6)
    );
  Mcount_addrREAD_cy_6_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(5),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(6),
      O => Mcount_addrREAD_cy(6)
    );
  Mcount_addrREAD_xor_6_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(5),
      LI => Mcount_addrREAD_lut(6),
      O => Mcount_addrREAD6
    );
  Mcount_addrREAD_lut_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(8),
      I2 => SampleDirOffset(8),
      O => Mcount_addrREAD_lut(7)
    );
  Mcount_addrREAD_cy_7_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(6),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(7),
      O => Mcount_addrREAD_cy(7)
    );
  Mcount_addrREAD_xor_7_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(6),
      LI => Mcount_addrREAD_lut(7),
      O => Mcount_addrREAD7
    );
  Mcount_addrREAD_lut_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(9),
      I2 => SampleDirOffset(9),
      O => Mcount_addrREAD_lut(8)
    );
  Mcount_addrREAD_cy_8_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(7),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(8),
      O => Mcount_addrREAD_cy(8)
    );
  Mcount_addrREAD_xor_8_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(7),
      LI => Mcount_addrREAD_lut(8),
      O => Mcount_addrREAD8
    );
  Mcount_addrREAD_lut_9_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(10),
      I2 => SampleDirOffset(10),
      O => Mcount_addrREAD_lut(9)
    );
  Mcount_addrREAD_cy_9_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(8),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(9),
      O => Mcount_addrREAD_cy(9)
    );
  Mcount_addrREAD_xor_9_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(8),
      LI => Mcount_addrREAD_lut(9),
      O => Mcount_addrREAD9
    );
  Mcount_addrREAD_lut_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(11),
      I2 => SampleDirOffset(11),
      O => Mcount_addrREAD_lut(10)
    );
  Mcount_addrREAD_cy_10_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(9),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(10),
      O => Mcount_addrREAD_cy(10)
    );
  Mcount_addrREAD_xor_10_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(9),
      LI => Mcount_addrREAD_lut(10),
      O => Mcount_addrREAD10
    );
  Mcount_addrREAD_lut_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(12),
      I2 => SampleDirOffset(12),
      O => Mcount_addrREAD_lut(11)
    );
  Mcount_addrREAD_cy_11_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(10),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(11),
      O => Mcount_addrREAD_cy(11)
    );
  Mcount_addrREAD_xor_11_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(10),
      LI => Mcount_addrREAD_lut(11),
      O => Mcount_addrREAD11
    );
  Mcount_addrREAD_lut_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(13),
      I2 => SampleDirOffset(13),
      O => Mcount_addrREAD_lut(12)
    );
  Mcount_addrREAD_cy_12_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(11),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(12),
      O => Mcount_addrREAD_cy(12)
    );
  Mcount_addrREAD_xor_12_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(11),
      LI => Mcount_addrREAD_lut(12),
      O => Mcount_addrREAD12
    );
  Mcount_addrREAD_lut_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(14),
      I2 => SampleDirOffset(14),
      O => Mcount_addrREAD_lut(13)
    );
  Mcount_addrREAD_cy_13_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(12),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(13),
      O => Mcount_addrREAD_cy(13)
    );
  Mcount_addrREAD_xor_13_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(12),
      LI => Mcount_addrREAD_lut(13),
      O => Mcount_addrREAD13
    );
  Mcount_addrREAD_lut_14_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(15),
      I2 => SampleDirOffset(15),
      O => Mcount_addrREAD_lut(14)
    );
  Mcount_addrREAD_cy_14_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(13),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(14),
      O => Mcount_addrREAD_cy(14)
    );
  Mcount_addrREAD_xor_14_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(13),
      LI => Mcount_addrREAD_lut(14),
      O => Mcount_addrREAD14
    );
  Mcount_addrREAD_lut_15_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(16),
      I2 => SampleDirOffset(16),
      O => Mcount_addrREAD_lut(15)
    );
  Mcount_addrREAD_cy_15_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(14),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(15),
      O => Mcount_addrREAD_cy(15)
    );
  Mcount_addrREAD_xor_15_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(14),
      LI => Mcount_addrREAD_lut(15),
      O => Mcount_addrREAD15
    );
  Mcount_addrREAD_lut_16_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(17),
      I2 => SampleDirOffset(17),
      O => Mcount_addrREAD_lut(16)
    );
  Mcount_addrREAD_cy_16_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(15),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(16),
      O => Mcount_addrREAD_cy(16)
    );
  Mcount_addrREAD_xor_16_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(15),
      LI => Mcount_addrREAD_lut(16),
      O => Mcount_addrREAD16
    );
  Mcount_addrREAD_lut_17_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(18),
      I2 => SampleDirOffset(18),
      O => Mcount_addrREAD_lut(17)
    );
  Mcount_addrREAD_cy_17_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(16),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(17),
      O => Mcount_addrREAD_cy(17)
    );
  Mcount_addrREAD_xor_17_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(16),
      LI => Mcount_addrREAD_lut(17),
      O => Mcount_addrREAD17
    );
  Mcount_addrREAD_lut_18_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(19),
      I2 => SampleDirOffset(19),
      O => Mcount_addrREAD_lut(18)
    );
  Mcount_addrREAD_cy_18_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(17),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(18),
      O => Mcount_addrREAD_cy(18)
    );
  Mcount_addrREAD_xor_18_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(17),
      LI => Mcount_addrREAD_lut(18),
      O => Mcount_addrREAD18
    );
  Mcount_addrREAD_lut_19_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(20),
      I2 => SampleDirOffset(20),
      O => Mcount_addrREAD_lut(19)
    );
  Mcount_addrREAD_cy_19_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(18),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(19),
      O => Mcount_addrREAD_cy(19)
    );
  Mcount_addrREAD_xor_19_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(18),
      LI => Mcount_addrREAD_lut(19),
      O => Mcount_addrREAD19
    );
  Mcount_addrREAD_lut_20_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(21),
      I2 => SampleDirOffset(21),
      O => Mcount_addrREAD_lut(20)
    );
  Mcount_addrREAD_cy_20_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(19),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(20),
      O => Mcount_addrREAD_cy(20)
    );
  Mcount_addrREAD_xor_20_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(19),
      LI => Mcount_addrREAD_lut(20),
      O => Mcount_addrREAD20
    );
  Mcount_addrREAD_lut_21_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(22),
      I2 => SampleDirOffset(22),
      O => Mcount_addrREAD_lut(21)
    );
  Mcount_addrREAD_cy_21_Q : MUXCY
    port map (
      CI => Mcount_addrREAD_cy(20),
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcount_addrREAD_lut(21),
      O => Mcount_addrREAD_cy(21)
    );
  Mcount_addrREAD_xor_21_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(20),
      LI => Mcount_addrREAD_lut(21),
      O => Mcount_addrREAD21
    );
  Mcount_addrREAD_lut_22_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_addrREAD(23),
      I2 => SampleDirOffset(23),
      O => Mcount_addrREAD_lut(22)
    );
  Mcount_addrREAD_xor_22_Q : XORCY
    port map (
      CI => Mcount_addrREAD_cy(21),
      LI => Mcount_addrREAD_lut(22),
      O => Mcount_addrREAD22
    );
  addrREAD_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(1)
    );
  addrREAD_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD1,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(2)
    );
  addrREAD_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD2,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(3)
    );
  addrREAD_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD3,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(4)
    );
  addrREAD_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD4,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(5)
    );
  addrREAD_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD5,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(6)
    );
  addrREAD_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD6,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(7)
    );
  addrREAD_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD7,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(8)
    );
  addrREAD_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD8,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(9)
    );
  addrREAD_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD9,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(10)
    );
  addrREAD_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD10,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(11)
    );
  addrREAD_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD11,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(12)
    );
  addrREAD_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD12,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(13)
    );
  addrREAD_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD13,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(14)
    );
  addrREAD_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD14,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(15)
    );
  addrREAD_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD15,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(16)
    );
  addrREAD_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD16,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(17)
    );
  addrREAD_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD17,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(18)
    );
  addrREAD_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD18,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(19)
    );
  addrREAD_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD19,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(20)
    );
  addrREAD_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD20,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(21)
    );
  addrREAD_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD21,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(22)
    );
  addrREAD_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0136_inv,
      D => Mcount_addrREAD22,
      R => RST,
      Q => NlwRenamedSig_OI_addrREAD(23)
    );
  RamEA_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => RamEA_FSM_FFd2_In,
      R => RST,
      Q => RamEA_FSM_FFd2_82
    );
  RamEA_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => RamEA_FSM_FFd1_In,
      R => RST,
      Q => RamEA_FSM_FFd1_81
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_FlashRPn,
      DI => NlwRenamedSig_OI_RamWRn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_lut_0_Q,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_0_Q_362
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_FlashRPn,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_lut_0_Q,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_0_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_0_Q_362,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_rt_465,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_Q_363
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_1_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_0_Q_362,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_rt_465,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_1_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_Q_363,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_rt_466,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_Q_364
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_2_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_Q_363,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_rt_466,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_2_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_Q_364,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_rt_467,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_Q_365
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_Q_364,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_rt_467,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_3_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_Q_365,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_rt_468,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_Q_366
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_Q_365,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_rt_468,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_4_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_Q_366,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_rt_469,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_Q_367
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_Q_366,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_rt_469,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_5_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_Q_367,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_rt_470,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_Q_368
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_Q_367,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_rt_470,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_6_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_Q_368,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_rt_471,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_Q_369
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_Q_368,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_rt_471,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_7_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_Q_369,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_rt_472,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_Q_370
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_Q_369,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_rt_472,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_8_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_Q_370,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_rt_473,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_Q_371
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_Q_370,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_rt_473,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_9_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_Q_371,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_rt_474,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_Q_372
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_Q_371,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_rt_474,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_10_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_Q_372,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_rt_475,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_Q_373
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_Q_372,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_rt_475,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_11_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_Q_373,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_rt_476,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_Q_374
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_Q_373,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_rt_476,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_12_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_Q_374,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_rt_477,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_Q_375
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_Q_374,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_rt_477,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_13_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_Q_375,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_rt_478,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_Q_376
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_Q_375,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_rt_478,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_14_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_Q_376,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_rt_479,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_Q_377
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_Q_376,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_rt_479,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_15_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_Q_377,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_rt_480,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_Q_378
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_Q_377,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_rt_480,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_16_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_Q_378,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_rt_481,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_Q_379
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_17_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_Q_378,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_rt_481,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_17_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_Q_379,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_rt_482,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_Q_380
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_18_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_Q_379,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_rt_482,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_18_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_Q_380,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_rt_483,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_Q_381
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_19_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_Q_380,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_rt_483,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_19_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_Q_381,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_rt_484,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_Q_382
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_20_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_Q_381,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_rt_484,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_20_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_Q_382,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_rt_485,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_Q_383
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_21_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_Q_382,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_rt_485,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_21_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_Q_383,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_rt_486,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_Q_384
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_22_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_Q_383,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_rt_486,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_22_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_Q_384,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_rt_487,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_Q_385
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_23_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_Q_384,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_rt_487,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_23_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_Q_385,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_rt_488,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_Q_386
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_24_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_Q_385,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_rt_488,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_24_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_Q_386,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_rt_489,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_Q_387
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_25_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_Q_386,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_rt_489,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_25_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_Q_387,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_rt_490,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_Q_388
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_26_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_Q_387,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_rt_490,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_26_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_Q_388,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_rt_491,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_Q_389
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_27_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_Q_388,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_rt_491,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_27_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_Q_389,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_rt_492,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_Q_390
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_28_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_Q_389,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_rt_492,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_28_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_Q : MUXCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_Q_390,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_rt_493,
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_Q_391
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_29_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_Q_390,
      LI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_rt_493,
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_29_Q
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_xor_30_Q : XORCY
    port map (
      CI => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_Q_391,
      LI => RamCtrl_cntFin(30),
      O => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_30_Q
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_23_Q,
      I1 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_24_Q,
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_25_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_26_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_0_Q_392
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RamWRn,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_0_Q_392,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_0_Q_393
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_27_Q,
      I1 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_28_Q,
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_29_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_30_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_1_Q_394
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_0_Q_393,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_1_Q_394,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_1_Q_395
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_2_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(2),
      I1 => SampleLength(1),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_0_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_1_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_2_Q_396
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_1_Q_395,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_2_Q_396,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_2_Q_397
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_3_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(4),
      I1 => SampleLength(3),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_2_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_3_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_3_Q_398
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_2_Q_397,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_3_Q_398,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_3_Q_399
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_4_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(6),
      I1 => SampleLength(5),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_4_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_5_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_4_Q_400
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_3_Q_399,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_4_Q_400,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_4_Q_401
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_5_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(8),
      I1 => SampleLength(7),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_6_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_7_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_5_Q_402
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_4_Q_401,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_5_Q_402,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_5_Q_403
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_6_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(10),
      I1 => SampleLength(9),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_8_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_9_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_6_Q_404
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_5_Q_403,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_6_Q_404,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_6_Q_405
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_7_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(12),
      I1 => SampleLength(11),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_10_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_11_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_7_Q_406
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_6_Q_405,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_7_Q_406,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_7_Q_407
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_8_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(14),
      I1 => SampleLength(13),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_12_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_13_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_8_Q_408
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_7_Q_407,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_8_Q_408,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_8_Q_409
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_9_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(16),
      I1 => SampleLength(15),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_14_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_15_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_9_Q_410
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_8_Q_409,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_9_Q_410,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_9_Q_411
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_10_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(18),
      I1 => SampleLength(17),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_16_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_17_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_10_Q_412
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_9_Q_411,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_10_Q_412,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_10_Q_413
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_11_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(20),
      I1 => SampleLength(19),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_18_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_19_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_11_Q_414
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_10_Q_413,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_11_Q_414,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_11_Q_415
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_12_Q : LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      I0 => SampleLength(22),
      I1 => SampleLength(21),
      I2 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_20_Q,
      I3 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_21_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_12_Q_416
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_12_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_11_Q_415,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_12_Q_416,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_12_Q_417
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_13_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => SampleLength(23),
      I1 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_22_Q,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_13_Q_418
    );
  Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_12_Q_417,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_lut_13_Q_418,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_FlashRPn,
      DI => NlwRenamedSig_OI_RamWRn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_lut_0_Q_420,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_0_Q_421
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => NlwRenamedSig_OI_FlashRPn,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_lut_0_Q_420,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_0_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_0_Q_421,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_rt_494,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_Q_422
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_0_Q_421,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_rt_494,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_1_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_Q_422,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_2_Q,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_2_Q_423
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_Q_422,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_2_Q,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_2_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_2_Q_423,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_3_Q,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_3_Q_424
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_2_Q_423,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_3_Q,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_3_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_3_Q_424,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_rt_495,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_Q_425
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_3_Q_424,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_rt_495,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_4_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_Q_425,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_rt_496,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_Q_426
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_Q_425,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_rt_496,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_5_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_Q_426,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_rt_497,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_Q_427
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_Q_426,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_rt_497,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_6_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_Q_427,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_rt_498,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_Q_428
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_Q_427,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_rt_498,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_7_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_Q_428,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_rt_499,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_Q_429
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_Q_428,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_rt_499,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_8_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_Q_429,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_rt_500,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_Q_430
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_Q_429,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_rt_500,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_9_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_Q_430,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_rt_501,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_Q_431
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_Q_430,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_rt_501,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_10_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_Q_431,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_rt_502,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_Q_432
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_11_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_Q_431,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_rt_502,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_11_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_Q_432,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_rt_503,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_Q_433
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_12_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_Q_432,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_rt_503,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_12_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_Q_433,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_rt_504,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_Q_434
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_13_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_Q_433,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_rt_504,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_13_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_Q_434,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_rt_505,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_Q_435
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_14_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_Q_434,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_rt_505,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_14_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_Q_435,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_rt_506,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_Q_436
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_15_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_Q_435,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_rt_506,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_15_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_Q_436,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_rt_507,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_Q_437
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_16_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_Q_436,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_rt_507,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_16_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_Q_437,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_rt_508,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_Q_438
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_17_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_Q_437,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_rt_508,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_17_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_Q_438,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_rt_509,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_Q_439
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_18_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_Q_438,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_rt_509,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_18_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_Q_439,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_rt_510,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_Q_440
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_19_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_Q_439,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_rt_510,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_19_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_Q_440,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_rt_511,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_Q_441
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_20_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_Q_440,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_rt_511,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_20_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_Q_441,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_rt_512,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_Q_442
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_21_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_Q_441,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_rt_512,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_21_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_Q_442,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_rt_513,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_Q_443
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_22_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_Q_442,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_rt_513,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_22_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_Q_443,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_rt_514,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_Q_444
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_23_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_Q_443,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_rt_514,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_23_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_Q_444,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_rt_515,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_Q_445
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_24_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_Q_444,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_rt_515,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_24_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_Q_445,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_rt_516,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_Q_446
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_25_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_Q_445,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_rt_516,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_25_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_Q_446,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_rt_517,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_Q_447
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_26_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_Q_446,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_rt_517,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_26_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_Q_447,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_rt_518,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_Q_448
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_27_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_Q_447,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_rt_518,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_27_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_Q_448,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_rt_519,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_Q_449
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_28_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_Q_448,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_rt_519,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_28_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_Q : MUXCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_Q_449,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_rt_520,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_Q_450
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_29_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_Q_449,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_rt_520,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_29_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_30_Q : XORCY
    port map (
      CI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_Q_450,
      LI => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_30_rt_521,
      O => RamEA_1_X_4_o_wide_mux_25_OUT_30_Q
    );
  Q_n0122_inv1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamEA_FSM_FFd2_82,
      O => Q_n0122_inv
    );
  RamEA_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"04AE"
    )
    port map (
      I0 => RamEA_FSM_FFd2_82,
      I1 => GetTick,
      I2 => RamEA_FSM_FFd1_81,
      I3 => GND_4_o_RamCtrl_cnt_30_equal_4_o,
      O => RamEA_FSM_FFd2_In
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT161 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(9),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_9_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT151 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(8),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_8_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT141 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(7),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_7_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT131 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(6),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_6_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT121 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(5),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_5_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(4),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_4_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(3),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_3_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(2),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_2_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(1),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_1_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(15),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_15_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(14),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_14_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(13),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_13_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(12),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_12_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT31 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(11),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_11_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(10),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_10_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_24_OUT11 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => RamDB(0),
      O => RamEA_1_X_4_o_wide_mux_24_OUT_0_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT311 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_9_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_9_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT301 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_8_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_8_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT291 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_7_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_7_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT281 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_6_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_6_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT271 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_5_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_5_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT261 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_4_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_4_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT251 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_3_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_3_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT241 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_30_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_30_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT231 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_2_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_2_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT221 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_29_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_29_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT211 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_28_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_28_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT201 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_27_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_27_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT191 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_26_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_26_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT181 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_25_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_25_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT171 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_24_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_24_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT161 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_23_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_23_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT151 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_22_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_22_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_21_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_21_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_20_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_20_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_1_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_1_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_19_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_19_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_18_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_18_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_17_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_17_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_16_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_16_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_15_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_15_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_14_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_14_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_13_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_13_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_12_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_12_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_11_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_11_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_10_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_10_Q
    );
  Mmux_RamCtrl_cntFin_30_GND_4_o_mux_13_OUT11 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin_30_GND_4_o_add_10_OUT_0_Q,
      I1 => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      O => RamCtrl_cntFin_30_GND_4_o_mux_13_OUT_0_Q
    );
  GND_4_o_RamCtrl_cnt_30_equal_4_o_30_1 : LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => RamCtrl_cnt(1),
      I1 => RamCtrl_cnt(2),
      I2 => RamCtrl_cnt(3),
      I3 => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1,
      O => GND_4_o_RamCtrl_cnt_30_equal_4_o
    );
  RamEA_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      I2 => RamEA_FSM_FFd2_82,
      I3 => GND_4_o_RamCtrl_cnt_30_equal_4_o,
      O => RamEA_FSM_FFd1_In
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_A251 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => RamCtrl_cnt(3),
      I1 => RamEA_FSM_FFd1_81,
      I2 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_3_Q
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_A231 : LUT3
    generic map(
      INIT => X"2A"
    )
    port map (
      I0 => RamCtrl_cnt(2),
      I1 => RamEA_FSM_FFd1_81,
      I2 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_A_2_Q
    );
  Q_n0117_inv1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      I1 => RamEA_FSM_FFd1_81,
      O => Q_n0117_inv
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_0_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(22),
      I1 => RamCtrl_cnt(23),
      I2 => RamCtrl_cnt(26),
      I3 => RamCtrl_cnt(21),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_0_Q_452
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_0_Q : MUXCY
    port map (
      CI => NlwRenamedSig_OI_RamWRn,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_0_Q_452,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_0_Q_453
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(20),
      I1 => RamCtrl_cnt(18),
      I2 => RamCtrl_cnt(25),
      I3 => RamCtrl_cnt(19),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_1_Q_454
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_1_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_0_Q_453,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_1_Q_454,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_1_Q_455
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(17),
      I1 => RamCtrl_cnt(16),
      I2 => RamCtrl_cnt(24),
      I3 => RamCtrl_cnt(14),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_2_Q_456
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_2_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_1_Q_455,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_2_Q_456,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_2_Q_457
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(15),
      I1 => RamCtrl_cnt(13),
      I2 => RamCtrl_cnt(27),
      I3 => RamCtrl_cnt(10),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_3_Q_458
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_3_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_2_Q_457,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_3_Q_458,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_3_Q_459
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(11),
      I1 => RamCtrl_cnt(12),
      I2 => RamCtrl_cnt(29),
      I3 => RamCtrl_cnt(9),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_4_Q_460
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_4_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_3_Q_459,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_4_Q_460,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_4_Q_461
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => RamCtrl_cnt(8),
      I1 => RamCtrl_cnt(6),
      I2 => RamCtrl_cnt(28),
      I3 => RamCtrl_cnt(7),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_5_Q_462
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_5_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_4_Q_461,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_5_Q_462,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_5_Q_463
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_6_Q : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => RamCtrl_cnt(0),
      I1 => RamCtrl_cnt(5),
      I2 => RamCtrl_cnt(30),
      I3 => RamCtrl_cnt(4),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_6_Q_464
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_6_Q : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_cy_5_Q_463,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1_wg_lut_6_Q_464,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(1),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_1_rt_465
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(2),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_2_rt_466
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(3),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_3_rt_467
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(4),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_4_rt_468
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(5),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_5_rt_469
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(6),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_6_rt_470
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(7),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_7_rt_471
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(8),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_8_rt_472
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(9),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_9_rt_473
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(10),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_10_rt_474
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(11),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_11_rt_475
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(12),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_12_rt_476
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(13),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_13_rt_477
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(14),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_14_rt_478
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(15),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_15_rt_479
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(16),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_16_rt_480
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(17),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_17_rt_481
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(18),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_18_rt_482
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(19),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_19_rt_483
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(20),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_20_rt_484
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(21),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_21_rt_485
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(22),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_22_rt_486
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(23),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_23_rt_487
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(24),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_24_rt_488
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(25),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_25_rt_489
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(26),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_26_rt_490
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(27),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_27_rt_491
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(28),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_28_rt_492
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cntFin(29),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_cy_29_rt_493
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(1),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_1_rt_494
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(4),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_4_rt_495
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(5),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_5_rt_496
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(6),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_6_rt_497
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(7),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_7_rt_498
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(8),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_8_rt_499
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(9),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_9_rt_500
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(10),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_10_rt_501
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(11),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_11_rt_502
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(12),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_12_rt_503
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(13),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_13_rt_504
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(14),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_14_rt_505
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(15),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_15_rt_506
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(16),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_16_rt_507
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(17),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_17_rt_508
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(18),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_18_rt_509
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(19),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_19_rt_510
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(20),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_20_rt_511
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(21),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_21_rt_512
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(22),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_22_rt_513
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(23),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_23_rt_514
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(24),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_24_rt_515
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(25),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_25_rt_516
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(26),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_26_rt_517
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(27),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_27_rt_518
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(28),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_28_rt_519
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(29),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_cy_29_rt_520
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => RamCtrl_cnt(30),
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_xor_30_rt_521
    );
  Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_lut_0_Q : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => RamCtrl_cnt(0),
      I1 => RamEA_FSM_FFd1_81,
      I2 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      O => Mmux_RamEA_1_X_4_o_wide_mux_25_OUT_rs_lut_0_Q_420
    );
  Q_n0136_inv_lut : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => GND_4_o_RamCtrl_cnt_30_equal_10_o,
      O => Q_n0136_inv_lut_522
    );
  Q_n0136_inv_cy : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_Q_419,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => Q_n0136_inv_lut_522,
      O => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_l1
    );
  Q_n0136_inv_cy1 : MUXCY
    port map (
      CI => Mcompar_RamCtrl_cntFin_30_GND_4_o_equal_12_o_cy_13_l1,
      DI => NlwRenamedSig_OI_RamWRn,
      S => Q_n0136_inv_lut1_524,
      O => Q_n0136_inv
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_2_lut : LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => RamCtrl_cnt(1),
      I1 => RamCtrl_cnt(2),
      I2 => RamCtrl_cnt(3),
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_2_lut_525
    );
  GND_4_o_RamCtrl_cnt_30_equal_10_o_30_2_cy : MUXCY
    port map (
      CI => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_1,
      DI => NlwRenamedSig_OI_FlashRPn,
      S => GND_4_o_RamCtrl_cnt_30_equal_10_o_30_2_lut_525,
      O => GND_4_o_RamCtrl_cnt_30_equal_10_o
    );
  Q_n0136_inv_lut1 : LUT3
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => RamEA_FSM_FFd2_82,
      I1 => RamEA_FSM_FFd1_81,
      I2 => GND_4_o_RamCtrl_cnt_30_equal_4_o,
      O => Q_n0136_inv_lut1_524
    );
  Mmux_RamEA_1_X_4_o_Mux_22_o1 : MUXF5
    port map (
      I0 => N25,
      I1 => N26,
      S => GND_4_o_RamCtrl_cnt_30_equal_4_o,
      O => RamEA_1_X_4_o_Mux_22_o
    );
  Mmux_RamEA_1_X_4_o_Mux_22_o1_F : LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => NlwRenamedSig_OI_ReadFinish,
      I2 => GetTick,
      I3 => RamEA_FSM_FFd2_82,
      O => N25
    );
  Mmux_RamEA_1_X_4_o_Mux_22_o1_G : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => RamEA_FSM_FFd1_81,
      I1 => GetTick,
      I2 => NlwRenamedSig_OI_ReadFinish,
      I3 => RamEA_FSM_FFd2_82,
      O => N26
    );
  Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_lut_0_INV_0 : INV
    port map (
      I => RamCtrl_cntFin(0),
      O => Madd_RamCtrl_cntFin_30_GND_4_o_add_10_OUT_lut_0_Q
    );
  RST_inv1_INV_0 : INV
    port map (
      I => RST,
      O => RST_inv
    );
  RamEA_1_inv1_INV_0 : INV
    port map (
      I => RamEA_FSM_FFd1_81,
      O => RamEA_1_inv
    );

end Structure;

