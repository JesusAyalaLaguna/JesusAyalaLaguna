--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: SENO_synthesis.vhd
-- /___/   /\     Timestamp: Mon Nov 18 13:21:53 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm SENO -w -dir netgen/synthesis -ofmt vhdl -sim SENO.ngc SENO_synthesis.vhd 
-- Device	: xc3s500e-4-fg320
-- Input file	: SENO.ngc
-- Output file	: D:\dsp\ise147\FIR_TB\netgen\synthesis\SENO_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: SENO
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


entity SENO is
  port (
    CLK : in STD_LOGIC; 
    RST : in STD_LOGIC; 
    EN : in STD_LOGIC; 
    FIX : in STD_LOGIC; 
    UP : in STD_LOGIC; 
    DOWN : in STD_LOGIC; 
    MODE : in STD_LOGIC; 
    FOUT : out STD_LOGIC_VECTOR ( 19 downto 0 ); 
    WAVE : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end SENO;

------------------------------------------------------------------ 44100 ------
architecture Structure_44100 of SENO is
  signal Up_tick : STD_LOGIC; 
  signal Down_tick : STD_LOGIC; 
  signal Up_tick_req_39 : STD_LOGIC; 
  signal Down_tick_req_40 : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_10_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_9_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_8_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_7_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_6_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_5_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_4_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_3_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_2_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_1_Q : STD_LOGIC; 
  signal Inc_10_GND_4_o_mux_31_OUT_0_Q : STD_LOGIC; 
  signal hex_in_14_Q : STD_LOGIC; 
  signal hex_in_13_Q : STD_LOGIC; 
  signal hex_in_11_Q : STD_LOGIC; 
  signal hex_in_7_Q : STD_LOGIC; 
  signal hex_in_3_Q : STD_LOGIC; 
  signal hex_in_2_Q : STD_LOGIC; 
  signal hex_in_1_Q : STD_LOGIC; 
  signal Q_n0167 : STD_LOGIC; 
  signal GND_4_o_rd_ptr_12_LessThan_16_o : STD_LOGIC; 
  signal GND_4_o_play_t_30_LessThan_15_o : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_10_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_9_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_8_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_7_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_6_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_5_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_4_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_3_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_2_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_1_Q : STD_LOGIC; 
  signal Inc_10_Inc_10_mux_20_OUT_0_Q : STD_LOGIC; 
  signal BCD_out_19_Q : STD_LOGIC; 
  signal BCD_out_15_Q : STD_LOGIC; 
  signal BCD_out_11_Q : STD_LOGIC; 
  signal BCD_out_10_Q : STD_LOGIC; 
  signal BCD_out_7_Q : STD_LOGIC; 
  signal BCD_out_6_Q : STD_LOGIC; 
  signal resto_12_GND_4_o_LessThan_24_o : STD_LOGIC; 
  signal n0156_13_Q : STD_LOGIC; 
  signal n0156_12_Q : STD_LOGIC; 
  signal n0156_8_Q : STD_LOGIC; 
  signal n0156_7_Q : STD_LOGIC; 
  signal n0156_6_Q : STD_LOGIC; 
  signal n0156_5_Q : STD_LOGIC; 
  signal n0156_4_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_11_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_10_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_9_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_8_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_7_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_6_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_5_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_4_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_3_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_2_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_1_Q : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_0_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_12_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_11_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_10_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_9_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_8_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_7_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_6_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_5_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_4_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_3_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_2_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_1_Q : STD_LOGIC; 
  signal rd_ptr_12_GND_4_o_mux_27_OUT_0_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal Q_n0216_inv : STD_LOGIC; 
  signal Q_n0212_inv : STD_LOGIC; 
  signal Mcount_Gain1 : STD_LOGIC; 
  signal Mcount_Gain2 : STD_LOGIC; 
  signal Mcount_Gain3 : STD_LOGIC; 
  signal Mcount_Gain4 : STD_LOGIC; 
  signal Mcount_Gain5 : STD_LOGIC; 
  signal Mcount_Gain6 : STD_LOGIC; 
  signal Mcount_play_t_val : STD_LOGIC; 
  signal rd_ptr_0_inv : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_0_Q_316 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_0_Q_317 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_1_Q_318 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_1_Q_319 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_Q_320 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_3_Q_321 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_3_Q_322 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_Q_323 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_5_Q_324 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_Q_325 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_1_Q_326 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_1_Q_327 : STD_LOGIC; 
  signal play_t_8_inv : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_2_Q_329 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_2_Q_330 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_3_Q_331 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_4_Q_332 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_4_Q_333 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_5_Q_334 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_5_Q_335 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_6_Q_336 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_6_Q_337 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_7_Q_338 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_7_Q_339 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_8_Q_340 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_8_Q_341 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_9_Q_342 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_0_Q_374 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_0_Q_375 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_1_Q_376 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_1_Q_377 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_2_Q_378 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_2_Q_379 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_3_Q_380 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_3_Q_381 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_4_Q_382 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_4_Q_383 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_5_Q_384 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_5_Q_385 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_6_Q_386 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_6_Q_387 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_7_Q_388 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_7_Q_389 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_8_Q_390 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_8_Q_391 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_9_Q_392 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_9_Q_393 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_10_Q_394 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_10_Q_395 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_11_Q_396 : STD_LOGIC; 
  signal Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_AS_inv : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_0_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_0_Q_424 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_0_Q_425 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_1_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_1_Q_427 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_1_Q_428 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_2_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_2_Q_430 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_2_Q_431 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_3_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_3_Q_433 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_3_Q_434 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_4_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_4_Q_436 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_4_Q_437 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_5_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_5_Q_439 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_5_Q_440 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_6_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_6_Q_442 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_6_Q_443 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_7_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_7_Q_445 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_7_Q_446 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_8_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_8_Q_448 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_8_Q_449 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_9_mand1 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_9_Q_451 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_9_Q_452 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_10_Q_453 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_0_Q_454 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_0_Q_455 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_1_Q_456 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_1_Q_457 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_2_Q_458 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_2_Q_459 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_3_Q_460 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_3_Q_461 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_4_Q_462 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_4_Q_463 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_5_Q_464 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_5_Q_465 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_6_Q_466 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_6_Q_467 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_7_Q_468 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_7_Q_469 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_8_Q_470 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_8_Q_471 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_9_Q_472 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_9_Q_473 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_10_Q_474 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_10_Q_475 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_11_Q_476 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_11_Q_477 : STD_LOGIC; 
  signal Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_12_Q_478 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_3_Q_479 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_3_Q_480 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_4_Q_481 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_5_Q_482 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_5_Q_483 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_6_Q_484 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_7_Q_485 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_7_Q_486 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_8_Q_487 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_8_Q_488 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_13_Q_490 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_13_Q_491 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_lut_14_Q_492 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_cy_14_Q_493 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_4_Q_494 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_6_Q_497 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_8_Q_500 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_9_Q_502 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_14_Q_508 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_lut_15_Q_510 : STD_LOGIC; 
  signal Mcount_Gain_xor_5_11 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_A1011 : STD_LOGIC; 
  signal DebEdge_inst_down_m_tick : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_lut : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd3_In_99 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd1_In_95 : STD_LOGIC; 
  signal DebEdge_inst_down_N10 : STD_LOGIC; 
  signal DebEdge_inst_down_N14 : STD_LOGIC; 
  signal DebEdge_inst_down_N8 : STD_LOGIC; 
  signal DebEdge_inst_down_pos_next1_73 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd2_In_97 : STD_LOGIC; 
  signal DebEdge_inst_down_N7 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd3_98 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd1_94 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd2_96 : STD_LOGIC; 
  signal DebEdge_inst_up_m_tick : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_lut : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd3_In_99 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd1_In_95 : STD_LOGIC; 
  signal DebEdge_inst_up_N10 : STD_LOGIC; 
  signal DebEdge_inst_up_N14 : STD_LOGIC; 
  signal DebEdge_inst_up_N8 : STD_LOGIC; 
  signal DebEdge_inst_up_pos_next1_73 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd2_In_97 : STD_LOGIC; 
  signal DebEdge_inst_up_N7 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd3_98 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd1_94 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd2_96 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_4_11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_8_11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_12_11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_16_11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o13 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742 : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q : STD_LOGIC; 
  signal hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_2_Q : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839 : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_12_LessThan_166_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o : STD_LOGIC; 
  signal hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o : STD_LOGIC; 
  signal Q_n0205_inv21_871 : STD_LOGIC; 
  signal Q_n0205_inv39_872 : STD_LOGIC; 
  signal Q_n0205_inv71_873 : STD_LOGIC; 
  signal Q_n0205_inv107_874 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal Mcount_Gain_xor_5_119_876 : STD_LOGIC; 
  signal Mcount_Gain_xor_5_134_877 : STD_LOGIC; 
  signal Mcount_Gain_xor_5_143_878 : STD_LOGIC; 
  signal Mcount_Gain_xor_5_163_879 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_A1016_881 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_A10110_882 : STD_LOGIC; 
  signal Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883 : STD_LOGIC; 
  signal Q_n0194_inv2_884 : STD_LOGIC; 
  signal Q_n0194_inv9_885 : STD_LOGIC; 
  signal Q_n0194_inv32_886 : STD_LOGIC; 
  signal Q_n0194_inv53_887 : STD_LOGIC; 
  signal Q_n0194_inv57_888 : STD_LOGIC; 
  signal Q_n0194_inv76_889 : STD_LOGIC; 
  signal Q_n0194_inv101_890 : STD_LOGIC; 
  signal Q_n0194_inv104_891 : STD_LOGIC; 
  signal Q_n0194_inv147_892 : STD_LOGIC; 
  signal Mmux_hex_in1532_893 : STD_LOGIC; 
  signal Mmux_hex_in1632_894 : STD_LOGIC; 
  signal Mmux_hex_in1732_895 : STD_LOGIC; 
  signal Mmux_hex_in1932_896 : STD_LOGIC; 
  signal Mmux_hex_in2020 : STD_LOGIC; 
  signal Mmux_hex_in212_898 : STD_LOGIC; 
  signal Mmux_hex_in232_899 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal Mmux_hex_in432_903 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal Mmux_FOUT1416_932 : STD_LOGIC; 
  signal Mmux_FOUT1435_933 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal Msub_resto_lut_1_1 : STD_LOGIC; 
  signal Msub_resto_lut_2_1 : STD_LOGIC; 
  signal Msub_resto_cy_3_rt_937 : STD_LOGIC; 
  signal Msub_resto_cy_4_rt_938 : STD_LOGIC; 
  signal Msub_resto_cy_5_rt_939 : STD_LOGIC; 
  signal Msub_resto_lut_6_1 : STD_LOGIC; 
  signal Msub_resto_lut_7_1 : STD_LOGIC; 
  signal Msub_resto_cy_8_rt_942 : STD_LOGIC; 
  signal Msub_resto_lut_9_1 : STD_LOGIC; 
  signal Msub_resto_lut_10_1 : STD_LOGIC; 
  signal Msub_resto_lut_11_1 : STD_LOGIC; 
  signal Mcount_play_t_cy_1_rt_946 : STD_LOGIC; 
  signal Mcount_play_t_cy_2_rt_947 : STD_LOGIC; 
  signal Mcount_play_t_cy_3_rt_948 : STD_LOGIC; 
  signal Mcount_play_t_cy_4_rt_949 : STD_LOGIC; 
  signal Mcount_play_t_cy_5_rt_950 : STD_LOGIC; 
  signal Mcount_play_t_cy_6_rt_951 : STD_LOGIC; 
  signal Mcount_play_t_cy_7_rt_952 : STD_LOGIC; 
  signal Mcount_play_t_cy_8_rt_953 : STD_LOGIC; 
  signal Mcount_play_t_cy_9_rt_954 : STD_LOGIC; 
  signal Mcount_play_t_cy_10_rt_955 : STD_LOGIC; 
  signal Mcount_play_t_cy_11_rt_956 : STD_LOGIC; 
  signal Mcount_play_t_cy_12_rt_957 : STD_LOGIC; 
  signal Mcount_play_t_cy_13_rt_958 : STD_LOGIC; 
  signal Mcount_play_t_cy_14_rt_959 : STD_LOGIC; 
  signal Mcount_play_t_cy_15_rt_960 : STD_LOGIC; 
  signal Mcount_play_t_cy_16_rt_961 : STD_LOGIC; 
  signal Mcount_play_t_cy_17_rt_962 : STD_LOGIC; 
  signal Mcount_play_t_cy_18_rt_963 : STD_LOGIC; 
  signal Mcount_play_t_cy_19_rt_964 : STD_LOGIC; 
  signal Mcount_play_t_cy_20_rt_965 : STD_LOGIC; 
  signal Mcount_play_t_cy_21_rt_966 : STD_LOGIC; 
  signal Mcount_play_t_cy_22_rt_967 : STD_LOGIC; 
  signal Mcount_play_t_cy_23_rt_968 : STD_LOGIC; 
  signal Mcount_play_t_cy_24_rt_969 : STD_LOGIC; 
  signal Mcount_play_t_cy_25_rt_970 : STD_LOGIC; 
  signal Mcount_play_t_cy_26_rt_971 : STD_LOGIC; 
  signal Mcount_play_t_cy_27_rt_972 : STD_LOGIC; 
  signal Mcount_play_t_cy_28_rt_973 : STD_LOGIC; 
  signal Mcount_play_t_cy_29_rt_974 : STD_LOGIC; 
  signal Mmux_n0156151_975 : STD_LOGIC; 
  signal Mmux_n0156171_976 : STD_LOGIC; 
  signal Mmux_n0158161 : STD_LOGIC; 
  signal Mmux_n0158181 : STD_LOGIC; 
  signal Mmux_n015831 : STD_LOGIC; 
  signal Mmux_n015841 : STD_LOGIC; 
  signal Mmux_n015851 : STD_LOGIC; 
  signal Msub_resto_xor_12_rt_982 : STD_LOGIC; 
  signal Mcount_play_t_xor_30_rt_983 : STD_LOGIC; 
  signal resto_12_inv : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_47_OUT_xor_10_rt_985 : STD_LOGIC; 
  signal Madd_GND_4_o_GND_4_o_add_45_OUT_lut_5_1 : STD_LOGIC; 
  signal Mmux_n015641_987 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_rt_996 : STD_LOGIC; 
  signal Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_rt_997 : STD_LOGIC; 
  signal Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_rt_998 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal Mmux_FOUT21 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_6_11 : STD_LOGIC; 
  signal hex2bcd_i_Mmux_bcd_6_111_1007 : STD_LOGIC; 
  signal Mmux_hex_in14_SW0 : STD_LOGIC; 
  signal Mmux_hex_in14_SW01_1009 : STD_LOGIC; 
  signal Mmux_hex_in14_SW0_f5_1010 : STD_LOGIC; 
  signal Mmux_hex_in7 : STD_LOGIC; 
  signal Mmux_hex_in7_f5_1012 : STD_LOGIC; 
  signal Mmux_hex_in18_SW2 : STD_LOGIC; 
  signal Mmux_hex_in18_SW21_1014 : STD_LOGIC; 
  signal Mmux_hex_in18_SW2_f5_1015 : STD_LOGIC; 
  signal Mmux_hex_in3_SW2 : STD_LOGIC; 
  signal Mmux_hex_in3_SW2_f5_1017 : STD_LOGIC; 
  signal Mmux_hex_in5_SW2 : STD_LOGIC; 
  signal Mmux_hex_in5_SW21_1019 : STD_LOGIC; 
  signal Mmux_hex_in5_SW2_f5_1020 : STD_LOGIC; 
  signal Mmux_hex_in6_SW2 : STD_LOGIC; 
  signal Mmux_hex_in6_SW2_f5_1022 : STD_LOGIC; 
  signal Mmux_hex_in1532_SW0 : STD_LOGIC; 
  signal Mmux_hex_in1532_SW01_1024 : STD_LOGIC; 
  signal Mmux_hex_in1532_SW0_f5_1025 : STD_LOGIC; 
  signal Mmux_hex_in1632_SW0 : STD_LOGIC; 
  signal Mmux_hex_in1632_SW01_1027 : STD_LOGIC; 
  signal Mmux_hex_in1632_SW0_f5_1028 : STD_LOGIC; 
  signal Mmux_hex_in1732_SW0 : STD_LOGIC; 
  signal Mmux_hex_in1732_SW01_1030 : STD_LOGIC; 
  signal Mmux_hex_in1732_SW0_f5_1031 : STD_LOGIC; 
  signal Mmux_hex_in1932_SW0 : STD_LOGIC; 
  signal Mmux_hex_in1932_SW01_1033 : STD_LOGIC; 
  signal Mmux_hex_in1932_SW0_f5_1034 : STD_LOGIC; 
  signal Mmux_hex_in20201_1035 : STD_LOGIC; 
  signal Mmux_hex_in432_SW0 : STD_LOGIC; 
  signal Mmux_hex_in432_SW01_1037 : STD_LOGIC; 
  signal Mmux_hex_in432_SW0_f5_1038 : STD_LOGIC; 
  signal Mmux_FOUT201 : STD_LOGIC; 
  signal Mmux_FOUT2011_1040 : STD_LOGIC; 
  signal Mmux_FOUT191 : STD_LOGIC; 
  signal Mmux_FOUT1911_1042 : STD_LOGIC; 
  signal Mmux_FOUT161 : STD_LOGIC; 
  signal Mmux_FOUT1611_1044 : STD_LOGIC; 
  signal Mmux_FOUT151 : STD_LOGIC; 
  signal Mmux_FOUT1511_1046 : STD_LOGIC; 
  signal Mmux_FOUT51 : STD_LOGIC; 
  signal Mmux_FOUT511_1048 : STD_LOGIC; 
  signal Mmux_FOUT41 : STD_LOGIC; 
  signal Mmux_FOUT411_1050 : STD_LOGIC; 

  signal Inc : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Gain : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal rd_ptr : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal play_t : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal rd_ptr_u : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal resto : STD_LOGIC_VECTOR ( 12 downto 1 ); 
  signal GND_4_o_GND_4_o_sub_25_OUT : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal n0158 : STD_LOGIC_VECTOR ( 10 downto 10 ); 
  signal DOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal GND_4_o_GND_4_o_add_47_OUT : STD_LOGIC_VECTOR ( 15 downto 3 ); 
  signal GND_4_o_GND_4_o_add_49_OUT : STD_LOGIC_VECTOR ( 16 downto 4 ); 
  signal Mcount_Gain_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal Result : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal Msub_resto_cy : STD_LOGIC_VECTOR ( 11 downto 1 ); 
  signal Mcount_play_t_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_play_t_cy : STD_LOGIC_VECTOR ( 29 downto 0 ); 
  signal Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Madd_GND_4_o_GND_4_o_add_49_OUT_cy : STD_LOGIC_VECTOR ( 15 downto 4 ); 
  signal DebEdge_inst_down_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_down_Mcount_q_reg_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal DebEdge_inst_down_q_reg : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_up_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_up_Mcount_q_reg_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal DebEdge_inst_up_q_reg : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal hex2bcd_i_Madd_n0578_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_n0573_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_n0568_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_128_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_96_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_64_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  
  signal DOUT_amp_P_35_21: STD_LOGIC_VECTOR ( 35 downto 21 );
  signal DOUT_amp_P_4_0: STD_LOGIC_VECTOR (4 downto 0);
  signal rd_ptr_u_P_35_15: STD_LOGIC_VECTOR ( 35 downto 15 );
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q
    );
  Down_tick_req : FDRSE
    port map (
      C => CLK,
      CE => Q_n0216_inv,
      D => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      R => RST,
      S => Q_n0167,
      Q => Down_tick_req_40
    );
  Up_tick_req : FDRSE
    port map (
      C => CLK,
      CE => Q_n0212_inv,
      D => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      R => RST,
      S => Up_tick,
      Q => Up_tick_req_39
    );
  Inc_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_0_Q,
      Q => Inc(0)
    );
  Inc_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_1_Q,
      Q => Inc(1)
    );
  Inc_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_2_Q,
      Q => Inc(2)
    );
  Inc_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_3_Q,
      Q => Inc(3)
    );
  Inc_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_4_Q,
      Q => Inc(4)
    );
  Inc_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_5_Q,
      Q => Inc(5)
    );
  Inc_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_6_Q,
      Q => Inc(6)
    );
  Inc_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_7_Q,
      Q => Inc(7)
    );
  Inc_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_8_Q,
      Q => Inc(8)
    );
  Inc_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_9_Q,
      Q => Inc(9)
    );
  Inc_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0194_inv147_892,
      D => Inc_10_GND_4_o_mux_31_OUT_10_Q,
      Q => Inc(10)
    );
  rd_ptr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_0_Q,
      R => RST,
      Q => rd_ptr(0)
    );
  rd_ptr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_1_Q,
      R => RST,
      Q => rd_ptr(1)
    );
  rd_ptr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_2_Q,
      R => RST,
      Q => rd_ptr(2)
    );
  rd_ptr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_3_Q,
      R => RST,
      Q => rd_ptr(3)
    );
  rd_ptr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_4_Q,
      R => RST,
      Q => rd_ptr(4)
    );
  rd_ptr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_5_Q,
      R => RST,
      Q => rd_ptr(5)
    );
  rd_ptr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_6_Q,
      R => RST,
      Q => rd_ptr(6)
    );
  rd_ptr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_7_Q,
      R => RST,
      Q => rd_ptr(7)
    );
  rd_ptr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_8_Q,
      R => RST,
      Q => rd_ptr(8)
    );
  rd_ptr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_9_Q,
      R => RST,
      Q => rd_ptr(9)
    );
  rd_ptr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_10_Q,
      R => RST,
      Q => rd_ptr(10)
    );
  rd_ptr_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_11_Q,
      R => RST,
      Q => rd_ptr(11)
    );
  rd_ptr_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_12_GND_4_o_mux_27_OUT_12_Q,
      R => RST,
      Q => rd_ptr(12)
    );
  Mmult_rd_ptr_u_14_0_Q : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CEB => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CEP => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CLK => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTA => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTB => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTP => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(17) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(16) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(15) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(14) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(13) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(12) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(11) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(10) => Inc(10),
      A(9) => Inc(9),
      A(8) => Inc(8),
      A(7) => Inc(7),
      A(6) => Inc(6),
      A(5) => Inc(5),
      A(4) => Inc(4),
      A(3) => Inc(3),
      A(2) => Inc(2),
      A(1) => Inc(1),
      A(0) => Inc(0),
      B(17) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(16) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(15) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(14) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(13) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(12) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(11) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(10) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(9) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(8) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(7) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(6) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(5) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(4) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(3) => N0,
      B(2) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      B(1) => N0,
      B(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      BCIN => (others=>'0'),
      P(35 downto 15) => rd_ptr_u_P_35_15,
      P(14) => rd_ptr_u(14),
      P(13) => rd_ptr_u(13),
      P(12) => rd_ptr_u(12),
      P(11) => rd_ptr_u(11),
      P(10) => rd_ptr_u(10),
      P(9) => rd_ptr_u(9),
      P(8) => rd_ptr_u(8),
      P(7) => rd_ptr_u(7),
      P(6) => rd_ptr_u(6),
      P(5) => rd_ptr_u(5),
      P(4) => rd_ptr_u(4),
      P(3) => rd_ptr_u(3),
      P(2) => rd_ptr_u(2),
      P(1) => rd_ptr_u(1),
      P(0) => rd_ptr_u(0),
      BCOUT => open
    );
  Mmult_DOUT_amp : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CEB => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CEP => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      CLK => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTA => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTB => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      RSTP => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      A(17) => DOUT(15),
      A(16) => DOUT(15),
      A(15) => DOUT(15),
      A(14) => DOUT(14),
      A(13) => DOUT(13),
      A(12) => DOUT(12),
      A(11) => DOUT(11),
      A(10) => DOUT(10),
      A(9) => DOUT(9),
      A(8) => DOUT(8),
      A(7) => DOUT(7),
      A(6) => DOUT(6),
      A(5) => DOUT(5),
      A(4) => DOUT(4),
      A(3) => DOUT(3),
      A(2) => DOUT(2),
      A(1) => DOUT(1),
      A(0) => DOUT(0),
      B(17) => Gain(5),
      B(16) => Gain(5),
      B(15) => Gain(5),
      B(14) => Gain(5),
      B(13) => Gain(5),
      B(12) => Gain(5),
      B(11) => Gain(5),
      B(10) => Gain(5),
      B(9) => Gain(5),
      B(8) => Gain(5),
      B(7) => Gain(5),
      B(6) => Gain(5),
      B(5) => Gain(5),
      B(4) => Gain(4),
      B(3) => Gain(3),
      B(2) => Gain(2),
      B(1) => Gain(1),
      B(0) => Gain(0),
      BCIN => (others=>'0'),
      P(35 downto 21) => DOUT_amp_P_35_21,
      P(20) => WAVE(15),
      P(19) => WAVE(14),
      P(18) => WAVE(13),
      P(17) => WAVE(12),
      P(16) => WAVE(11),
      P(15) => WAVE(10),
      P(14) => WAVE(9),
      P(13) => WAVE(8),
      P(12) => WAVE(7),
      P(11) => WAVE(6),
      P(10) => WAVE(5),
      P(9) => WAVE(4),
      P(8) => WAVE(3),
      P(7) => WAVE(2),
      P(6) => WAVE(1),
      P(5) => WAVE(0),
      P(4 downto 0) => DOUT_amp_P_4_0,
      BCOUT => open

    );
  Gain_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain1,
      Q => Gain(0)
    );
  Gain_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain2,
      Q => Gain(1)
    );
  Gain_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain3,
      Q => Gain(2)
    );
  Gain_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain4,
      Q => Gain(3)
    );
  Gain_4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain5,
      Q => Gain(4)
    );
  Gain_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Q_n0205_inv107_874,
      D => Mcount_Gain6,
      Q => Gain(5)
    );
  play_t_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(1),
      R => Mcount_play_t_val,
      Q => play_t(1)
    );
  play_t_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(2),
      R => Mcount_play_t_val,
      Q => play_t(2)
    );
  play_t_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(3),
      R => Mcount_play_t_val,
      Q => play_t(3)
    );
  play_t_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(4),
      R => Mcount_play_t_val,
      Q => play_t(4)
    );
  play_t_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(5),
      R => Mcount_play_t_val,
      Q => play_t(5)
    );
  play_t_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(6),
      R => Mcount_play_t_val,
      Q => play_t(6)
    );
  play_t_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(7),
      R => Mcount_play_t_val,
      Q => play_t(7)
    );
  play_t_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(8),
      R => Mcount_play_t_val,
      Q => play_t(8)
    );
  play_t_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(9),
      R => Mcount_play_t_val,
      Q => play_t(9)
    );
  play_t_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(10),
      R => Mcount_play_t_val,
      Q => play_t(10)
    );
  play_t_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(11),
      R => Mcount_play_t_val,
      Q => play_t(11)
    );
  play_t_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(12),
      R => Mcount_play_t_val,
      Q => play_t(12)
    );
  play_t_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(15),
      R => Mcount_play_t_val,
      Q => play_t(15)
    );
  play_t_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(13),
      R => Mcount_play_t_val,
      Q => play_t(13)
    );
  play_t_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(14),
      R => Mcount_play_t_val,
      Q => play_t(14)
    );
  play_t_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(16),
      R => Mcount_play_t_val,
      Q => play_t(16)
    );
  play_t_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(17),
      R => Mcount_play_t_val,
      Q => play_t(17)
    );
  play_t_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(18),
      R => Mcount_play_t_val,
      Q => play_t(18)
    );
  play_t_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(19),
      R => Mcount_play_t_val,
      Q => play_t(19)
    );
  play_t_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(20),
      R => Mcount_play_t_val,
      Q => play_t(20)
    );
  play_t_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(21),
      R => Mcount_play_t_val,
      Q => play_t(21)
    );
  play_t_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(22),
      R => Mcount_play_t_val,
      Q => play_t(22)
    );
  play_t_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(23),
      R => Mcount_play_t_val,
      Q => play_t(23)
    );
  play_t_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(24),
      R => Mcount_play_t_val,
      Q => play_t(24)
    );
  play_t_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(25),
      R => Mcount_play_t_val,
      Q => play_t(25)
    );
  play_t_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(26),
      R => Mcount_play_t_val,
      Q => play_t(26)
    );
  play_t_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(27),
      R => Mcount_play_t_val,
      Q => play_t(27)
    );
  play_t_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(30),
      R => Mcount_play_t_val,
      Q => play_t(30)
    );
  play_t_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(28),
      R => Mcount_play_t_val,
      Q => play_t(28)
    );
  play_t_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(29),
      R => Mcount_play_t_val,
      Q => play_t(29)
    );
  play_t_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(0),
      R => Mcount_play_t_val,
      Q => play_t(0)
    );
  Msub_resto_cy_1_Q : MUXCY
    port map (
      CI => N0,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_1_1,
      O => Msub_resto_cy(1)
    );
  Msub_resto_xor_1_Q : XORCY
    port map (
      CI => N0,
      LI => Msub_resto_lut_1_1,
      O => resto(1)
    );
  Msub_resto_cy_2_Q : MUXCY
    port map (
      CI => Msub_resto_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_2_1,
      O => Msub_resto_cy(2)
    );
  Msub_resto_xor_2_Q : XORCY
    port map (
      CI => Msub_resto_cy(1),
      LI => Msub_resto_lut_2_1,
      O => resto(2)
    );
  Msub_resto_cy_3_Q : MUXCY
    port map (
      CI => Msub_resto_cy(2),
      DI => N0,
      S => Msub_resto_cy_3_rt_937,
      O => Msub_resto_cy(3)
    );
  Msub_resto_xor_3_Q : XORCY
    port map (
      CI => Msub_resto_cy(2),
      LI => Msub_resto_cy_3_rt_937,
      O => resto(3)
    );
  Msub_resto_cy_4_Q : MUXCY
    port map (
      CI => Msub_resto_cy(3),
      DI => N0,
      S => Msub_resto_cy_4_rt_938,
      O => Msub_resto_cy(4)
    );
  Msub_resto_xor_4_Q : XORCY
    port map (
      CI => Msub_resto_cy(3),
      LI => Msub_resto_cy_4_rt_938,
      O => resto(4)
    );
  Msub_resto_cy_5_Q : MUXCY
    port map (
      CI => Msub_resto_cy(4),
      DI => N0,
      S => Msub_resto_cy_5_rt_939,
      O => Msub_resto_cy(5)
    );
  Msub_resto_xor_5_Q : XORCY
    port map (
      CI => Msub_resto_cy(4),
      LI => Msub_resto_cy_5_rt_939,
      O => resto(5)
    );
  Msub_resto_cy_6_Q : MUXCY
    port map (
      CI => Msub_resto_cy(5),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_6_1,
      O => Msub_resto_cy(6)
    );
  Msub_resto_xor_6_Q : XORCY
    port map (
      CI => Msub_resto_cy(5),
      LI => Msub_resto_lut_6_1,
      O => resto(6)
    );
  Msub_resto_cy_7_Q : MUXCY
    port map (
      CI => Msub_resto_cy(6),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_7_1,
      O => Msub_resto_cy(7)
    );
  Msub_resto_xor_7_Q : XORCY
    port map (
      CI => Msub_resto_cy(6),
      LI => Msub_resto_lut_7_1,
      O => resto(7)
    );
  Msub_resto_cy_8_Q : MUXCY
    port map (
      CI => Msub_resto_cy(7),
      DI => N0,
      S => Msub_resto_cy_8_rt_942,
      O => Msub_resto_cy(8)
    );
  Msub_resto_xor_8_Q : XORCY
    port map (
      CI => Msub_resto_cy(7),
      LI => Msub_resto_cy_8_rt_942,
      O => resto(8)
    );
  Msub_resto_cy_9_Q : MUXCY
    port map (
      CI => Msub_resto_cy(8),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_9_1,
      O => Msub_resto_cy(9)
    );
  Msub_resto_xor_9_Q : XORCY
    port map (
      CI => Msub_resto_cy(8),
      LI => Msub_resto_lut_9_1,
      O => resto(9)
    );
  Msub_resto_cy_10_Q : MUXCY
    port map (
      CI => Msub_resto_cy(9),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_10_1,
      O => Msub_resto_cy(10)
    );
  Msub_resto_xor_10_Q : XORCY
    port map (
      CI => Msub_resto_cy(9),
      LI => Msub_resto_lut_10_1,
      O => resto(10)
    );
  Msub_resto_cy_11_Q : MUXCY
    port map (
      CI => Msub_resto_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_resto_lut_11_1,
      O => Msub_resto_cy(11)
    );
  Msub_resto_xor_11_Q : XORCY
    port map (
      CI => Msub_resto_cy(10),
      LI => Msub_resto_lut_11_1,
      O => resto(11)
    );
  Msub_resto_xor_12_Q : XORCY
    port map (
      CI => Msub_resto_cy(11),
      LI => Msub_resto_xor_12_rt_982,
      O => resto(12)
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_0_Q_316,
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_0_Q_317
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_0_Q_317,
      DI => N0,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_1_Q_318,
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_1_Q_319
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_1_Q_319,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_rt_996,
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_Q_320
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_Q_320,
      DI => N0,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_3_Q_321,
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_3_Q_322
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_3_Q_322,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_rt_997,
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_Q_323
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_Q_323,
      DI => N0,
      S => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_5_Q_324,
      O => GND_4_o_rd_ptr_12_LessThan_16_o
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_rt_998,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_Q_325
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_Q_325,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_1_Q_326,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_1_Q_327
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_1_Q_327,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_2_Q_329,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_2_Q_330
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_2_Q_330,
      DI => N0,
      S => play_t_8_inv,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_3_Q_331
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_3_Q_331,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_4_Q_332,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_4_Q_333
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_4_Q_333,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_5_Q_334,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_5_Q_335
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_5_Q_335,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_6_Q_336,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_6_Q_337
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_6_Q_337,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_7_Q_338,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_7_Q_339
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_7_Q_339,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_8_Q_340,
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_8_Q_341
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_8_Q_341,
      DI => N0,
      S => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_9_Q_342,
      O => GND_4_o_play_t_30_LessThan_15_o
    );
  Mcount_play_t_cy_0_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => Mcount_play_t_lut(0),
      O => Mcount_play_t_cy(0)
    );
  Mcount_play_t_xor_0_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Mcount_play_t_lut(0),
      O => Result(0)
    );
  Mcount_play_t_cy_1_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(0),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_1_rt_946,
      O => Mcount_play_t_cy(1)
    );
  Mcount_play_t_xor_1_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(0),
      LI => Mcount_play_t_cy_1_rt_946,
      O => Result(1)
    );
  Mcount_play_t_cy_2_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_2_rt_947,
      O => Mcount_play_t_cy(2)
    );
  Mcount_play_t_xor_2_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(1),
      LI => Mcount_play_t_cy_2_rt_947,
      O => Result(2)
    );
  Mcount_play_t_cy_3_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(2),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_3_rt_948,
      O => Mcount_play_t_cy(3)
    );
  Mcount_play_t_xor_3_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(2),
      LI => Mcount_play_t_cy_3_rt_948,
      O => Result(3)
    );
  Mcount_play_t_cy_4_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(3),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_4_rt_949,
      O => Mcount_play_t_cy(4)
    );
  Mcount_play_t_xor_4_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(3),
      LI => Mcount_play_t_cy_4_rt_949,
      O => Result(4)
    );
  Mcount_play_t_cy_5_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(4),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_5_rt_950,
      O => Mcount_play_t_cy(5)
    );
  Mcount_play_t_xor_5_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(4),
      LI => Mcount_play_t_cy_5_rt_950,
      O => Result(5)
    );
  Mcount_play_t_cy_6_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(5),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_6_rt_951,
      O => Mcount_play_t_cy(6)
    );
  Mcount_play_t_xor_6_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(5),
      LI => Mcount_play_t_cy_6_rt_951,
      O => Result(6)
    );
  Mcount_play_t_cy_7_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(6),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_7_rt_952,
      O => Mcount_play_t_cy(7)
    );
  Mcount_play_t_xor_7_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(6),
      LI => Mcount_play_t_cy_7_rt_952,
      O => Result(7)
    );
  Mcount_play_t_cy_8_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(7),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_8_rt_953,
      O => Mcount_play_t_cy(8)
    );
  Mcount_play_t_xor_8_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(7),
      LI => Mcount_play_t_cy_8_rt_953,
      O => Result(8)
    );
  Mcount_play_t_cy_9_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(8),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_9_rt_954,
      O => Mcount_play_t_cy(9)
    );
  Mcount_play_t_xor_9_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(8),
      LI => Mcount_play_t_cy_9_rt_954,
      O => Result(9)
    );
  Mcount_play_t_cy_10_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(9),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_10_rt_955,
      O => Mcount_play_t_cy(10)
    );
  Mcount_play_t_xor_10_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(9),
      LI => Mcount_play_t_cy_10_rt_955,
      O => Result(10)
    );
  Mcount_play_t_cy_11_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_11_rt_956,
      O => Mcount_play_t_cy(11)
    );
  Mcount_play_t_xor_11_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(10),
      LI => Mcount_play_t_cy_11_rt_956,
      O => Result(11)
    );
  Mcount_play_t_cy_12_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(11),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_12_rt_957,
      O => Mcount_play_t_cy(12)
    );
  Mcount_play_t_xor_12_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(11),
      LI => Mcount_play_t_cy_12_rt_957,
      O => Result(12)
    );
  Mcount_play_t_cy_13_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(12),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_13_rt_958,
      O => Mcount_play_t_cy(13)
    );
  Mcount_play_t_xor_13_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(12),
      LI => Mcount_play_t_cy_13_rt_958,
      O => Result(13)
    );
  Mcount_play_t_cy_14_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(13),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_14_rt_959,
      O => Mcount_play_t_cy(14)
    );
  Mcount_play_t_xor_14_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(13),
      LI => Mcount_play_t_cy_14_rt_959,
      O => Result(14)
    );
  Mcount_play_t_cy_15_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(14),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_15_rt_960,
      O => Mcount_play_t_cy(15)
    );
  Mcount_play_t_xor_15_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(14),
      LI => Mcount_play_t_cy_15_rt_960,
      O => Result(15)
    );
  Mcount_play_t_cy_16_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(15),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_16_rt_961,
      O => Mcount_play_t_cy(16)
    );
  Mcount_play_t_xor_16_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(15),
      LI => Mcount_play_t_cy_16_rt_961,
      O => Result(16)
    );
  Mcount_play_t_cy_17_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(16),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_17_rt_962,
      O => Mcount_play_t_cy(17)
    );
  Mcount_play_t_xor_17_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(16),
      LI => Mcount_play_t_cy_17_rt_962,
      O => Result(17)
    );
  Mcount_play_t_cy_18_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(17),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_18_rt_963,
      O => Mcount_play_t_cy(18)
    );
  Mcount_play_t_xor_18_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(17),
      LI => Mcount_play_t_cy_18_rt_963,
      O => Result(18)
    );
  Mcount_play_t_cy_19_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(18),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_19_rt_964,
      O => Mcount_play_t_cy(19)
    );
  Mcount_play_t_xor_19_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(18),
      LI => Mcount_play_t_cy_19_rt_964,
      O => Result(19)
    );
  Mcount_play_t_cy_20_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(19),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_20_rt_965,
      O => Mcount_play_t_cy(20)
    );
  Mcount_play_t_xor_20_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(19),
      LI => Mcount_play_t_cy_20_rt_965,
      O => Result(20)
    );
  Mcount_play_t_cy_21_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(20),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_21_rt_966,
      O => Mcount_play_t_cy(21)
    );
  Mcount_play_t_xor_21_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(20),
      LI => Mcount_play_t_cy_21_rt_966,
      O => Result(21)
    );
  Mcount_play_t_cy_22_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(21),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_22_rt_967,
      O => Mcount_play_t_cy(22)
    );
  Mcount_play_t_xor_22_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(21),
      LI => Mcount_play_t_cy_22_rt_967,
      O => Result(22)
    );
  Mcount_play_t_cy_23_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(22),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_23_rt_968,
      O => Mcount_play_t_cy(23)
    );
  Mcount_play_t_xor_23_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(22),
      LI => Mcount_play_t_cy_23_rt_968,
      O => Result(23)
    );
  Mcount_play_t_cy_24_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(23),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_24_rt_969,
      O => Mcount_play_t_cy(24)
    );
  Mcount_play_t_xor_24_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(23),
      LI => Mcount_play_t_cy_24_rt_969,
      O => Result(24)
    );
  Mcount_play_t_cy_25_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(24),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_25_rt_970,
      O => Mcount_play_t_cy(25)
    );
  Mcount_play_t_xor_25_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(24),
      LI => Mcount_play_t_cy_25_rt_970,
      O => Result(25)
    );
  Mcount_play_t_cy_26_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(25),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_26_rt_971,
      O => Mcount_play_t_cy(26)
    );
  Mcount_play_t_xor_26_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(25),
      LI => Mcount_play_t_cy_26_rt_971,
      O => Result(26)
    );
  Mcount_play_t_cy_27_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(26),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_27_rt_972,
      O => Mcount_play_t_cy(27)
    );
  Mcount_play_t_xor_27_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(26),
      LI => Mcount_play_t_cy_27_rt_972,
      O => Result(27)
    );
  Mcount_play_t_cy_28_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(27),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_28_rt_973,
      O => Mcount_play_t_cy(28)
    );
  Mcount_play_t_xor_28_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(27),
      LI => Mcount_play_t_cy_28_rt_973,
      O => Result(28)
    );
  Mcount_play_t_cy_29_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(28),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mcount_play_t_cy_29_rt_974,
      O => Mcount_play_t_cy(29)
    );
  Mcount_play_t_xor_29_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(28),
      LI => Mcount_play_t_cy_29_rt_974,
      O => Result(29)
    );
  Mcount_play_t_xor_30_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(29),
      LI => Mcount_play_t_xor_30_rt_983,
      O => Result(30)
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(0),
      I1 => rd_ptr_0_inv,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_0_Q_374
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => rd_ptr_0_inv,
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_0_Q_374,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_0_Q_375
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(1),
      I1 => resto(1),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_1_Q_376
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_0_Q_375,
      DI => resto(1),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_1_Q_376,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_1_Q_377
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(2),
      I1 => resto(2),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_2_Q_378
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_1_Q_377,
      DI => resto(2),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_2_Q_378,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_2_Q_379
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(3),
      I1 => resto(3),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_3_Q_380
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_2_Q_379,
      DI => resto(3),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_3_Q_380,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_3_Q_381
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(4),
      I1 => resto(4),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_4_Q_382
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_3_Q_381,
      DI => resto(4),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_4_Q_382,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_4_Q_383
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(5),
      I1 => resto(5),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_5_Q_384
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_4_Q_383,
      DI => resto(5),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_5_Q_384,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_5_Q_385
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(6),
      I1 => resto(6),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_6_Q_386
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_5_Q_385,
      DI => resto(6),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_6_Q_386,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_6_Q_387
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(7),
      I1 => resto(7),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_7_Q_388
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_6_Q_387,
      DI => resto(7),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_7_Q_388,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_7_Q_389
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(8),
      I1 => resto(8),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_8_Q_390
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_7_Q_389,
      DI => resto(8),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_8_Q_390,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_8_Q_391
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(9),
      I1 => resto(9),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_9_Q_392
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_8_Q_391,
      DI => resto(9),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_9_Q_392,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_9_Q_393
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(10),
      I1 => resto(10),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_10_Q_394
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_9_Q_393,
      DI => resto(10),
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_10_Q_394,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_10_Q_395
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_10_Q_395,
      DI => N0,
      S => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_11_Q_396,
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(0),
      I1 => rd_ptr_0_inv,
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(0)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Inc(0),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(0),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(0)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(0),
      O => GND_4_o_GND_4_o_sub_25_OUT(0)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_1_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(1),
      I1 => resto(1),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(1)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_1_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(0),
      DI => Inc(1),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(1),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(1)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_1_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(0),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(1),
      O => GND_4_o_GND_4_o_sub_25_OUT(1)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_2_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(2),
      I1 => resto(2),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(2)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_2_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(1),
      DI => Inc(2),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(2),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(2)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_2_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(1),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(2),
      O => GND_4_o_GND_4_o_sub_25_OUT(2)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_3_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(3),
      I1 => resto(3),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(3)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_3_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(2),
      DI => Inc(3),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(3),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(3)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_3_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(2),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(3),
      O => GND_4_o_GND_4_o_sub_25_OUT(3)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_4_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(4),
      I1 => resto(4),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(4)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_4_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(3),
      DI => Inc(4),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(4),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(4)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_4_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(3),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(4),
      O => GND_4_o_GND_4_o_sub_25_OUT(4)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_5_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(5),
      I1 => resto(5),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(5)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_5_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(4),
      DI => Inc(5),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(5),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(5)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_5_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(4),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(5),
      O => GND_4_o_GND_4_o_sub_25_OUT(5)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_6_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(6),
      I1 => resto(6),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(6)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_6_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(5),
      DI => Inc(6),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(6),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(6)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_6_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(5),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(6),
      O => GND_4_o_GND_4_o_sub_25_OUT(6)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_7_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(7),
      I1 => resto(7),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(7)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_7_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(6),
      DI => Inc(7),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(7),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(7)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_7_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(6),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(7),
      O => GND_4_o_GND_4_o_sub_25_OUT(7)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_8_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(8),
      I1 => resto(8),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(8)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_8_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(7),
      DI => Inc(8),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(8),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(8)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_8_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(7),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(8),
      O => GND_4_o_GND_4_o_sub_25_OUT(8)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(9),
      I1 => resto(9),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(9)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_9_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(8),
      DI => Inc(9),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(9),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(9)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_9_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(8),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(9),
      O => GND_4_o_GND_4_o_sub_25_OUT(9)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_10_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(10),
      I1 => resto(10),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(10)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_10_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(9),
      DI => Inc(10),
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(10),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(10)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_10_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(9),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(10),
      O => GND_4_o_GND_4_o_sub_25_OUT(10)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy_11_Q : MUXCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(11),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(11)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_11_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(10),
      LI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(11),
      O => GND_4_o_GND_4_o_sub_25_OUT(11)
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_xor_12_Q : XORCY
    port map (
      CI => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_cy(11),
      LI => resto_12_inv,
      O => GND_4_o_GND_4_o_sub_25_OUT(12)
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_0_mand : MULT_AND
    port map (
      I0 => Inc(0),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_0_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_AS_inv,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_0_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_0_Q_424,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_0_Q_425
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_AS_inv,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_0_Q_424,
      O => Inc_10_Inc_10_mux_20_OUT_0_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_1_mand : MULT_AND
    port map (
      I0 => Inc(1),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_1_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_0_Q_425,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_1_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_1_Q_427,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_1_Q_428
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_0_Q_425,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_1_Q_427,
      O => Inc_10_Inc_10_mux_20_OUT_1_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_2_mand : MULT_AND
    port map (
      I0 => Inc(2),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_2_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_1_Q_428,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_2_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_2_Q_430,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_2_Q_431
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_1_Q_428,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_2_Q_430,
      O => Inc_10_Inc_10_mux_20_OUT_2_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_3_mand : MULT_AND
    port map (
      I0 => Inc(3),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_3_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_2_Q_431,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_3_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_3_Q_433,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_3_Q_434
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_2_Q_431,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_3_Q_433,
      O => Inc_10_Inc_10_mux_20_OUT_3_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_4_mand : MULT_AND
    port map (
      I0 => Inc(4),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_4_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_3_Q_434,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_4_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_4_Q_436,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_4_Q_437
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_3_Q_434,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_4_Q_436,
      O => Inc_10_Inc_10_mux_20_OUT_4_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_5_mand : MULT_AND
    port map (
      I0 => Inc(5),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_5_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_4_Q_437,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_5_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_5_Q_439,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_5_Q_440
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_4_Q_437,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_5_Q_439,
      O => Inc_10_Inc_10_mux_20_OUT_5_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_6_mand : MULT_AND
    port map (
      I0 => Inc(6),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_6_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_5_Q_440,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_6_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_6_Q_442,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_6_Q_443
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_5_Q_440,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_6_Q_442,
      O => Inc_10_Inc_10_mux_20_OUT_6_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_7_mand : MULT_AND
    port map (
      I0 => Inc(7),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_7_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_6_Q_443,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_7_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_7_Q_445,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_7_Q_446
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_6_Q_443,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_7_Q_445,
      O => Inc_10_Inc_10_mux_20_OUT_7_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_8_mand : MULT_AND
    port map (
      I0 => Inc(8),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_8_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_7_Q_446,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_8_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_8_Q_448,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_8_Q_449
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_7_Q_446,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_8_Q_448,
      O => Inc_10_Inc_10_mux_20_OUT_8_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_9_mand : MULT_AND
    port map (
      I0 => Inc(9),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_9_mand1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_8_Q_449,
      DI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_A_9_mand1,
      S => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_9_Q_451,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_9_Q_452
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_8_Q_449,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_9_Q_451,
      O => Inc_10_Inc_10_mux_20_OUT_9_Q
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_cy_9_Q_452,
      LI => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_10_Q_453,
      O => Inc_10_Inc_10_mux_20_OUT_10_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => resto_12_GND_4_o_LessThan_24_o,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_0_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_0_Q_454,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_0_Q_455
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => resto_12_GND_4_o_LessThan_24_o,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_0_Q_454,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_0_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_0_Q_455,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_1_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_1_Q_456,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_1_Q_457
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_0_Q_455,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_1_Q_456,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_1_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_1_Q_457,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_2_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_2_Q_458,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_2_Q_459
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_1_Q_457,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_2_Q_458,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_2_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_2_Q_459,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_3_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_3_Q_460,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_3_Q_461
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_2_Q_459,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_3_Q_460,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_3_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_3_Q_461,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_4_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_4_Q_462,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_4_Q_463
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_3_Q_461,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_4_Q_462,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_4_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_4_Q_463,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_5_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_5_Q_464,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_5_Q_465
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_4_Q_463,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_5_Q_464,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_5_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_5_Q_465,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_6_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_6_Q_466,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_6_Q_467
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_5_Q_465,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_6_Q_466,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_6_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_6_Q_467,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_7_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_7_Q_468,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_7_Q_469
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_6_Q_467,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_7_Q_468,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_7_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_7_Q_469,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_8_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_8_Q_470,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_8_Q_471
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_7_Q_469,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_8_Q_470,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_8_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_8_Q_471,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_9_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_9_Q_472,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_9_Q_473
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_8_Q_471,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_9_Q_472,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_9_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_10_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_9_Q_473,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_10_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_10_Q_474,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_10_Q_475
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_9_Q_473,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_10_Q_474,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_10_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_11_Q : MUXCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_10_Q_475,
      DI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_11_Q,
      S => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_11_Q_476,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_11_Q_477
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_11_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_10_Q_475,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_11_Q_476,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_11_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_xor_12_Q : XORCY
    port map (
      CI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_cy_11_Q_477,
      LI => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_12_Q_478,
      O => rd_ptr_12_GND_4_o_mux_27_OUT_12_Q
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_3_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_3_Q_479,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_3_Q_480
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_3_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_3_Q_479,
      O => GND_4_o_GND_4_o_add_47_OUT(3)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_3_Q_480,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n0156151_975,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_4_Q_481
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_3_Q_480,
      LI => Mmux_n0156151_975,
      O => GND_4_o_GND_4_o_add_47_OUT(4)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_4_Q_481,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_5_Q_482,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_5_Q_483
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_4_Q_481,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_5_Q_482,
      O => GND_4_o_GND_4_o_add_47_OUT(5)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_5_Q_483,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n0156171_976,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_6_Q_484
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_5_Q_483,
      LI => Mmux_n0156171_976,
      O => GND_4_o_GND_4_o_add_47_OUT(6)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_6_Q_484,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_7_Q_485,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_7_Q_486
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_6_Q_484,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_7_Q_485,
      O => GND_4_o_GND_4_o_add_47_OUT(7)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_7_Q_486,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_8_Q_487,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_8_Q_488
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_7_Q_486,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_8_Q_487,
      O => GND_4_o_GND_4_o_add_47_OUT(8)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_8_Q_488,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      O => GND_4_o_GND_4_o_add_47_OUT(9)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_xor_10_rt_985,
      O => GND_4_o_GND_4_o_add_47_OUT(10)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Madd_GND_4_o_GND_4_o_add_45_OUT_lut_5_1,
      O => GND_4_o_GND_4_o_add_47_OUT(11)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Mmux_n015641_987,
      O => GND_4_o_GND_4_o_add_47_OUT(12)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_13_Q_490,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_13_Q_491
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_13_Q_490,
      O => GND_4_o_GND_4_o_add_47_OUT(13)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_13_Q_491,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_14_Q_492,
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_14_Q_493
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_13_Q_491,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_14_Q_492,
      O => GND_4_o_GND_4_o_add_47_OUT(14)
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_14_Q_493,
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      O => GND_4_o_GND_4_o_add_47_OUT(15)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_4_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_4_Q_494,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(4)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_4_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_4_Q_494,
      O => GND_4_o_GND_4_o_add_49_OUT(4)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_5_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(4),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n0158161,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(5)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_5_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(4),
      LI => Mmux_n0158161,
      O => GND_4_o_GND_4_o_add_49_OUT(5)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_6_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(5),
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_6_Q_497,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(6)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_6_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(5),
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_6_Q_497,
      O => GND_4_o_GND_4_o_add_49_OUT(6)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_7_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(6),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n0158181,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(7)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_7_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(6),
      LI => Mmux_n0158181,
      O => GND_4_o_GND_4_o_add_49_OUT(7)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_8_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(7),
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_8_Q_500,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(8)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_8_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(7),
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_8_Q_500,
      O => GND_4_o_GND_4_o_add_49_OUT(8)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_9_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(8),
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_9_Q_502,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(9)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_9_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(8),
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_9_Q_502,
      O => GND_4_o_GND_4_o_add_49_OUT(9)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_10_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(9),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => n0158(10),
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(10)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_10_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(9),
      LI => n0158(10),
      O => GND_4_o_GND_4_o_add_49_OUT(10)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_11_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n015831,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(11)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_11_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(10),
      LI => Mmux_n015831,
      O => GND_4_o_GND_4_o_add_49_OUT(11)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_12_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(11),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n015841,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(12)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_12_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(11),
      LI => Mmux_n015841,
      O => GND_4_o_GND_4_o_add_49_OUT(12)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_13_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(12),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => Mmux_n015851,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(13)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_13_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(12),
      LI => Mmux_n015851,
      O => GND_4_o_GND_4_o_add_49_OUT(13)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_14_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(13),
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_14_Q_508,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(14)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_14_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(13),
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_14_Q_508,
      O => GND_4_o_GND_4_o_add_49_OUT(14)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_cy_15_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(14),
      DI => N0,
      S => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_15_Q_510,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(15)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_15_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(14),
      LI => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_15_Q_510,
      O => GND_4_o_GND_4_o_add_49_OUT(15)
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_xor_16_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_49_OUT_cy(15),
      LI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      O => GND_4_o_GND_4_o_add_49_OUT(16)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_18_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(17),
      LI => DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36,
      O => DebEdge_inst_down_Result(18)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_17_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(16),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_down_Result(17)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_17_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(16),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_down_Mcount_q_reg_cy(17)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_16_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(15),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_down_Result(16)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_16_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(15),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_down_Mcount_q_reg_cy(16)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_15_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(14),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_down_Result(15)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_15_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(14),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_down_Mcount_q_reg_cy(15)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_14_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(13),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_down_Result(14)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_14_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(13),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_down_Mcount_q_reg_cy(14)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_13_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(12),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_down_Result(13)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_13_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(12),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_down_Mcount_q_reg_cy(13)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_12_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(11),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_down_Result(12)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_12_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(11),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_down_Mcount_q_reg_cy(12)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_11_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(10),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_down_Result(11)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_11_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_down_Mcount_q_reg_cy(11)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_10_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(9),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_down_Result(10)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_10_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(9),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_down_Mcount_q_reg_cy(10)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_9_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(8),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_down_Result(9)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_9_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(8),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_down_Mcount_q_reg_cy(9)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_8_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(7),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_down_Result(8)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_8_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(7),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_down_Mcount_q_reg_cy(8)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_7_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(6),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_down_Result(7)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_7_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(6),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_down_Mcount_q_reg_cy(7)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_6_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(5),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_down_Result(6)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_6_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(5),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_down_Mcount_q_reg_cy(6)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_5_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(4),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_down_Result(5)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_5_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(4),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_down_Mcount_q_reg_cy(5)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_4_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(3),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_down_Result(4)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(3),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_down_Mcount_q_reg_cy(4)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(0),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(0)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_3_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(2),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_down_Result(3)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(2),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_down_Mcount_q_reg_cy(3)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(0),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(1),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(1)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_2_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(1),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_down_Result(2)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_down_Mcount_q_reg_cy(2)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(3),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(4),
      O => DebEdge_inst_down_m_tick
    );
  DebEdge_inst_down_Mcount_q_reg_xor_1_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(0),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_down_Result(1)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(0),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_down_Mcount_q_reg_cy(1)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(2),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(2)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_0_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => DebEdge_inst_down_Mcount_q_reg_lut,
      O => DebEdge_inst_down_Result(0)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_0_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => DebEdge_inst_down_Mcount_q_reg_lut,
      O => DebEdge_inst_down_Mcount_q_reg_cy(0)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(2),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(3),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(3)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(18),
      O => DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36
    );
  DebEdge_inst_down_Mcount_q_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(17),
      O => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16
    );
  DebEdge_inst_down_Mcount_q_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(16),
      O => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14
    );
  DebEdge_inst_down_Mcount_q_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(15),
      O => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12
    );
  DebEdge_inst_down_Mcount_q_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(14),
      O => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10
    );
  DebEdge_inst_down_Mcount_q_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(13),
      O => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8
    );
  DebEdge_inst_down_Mcount_q_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(12),
      O => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6
    );
  DebEdge_inst_down_Mcount_q_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(11),
      O => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4
    );
  DebEdge_inst_down_Mcount_q_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(10),
      O => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2
    );
  DebEdge_inst_down_Mcount_q_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(9),
      O => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34
    );
  DebEdge_inst_down_Mcount_q_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(8),
      O => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32
    );
  DebEdge_inst_down_Mcount_q_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(7),
      O => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30
    );
  DebEdge_inst_down_Mcount_q_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(6),
      O => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28
    );
  DebEdge_inst_down_Mcount_q_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(5),
      O => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26
    );
  DebEdge_inst_down_Mcount_q_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(4),
      O => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(7),
      I1 => DebEdge_inst_down_q_reg(4),
      I2 => DebEdge_inst_down_q_reg(5),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(0)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(3),
      O => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(6),
      I1 => DebEdge_inst_down_q_reg(8),
      I2 => DebEdge_inst_down_q_reg(3),
      I3 => DebEdge_inst_down_q_reg(9),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(1)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(2),
      O => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(16),
      I1 => DebEdge_inst_down_q_reg(17),
      I2 => DebEdge_inst_down_q_reg(2),
      I3 => DebEdge_inst_down_q_reg(18),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(4)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(1),
      O => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(12),
      I1 => DebEdge_inst_down_q_reg(10),
      I2 => DebEdge_inst_down_q_reg(1),
      I3 => DebEdge_inst_down_q_reg(11),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(2)
    );
  DebEdge_inst_down_Mcount_q_reg_lut_0_INV_0 : INV
    port map (
      I => DebEdge_inst_down_q_reg(0),
      O => DebEdge_inst_down_Mcount_q_reg_lut
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(13),
      I1 => DebEdge_inst_down_q_reg(14),
      I2 => DebEdge_inst_down_q_reg(0),
      I3 => DebEdge_inst_down_q_reg(15),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(3)
    );
  DebEdge_inst_down_state_reg_FFd3_In : LUT4
    generic map(
      INIT => X"331B"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd3_98,
      I1 => DebEdge_inst_down_N7,
      I2 => DebEdge_inst_down_N8,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd3_In_99
    );
  DebEdge_inst_down_state_reg_FFd1_In : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd3_98,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DebEdge_inst_down_N14,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd1_In_95
    );
  DebEdge_inst_down_state_reg_FFd1_In_SW0 : LUT3_D
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd2_96,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DOWN,
      LO => DebEdge_inst_down_N14,
      O => DebEdge_inst_down_N10
    );
  DebEdge_inst_down_state_reg_FFd3_In_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd1_94,
      I1 => DOWN,
      LO => DebEdge_inst_down_N8
    );
  DebEdge_inst_down_pos_next1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => DOWN,
      I1 => DebEdge_inst_down_state_reg_FFd2_96,
      I2 => DebEdge_inst_down_state_reg_FFd3_98,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_pos_next1_73
    );
  DebEdge_inst_down_state_reg_FFd2_In : LUT4
    generic map(
      INIT => X"B8F0"
    )
    port map (
      I0 => DOWN,
      I1 => DebEdge_inst_down_state_reg_FFd3_98,
      I2 => DebEdge_inst_down_N10,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd2_In_97
    );
  DebEdge_inst_down_state_reg_FFd3_In_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd2_96,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DOWN,
      O => DebEdge_inst_down_N7
    );
  DebEdge_inst_down_pos_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_pos_next1_73,
      R => DebEdge_inst_down_state_reg_FFd1_94,
      Q => Down_tick
    );
  DebEdge_inst_down_q_reg_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(18),
      Q => DebEdge_inst_down_q_reg(18)
    );
  DebEdge_inst_down_q_reg_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(17),
      Q => DebEdge_inst_down_q_reg(17)
    );
  DebEdge_inst_down_q_reg_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(16),
      Q => DebEdge_inst_down_q_reg(16)
    );
  DebEdge_inst_down_q_reg_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(15),
      Q => DebEdge_inst_down_q_reg(15)
    );
  DebEdge_inst_down_q_reg_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(14),
      Q => DebEdge_inst_down_q_reg(14)
    );
  DebEdge_inst_down_q_reg_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(13),
      Q => DebEdge_inst_down_q_reg(13)
    );
  DebEdge_inst_down_q_reg_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(12),
      Q => DebEdge_inst_down_q_reg(12)
    );
  DebEdge_inst_down_q_reg_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(11),
      Q => DebEdge_inst_down_q_reg(11)
    );
  DebEdge_inst_down_q_reg_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(10),
      Q => DebEdge_inst_down_q_reg(10)
    );
  DebEdge_inst_down_q_reg_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(9),
      Q => DebEdge_inst_down_q_reg(9)
    );
  DebEdge_inst_down_q_reg_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(8),
      Q => DebEdge_inst_down_q_reg(8)
    );
  DebEdge_inst_down_q_reg_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(7),
      Q => DebEdge_inst_down_q_reg(7)
    );
  DebEdge_inst_down_q_reg_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(6),
      Q => DebEdge_inst_down_q_reg(6)
    );
  DebEdge_inst_down_q_reg_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(5),
      Q => DebEdge_inst_down_q_reg(5)
    );
  DebEdge_inst_down_q_reg_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(4),
      Q => DebEdge_inst_down_q_reg(4)
    );
  DebEdge_inst_down_q_reg_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(3),
      Q => DebEdge_inst_down_q_reg(3)
    );
  DebEdge_inst_down_q_reg_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(2),
      Q => DebEdge_inst_down_q_reg(2)
    );
  DebEdge_inst_down_q_reg_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(1),
      Q => DebEdge_inst_down_q_reg(1)
    );
  DebEdge_inst_down_q_reg_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(0),
      Q => DebEdge_inst_down_q_reg(0)
    );
  DebEdge_inst_down_state_reg_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd3_In_99,
      Q => DebEdge_inst_down_state_reg_FFd3_98
    );
  DebEdge_inst_down_state_reg_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd1_In_95,
      Q => DebEdge_inst_down_state_reg_FFd1_94
    );
  DebEdge_inst_down_state_reg_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd2_In_97,
      Q => DebEdge_inst_down_state_reg_FFd2_96
    );
  DebEdge_inst_up_Mcount_q_reg_xor_18_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(17),
      LI => DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36,
      O => DebEdge_inst_up_Result(18)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_17_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(16),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_up_Result(17)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_17_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(16),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_up_Mcount_q_reg_cy(17)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_16_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(15),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_up_Result(16)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_16_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(15),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_up_Mcount_q_reg_cy(16)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_15_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(14),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_up_Result(15)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_15_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(14),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_up_Mcount_q_reg_cy(15)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_14_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(13),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_up_Result(14)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_14_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(13),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_up_Mcount_q_reg_cy(14)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_13_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(12),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_up_Result(13)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_13_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(12),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_up_Mcount_q_reg_cy(13)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_12_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(11),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_up_Result(12)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_12_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(11),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_up_Mcount_q_reg_cy(12)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_11_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(10),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_up_Result(11)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_11_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(10),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_up_Mcount_q_reg_cy(11)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_10_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(9),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_up_Result(10)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_10_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(9),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_up_Mcount_q_reg_cy(10)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_9_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(8),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_up_Result(9)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_9_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(8),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_up_Mcount_q_reg_cy(9)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_8_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(7),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_up_Result(8)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_8_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(7),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_up_Mcount_q_reg_cy(8)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_7_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(6),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_up_Result(7)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_7_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(6),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_up_Mcount_q_reg_cy(7)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_6_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(5),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_up_Result(6)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_6_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(5),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_up_Mcount_q_reg_cy(6)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_5_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(4),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_up_Result(5)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_5_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(4),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_up_Mcount_q_reg_cy(5)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_4_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(3),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_up_Result(4)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(3),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_up_Mcount_q_reg_cy(4)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(0),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(0)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_3_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(2),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_up_Result(3)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(2),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_up_Mcount_q_reg_cy(3)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(0),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(1),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(1)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_2_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(1),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_up_Result(2)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_up_Mcount_q_reg_cy(2)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(3),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(4),
      O => DebEdge_inst_up_m_tick
    );
  DebEdge_inst_up_Mcount_q_reg_xor_1_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(0),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_up_Result(1)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(0),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_up_Mcount_q_reg_cy(1)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(1),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(2),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(2)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_0_Q : XORCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      LI => DebEdge_inst_up_Mcount_q_reg_lut,
      O => DebEdge_inst_up_Result(0)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_0_Q : MUXCY
    port map (
      CI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI => N0,
      S => DebEdge_inst_up_Mcount_q_reg_lut,
      O => DebEdge_inst_up_Mcount_q_reg_cy(0)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(2),
      DI => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(3),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(3)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(18),
      O => DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36
    );
  DebEdge_inst_up_Mcount_q_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(17),
      O => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16
    );
  DebEdge_inst_up_Mcount_q_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(16),
      O => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14
    );
  DebEdge_inst_up_Mcount_q_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(15),
      O => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12
    );
  DebEdge_inst_up_Mcount_q_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(14),
      O => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10
    );
  DebEdge_inst_up_Mcount_q_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(13),
      O => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8
    );
  DebEdge_inst_up_Mcount_q_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(12),
      O => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6
    );
  DebEdge_inst_up_Mcount_q_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(11),
      O => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4
    );
  DebEdge_inst_up_Mcount_q_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(10),
      O => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2
    );
  DebEdge_inst_up_Mcount_q_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(9),
      O => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34
    );
  DebEdge_inst_up_Mcount_q_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(8),
      O => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32
    );
  DebEdge_inst_up_Mcount_q_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(7),
      O => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30
    );
  DebEdge_inst_up_Mcount_q_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(6),
      O => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28
    );
  DebEdge_inst_up_Mcount_q_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(5),
      O => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26
    );
  DebEdge_inst_up_Mcount_q_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(4),
      O => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(7),
      I1 => DebEdge_inst_up_q_reg(4),
      I2 => DebEdge_inst_up_q_reg(5),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(0)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(3),
      O => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(6),
      I1 => DebEdge_inst_up_q_reg(8),
      I2 => DebEdge_inst_up_q_reg(3),
      I3 => DebEdge_inst_up_q_reg(9),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(1)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(2),
      O => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(16),
      I1 => DebEdge_inst_up_q_reg(17),
      I2 => DebEdge_inst_up_q_reg(2),
      I3 => DebEdge_inst_up_q_reg(18),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(4)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(1),
      O => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(12),
      I1 => DebEdge_inst_up_q_reg(10),
      I2 => DebEdge_inst_up_q_reg(1),
      I3 => DebEdge_inst_up_q_reg(11),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(2)
    );
  DebEdge_inst_up_Mcount_q_reg_lut_0_INV_0 : INV
    port map (
      I => DebEdge_inst_up_q_reg(0),
      O => DebEdge_inst_up_Mcount_q_reg_lut
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(13),
      I1 => DebEdge_inst_up_q_reg(14),
      I2 => DebEdge_inst_up_q_reg(0),
      I3 => DebEdge_inst_up_q_reg(15),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(3)
    );
  DebEdge_inst_up_state_reg_FFd3_In : LUT4
    generic map(
      INIT => X"331B"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd3_98,
      I1 => DebEdge_inst_up_N7,
      I2 => DebEdge_inst_up_N8,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd3_In_99
    );
  DebEdge_inst_up_state_reg_FFd1_In : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd3_98,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => DebEdge_inst_up_N14,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd1_In_95
    );
  DebEdge_inst_up_state_reg_FFd1_In_SW0 : LUT3_D
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd2_96,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => UP,
      LO => DebEdge_inst_up_N14,
      O => DebEdge_inst_up_N10
    );
  DebEdge_inst_up_state_reg_FFd3_In_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd1_94,
      I1 => UP,
      LO => DebEdge_inst_up_N8
    );
  DebEdge_inst_up_pos_next1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => UP,
      I1 => DebEdge_inst_up_state_reg_FFd2_96,
      I2 => DebEdge_inst_up_state_reg_FFd3_98,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_pos_next1_73
    );
  DebEdge_inst_up_state_reg_FFd2_In : LUT4
    generic map(
      INIT => X"B8F0"
    )
    port map (
      I0 => UP,
      I1 => DebEdge_inst_up_state_reg_FFd3_98,
      I2 => DebEdge_inst_up_N10,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd2_In_97
    );
  DebEdge_inst_up_state_reg_FFd3_In_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd2_96,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => UP,
      O => DebEdge_inst_up_N7
    );
  DebEdge_inst_up_pos_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_pos_next1_73,
      R => DebEdge_inst_up_state_reg_FFd1_94,
      Q => Up_tick
    );
  DebEdge_inst_up_q_reg_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(18),
      Q => DebEdge_inst_up_q_reg(18)
    );
  DebEdge_inst_up_q_reg_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(17),
      Q => DebEdge_inst_up_q_reg(17)
    );
  DebEdge_inst_up_q_reg_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(16),
      Q => DebEdge_inst_up_q_reg(16)
    );
  DebEdge_inst_up_q_reg_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(15),
      Q => DebEdge_inst_up_q_reg(15)
    );
  DebEdge_inst_up_q_reg_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(14),
      Q => DebEdge_inst_up_q_reg(14)
    );
  DebEdge_inst_up_q_reg_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(13),
      Q => DebEdge_inst_up_q_reg(13)
    );
  DebEdge_inst_up_q_reg_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(12),
      Q => DebEdge_inst_up_q_reg(12)
    );
  DebEdge_inst_up_q_reg_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(11),
      Q => DebEdge_inst_up_q_reg(11)
    );
  DebEdge_inst_up_q_reg_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(10),
      Q => DebEdge_inst_up_q_reg(10)
    );
  DebEdge_inst_up_q_reg_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(9),
      Q => DebEdge_inst_up_q_reg(9)
    );
  DebEdge_inst_up_q_reg_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(8),
      Q => DebEdge_inst_up_q_reg(8)
    );
  DebEdge_inst_up_q_reg_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(7),
      Q => DebEdge_inst_up_q_reg(7)
    );
  DebEdge_inst_up_q_reg_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(6),
      Q => DebEdge_inst_up_q_reg(6)
    );
  DebEdge_inst_up_q_reg_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(5),
      Q => DebEdge_inst_up_q_reg(5)
    );
  DebEdge_inst_up_q_reg_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(4),
      Q => DebEdge_inst_up_q_reg(4)
    );
  DebEdge_inst_up_q_reg_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(3),
      Q => DebEdge_inst_up_q_reg(3)
    );
  DebEdge_inst_up_q_reg_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(2),
      Q => DebEdge_inst_up_q_reg(2)
    );
  DebEdge_inst_up_q_reg_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(1),
      Q => DebEdge_inst_up_q_reg(1)
    );
  DebEdge_inst_up_q_reg_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(0),
      Q => DebEdge_inst_up_q_reg(0)
    );
  DebEdge_inst_up_state_reg_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd3_In_99,
      Q => DebEdge_inst_up_state_reg_FFd3_98
    );
  DebEdge_inst_up_state_reg_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd1_In_95,
      Q => DebEdge_inst_up_state_reg_FFd1_94
    );
  DebEdge_inst_up_state_reg_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd2_In_97,
      Q => DebEdge_inst_up_state_reg_FFd2_96
    );
  Q_n01671 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Up_tick,
      I1 => Down_tick,
      O => Q_n0167
    );
  Q_n0216_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Up_tick,
      I1 => EN,
      O => Q_n0216_inv
    );
  Q_n0212_inv1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Down_tick,
      I1 => EN,
      O => Q_n0212_inv
    );
  Mmux_n015821 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(0),
      I2 => GND_4_o_GND_4_o_add_47_OUT(10),
      O => n0158(10)
    );
  Mmux_hex_in121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Gain(1),
      I2 => rd_ptr_u(1),
      O => hex_in_1_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT111 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_9_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_9_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT101 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_8_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_8_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT91 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_7_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_7_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT81 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_6_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_6_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT71 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_5_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_5_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT61 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_4_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_4_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT51 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_3_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_3_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT41 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_2_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_2_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT31 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_1_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_1_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT21 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_10_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_10_Q
    );
  Mmux_Inc_10_GND_4_o_mux_31_OUT11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RST,
      I1 => Inc_10_Inc_10_mux_20_OUT_0_Q,
      O => Inc_10_GND_4_o_mux_31_OUT_0_Q
    );
  Mmux_FOUT181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_11_Q,
      I2 => BCD_out_7_Q,
      O => FOUT(7)
    );
  Mmux_FOUT171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_10_Q,
      I2 => BCD_out_6_Q,
      O => FOUT(6)
    );
  Mmux_FOUT111 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_19_Q,
      O => FOUT(19)
    );
  Mmux_FOUT71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_19_Q,
      I2 => BCD_out_15_Q,
      O => FOUT(15)
    );
  Mmux_FOUT31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_15_Q,
      I2 => BCD_out_11_Q,
      O => FOUT(11)
    );
  Mcount_Gain_xor_0_11 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => RST,
      I1 => Gain(0),
      O => Mcount_Gain1
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_AS_inv2 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Up_tick_req_39,
      I1 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_AS_inv
    );
  Mcount_Gain_xor_5_111 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => MODE,
      I1 => Up_tick,
      O => Mcount_Gain_xor_5_11
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_A10111 : LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => Inc(8),
      I1 => Inc(6),
      I2 => Inc(7),
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_A1011
    );
  Mcount_Gain_xor_3_11 : LUT4
    generic map(
      INIT => X"AA96"
    )
    port map (
      I0 => Mcount_Gain_cy(2),
      I1 => Mcount_Gain_xor_5_11,
      I2 => Gain(3),
      I3 => RST,
      O => Mcount_Gain4
    );
  Mmux_n0156191 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      O => n0156_8_Q
    );
  Mmux_n0156171 : LUT3
    generic map(
      INIT => X"94"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      I2 => Gain(2),
      O => n0156_6_Q
    );
  Mmux_hex_in131 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => MODE,
      I1 => Gain(0),
      I2 => Gain(2),
      I3 => rd_ptr_u(2),
      O => hex_in_2_Q
    );
  Mmux_n015641 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      O => n0156_12_Q
    );
  Mmux_n0156161 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(2),
      I2 => Gain(0),
      O => n0156_5_Q
    );
  Mmux_n0156151 : LUT3
    generic map(
      INIT => X"DA"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(1),
      I2 => Gain(0),
      O => n0156_4_Q
    );
  Mmux_n0156181 : LUT3
    generic map(
      INIT => X"18"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      I2 => Gain(2),
      O => n0156_7_Q
    );
  Mmux_n015651 : LUT3
    generic map(
      INIT => X"64"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(2),
      I2 => Gain(0),
      O => n0156_13_Q
    );
  Mmux_hex_in81 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_49_OUT(16),
      I1 => MODE,
      I2 => Gain(4),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut(2)
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o,
      I3 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in1732_895,
      I1 => hex_in_7_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o,
      I3 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712
    );
  hex2bcd_i_Mmux_bcd_8_111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o,
      I3 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_bcd_8_11
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in1632_894,
      I1 => Mmux_hex_in1732_895,
      I2 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o,
      I3 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in1532_893,
      I1 => Mmux_hex_in1632_894,
      I2 => hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o,
      I3 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709
    );
  hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex_in_3_Q,
      I1 => Mmux_hex_in1532_893,
      I2 => hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o,
      I3 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708
    );
  hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex_in_2_Q,
      I1 => hex_in_3_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o,
      I3 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707
    );
  hex2bcd_i_Mmux_bcd_4_111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex_in_1_Q,
      I1 => hex_in_2_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o,
      I3 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_bcd_4_11
    );
  hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731
    );
  hex2bcd_i_Mmux_bcd_16_111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_bcd_16_11
    );
  hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in432_903,
      I1 => hex_in_13_Q,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex_in_11_Q,
      I1 => Mmux_hex_in432_903,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in232_899,
      I1 => hex_in_11_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in2020,
      I1 => Mmux_hex_in232_899,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719
    );
  hex2bcd_i_Mmux_bcd_12_111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_bcd_12_11
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => Mmux_hex_in1932_896,
      I1 => Mmux_hex_in2020,
      I2 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o,
      I3 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o,
      I3 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q,
      I1 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o,
      I3 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex_in_7_Q,
      I1 => Mmux_hex_in1932_896,
      I2 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o,
      I3 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_2_Q,
      O => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o111 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => Mmux_hex_in7_f5_1012,
      I1 => hex_in_14_Q,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut(2),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(2),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o121 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(2),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o111 : LUT4
    generic map(
      INIT => X"41FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(2),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_11_MUX_8599_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o,
      I1 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_11_MUX_8515_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o,
      I1 => Mmux_hex_in1932_896,
      I2 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o,
      I3 => Mmux_hex_in2020,
      O => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_10_MUX_8619_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o,
      I3 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_10_MUX_8535_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o,
      I1 => hex_in_7_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o,
      I3 => Mmux_hex_in1932_896,
      O => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_9_MUX_8639_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o,
      I3 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_9_MUX_8555_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o,
      I1 => Mmux_hex_in1732_895,
      I2 => hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o,
      I3 => hex_in_7_Q,
      O => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_6_hex_in_8_MUX_8575_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o,
      I1 => Mmux_hex_in1632_894,
      I2 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o,
      I3 => Mmux_hex_in1732_895,
      O => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_5_hex_in_7_MUX_8595_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o,
      I1 => Mmux_hex_in1532_893,
      I2 => hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o,
      I3 => Mmux_hex_in1632_894,
      O => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_4_hex_in_6_MUX_8615_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o,
      I1 => hex_in_3_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o,
      I3 => Mmux_hex_in1532_893,
      O => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_3_hex_in_5_MUX_8635_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o,
      I1 => hex_in_2_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o,
      I3 => hex_in_3_Q,
      O => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8627_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(2)
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8543_o11 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_96_OUT_cy(0),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(2)
    );
  hex2bcd_i_Mmux_hex_in_15_GND_7_o_MUX_8647_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_15_GND_7_o_MUX_8563_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0),
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_15_GND_7_o_MUX_8479_o11 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_64_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_16_MUX_8583_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_16_MUX_8499_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_15_MUX_8603_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_15_MUX_8519_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_15_MUX_8435_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o,
      I1 => Mmux_hex_in432_903,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I3 => hex_in_13_Q,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_14_MUX_8623_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_14_MUX_8539_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_14_MUX_8455_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o,
      I1 => hex_in_11_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o,
      I3 => Mmux_hex_in432_903,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_13_MUX_8643_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_13_MUX_8559_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_13_MUX_8475_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o,
      I1 => Mmux_hex_in232_899,
      I2 => hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o,
      I3 => hex_in_11_Q,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_12_MUX_8579_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_12_MUX_8495_o11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o,
      I1 => Mmux_hex_in2020,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o,
      I3 => Mmux_hex_in232_899,
      O => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_2_Q
    );
  hex2bcd_i_Mmux_bcd_10_11 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_166_o,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q,
      O => BCD_out_10_Q
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o121 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_128_OUT_cy(0),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(2)
    );
  hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707,
      O => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707,
      O => hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o
    );
  hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732,
      O => hex2bcd_i_GND_7_o_hex_in_16_LessThan_126_o
    );
  hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_96_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      O => hex2bcd_i_GND_7_o_hex_in_16_LessThan_84_o
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729,
      O => hex2bcd_i_GND_7_o_hex_in_15_LessThan_136_o
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728,
      O => hex2bcd_i_GND_7_o_hex_in_15_LessThan_94_o
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_64_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727,
      O => hex2bcd_i_GND_7_o_hex_in_15_LessThan_52_o
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726,
      O => hex2bcd_i_GND_7_o_hex_in_14_LessThan_146_o
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725,
      O => hex2bcd_i_GND_7_o_hex_in_14_LessThan_104_o
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724,
      O => hex2bcd_i_GND_7_o_hex_in_14_LessThan_62_o
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723,
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723,
      O => hex2bcd_i_GND_7_o_hex_in_13_LessThan_156_o
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722,
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722,
      O => hex2bcd_i_GND_7_o_hex_in_13_LessThan_114_o
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721,
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721,
      O => hex2bcd_i_GND_7_o_hex_in_13_LessThan_72_o
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720,
      O => hex2bcd_i_GND_7_o_hex_in_12_LessThan_124_o
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719,
      O => hex2bcd_i_GND_7_o_hex_in_12_LessThan_82_o
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717,
      O => hex2bcd_i_GND_7_o_hex_in_11_LessThan_134_o
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716,
      O => hex2bcd_i_GND_7_o_hex_in_11_LessThan_92_o
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715,
      O => hex2bcd_i_GND_7_o_hex_in_10_LessThan_144_o
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714,
      O => hex2bcd_i_GND_7_o_hex_in_10_LessThan_102_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742,
      O => hex2bcd_i_Madd_n0578_Madd_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741,
      O => hex2bcd_i_Madd_n0573_Madd_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_148_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o13,
      O => hex2bcd_i_Madd_n0568_Madd_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o13,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_138_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_128_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_116_o
    );
  hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708,
      O => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708,
      O => hex2bcd_i_GND_7_o_hex_in_6_LessThan_142_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_106_o
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy(0)
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735,
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_74_o
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709,
      O => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709,
      O => hex2bcd_i_GND_7_o_hex_in_7_LessThan_132_o
    );
  hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_16_11,
      O => hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o
    );
  hex2bcd_i_GND_7_o_hex_in_12_LessThan_166_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_12_11,
      O => hex2bcd_i_GND_7_o_hex_in_12_LessThan_166_o
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712,
      O => hex2bcd_i_GND_7_o_hex_in_9_LessThan_112_o
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711,
      O => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711,
      O => hex2bcd_i_GND_7_o_hex_in_8_LessThan_122_o
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q
    );
  hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713,
      O => hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o
    );
  Q_n0205_inv21 : LUT3
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => Gain(4),
      I1 => Up_tick,
      I2 => Gain(3),
      O => Q_n0205_inv21_871
    );
  Q_n0205_inv107 : LUT4
    generic map(
      INIT => X"FF54"
    )
    port map (
      I0 => MODE,
      I1 => Q_n0205_inv71_873,
      I2 => Q_n0205_inv39_872,
      I3 => RST,
      O => Q_n0205_inv107_874
    );
  Mcount_Gain_xor_4_1_SW0 : LUT4
    generic map(
      INIT => X"1811"
    )
    port map (
      I0 => Gain(3),
      I1 => Mcount_Gain_cy(2),
      I2 => MODE,
      I3 => Up_tick,
      O => N6
    );
  Mcount_Gain_xor_4_1 : LUT3
    generic map(
      INIT => X"F6"
    )
    port map (
      I0 => Gain(4),
      I1 => N6,
      I2 => RST,
      O => Mcount_Gain5
    );
  Mcount_Gain_xor_5_119 : LUT4
    generic map(
      INIT => X"BFFD"
    )
    port map (
      I0 => Mcount_Gain_xor_5_11,
      I1 => Mcount_Gain_cy(2),
      I2 => Gain(3),
      I3 => Gain(4),
      O => Mcount_Gain_xor_5_119_876
    );
  Mcount_Gain_xor_5_134 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(4),
      I2 => Up_tick,
      I3 => MODE,
      O => Mcount_Gain_xor_5_134_877
    );
  Mcount_Gain_xor_5_163 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Gain(5),
      I1 => Mcount_Gain_cy(2),
      I2 => Mcount_Gain_xor_5_143_878,
      I3 => Mcount_Gain_xor_5_134_877,
      O => Mcount_Gain_xor_5_163_879
    );
  Mcount_Gain_xor_5_190 : LUT4
    generic map(
      INIT => X"5444"
    )
    port map (
      I0 => RST,
      I1 => Mcount_Gain_xor_5_163_879,
      I2 => Mcount_Gain_xor_5_119_876,
      I3 => Gain(5),
      O => Mcount_Gain6
    );
  Mcount_play_t_val31_SW0 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => FIX,
      I1 => EN,
      O => N8
    );
  Mcount_play_t_val31 : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => GND_4_o_play_t_30_LessThan_15_o,
      I1 => GND_4_o_rd_ptr_12_LessThan_16_o,
      I2 => N8,
      I3 => RST,
      O => Mcount_play_t_val
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_A1016 : LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => FIX,
      I1 => Inc(0),
      I2 => Inc(3),
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_A1016_881
    );
  Q_n0194_inv32 : LUT4
    generic map(
      INIT => X"54FF"
    )
    port map (
      I0 => Inc(9),
      I1 => Q_n0194_inv9_885,
      I2 => Mmux_Inc_10_Inc_10_mux_20_OUT_A1011,
      I3 => Inc(10),
      O => Q_n0194_inv32_886
    );
  Q_n0194_inv57 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Inc(4),
      I1 => Inc(5),
      I2 => Inc(6),
      I3 => Inc(7),
      O => Q_n0194_inv57_888
    );
  Q_n0194_inv101 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => FIX,
      I1 => MODE,
      O => Q_n0194_inv101_890
    );
  Q_n0194_inv104 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => Q_n0194_inv101_890,
      I1 => Q_n0194_inv76_889,
      I2 => Up_tick_req_39,
      I3 => Q_n0194_inv32_886,
      O => Q_n0194_inv104_891
    );
  Q_n0194_inv147 : LUT4
    generic map(
      INIT => X"FFA8"
    )
    port map (
      I0 => EN,
      I1 => Q_n0194_inv2_884,
      I2 => Q_n0194_inv104_891,
      I3 => RST,
      O => Q_n0194_inv147_892
    );
  Mmux_hex_in14 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in14_SW0_f5_1010,
      I2 => rd_ptr_u(3),
      O => hex_in_3_Q
    );
  Mmux_hex_in212 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain(3),
      I2 => Gain(0),
      I3 => GND_4_o_GND_4_o_add_47_OUT(10),
      O => Mmux_hex_in212_898
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o11 : LUT4
    generic map(
      INIT => X"444A"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(2),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(3),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0),
      I3 => N18,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3)
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8646_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(2),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I2 => N20,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o11 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(2),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3),
      I2 => N22,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_cy(0),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3)
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o11 : LUT4
    generic map(
      INIT => X"444A"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(2),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0),
      I3 => N24,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3)
    );
  hex2bcd_i_Mmux_bcd_15_1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q,
      I2 => N26,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q,
      O => BCD_out_15_Q
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8562_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(2),
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I2 => N28,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_16_MUX_8582_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q,
      I2 => N30,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8602_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q,
      I2 => N32,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8622_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q,
      I2 => N34,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8642_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q,
      I2 => N36,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_bcd_11_1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q,
      I2 => N40,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q,
      O => BCD_out_11_Q
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_10_MUX_8618_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q,
      I2 => N44,
      I3 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_9_MUX_8638_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q,
      I2 => N46,
      I3 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_16_MUX_8498_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I2 => N48,
      I3 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8518_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q,
      I2 => N50,
      I3 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8538_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q,
      I2 => N52,
      I3 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8558_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q,
      I2 => N54,
      I3 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_12_MUX_8578_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q,
      I2 => N56,
      I3 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_11_MUX_8598_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q,
      I2 => N58,
      I3 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_cy_0_Q,
      O => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_bcd_7_1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I2 => N60,
      I3 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q,
      O => BCD_out_7_Q
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_10_MUX_8534_o1 : LUT4
    generic map(
      INIT => X"444A"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q,
      I2 => hex_in_7_Q,
      I3 => N62,
      O => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_9_MUX_8554_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q,
      I2 => N64,
      I3 => Mmux_hex_in1732_895,
      O => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_8_MUX_8574_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q,
      I2 => N66,
      I3 => Mmux_hex_in1632_894,
      O => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_6_hex_in_7_MUX_8594_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q,
      I2 => N68,
      I3 => Mmux_hex_in1532_893,
      O => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_5_hex_in_6_MUX_8614_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q,
      I2 => N70,
      I3 => hex_in_3_Q,
      O => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_4_hex_in_5_MUX_8634_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      I2 => N72,
      I3 => hex_in_2_Q,
      O => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8434_o1 : LUT4
    generic map(
      INIT => X"444A"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I2 => Mmux_hex_in432_903,
      I3 => N74,
      O => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8454_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q,
      I2 => N76,
      I3 => hex_in_11_Q,
      O => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8474_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q,
      I2 => N78,
      I3 => Mmux_hex_in232_899,
      O => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_12_MUX_8494_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q,
      I2 => N80,
      I3 => Mmux_hex_in2020,
      O => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_11_MUX_8514_o1 : LUT4
    generic map(
      INIT => X"44A4"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_2_Q,
      I1 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q,
      I2 => N82,
      I3 => Mmux_hex_in1932_896,
      O => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q
    );
  Mmux_FOUT1435 : LUT4
    generic map(
      INIT => X"2002"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_2_Q,
      I1 => hex_in_1_Q,
      I2 => hex_in_2_Q,
      I3 => hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o,
      O => Mmux_FOUT1435_933
    );
  Mmux_FOUT1472 : LUT4
    generic map(
      INIT => X"FDA8"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_FOUT1416_932,
      I2 => Mmux_FOUT1435_933,
      I3 => BCD_out_7_Q,
      O => FOUT(3)
    );
  Mmux_FOUT13 : LUT4
    generic map(
      INIT => X"7D28"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_GND_7_o_hex_in_5_LessThan_152_o,
      I2 => N94,
      I3 => BCD_out_6_Q,
      O => FOUT(2)
    );
  Msub_resto_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(3),
      O => Msub_resto_cy_3_rt_937
    );
  Msub_resto_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(4),
      O => Msub_resto_cy_4_rt_938
    );
  Msub_resto_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(5),
      O => Msub_resto_cy_5_rt_939
    );
  Msub_resto_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(8),
      O => Msub_resto_cy_8_rt_942
    );
  Mcount_play_t_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(1),
      O => Mcount_play_t_cy_1_rt_946
    );
  Mcount_play_t_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(2),
      O => Mcount_play_t_cy_2_rt_947
    );
  Mcount_play_t_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(3),
      O => Mcount_play_t_cy_3_rt_948
    );
  Mcount_play_t_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(4),
      O => Mcount_play_t_cy_4_rt_949
    );
  Mcount_play_t_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(5),
      O => Mcount_play_t_cy_5_rt_950
    );
  Mcount_play_t_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(6),
      O => Mcount_play_t_cy_6_rt_951
    );
  Mcount_play_t_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(7),
      O => Mcount_play_t_cy_7_rt_952
    );
  Mcount_play_t_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(8),
      O => Mcount_play_t_cy_8_rt_953
    );
  Mcount_play_t_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(9),
      O => Mcount_play_t_cy_9_rt_954
    );
  Mcount_play_t_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(10),
      O => Mcount_play_t_cy_10_rt_955
    );
  Mcount_play_t_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(11),
      O => Mcount_play_t_cy_11_rt_956
    );
  Mcount_play_t_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(12),
      O => Mcount_play_t_cy_12_rt_957
    );
  Mcount_play_t_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(13),
      O => Mcount_play_t_cy_13_rt_958
    );
  Mcount_play_t_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(14),
      O => Mcount_play_t_cy_14_rt_959
    );
  Mcount_play_t_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(15),
      O => Mcount_play_t_cy_15_rt_960
    );
  Mcount_play_t_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(16),
      O => Mcount_play_t_cy_16_rt_961
    );
  Mcount_play_t_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(17),
      O => Mcount_play_t_cy_17_rt_962
    );
  Mcount_play_t_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(18),
      O => Mcount_play_t_cy_18_rt_963
    );
  Mcount_play_t_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(19),
      O => Mcount_play_t_cy_19_rt_964
    );
  Mcount_play_t_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(20),
      O => Mcount_play_t_cy_20_rt_965
    );
  Mcount_play_t_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(21),
      O => Mcount_play_t_cy_21_rt_966
    );
  Mcount_play_t_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(22),
      O => Mcount_play_t_cy_22_rt_967
    );
  Mcount_play_t_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(23),
      O => Mcount_play_t_cy_23_rt_968
    );
  Mcount_play_t_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(24),
      O => Mcount_play_t_cy_24_rt_969
    );
  Mcount_play_t_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(25),
      O => Mcount_play_t_cy_25_rt_970
    );
  Mcount_play_t_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(26),
      O => Mcount_play_t_cy_26_rt_971
    );
  Mcount_play_t_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(27),
      O => Mcount_play_t_cy_27_rt_972
    );
  Mcount_play_t_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(28),
      O => Mcount_play_t_cy_28_rt_973
    );
  Mcount_play_t_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(29),
      O => Mcount_play_t_cy_29_rt_974
    );
  Mmux_n01561511 : LUT3
    generic map(
      INIT => X"DA"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(1),
      I2 => Gain(0),
      O => Mmux_n0156151_975
    );
  Mmux_n01561711 : LUT3
    generic map(
      INIT => X"94"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      I2 => Gain(2),
      O => Mmux_n0156171_976
    );
  Mmux_n01581611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => n0156_5_Q,
      I2 => GND_4_o_GND_4_o_add_47_OUT(5),
      O => Mmux_n0158161
    );
  Mmux_n01581811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => n0156_7_Q,
      I2 => GND_4_o_GND_4_o_add_47_OUT(7),
      O => Mmux_n0158181
    );
  Mmux_n0158411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => n0156_12_Q,
      I2 => GND_4_o_GND_4_o_add_47_OUT(12),
      O => Mmux_n015841
    );
  Mmux_n0158511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => n0156_13_Q,
      I2 => GND_4_o_GND_4_o_add_47_OUT(13),
      O => Mmux_n015851
    );
  Msub_resto_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(12),
      O => Msub_resto_xor_12_rt_982
    );
  Mcount_play_t_xor_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(30),
      O => Mcount_play_t_xor_30_rt_983
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Gain(0),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_xor_10_rt_985
    );
  Madd_GND_4_o_GND_4_o_add_45_OUT_lut_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      O => Madd_GND_4_o_GND_4_o_add_45_OUT_lut_5_1
    );
  Mmux_n0156411 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      O => Mmux_n015641_987
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_11_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => resto(11),
      I1 => resto(12),
      O => Mcompar_resto_12_GND_4_o_LessThan_24_o_lut_11_Q_396
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_0_Q : LUT3
    generic map(
      INIT => X"C6"
    )
    port map (
      I0 => Inc(0),
      I1 => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_0_Q,
      I2 => resto_12_GND_4_o_LessThan_24_o,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_0_Q_454
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A11 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(0),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(0),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_0_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A51 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(1),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(1),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_1_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A61 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(2),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(2),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_2_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A71 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(3),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(3),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_3_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A81 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(4),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(4),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_4_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A91 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(5),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(5),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_5_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A101 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(6),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(6),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_6_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A111 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(7),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(7),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_7_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A121 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(8),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(8),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_8_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A131 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(9),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(9),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_9_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A21 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(10),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(10),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_10_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_3_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(3),
      I1 => rd_ptr(3),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(3),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_3_Q_460
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_4_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(4),
      I1 => rd_ptr(4),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(4),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_4_Q_462
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_5_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(5),
      I1 => rd_ptr(5),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(5),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_5_Q_464
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_6_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(6),
      I1 => rd_ptr(6),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(6),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_6_Q_466
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_7_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(7),
      I1 => rd_ptr(7),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(7),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_7_Q_468
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_2_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(2),
      I1 => rd_ptr(2),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(2),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_2_Q_458
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_8_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(8),
      I1 => rd_ptr(8),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(8),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_8_Q_470
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_9_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(9),
      I1 => rd_ptr(9),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(9),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_9_Q_472
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_10_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(10),
      I1 => rd_ptr(10),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(10),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_10_Q_474
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_1_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(1),
      I1 => rd_ptr(1),
      I2 => GND_4_o_GND_4_o_sub_25_OUT(1),
      I3 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_1_Q_456
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_A31 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(11),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_A_11_Q
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_11_Q : LUT3
    generic map(
      INIT => X"A3"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => GND_4_o_GND_4_o_sub_25_OUT(11),
      I2 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_11_Q_476
    );
  Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_12_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      I1 => GND_4_o_GND_4_o_sub_25_OUT(12),
      I2 => rd_ptr(12),
      O => Mmux_rd_ptr_12_GND_4_o_mux_27_OUT_rs_lut_12_Q_478
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(11),
      I1 => play_t(12),
      I2 => play_t(13),
      I3 => play_t(14),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_5_Q_334
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_6_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(15),
      I1 => play_t(16),
      I2 => play_t(17),
      I3 => play_t(18),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_6_Q_336
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_7_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(19),
      I1 => play_t(20),
      I2 => play_t(21),
      I3 => play_t(22),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_7_Q_338
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_8_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(23),
      I1 => play_t(24),
      I2 => play_t(25),
      I3 => play_t(26),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_8_Q_340
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_9_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(27),
      I1 => play_t(28),
      I2 => play_t(29),
      I3 => play_t(30),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_9_Q_342
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_2_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => play_t(5),
      I1 => play_t(6),
      I2 => play_t(7),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_2_Q_329
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_0_Q : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => rd_ptr(1),
      I1 => rd_ptr(2),
      I2 => rd_ptr(3),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_0_Q_316
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_3_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => rd_ptr(7),
      I1 => rd_ptr(8),
      I2 => rd_ptr(9),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_3_Q_321
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => play_t(3),
      I1 => play_t(4),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_1_Q_326
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_4_Q : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => play_t(10),
      I1 => play_t(9),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_lut_4_Q_332
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_1_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_ptr(4),
      I1 => rd_ptr(5),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_1_Q_318
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_5_Q : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => rd_ptr(12),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_lut_5_Q_324
    );
  Q_n0205_inv71_SW0 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(3),
      I2 => Gain(4),
      I3 => Gain(5),
      O => N96
    );
  Q_n0205_inv71 : LUT4
    generic map(
      INIT => X"A2AA"
    )
    port map (
      I0 => Up_tick,
      I1 => Gain(0),
      I2 => N96,
      I3 => Gain(1),
      O => Q_n0205_inv71_873
    );
  Q_n0205_inv39_SW0 : LUT4
    generic map(
      INIT => X"7F2E"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(2),
      I2 => Gain(3),
      I3 => Gain(0),
      O => N98
    );
  Q_n0205_inv39 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => Down_tick,
      I1 => Gain(5),
      I2 => Q_n0205_inv21_871,
      I3 => N98,
      O => Q_n0205_inv39_872
    );
  Mcount_Gain_xor_2_1_SW2 : LUT4
    generic map(
      INIT => X"DFBA"
    )
    port map (
      I0 => Gain(0),
      I1 => MODE,
      I2 => Up_tick,
      I3 => Gain(1),
      O => N100
    );
  Mcount_Gain_xor_2_1 : LUT3
    generic map(
      INIT => X"41"
    )
    port map (
      I0 => RST,
      I1 => Gain(2),
      I2 => N100,
      O => Mcount_Gain3
    );
  Mmux_hex_in18 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in18_SW2_f5_1015,
      I2 => rd_ptr_u(7),
      O => hex_in_7_Q
    );
  Mmux_hex_in3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in3_SW2_f5_1017,
      I2 => rd_ptr_u(11),
      O => hex_in_11_Q
    );
  Mmux_hex_in5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in5_SW2_f5_1020,
      I2 => rd_ptr_u(13),
      O => hex_in_13_Q
    );
  Mmux_hex_in6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in6_SW2_f5_1022,
      I2 => rd_ptr_u(14),
      O => hex_in_14_Q
    );
  Mmux_hex_in1532 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in1532_SW0_f5_1025,
      I2 => rd_ptr_u(4),
      O => Mmux_hex_in1532_893
    );
  Mmux_hex_in1632 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in1632_SW0_f5_1028,
      I2 => rd_ptr_u(5),
      O => Mmux_hex_in1632_894
    );
  Mmux_hex_in1732 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in1732_SW0_f5_1031,
      I2 => rd_ptr_u(6),
      O => Mmux_hex_in1732_895
    );
  Mmux_hex_in1932 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in1932_SW0_f5_1034,
      I2 => rd_ptr_u(8),
      O => Mmux_hex_in1932_896
    );
  Mmux_hex_in232_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_49_OUT(10),
      I1 => Gain(4),
      O => N122
    );
  Mmux_hex_in232 : LUT4
    generic map(
      INIT => X"FE54"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in212_898,
      I2 => N122,
      I3 => rd_ptr_u(10),
      O => Mmux_hex_in232_899
    );
  Mmux_hex_in432 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Mmux_hex_in432_SW0_f5_1038,
      I2 => rd_ptr_u(12),
      O => Mmux_hex_in432_903
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_14_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(1),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_14_Q_492
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_9_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_47_OUT(9),
      I1 => Gain(3),
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_9_Q_502
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_15_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_47_OUT(15),
      I1 => Gain(3),
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_15_Q_510
    );
  Q_n0194_inv76_SW0 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => Inc(10),
      I1 => Q_n0194_inv53_887,
      I2 => Q_n0194_inv57_888,
      O => N126
    );
  Mcount_Gain_xor_5_143 : LUT4
    generic map(
      INIT => X"1101"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(4),
      I2 => Up_tick,
      I3 => MODE,
      O => Mcount_Gain_xor_5_143_878
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_0_Q : LUT4
    generic map(
      INIT => X"7877"
    )
    port map (
      I0 => Inc(0),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_0_Q_424
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_1_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(1),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_1_Q_427
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_2_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(2),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_2_Q_430
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_3_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(3),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_3_Q_433
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_4_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(4),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_4_Q_436
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_5_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(5),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_5_Q_439
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_6_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(6),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_6_Q_442
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_7_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(7),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_7_Q_445
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_8_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(8),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_8_Q_448
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_9_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(9),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_9_Q_451
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_10_Q : LUT4
    generic map(
      INIT => X"8788"
    )
    port map (
      I0 => Inc(10),
      I1 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883,
      I2 => Up_tick_req_39,
      I3 => FIX,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_rs_lut_10_Q_453
    );
  Mcount_Gain_xor_1_11 : LUT4
    generic map(
      INIT => X"4114"
    )
    port map (
      I0 => RST,
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => Mcount_Gain_xor_5_11,
      O => Mcount_Gain2
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o11_SW0 : LUT4
    generic map(
      INIT => X"9690"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy(0),
      O => N18
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o11_SW0 : LUT4
    generic map(
      INIT => X"9690"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy(0),
      O => N24
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_3_Q : LUT3
    generic map(
      INIT => X"87"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(2),
      I2 => Gain(1),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_3_Q_479
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_5_Q : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      I2 => Gain(2),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_5_Q_482
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_7_Q : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      I2 => Gain(2),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_7_Q_485
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_8_Q : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      I2 => Gain(2),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_8_Q_487
    );
  Madd_GND_4_o_GND_4_o_add_47_OUT_lut_13_Q : LUT3
    generic map(
      INIT => X"9B"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(2),
      I2 => Gain(0),
      O => Madd_GND_4_o_GND_4_o_add_47_OUT_lut_13_Q_490
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_4_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_47_OUT(4),
      I1 => Gain(3),
      I2 => n0156_4_Q,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_4_Q_494
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_6_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_47_OUT(6),
      I1 => Gain(3),
      I2 => n0156_6_Q,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_6_Q_497
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_8_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => GND_4_o_GND_4_o_add_47_OUT(8),
      I1 => Gain(3),
      I2 => n0156_8_Q,
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_8_Q_500
    );
  Madd_GND_4_o_GND_4_o_add_49_OUT_lut_14_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(1),
      I2 => Gain(2),
      I3 => GND_4_o_GND_4_o_add_47_OUT(14),
      O => Madd_GND_4_o_GND_4_o_add_49_OUT_lut_14_Q_508
    );
  Mmux_FOUT81 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_bcd_16_11,
      O => FOUT(16)
    );
  Mmux_FOUT11 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_bcd_4_11,
      I3 => rd_ptr_u(0),
      O => FOUT(0)
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o111 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy(0),
      I2 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3)
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o111 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I2 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut(3)
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o111 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy(0),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(3)
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8646_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729,
      O => N20
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o11_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o13,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732,
      O => N22
    );
  hex2bcd_i_Mmux_bcd_15_1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726,
      O => N26
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8562_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728,
      O => N28
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_16_MUX_8582_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725,
      O => N30
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8602_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8581_o11_732,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_126_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722,
      O => N32
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8622_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8601_o11_729,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_136_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720,
      O => N34
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8642_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8621_o11_726,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_146_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717,
      O => N36
    );
  hex2bcd_i_Mmux_bcd_11_1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715,
      O => N40
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_10_MUX_8618_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8597_o11_717,
      I1 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_134_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711,
      O => N44
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_9_MUX_8638_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8617_o11_715,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_144_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709,
      O => N46
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_16_MUX_8498_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut(3),
      I2 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724,
      O => N48
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8518_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721,
      O => N50
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8538_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8517_o11_728,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_94_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719,
      O => N52
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8558_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8537_o11_725,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_104_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716,
      O => N54
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_12_MUX_8578_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8557_o11_722,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_114_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714,
      O => N56
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_11_MUX_8598_o1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8577_o11_720,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_124_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712,
      O => N58
    );
  hex2bcd_i_Mmux_bcd_7_1_SW0 : LUT4
    generic map(
      INIT => X"D22D"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708,
      O => N60
    );
  hex2bcd_i_Mmux_hex_in_9_hex_in_10_MUX_8534_o1_SW0 : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_11_hex_in_11_MUX_8513_o11_716,
      I1 => Mmux_hex_in1932_896,
      I2 => hex2bcd_i_Madd_hex_in_11_GND_7_o_add_92_OUT_lut_3_Q,
      O => N62
    );
  hex2bcd_i_Mmux_hex_in_8_hex_in_9_MUX_8554_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => hex_in_7_Q,
      I1 => hex2bcd_i_Madd_hex_in_10_GND_7_o_add_102_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_10_hex_in_10_MUX_8533_o11_714,
      O => N64
    );
  hex2bcd_i_Mmux_hex_in_7_hex_in_8_MUX_8574_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in1732_895,
      I1 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_112_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8553_o11_712,
      O => N66
    );
  hex2bcd_i_Mmux_hex_in_6_hex_in_7_MUX_8594_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in1632_894,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_122_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_8_hex_in_8_MUX_8573_o11_711,
      O => N68
    );
  hex2bcd_i_Mmux_hex_in_5_hex_in_6_MUX_8614_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in1532_893,
      I1 => hex2bcd_i_Madd_hex_in_7_GND_7_o_add_132_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_7_hex_in_7_MUX_8593_o11_709,
      O => N70
    );
  hex2bcd_i_Mmux_hex_in_4_hex_in_5_MUX_8634_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => hex_in_3_Q,
      I1 => hex2bcd_i_Madd_hex_in_6_GND_7_o_add_142_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_6_hex_in_6_MUX_8613_o11_708,
      O => N72
    );
  hex2bcd_i_Mmux_hex_in_13_hex_in_14_MUX_8454_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in432_903,
      I1 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727,
      O => N76
    );
  hex2bcd_i_Mmux_hex_in_12_hex_in_13_MUX_8474_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => hex_in_11_Q,
      I1 => hex2bcd_i_Madd_hex_in_14_GND_7_o_add_62_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_14_hex_in_14_MUX_8453_o11_724,
      O => N78
    );
  hex2bcd_i_Mmux_hex_in_11_hex_in_12_MUX_8494_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in232_899,
      I1 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_72_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8473_o11_721,
      O => N80
    );
  hex2bcd_i_Mmux_hex_in_10_hex_in_11_MUX_8514_o1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Mmux_hex_in2020,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_82_OUT_lut_3_Q,
      I2 => hex2bcd_i_Mmux_hex_in_12_hex_in_12_MUX_8493_o11_719,
      O => N82
    );
  Mmux_FOUT13_SW0 : LUT4
    generic map(
      INIT => X"99C9"
    )
    port map (
      I0 => hex_in_1_Q,
      I1 => hex_in_2_Q,
      I2 => hex2bcd_i_Mmux_bcd_4_11,
      I3 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q,
      O => N94
    );
  Mmux_n0158311 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => GND_4_o_GND_4_o_add_47_OUT(11),
      O => Mmux_n015831
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_SW0 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => Inc(8),
      I1 => Inc(7),
      I2 => Mmux_Inc_10_Inc_10_mux_20_OUT_A1016_881,
      I3 => Mmux_Inc_10_Inc_10_mux_20_OUT_A10110_882,
      O => N128
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_A10121 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => Inc(10),
      I1 => Inc(4),
      I2 => Inc(6),
      I3 => N128,
      O => Mmux_Inc_10_Inc_10_mux_20_OUT_A10121_883
    );
  hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o : LUT4
    generic map(
      INIT => X"A885"
    )
    port map (
      I0 => hex2bcd_i_Madd_n0568_Madd_cy(0),
      I1 => hex2bcd_i_Madd_n0578_Madd_cy(0),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13,
      I3 => hex2bcd_i_Madd_n0573_Madd_cy(0),
      O => hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839
    );
  hex2bcd_i_Mmux_bcd_17_121 : LUT4
    generic map(
      INIT => X"0160"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13,
      I1 => hex2bcd_i_Madd_n0573_Madd_cy(0),
      I2 => hex2bcd_i_Madd_n0568_Madd_cy(0),
      I3 => hex2bcd_i_Madd_n0578_Madd_cy(0),
      O => BCD_out_19_Q
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o111 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_64_OUT_cy(0),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0),
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o131 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_128_OUT_cy(0),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_cy(0),
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy(0),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8605_o13
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o121 : LUT4
    generic map(
      INIT => X"17FF"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_96_OUT_cy(0),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_cy(0),
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy(0),
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_15_MUX_8434_o1_SW0 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I1 => MODE,
      I2 => Mmux_hex_in5_SW2_f5_1020,
      I3 => rd_ptr_u(13),
      O => N74
    );
  Mmux_FOUT1416_SW1 : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707,
      I1 => hex_in_2_Q,
      I2 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      O => N130
    );
  Mmux_FOUT1416 : LUT4
    generic map(
      INIT => X"2220"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q,
      I1 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_2_Q,
      I2 => hex_in_1_Q,
      I3 => N130,
      O => Mmux_FOUT1416_932
    );
  Mmux_FOUT91 : LUT4
    generic map(
      INIT => X"2882"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742,
      I3 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839,
      O => FOUT(17)
    );
  hex2bcd_i_Mmux_hex_in_16_GND_7_o_MUX_8478_o1 : LUT4
    generic map(
      INIT => X"0160"
    )
    port map (
      I0 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_64_OUT_cy(0),
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_cy(0),
      O => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_15_hex_in_16_MUX_8414_o1 : LUT4
    generic map(
      INIT => X"1084"
    )
    port map (
      I0 => hex_in_14_Q,
      I1 => Mmux_hex_in7_f5_1012,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut(2),
      I3 => hex_in_13_Q,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q
    );
  hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8413_o11 : LUT4
    generic map(
      INIT => X"85A8"
    )
    port map (
      I0 => Mmux_hex_in7_f5_1012,
      I1 => hex_in_13_Q,
      I2 => hex_in_14_Q,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut(2),
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0)
    );
  hex2bcd_i_Mmux_bcd_17_111_SW0 : LUT4
    generic map(
      INIT => X"9690"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_148_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8625_o12_741,
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13,
      I3 => hex2bcd_i_Madd_n0568_Madd_cy(0),
      O => N134
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o131 : LUT4
    generic map(
      INIT => X"FF14"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_86_OUT_cy(0),
      I1 => hex2bcd_i_Mmux_hex_in_16_hex_in_16_MUX_8497_o11_731,
      I2 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_84_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o121 : LUT4
    generic map(
      INIT => X"FF14"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_54_OUT_cy(0),
      I1 => hex2bcd_i_Mmux_hex_in_15_hex_in_15_MUX_8433_o11_727,
      I2 => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8393_o11,
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o131 : LUT4
    generic map(
      INIT => X"FF14"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_118_OUT_cy(0),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8561_o11_738,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_116_OUT_lut(3),
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      O => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o13
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8585_o121 : LUT4
    generic map(
      INIT => X"9990"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8541_o12_737,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_128_OUT_cy(0),
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o13,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_138_OUT_lut(2)
    );
  hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8521_o121 : LUT4
    generic map(
      INIT => X"9990"
    )
    port map (
      I0 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_74_OUT_lut(3),
      I1 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8477_o11_735,
      I2 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_96_OUT_cy(0),
      I3 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8457_o12,
      O => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_106_OUT_lut(2)
    );
  hex2bcd_i_Mmux_hex_in_14_hex_in_16_MUX_8415_o11 : LUT4
    generic map(
      INIT => X"6426"
    )
    port map (
      I0 => hex_in_14_Q,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_32_OUT_lut(2),
      I2 => hex_in_13_Q,
      I3 => Mmux_hex_in7_f5_1012,
      O => hex2bcd_i_Madd_hex_in_15_GND_7_o_add_52_OUT_lut_2_Q
    );
  Mmux_FOUT101 : LUT4
    generic map(
      INIT => X"8828"
    )
    port map (
      I0 => MODE,
      I1 => N134,
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839,
      I3 => hex2bcd_i_Madd_n0578_Madd_cy(0),
      O => FOUT(18)
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(6),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_2_rt_996
    );
  Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_ptr(10),
      O => Mcompar_GND_4_o_rd_ptr_12_LessThan_16_o_cy_4_rt_997
    );
  Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(2),
      O => Mcompar_GND_4_o_play_t_30_LessThan_15_o_cy_0_rt_998
    );
  Mcount_Gain_cy_2_1 : MUXF5
    port map (
      I0 => N136,
      I1 => N137,
      S => Mcount_Gain_xor_5_11,
      O => Mcount_Gain_cy(2)
    );
  Mcount_Gain_cy_2_1_F : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      I2 => Gain(2),
      I3 => RST,
      O => N136
    );
  Mcount_Gain_cy_2_1_G : LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => RST,
      I1 => Gain(0),
      I2 => Gain(2),
      I3 => Gain(1),
      O => N137
    );
  Mmux_FOUT121 : MUXF5
    port map (
      I0 => N138,
      I1 => N139,
      S => MODE,
      O => FOUT(1)
    );
  Mmux_FOUT121_F : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_Mmux_bcd_8_11,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707,
      O => N138
    );
  Mmux_FOUT121_G : LUT3
    generic map(
      INIT => X"39"
    )
    port map (
      I0 => hex2bcd_i_Mmux_bcd_4_11,
      I1 => rd_ptr_u(1),
      I2 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q,
      O => N139
    );
  Mmux_FOUT61 : MUXF5
    port map (
      I0 => N140,
      I1 => N141,
      S => MODE,
      O => FOUT(14)
    );
  Mmux_FOUT61_F : LUT4
    generic map(
      INIT => X"96AA"
    )
    port map (
      I0 => N134,
      I1 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_lut(3),
      I2 => hex2bcd_i_Mmux_GND_7_o_GND_7_o_MUX_8645_o11_742,
      I3 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839,
      O => N140
    );
  Mmux_FOUT61_G : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      O => N141
    );
  play_t_8_inv_INV_0 : INV
    port map (
      I => play_t(8),
      O => play_t_8_inv
    );
  Mcount_play_t_lut_0_INV_0 : INV
    port map (
      I => play_t(0),
      O => Mcount_play_t_lut(0)
    );
  Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_inv_INV_0 : INV
    port map (
      I => Mcompar_resto_12_GND_4_o_LessThan_24_o_cy_11_Q_397,
      O => resto_12_GND_4_o_LessThan_24_o
    );
  Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut_11_INV_0 : INV
    port map (
      I => resto(11),
      O => Msub_GND_4_o_GND_4_o_sub_25_OUT_Madd_lut(11)
    );
  rd_ptr_0_inv1_INV_0 : INV
    port map (
      I => rd_ptr(0),
      O => rd_ptr_0_inv
    );
  Msub_resto_lut_1_1_INV_0 : INV
    port map (
      I => rd_ptr(1),
      O => Msub_resto_lut_1_1
    );
  Msub_resto_lut_2_1_INV_0 : INV
    port map (
      I => rd_ptr(2),
      O => Msub_resto_lut_2_1
    );
  Msub_resto_lut_6_1_INV_0 : INV
    port map (
      I => rd_ptr(6),
      O => Msub_resto_lut_6_1
    );
  Msub_resto_lut_7_1_INV_0 : INV
    port map (
      I => rd_ptr(7),
      O => Msub_resto_lut_7_1
    );
  Msub_resto_lut_9_1_INV_0 : INV
    port map (
      I => rd_ptr(9),
      O => Msub_resto_lut_9_1
    );
  Msub_resto_lut_10_1_INV_0 : INV
    port map (
      I => rd_ptr(10),
      O => Msub_resto_lut_10_1
    );
  Msub_resto_lut_11_1_INV_0 : INV
    port map (
      I => rd_ptr(11),
      O => Msub_resto_lut_11_1
    );
  resto_12_inv1_INV_0 : INV
    port map (
      I => resto(12),
      O => resto_12_inv
    );
  Mram_DOUT1 : RAMB16_S2
    generic map(
      INIT_00 => X"27777722221DDC8B762DC8762D8761CB61CB61872CB6DB618618618618618618",
      INIT_01 => X"15AAFFFFFFFFAA9503E943E53E5390E4E4E4E3924D34D349E349D23788DDE222",
      INIT_02 => X"AAAAA540FA53E4393938E79E349D22777777621D872DB6DB1C6C6F1B06B05AF0",
      INIT_03 => X"1B1B06B056AFFFFFAA50F94E438E49278D22377722DCB6186DB1B06F16FC156A",
      INIT_04 => X"A4F934E389E22222DCB6DB1B1B06BF0055500FE90E53924D348DE2222DD872C7",
      INIT_05 => X"D23777621C71B1B16F01555540F94E4E4D348DDEDDD872C71BC6B056AAAAA543",
      INIT_06 => X"8DDDDC872C6C6C16BFFFFFA50E4E4E349DE2DDCB6DB1B06BC0555503E93A4934",
      INIT_07 => X"8D27777761C71B1AF056AA950F94E49248DDDDC86186C5BC16AAA950F94E4927",
      INIT_08 => X"439E49E237221CB185B06AFFFFFA90E524E3488DC8B61B6C1BC15AAA550E9393",
      INIT_09 => X"43E53924923777721861B16F056AA950FA4E4D349DDDDD872C6C6B055AAA543E",
      INIT_0A => X"3E90E4E79E3778B761CB1B1B05AFFFFFE94393938D2377772D861B16F056AAA9",
      INIT_0B => X"4D38D2777B7721C71B1B16F01555540F94E4E4D3489DDDC871C61AC6BC055550",
      INIT_0C => X"C7186C5B06BF0055500FE90E4E4E79E3788888B62CB1C6F1AC15AAAAA950E93E",
      INIT_0D => X"9249E3788DDDC8872D861B2C1B16F05AAFFFFFA950E90E4E4D38D2778888B721",
      INIT_0E => X"4E79E78D27489DDDDDD88761CB6DB2C6C6C1BC5AF015AAAAAA9543F94F90E4E7",
      INIT_0F => X"B61C71C7186CB1B1B1B06C5BC5BC16BC056AAFFFFFFFFAA540FA50E90E4F9393",
      INIT_10 => X"249E79E38D249E349E349D2789D23789DE237748888DDDDD8888B7722DC8761C",
      INIT_11 => X"27789D23789E378D278D278E349279E78E38E38E38E38E38E249249249249249",
      INIT_12 => X"FC05AF05BC5BC6C1B1B1B186CB1C71C72D872DC87621DD8888B777748888DDD2",
      INIT_13 => X"6C6C61B6D872DC8B77777788DE349E79E4D39394E43A43E940FEA955555556AA",
      INIT_14 => X"56ABC16F1B061B2CB61C88777489D278E39E4E4394F950FFAAAAAABF016BC5B0",
      INIT_15 => X"89D279E4E4E43A5403FFC015AC1BC6CB1C721D88889DE34934E4E43A43FA9555",
      INIT_16 => X"4F940FFFFF016F1B1B1C721DD9DDE34934E53A43FAAAAABF06B16C71862D8888",
      INIT_17 => X"FA555556BC1B1B1872DD89DD279E4E43A503FFFC05AC6B2C71C8777788D34E4E",
      INIT_18 => X"E943FAAAFC16F1B2CB21DDDD238E393E50FAAAAFC16F1B2CB61DDDD234939390",
      INIT_19 => X"4E3E43A955556AC1BCB187221D2278E790E50FEAABFC1AC6C61CB777778D34E4",
      INIT_1A => X"48E38E4F943FAAAFC16B1B1C72DDDDDE349393A43FEAABF05B06DB2D887488D2",
      INIT_1B => X"778D24E4E43E955555AF06C6C61C8777749E38E4F943FAAAAF05BC6CB2C87777",
      INIT_1C => X"34E4E4F940FFFFF016F1B1B1C722DDDD234D38E93A503FFFC05AC1B1B6D87762",
      INIT_1D => X"FFC015AC1B1B1B6D8762222278924D394E90FEAAAAAFC1AC5B1C61CB7767748D",
      INIT_1E => X"349E38E490E4F943EA955556AFC1AC1B1B1C61CB762222748D34E393E43A5403",
      INIT_1F => X"DDDDE2378D279E4939390E53E940FEAAAAAAFF056F16C1B1B6CB2D87621DDD22",
      INIT_20 => X"4E4E4393E53E50FA503FAA955555556ABF016BC1AC1B16C6C71B6DB61CB722DD",
      INIT_21 => X"72D872DCB62DC8762DD8877722221DDDDE222277489D2378D278D34D34E3924E",
      INIT_22 => X"00000000000000000000000000000000000B2CB2CB2CB2CB2CB2DB6D861CB2D8",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(1),
      DO(0) => DOUT(0)
    );
  Mram_DOUT2 : RAMB16_S2
    generic map(
      INIT_00 => X"AF05AF05AF016BC05AFC16AF016AF015AFC05ABF015ABF056AFC056AFC056AFC",
      INIT_01 => X"C6C6C6C6C6C6C6C6C5B1B06C5B1AC6B16C1BC5B06B06B06BC5BC1AF06BC16F05",
      INIT_02 => X"DDDDDDDD888B77621DC8762DC8721CB61CB61CB2DB6DB6DB6DB2C61B6C61B1B6",
      INIT_03 => X"E4394E439393939393934E4938E39E78E38D278D2749D27489D227778889DDDD",
      INIT_04 => X"6C1B06B06BC5AF056BF015AAFF000055555550000FFEA9503FA503E94FA53E53",
      INIT_05 => X"4D278D2789D2277888DDDDDDDD8887722DC872D872D861861B2C61B1B1B1B1B0",
      INIT_06 => X"16BC16BF0156ABFFFFFFFFFFFAA5503FA503A50E90E93E4E539393924E7934D3",
      INIT_07 => X"E38D278D2748DD22277777777222DD8B72D872D86186DB186C6C6C6C1B16C1AF",
      INIT_08 => X"1AC1BC1AF05AFC056AAFFFFFFFFFFFAA9503FA50FA43E43A4E539393939E4D38",
      INIT_09 => X"924E79249278D278DE277888DDDDDDDD8887721D872D872CB2C71B6C6C6C6C5B",
      INIT_0A => X"5B1BC6B06B05AC05AFC055AAFFFFFFFFFFFEA9540FE943E94FA4394E43939393",
      INIT_0B => X"49249278D278D23788DD22277777777222DD88762D872D871C71C6DB186C6C6C",
      INIT_0C => X"C056ABFF000055555550000FFAA540FE950FA53E90E90E4390E4E4E4E4E4938E",
      INIT_0D => X"21D8761D872D872CB2DB6CB2C61B1C6C6C6C6C6C6C1B16C1BC5BC5AF16BC05AF",
      INIT_0E => X"9E79E79E78E349E349E348D23789D237489DDE2227777777777776222DDD8876",
      INIT_0F => X"3E90E90E90E53E4394E93A4E5390E4E5393939393939393939E4E4939E4938E7",
      INIT_10 => X"950FEA540FEA503FA540FA940FA943FA503E940FA50FA50FA50F943E90FA43E5",
      INIT_11 => X"3E950FE940FA940FE9503EA540FE9503FA9503FA9503FA9503FA9503FA9503FA",
      INIT_12 => X"E539394E4F93A4F93E4394F90E90E90E90F94FA53E94FA50FA43E940FA50FA54",
      INIT_13 => X"7489D22749D2349D278D279E34D34924934D38E4938E4D3939E4E4E4E4E4E4E4",
      INIT_14 => X"B1B186C61B6CB1C71CB2D861C872DCB721D8877622DDDD8888888888DDDDE227",
      INIT_15 => X"FA543FAA55003FFFFEAABFFFFC00156AFC05ABC16BC16F16F16C1B06C5B1B1B1",
      INIT_16 => X"2DDDD88888DDDD227789D2749E34924924938E4D393939394E4390E90E90FA50",
      INIT_17 => X"000000000155AAFC056BC16B05BC6B1AC6C5B1B2C6C71B6DB6D861CB72DC8772",
      INIT_18 => X"777622222377788DE2789E34D24924D3934E4E4E5393E43A43E50FA940FEA955",
      INIT_19 => X"FA9554000000001556AFC05AFC5AF16F1BC6C1B1B1B2C6DB2CB2CB61CB721D88",
      INIT_1A => X"2D8B722DDDC888889DDD22748DE349E38E38E7938E4E4E4393E4F94FA53FA503",
      INIT_1B => X"E9503FAA554000000000556ABF016AF05BC1AC1BC6C5B1B1B1C6C71861871CB6",
      INIT_1C => X"62DD88777722222777788DD2378DE349279E79E4D3938E4E5393A4E93E50E943",
      INIT_1D => X"AABFFFFC0055AAFC15AF05AF06B06B06C1B16C6C6C6C71B2C61861861CB61D87",
      INIT_1E => X"8E34D34E39E493924E4E4E4E4E5390E4394F94F943E943EA503FA954003FFFFE",
      INIT_1F => X"72D8761C8761D887621DD88B777722222222227777889DD22748DE378D234927",
      INIT_20 => X"C1BC6F1AC6F1B16C6C5B1B1B1B1B1B1B1B6C6C71B2C61B2C71C61861C71CB6D8",
      INIT_21 => X"056BF016AF016BF056BC15AF05AF016BC1AF05AF16BC5AF16F06B06B06B06F16",
      INIT_22 => X"00000000000000000000000000000000000056AFC056AFC056AFC056BF015ABC",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(3),
      DO(0) => DOUT(2)
    );
  Mram_DOUT3 : RAMB16_S2
    generic map(
      INIT_00 => X"1B6C6CB1B1C6C6DB1B186C6CB1B1B6C6C6DB1B1B6C6C6CB1B1B2C6C6C71B1B18",
      INIT_01 => X"DB2C7186DB2C7186DB1C61B2C61B2C61B2C6DB1C6CB1B6C6DB186C61B186C61B",
      INIT_02 => X"872D872D872CB61CB2D861C72DB61861C71CB2CB2CB2CB2CB2CB2CB1C71C61B6",
      INIT_03 => X"88B77221DC8B7621DC8B722DC8762DC8762DCB721C8721C872DCB61C872D872D",
      INIT_04 => X"7488DDD222377788888DDDDDDD222222222222222DDDDDDDC8888B7772221DDC",
      INIT_05 => X"9E78E38D349278D349E349E349E348D2749E2749D2348DE27789D227788DD227",
      INIT_06 => X"E4E539394E4E4E4E4E4E4E4E4E4E4E793938E4E3934E7934E7924D38E38E79E7",
      INIT_07 => X"A9503EA543FA503E943E943E943E50F943A53E50E90E53E53A4F90E5394E5393",
      INIT_08 => X"FFC001555AAAABFFFFFFFFFFFFFFFFFFFFFEAAAA5554003FFAA95403FEA5503F",
      INIT_09 => X"C5BC5B06B05BC5AC16F05BC16BC16BC16BC05AFC15ABC056AFC055ABFC0156AA",
      INIT_0A => X"B1C6DB1C6CB1B2C6C6DB1B1B1B1B1B1B1B1B1B1B16C6C5B1BC6C5B16C5B06F1A",
      INIT_0B => X"D8B721C8761D8B61D8721CB61CB61CB61C72D861C72CB2DB6DB6DB2CB2C7186D",
      INIT_0C => X"37777777888888888888888777777722222DDDC888777221DD887722DD88762D",
      INIT_0D => X"D2348D2348DE3789D23789D23788DE237489DE237488DDE223774888DDDE2222",
      INIT_0E => X"E38E38E38E38E34D349249E78D349278E349E38D278D278D278D278D2349E378",
      INIT_0F => X"7939E4E3934E7938E4938E4938E4934E7924D38E7924D38E79E4934D34E38E38",
      INIT_10 => X"E4E393939E4E4E793939E4E4E393924E4E793934E4E3939E4E493924E493924E",
      INIT_11 => X"D3939E4E4E393934E4E4D393934E4E4D393938E4E4E79393924E4E4D393938E4",
      INIT_12 => X"E4D38E4934E7934E7938E4939E4E3934E4939E4E7939E4E493924E4E3939E4E4",
      INIT_13 => X"8E349278E34D249E78E38D34D34D34D34D34D34E38E39E7924934E39E4934E39",
      INIT_14 => X"788DE23788DE2748DE2749D2348DE378D2349D278DE349E349E349E349E34D27",
      INIT_15 => X"DDDDC8888888B777777777777488888889DDDDE2223777888DDE2277488DD227",
      INIT_16 => X"B2D872D872D8721CB62D8B62D8B721D8B721D887621DC8B77221DD8887772222",
      INIT_17 => X"C6C6C6C6C6C6C6C71B1B2C6CB1B2C61B2C71B6CB2C71C61861871C71CB2D861C",
      INIT_18 => X"05AF05AF05AF06BC1AF16B06B06B06B06F16C1BC6F1AC6F1B06C6B1B1BC6C6C6",
      INIT_19 => X"00000000000000000000155556AAAFFF00156AAFF0056ABF015ABF056AF056BC",
      INIT_1A => X"4FA43E90FA50FA50FA503E950FA950FEA540FEA9500FFAA95400FFFAAA955554",
      INIT_1B => X"E4E4D393939393939393939393E4E4E9390E4F93A4F93E4394F90E90E90E90E9",
      INIT_1C => X"789E348D278D278D278E349278E34D34D24924934D38E39E4D38E4938E4E3938",
      INIT_1D => X"DDDDDDDE2222222377778888DDD22277488DDE237489D22748DE2748DE2789E2",
      INIT_1E => X"D8B721D8B722DC8B722DD8877221DD88B77222DDDC888B7777622222221DDDDD",
      INIT_1F => X"CB2DB61871CB2D861CB2D871CB61CB61CB61CB61CB72D8761C872DCB721C8761",
      INIT_20 => X"2C6DB1C6DB1C61B2C71B6CB1C61B6CB1C6186DB6CB2CB1C71C71C71C71C71C72",
      INIT_21 => X"1B1B1C6C6CB1B1B6C6C71B1B6C6CB1B186C61B1B6C6DB1B6C61B1C6CB1B6C61B",
      INIT_22 => X"000000000000000000000000000000000006C6C6DB1B1B2C6C6C71B1B1C6C6C7",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(5),
      DO(0) => DOUT(4)
    );
  Mram_DOUT4 : RAMB16_S2
    generic map(
      INIT_00 => X"394F90E93E53A4F94E90E53A4394E90E53A4394E90E53A4394E90E53A4394E90",
      INIT_01 => X"53E53E53A43A43A4F94F94E90E93E53E43A4F94F90E93E53A43A4F94E90E53E4",
      INIT_02 => X"53E50E90F94F943A43A53E53E53E90E90E90E90E90E90E90E90E90E90E90E93E",
      INIT_03 => X"0F943E94FA53E943A50E943A50E94FA53E90F943E50E94FA43A53E90F94FA43A",
      INIT_04 => X"3FA50FA943E943FA50FA50FA503E943E943E943E90FA50FA50FA53E943E94FA5",
      INIT_05 => X"A540FEA540FE9503FA540FA950FEA503EA503EA503EA50FE940FA943EA50FE94",
      INIT_06 => X"55003FEAA5500FFAA5500FFAA5500FEA9540FFA9540FEA9503FEA540FEA540FE",
      INIT_07 => X"00003FFFFEAAAA955540003FFFEAAA5554003FFFAAA554003FFAAA55400FFEA9",
      INIT_08 => X"AABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAA955555540",
      INIT_09 => X"C00155AAAFFFC001555AAABFFFC00015556AAAABFFFFC0000015555556AAAAAA",
      INIT_0A => X"056ABF0156AFF0156ABF0055AAFF0055AAFF0055AABFC00556ABFF00155AAAFF",
      INIT_0B => X"6BF05ABC05ABC05ABC05ABF056AF015AFC056BF015ABF015ABF015ABF015ABFC",
      INIT_0C => X"5AF05AF06BC16BC16BC16BC05AF05AF05AFC16BC16AF05AFC16BF05ABC16AF01",
      INIT_0D => X"1AF16B05BC16F06BC5AF16B05AC16B05AC16BC5AF16BC16F05AF16BC16BC5AF0",
      INIT_0E => X"B06B06B06B06B06B06B06BC5BC5BC5AC1AC16F16F06B05BC5AC1AF16F06BC5AC",
      INIT_0F => X"AC5BC6B06F16F1AC1BC5BC6B06B16F16F1AC1AC1AC5BC5BC5BC6B06B06B06B06",
      INIT_10 => X"6C1AC5B06B16C1AC5B06B16C1AC5B06B16F1AC5BC6B06F16C1BC5B06B16F1AC1",
      INIT_11 => X"1AC5BC6B16F1AC5BC6B16F1AC5BC6B16F1AC5BC6B16F1AC5B06B16C1AC5B06B1",
      INIT_12 => X"6C1AC1BC5BC5B06B06F16C1AC1BC5B06B16F16C1AC5BC6B16F1AC1BC5B06B16C",
      INIT_13 => X"16F16F06B06B06BC5BC5BC5BC5BC5BC5BC5BC5BC5BC5BC5B06B06B06B16F16F1",
      INIT_14 => X"F16BC5AF16BC5AC16B05BC1AF16BC5AC1AF16B05BC1AC16F16B06BC5BC1AC1AF",
      INIT_15 => X"16BC16BC16BC05AF05AF05AF06BC16BC16BC16B05AF05AC16BC1AF05BC16B05A",
      INIT_16 => X"F016AFC15ABC05ABF056BF056BF05ABC05AFC16AF056BC05AF056BC16AF05AF0",
      INIT_17 => X"156ABFC0156ABFC055AAFC015AAFC055ABF0056AFC056AFC056AFC056AFC15AB",
      INIT_18 => X"AAAAFFFF00005556AAAFFF000555AAAFFF001556AAFFC0055AABFF00556ABFC0",
      INIT_19 => X"00000000000000000000000000000000555555555AAAAAAAFFFFFF0000055556",
      INIT_1A => X"FAAA95550000FFFFAAAA9555500000FFFFFFAAAAAAA555555555000000000000",
      INIT_1B => X"AA5503FEA95403FEA95403FEA95500FFEAA55003FFAA955400FFFAAA555000FF",
      INIT_1C => X"950FEA503EA543FA940FEA543FA9503FA9503FA9503FA9500FEA5503FAA5403F",
      INIT_1D => X"FA50FA503E943E943E940FA50FA943E950FA503E950FA943FA503EA50FE950FE",
      INIT_1E => X"50E943A53E94FA53E94FA50E943E50FA43E943A50FA50E943E943E943E90FA50",
      INIT_1F => X"53E53E90E90E90F94F94FA43A43E53E90E94F943A43E50E94FA43A53E94FA43E",
      INIT_20 => X"4F90E90E53E53E43A4394F94F94E90E90E90E53E53E53E53E53E53E53E53E53E",
      INIT_21 => X"4E93E53A4F94E93E53A4394E90E53E43A4F94E93E53A4394F94E90E53E43A439",
      INIT_22 => X"00000000000000000000000000000000000E53A4F94E93E53A4F94E93E53A4F9",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(7),
      DO(0) => DOUT(6)
    );
  Mram_DOUT5 : RAMB16_S2
    generic map(
      INIT_00 => X"EAA555003FFEAA555000FFEAA955000FFEAA955000FFEAA955000FFEAA955000",
      INIT_01 => X"54003FFEAA955400FFFAAA555003FFEAA955000FFFAA9554003FFAAA555003FF",
      INIT_02 => X"A9555000FFFAAA9554003FFEAA9555000FFFAAA555000FFFAAA555000FFFAA95",
      INIT_03 => X"50003FFFAAA95554000FFFEAAA5550003FFFAAA9555000FFFEAA9555000FFFEA",
      INIT_04 => X"40000FFFFEAAA955550000FFFFEAAA955540003FFFAAAA55550003FFFEAAA555",
      INIT_05 => X"5555000000FFFFFEAAAAA55555000003FFFFEAAAA9555500000FFFFEAAAA5555",
      INIT_06 => X"AAAA95555555500000000FFFFFFFFAAAAAAA55555550000003FFFFFFAAAAAA55",
      INIT_07 => X"FFFFEAAAAAAAAAAAAAAAAA955555555555554000000000003FFFFFFFFFFAAAAA",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"C00000000000155555555555556AAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"0000005555555AAAAAAAFFFFFFFF00000000555555556AAAAAAAAAFFFFFFFFFF",
      INIT_0B => X"00055556AAAABFFFFC0000055555AAAAABFFFFF000000555555AAAAAAFFFFFFC",
      INIT_0C => X"555AAAAFFFC00015556AAABFFFF000055556AAABFFFF000015555AAAABFFFF00",
      INIT_0D => X"FFF0005556AAAFFFC000555AAABFFF00015556AAAFFFC0005555AAABFFFC0005",
      INIT_0E => X"AFFF000555AAAFFF0005556AABFFC001556AAAFFF0005556AABFFF0005556AAB",
      INIT_0F => X"01556AAFFF000556AABFFC00555AAAFFF001556AABFFC001556AAFFF000555AA",
      INIT_10 => X"56AABFF000556AABFF000556AABFF000555AABFFC00555AABFFC00555AAAFFC0",
      INIT_11 => X"AABFFC00555AABFFC00555AABFFC00555AABFFC00555AABFF000556AABFF0005",
      INIT_12 => X"FC001556AABFF000555AABFFC00155AAAFFF001556AABFF000556AABFF000556",
      INIT_13 => X"AAAFFF000555AAABFFC001556AABFFC001556AABFFC00155AAAFFF000555AAAF",
      INIT_14 => X"AFFFC0005556AABFFF0001555AAABFFC000555AAABFFC000555AAABFFC001555",
      INIT_15 => X"AAABFFFC00015555AAAAFFFF00015556AAABFFF00005556AAABFFF0001555AAA",
      INIT_16 => X"0555556AAAABFFFFF0000055555AAAABFFFFC000055556AAAAFFFFC00005555A",
      INIT_17 => X"FFFFFFC000000015555556AAAAAABFFFFFF0000001555556AAAAABFFFFFC0000",
      INIT_18 => X"55555555AAAAAAAAAAAAAAFFFFFFFFFFFF00000000001555555555AAAAAAAABF",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000005555555555",
      INIT_1A => X"AAAAAAAAAAAA5555555555555555550000000000000000000000000000000000",
      INIT_1B => X"55555400000003FFFFFFFEAAAAAAAA55555555540000000000FFFFFFFFFFFFAA",
      INIT_1C => X"000FFFFFEAAAA955555000003FFFFFEAAAAA9555554000000FFFFFFEAAAAAA95",
      INIT_1D => X"AAAA555540003FFFEAAAA555500003FFFFAAAA9555500003FFFFEAAAA5555500",
      INIT_1E => X"00FFFEAA95550003FFFAAAA5554000FFFEAAA95550000FFFEAAA95554000FFFF",
      INIT_1F => X"03FFEAAA555000FFFAAA5554003FFEAAA5550003FFEAAA5550003FFEAAA55540",
      INIT_20 => X"A555000FFEAA9554003FFAAA555000FFFAAA554003FFEAA9554003FFEAA95540",
      INIT_21 => X"5003FFEAA555003FFEAA955000FFEAA955000FFEAA955400FFFAAA554003FFEA",
      INIT_22 => X"00000000000000000000000000000000000FFEAA555003FFEAA555003FFEAA55",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(9),
      DO(0) => DOUT(8)
    );
  Mram_DOUT6 : RAMB16_S2
    generic map(
      INIT_00 => X"55555555400000000000FFFFFFFFFFFAAAAAAAAAAA5555555555500000000000",
      INIT_01 => X"FFFFEAAAAAAAAAAA55555555555400000000000FFFFFFFFFFFEAAAAAAAAAA955",
      INIT_02 => X"00000000FFFFFFFFFFFFEAAAAAAAAAAAA555555555555000000000000FFFFFFF",
      INIT_03 => X"5555400000000000000FFFFFFFFFFFFFEAAAAAAAAAAAAA555555555555500000",
      INIT_04 => X"5555500000000000000000FFFFFFFFFFFFFFFFEAAAAAAAAAAAAAA95555555555",
      INIT_05 => X"0000000000FFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAA5555555555555",
      INIT_06 => X"AAAAAAAAAAAAAAAAAAAAA5555555555555555555555555555400000000000000",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAA",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"5555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0B => X"AAAAAAAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFF0000000000000000000000001",
      INIT_0C => X"AAAAAAAAAABFFFFFFFFFFFFFFFF00000000000000000555555555555555555AA",
      INIT_0D => X"555AAAAAAAAAAAAABFFFFFFFFFFFFF000000000000001555555555555556AAAA",
      INIT_0E => X"0000555555555555AAAAAAAAAAAABFFFFFFFFFFFF00000000000005555555555",
      INIT_0F => X"FFFFFFFFFF00000000000155555555555AAAAAAAAAAABFFFFFFFFFFF00000000",
      INIT_10 => X"5555555AAAAAAAAAAAFFFFFFFFFFF00000000000155555555556AAAAAAAAAABF",
      INIT_11 => X"FFFFFC0000000000155555555556AAAAAAAAAABFFFFFFFFFF000000000005555",
      INIT_12 => X"56AAAAAAAAAAAFFFFFFFFFFFC0000000000055555555555AAAAAAAAAAAFFFFFF",
      INIT_13 => X"0000005555555555556AAAAAAAAAAABFFFFFFFFFFFC000000000005555555555",
      INIT_14 => X"FFFFC000000000000055555555555556AAAAAAAAAAAABFFFFFFFFFFFFC000000",
      INIT_15 => X"FFFFFFFC0000000000000000555555555555555AAAAAAAAAAAAAAAFFFFFFFFFF",
      INIT_16 => X"0000000000000000055555555555555555556AAAAAAAAAAAAAAAAABFFFFFFFFF",
      INIT_17 => X"5555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFC0000",
      INIT_18 => X"0000000000000000000000000000000000555555555555555555555555555555",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"AAAAAAAAAAAAA955555555555555555555555555555555555500000000000000",
      INIT_1C => X"5550000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAAAAAA",
      INIT_1D => X"0000000000003FFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAA95555555555555555",
      INIT_1E => X"5500000000000003FFFFFFFFFFFFFFAAAAAAAAAAAAAAA5555555555555550000",
      INIT_1F => X"A95555555555550000000000003FFFFFFFFFFFFEAAAAAAAAAAAA955555555555",
      INIT_20 => X"FFFFFFFAAAAAAAAAAA955555555555000000000003FFFFFFFFFFFEAAAAAAAAAA",
      INIT_21 => X"555400000000003FFFFFFFFFFFAAAAAAAAAAA55555555555000000000003FFFF",
      INIT_22 => X"00000000000000000000000000000000000FFFFFFFFFFEAAAAAAAAAA95555555",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(11),
      DO(0) => DOUT(10)
    );
  Mram_DOUT7 : RAMB16_S2
    generic map(
      INIT_00 => X"5555555555555555555500000000000000000000000000000000000000000000",
      INIT_01 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5555555555555555555555555",
      INIT_02 => X"00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAA",
      INIT_03 => X"5555555555555555555000000000000000000000000000000000000000000000",
      INIT_04 => X"AAAAAAAAAAAAAAAAAAAAAA555555555555555555555555555555555555555555",
      INIT_05 => X"FFFFFFFFFFAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"555555555555555555555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_0D => X"0000000000000000000000000000005555555555555555555555555555555555",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000",
      INIT_0F => X"5555555555AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFFFFFFFF",
      INIT_10 => X"0000000000000000000000000000055555555555555555555555555555555555",
      INIT_11 => X"AAAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000",
      INIT_12 => X"5555555555555555555555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_13 => X"0000000000000000000000000000000000000000001555555555555555555555",
      INIT_14 => X"AAAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000000",
      INIT_15 => X"55555556AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_16 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000015555",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"5555555555555555555555554000000000000000000000000000000000000000",
      INIT_1D => X"AAAAAAAAAAAA9555555555555555555555555555555555555555555555555555",
      INIT_1E => X"FFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1F => X"000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"5555555555555555555555555555555555555555540000000000000000000000",
      INIT_21 => X"FFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA95555",
      INIT_22 => X"00000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(13),
      DO(0) => DOUT(12)
    );
  Mram_DOUT8 : RAMB16_S2
    generic map(
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"5555555500000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_04 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_05 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_06 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_07 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_08 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_09 => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0A => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0B => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0C => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0D => X"5555555555555555555555555555555555555555555555555555555555555555",
      INIT_0E => X"0000000000000000000000000000000000000000055555555555555555555555",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFFFFFF",
      INIT_15 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_16 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_17 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_18 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_19 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1A => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1B => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1C => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1D => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1E => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"00000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      WRITE_MODE => "WRITE_FIRST"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      WE => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      ADDR(12) => rd_ptr(12),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(1) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DI(0) => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      DO(1) => DOUT(15),
      DO(0) => DOUT(14)
    );
  Mmux_FOUT211 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_158_o,
      I3 => hex2bcd_i_Madd_GND_7_o_GND_7_o_add_158_OUT_cy(0),
      O => Mmux_FOUT21
    );
  Mmux_FOUT21_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT21,
      I1 => BCD_out_10_Q,
      S => MODE,
      O => FOUT(10)
    );
  hex2bcd_i_Mmux_bcd_6_111 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q,
      I2 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o,
      I3 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      O => hex2bcd_i_Mmux_bcd_6_11
    );
  hex2bcd_i_Mmux_bcd_6_112 : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_cy_0_Q,
      I1 => hex2bcd_i_GND_7_o_hex_in_9_LessThan_154_o,
      I2 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_cy_0_Q,
      O => hex2bcd_i_Mmux_bcd_6_111_1007
    );
  hex2bcd_i_Mmux_bcd_6_11_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_Mmux_bcd_6_111_1007,
      I1 => hex2bcd_i_Mmux_bcd_6_11,
      S => hex2bcd_i_Mmux_bcd_8_11,
      O => BCD_out_6_Q
    );
  Mmux_hex_in14_SW01 : LUT4
    generic map(
      INIT => X"0087"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(3),
      O => Mmux_hex_in14_SW0
    );
  Mmux_hex_in14_SW02 : LUT4
    generic map(
      INIT => X"EABF"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(0),
      I2 => Gain(2),
      I3 => Gain(1),
      O => Mmux_hex_in14_SW01_1009
    );
  Mmux_hex_in14_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in14_SW01_1009,
      I1 => Mmux_hex_in14_SW0,
      S => GND_4_o_GND_4_o_add_47_OUT(3),
      O => Mmux_hex_in14_SW0_f5_1010
    );
  Mmux_hex_in71 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(15),
      I2 => GND_4_o_GND_4_o_add_47_OUT(15),
      I3 => Gain(3),
      O => Mmux_hex_in7
    );
  Mmux_hex_in7_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in7,
      I1 => Madd_GND_4_o_GND_4_o_add_47_OUT_cy_10_Q,
      S => MODE,
      O => Mmux_hex_in7_f5_1012
    );
  Mmux_hex_in18_SW21 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(7),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(7),
      O => Mmux_hex_in18_SW2
    );
  Mmux_hex_in18_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(7),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(7),
      O => Mmux_hex_in18_SW21_1014
    );
  Mmux_hex_in18_SW2_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in18_SW21_1014,
      I1 => Mmux_hex_in18_SW2,
      S => n0156_7_Q,
      O => Mmux_hex_in18_SW2_f5_1015
    );
  Mmux_hex_in3_SW21 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => GND_4_o_GND_4_o_add_47_OUT(11),
      O => Mmux_hex_in3_SW2
    );
  Mmux_hex_in3_SW2_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in3_SW2,
      I1 => GND_4_o_GND_4_o_add_49_OUT(11),
      S => Gain(4),
      O => Mmux_hex_in3_SW2_f5_1017
    );
  Mmux_hex_in5_SW21 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(13),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(13),
      O => Mmux_hex_in5_SW2
    );
  Mmux_hex_in5_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(13),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(13),
      O => Mmux_hex_in5_SW21_1019
    );
  Mmux_hex_in5_SW2_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in5_SW21_1019,
      I1 => Mmux_hex_in5_SW2,
      S => n0156_13_Q,
      O => Mmux_hex_in5_SW2_f5_1020
    );
  Mmux_hex_in6_SW21 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(3),
      I1 => GND_4_o_GND_4_o_add_47_OUT(14),
      I2 => Gain(2),
      I3 => Gain(1),
      O => Mmux_hex_in6_SW2
    );
  Mmux_hex_in6_SW2_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in6_SW2,
      I1 => GND_4_o_GND_4_o_add_49_OUT(14),
      S => Gain(4),
      O => Mmux_hex_in6_SW2_f5_1022
    );
  Mmux_hex_in1532_SW01 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(4),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(4),
      O => Mmux_hex_in1532_SW0
    );
  Mmux_hex_in1532_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(4),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(4),
      O => Mmux_hex_in1532_SW01_1024
    );
  Mmux_hex_in1532_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in1532_SW01_1024,
      I1 => Mmux_hex_in1532_SW0,
      S => n0156_4_Q,
      O => Mmux_hex_in1532_SW0_f5_1025
    );
  Mmux_hex_in1632_SW01 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(5),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(5),
      O => Mmux_hex_in1632_SW0
    );
  Mmux_hex_in1632_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(5),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(5),
      O => Mmux_hex_in1632_SW01_1027
    );
  Mmux_hex_in1632_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in1632_SW01_1027,
      I1 => Mmux_hex_in1632_SW0,
      S => n0156_5_Q,
      O => Mmux_hex_in1632_SW0_f5_1028
    );
  Mmux_hex_in1732_SW01 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(6),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(6),
      O => Mmux_hex_in1732_SW0
    );
  Mmux_hex_in1732_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(6),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(6),
      O => Mmux_hex_in1732_SW01_1030
    );
  Mmux_hex_in1732_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in1732_SW01_1030,
      I1 => Mmux_hex_in1732_SW0,
      S => n0156_6_Q,
      O => Mmux_hex_in1732_SW0_f5_1031
    );
  Mmux_hex_in1932_SW01 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(8),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(8),
      O => Mmux_hex_in1932_SW0
    );
  Mmux_hex_in1932_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(8),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(8),
      O => Mmux_hex_in1932_SW01_1033
    );
  Mmux_hex_in1932_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in1932_SW01_1033,
      I1 => Mmux_hex_in1932_SW0,
      S => n0156_8_Q,
      O => Mmux_hex_in1932_SW0_f5_1034
    );
  Mmux_hex_in20201 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(9),
      I2 => GND_4_o_GND_4_o_add_47_OUT(9),
      I3 => Gain(3),
      O => Mmux_hex_in20201_1035
    );
  Mmux_hex_in2020_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in20201_1035,
      I1 => rd_ptr_u(9),
      S => MODE,
      O => Mmux_hex_in2020
    );
  Mmux_hex_in432_SW01 : LUT4
    generic map(
      INIT => X"EF45"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_47_OUT(12),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_49_OUT(12),
      O => Mmux_hex_in432_SW0
    );
  Mmux_hex_in432_SW02 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => GND_4_o_GND_4_o_add_49_OUT(12),
      I2 => Gain(3),
      I3 => GND_4_o_GND_4_o_add_47_OUT(12),
      O => Mmux_hex_in432_SW01_1037
    );
  Mmux_hex_in432_SW0_f5 : MUXF5
    port map (
      I0 => Mmux_hex_in432_SW01_1037,
      I1 => Mmux_hex_in432_SW0,
      S => n0156_12_Q,
      O => Mmux_hex_in432_SW0_f5_1038
    );
  Mmux_FOUT2011 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_Mmux_bcd_12_11,
      I1 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_9_GND_7_o_add_154_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_9_hex_in_9_MUX_8637_o11_713,
      O => Mmux_FOUT201
    );
  Mmux_FOUT2012 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_cy_0_Q,
      I1 => hex2bcd_i_GND_7_o_hex_in_16_LessThan_168_o,
      O => Mmux_FOUT2011_1040
    );
  Mmux_FOUT201_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT2011_1040,
      I1 => Mmux_FOUT201,
      S => MODE,
      O => FOUT(9)
    );
  Mmux_FOUT1911 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_8_11,
      O => Mmux_FOUT191
    );
  Mmux_FOUT1912 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_12_11,
      O => Mmux_FOUT1911_1042
    );
  Mmux_FOUT191_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT1911_1042,
      I1 => Mmux_FOUT191,
      S => MODE,
      O => FOUT(8)
    );
  Mmux_FOUT1611 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_Mmux_bcd_8_11,
      I1 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_5_GND_7_o_add_152_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_5_hex_in_5_MUX_8633_o11_707,
      O => Mmux_FOUT161
    );
  Mmux_FOUT1612 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_cy_0_Q,
      I1 => hex2bcd_i_GND_7_o_hex_in_12_LessThan_166_o,
      O => Mmux_FOUT1611_1044
    );
  Mmux_FOUT161_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT1611_1044,
      I1 => Mmux_FOUT161,
      S => MODE,
      O => FOUT(5)
    );
  Mmux_FOUT1511 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_4_GND_7_o_add_162_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_4_11,
      O => Mmux_FOUT151
    );
  Mmux_FOUT1512 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_8_GND_7_o_add_164_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_8_11,
      O => Mmux_FOUT1511_1046
    );
  Mmux_FOUT151_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT1511_1046,
      I1 => Mmux_FOUT151,
      S => MODE,
      O => FOUT(4)
    );
  Mmux_FOUT511 : LUT4
    generic map(
      INIT => X"2DD2"
    )
    port map (
      I0 => hex2bcd_i_Mmux_bcd_16_11,
      I1 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q,
      I2 => hex2bcd_i_Madd_hex_in_13_GND_7_o_add_156_OUT_lut_3_Q,
      I3 => hex2bcd_i_Mmux_hex_in_13_hex_in_13_MUX_8641_o11_723,
      O => Mmux_FOUT51
    );
  Mmux_FOUT512 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => hex2bcd_i_Madd_n0578_Madd_cy(0),
      I1 => hex2bcd_i_GND_7_o_GND_7_o_LessThan_170_o_839,
      O => Mmux_FOUT511_1048
    );
  Mmux_FOUT51_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT511_1048,
      I1 => Mmux_FOUT51,
      S => MODE,
      O => FOUT(13)
    );
  Mmux_FOUT411 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_12_GND_7_o_add_166_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_12_11,
      O => Mmux_FOUT41
    );
  Mmux_FOUT412 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_hex_in_16_GND_7_o_add_168_OUT_lut_3_Q,
      I1 => hex2bcd_i_Mmux_bcd_16_11,
      O => Mmux_FOUT411_1050
    );
  Mmux_FOUT41_f5 : MUXF5
    port map (
      I0 => Mmux_FOUT411_1050,
      I1 => Mmux_FOUT41,
      S => MODE,
      O => FOUT(12)
    );
  Mmux_Inc_10_Inc_10_mux_20_OUT_A10110 : LUT4_L
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => Inc(1),
      I1 => Inc(2),
      I2 => Inc(5),
      I3 => Inc(9),
      LO => Mmux_Inc_10_Inc_10_mux_20_OUT_A10110_882
    );
  Q_n0194_inv2 : LUT3_L
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => GND_4_o_rd_ptr_12_LessThan_16_o,
      I1 => FIX,
      I2 => GND_4_o_play_t_30_LessThan_15_o,
      LO => Q_n0194_inv2_884
    );
  Q_n0194_inv9 : LUT4_L
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => Inc(5),
      I1 => Inc(4),
      I2 => Inc(2),
      I3 => Inc(3),
      LO => Q_n0194_inv9_885
    );
  Q_n0194_inv53 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Inc(2),
      I1 => Inc(3),
      I2 => Inc(8),
      I3 => Inc(9),
      LO => Q_n0194_inv53_887
    );
  Q_n0194_inv76 : LUT4_L
    generic map(
      INIT => X"2022"
    )
    port map (
      I0 => Down_tick_req_40,
      I1 => Up_tick_req_39,
      I2 => Inc(1),
      I3 => N126,
      LO => Q_n0194_inv76_889
    );

end Structure_44100;

------------------------------------------------------------------ 25600 ------

architecture Structure_25600 of SENO is
  signal BCD_out_10_Q : STD_LOGIC; 
  signal BCD_out_11_Q : STD_LOGIC; 
  signal BCD_out_12_Q : STD_LOGIC; 
  signal BCD_out_13_Q : STD_LOGIC; 
  signal BCD_out_14_Q : STD_LOGIC; 
  signal BCD_out_15_Q : STD_LOGIC; 
  signal BCD_out_17_Q : STD_LOGIC; 
  signal BCD_out_7_Q : STD_LOGIC; 
  signal BCD_out_9_Q : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34 : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_lut : STD_LOGIC; 
  signal DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36 : STD_LOGIC; 
  signal DebEdge_inst_down_N10 : STD_LOGIC; 
  signal DebEdge_inst_down_N14 : STD_LOGIC; 
  signal DebEdge_inst_down_N7 : STD_LOGIC; 
  signal DebEdge_inst_down_N8 : STD_LOGIC; 
  signal DebEdge_inst_down_m_tick : STD_LOGIC; 
  signal DebEdge_inst_down_pos_next1_73 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd1_94 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd1_In_95 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd2_96 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd2_In_97 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd3_98 : STD_LOGIC; 
  signal DebEdge_inst_down_state_reg_FFd3_In_99 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34 : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_lut : STD_LOGIC; 
  signal DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36 : STD_LOGIC; 
  signal DebEdge_inst_up_N10 : STD_LOGIC; 
  signal DebEdge_inst_up_N14 : STD_LOGIC; 
  signal DebEdge_inst_up_N7 : STD_LOGIC; 
  signal DebEdge_inst_up_N8 : STD_LOGIC; 
  signal DebEdge_inst_up_m_tick : STD_LOGIC; 
  signal DebEdge_inst_up_pos_next1_73 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd1_94 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd1_In_95 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd2_96 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd2_In_97 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd3_98 : STD_LOGIC; 
  signal DebEdge_inst_up_state_reg_FFd3_In_99 : STD_LOGIC; 
  signal Down_tick : STD_LOGIC; 
  signal Down_tick_req_220 : STD_LOGIC; 
  signal Down_tick_req_not0001 : STD_LOGIC; 
  signal FOUT_14_1 : STD_LOGIC; 
  signal FOUT_15_1 : STD_LOGIC; 
  signal FOUT_3_106_240 : STD_LOGIC; 
  signal FOUT_3_28_241 : STD_LOGIC; 
  signal FOUT_3_8_242 : STD_LOGIC; 
  signal FOUT_4_1 : STD_LOGIC; 
  signal FOUT_4_11_245 : STD_LOGIC; 
  signal FOUT_5_1 : STD_LOGIC; 
  signal FOUT_6_1 : STD_LOGIC; 
  signal Gain_not0001 : STD_LOGIC; 
  signal Gain_not000136_273 : STD_LOGIC; 
  signal Gain_not000154_274 : STD_LOGIC; 
  signal Gain_not000179_275 : STD_LOGIC; 
  signal Gain_not000193_276 : STD_LOGIC; 
  signal Inc_cmp_eq0000_288 : STD_LOGIC; 
  signal Inc_mux0002 : STD_LOGIC; 
  signal Inc_not0002 : STD_LOGIC; 
  signal Inc_not000215_302 : STD_LOGIC; 
  signal Inc_not000221_303 : STD_LOGIC; 
  signal Inc_not000238_304 : STD_LOGIC; 
  signal Inc_not000244_305 : STD_LOGIC; 
  signal Inc_not000264_306 : STD_LOGIC; 
  signal Inc_not000277_307 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_14_Q_333 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_15_Q_334 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_4_Q_335 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_6_Q_336 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_8_Q_337 : STD_LOGIC; 
  signal Madd_Gain_conv_addsub0000_lut_9_Q_338 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_12_Q_348 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_13_Q_349 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_2_Q_350 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_3_Q_351 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_3_rt_352 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_4_Q_353 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_5_Q_354 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_6_Q_355 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_cy_7_Q_356 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_12_Q_357 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_13_Q_358 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_2_Q : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_4_Q : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_6_Q_361 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_lut_7_Q_362 : STD_LOGIC; 
  signal Madd_tmp_addsub0001_xor_10_rt_363 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_13_Q_364 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_14_Q_365 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_3_Q_366 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_4_Q_367 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_5_Q_368 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_6_Q_369 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_7_Q_370 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_cy_8_Q_371 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_13_Q_372 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_14_Q_373 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_3_Q_374 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_5_Q_375 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_7_Q_376 : STD_LOGIC; 
  signal Madd_tmp_addsub0002_lut_8_Q_377 : STD_LOGIC; 
  signal Mcompar_play_t_cmp_ge0000_cy_0_rt_423 : STD_LOGIC; 
  signal Mcount_Gain_cy_1_Q : STD_LOGIC; 
  signal Mcount_Gain_cy_3_Q : STD_LOGIC; 
  signal Mcount_Gain_xor_3_11 : STD_LOGIC; 
  signal Mcount_Gain_xor_3_111_461 : STD_LOGIC; 
  signal Mcount_play_t_cy_10_rt_464 : STD_LOGIC; 
  signal Mcount_play_t_cy_11_rt_466 : STD_LOGIC; 
  signal Mcount_play_t_cy_12_rt_468 : STD_LOGIC; 
  signal Mcount_play_t_cy_13_rt_470 : STD_LOGIC; 
  signal Mcount_play_t_cy_14_rt_472 : STD_LOGIC; 
  signal Mcount_play_t_cy_15_rt_474 : STD_LOGIC; 
  signal Mcount_play_t_cy_16_rt_476 : STD_LOGIC; 
  signal Mcount_play_t_cy_17_rt_478 : STD_LOGIC; 
  signal Mcount_play_t_cy_18_rt_480 : STD_LOGIC; 
  signal Mcount_play_t_cy_19_rt_482 : STD_LOGIC; 
  signal Mcount_play_t_cy_1_rt_484 : STD_LOGIC; 
  signal Mcount_play_t_cy_20_rt_486 : STD_LOGIC; 
  signal Mcount_play_t_cy_21_rt_488 : STD_LOGIC; 
  signal Mcount_play_t_cy_22_rt_490 : STD_LOGIC; 
  signal Mcount_play_t_cy_23_rt_492 : STD_LOGIC; 
  signal Mcount_play_t_cy_24_rt_494 : STD_LOGIC; 
  signal Mcount_play_t_cy_25_rt_496 : STD_LOGIC; 
  signal Mcount_play_t_cy_26_rt_498 : STD_LOGIC; 
  signal Mcount_play_t_cy_27_rt_500 : STD_LOGIC; 
  signal Mcount_play_t_cy_28_rt_502 : STD_LOGIC; 
  signal Mcount_play_t_cy_29_rt_504 : STD_LOGIC; 
  signal Mcount_play_t_cy_2_rt_506 : STD_LOGIC; 
  signal Mcount_play_t_cy_3_rt_508 : STD_LOGIC; 
  signal Mcount_play_t_cy_4_rt_510 : STD_LOGIC; 
  signal Mcount_play_t_cy_5_rt_512 : STD_LOGIC; 
  signal Mcount_play_t_cy_6_rt_514 : STD_LOGIC; 
  signal Mcount_play_t_cy_7_rt_516 : STD_LOGIC; 
  signal Mcount_play_t_cy_8_rt_518 : STD_LOGIC; 
  signal Mcount_play_t_cy_9_rt_520 : STD_LOGIC; 
  signal Mcount_play_t_xor_30_rt_522 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N136 : STD_LOGIC; 
  signal N138 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N140 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N146 : STD_LOGIC; 
  signal N148 : STD_LOGIC; 
  signal N150 : STD_LOGIC; 
  signal N156 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N162 : STD_LOGIC; 
  signal N164 : STD_LOGIC; 
  signal N166 : STD_LOGIC; 
  signal N168 : STD_LOGIC; 
  signal N170 : STD_LOGIC; 
  signal N172 : STD_LOGIC; 
  signal N174 : STD_LOGIC; 
  signal N176 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N188 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N196 : STD_LOGIC; 
  signal N198 : STD_LOGIC; 
  signal N200 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N202 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N204 : STD_LOGIC; 
  signal N205 : STD_LOGIC; 
  signal N206 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Up_tick : STD_LOGIC; 
  signal Up_tick_req_644 : STD_LOGIC; 
  signal Up_tick_req_not0001 : STD_LOGIC; 
  signal hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_1 : STD_LOGIC; 
  signal hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_11_688 : STD_LOGIC; 
  signal hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_1 : STD_LOGIC; 
  signal hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_11_735 : STD_LOGIC; 
  signal hex2bcd_i_N112 : STD_LOGIC; 
  signal hex2bcd_i_N161 : STD_LOGIC; 
  signal hex2bcd_i_N221 : STD_LOGIC; 
  signal hex2bcd_i_N231 : STD_LOGIC; 
  signal hex2bcd_i_N241 : STD_LOGIC; 
  signal hex2bcd_i_N251 : STD_LOGIC; 
  signal hex2bcd_i_N261 : STD_LOGIC; 
  signal hex2bcd_i_N271 : STD_LOGIC; 
  signal hex2bcd_i_N281 : STD_LOGIC; 
  signal hex2bcd_i_N291 : STD_LOGIC; 
  signal hex2bcd_i_N301 : STD_LOGIC; 
  signal hex2bcd_i_N311 : STD_LOGIC; 
  signal hex2bcd_i_N321 : STD_LOGIC; 
  signal hex2bcd_i_N331 : STD_LOGIC; 
  signal hex2bcd_i_N341 : STD_LOGIC; 
  signal hex2bcd_i_N381 : STD_LOGIC; 
  signal hex2bcd_i_N391 : STD_LOGIC; 
  signal hex2bcd_i_N411 : STD_LOGIC; 
  signal hex2bcd_i_N421 : STD_LOGIC; 
  signal hex2bcd_i_N451 : STD_LOGIC; 
  signal hex2bcd_i_N471 : STD_LOGIC; 
  signal hex2bcd_i_N481 : STD_LOGIC; 
  signal hex2bcd_i_N491 : STD_LOGIC; 
  signal hex2bcd_i_N501 : STD_LOGIC; 
  signal hex2bcd_i_N511 : STD_LOGIC; 
  signal hex2bcd_i_N521 : STD_LOGIC; 
  signal hex2bcd_i_N531 : STD_LOGIC; 
  signal hex2bcd_i_N54 : STD_LOGIC; 
  signal hex2bcd_i_N55 : STD_LOGIC; 
  signal hex2bcd_i_N60 : STD_LOGIC; 
  signal hex2bcd_i_N66 : STD_LOGIC; 
  signal hex2bcd_i_N67 : STD_LOGIC; 
  signal hex2bcd_i_N68 : STD_LOGIC; 
  signal hex2bcd_i_N69 : STD_LOGIC; 
  signal hex2bcd_i_N70 : STD_LOGIC; 
  signal hex2bcd_i_N711 : STD_LOGIC; 
  signal hex2bcd_i_N72 : STD_LOGIC; 
  signal hex2bcd_i_N73 : STD_LOGIC; 
  signal hex2bcd_i_N74 : STD_LOGIC; 
  signal hex2bcd_i_N75 : STD_LOGIC; 
  signal hex2bcd_i_N76 : STD_LOGIC; 
  signal hex2bcd_i_N77 : STD_LOGIC; 
  signal hex2bcd_i_N78 : STD_LOGIC; 
  signal hex2bcd_i_N79 : STD_LOGIC; 
  signal hex2bcd_i_N811 : STD_LOGIC; 
  signal hex2bcd_i_N82 : STD_LOGIC; 
  signal hex2bcd_i_N83 : STD_LOGIC; 
  signal hex2bcd_i_N84 : STD_LOGIC; 
  signal hex2bcd_i_N85 : STD_LOGIC; 
  signal hex2bcd_i_N87 : STD_LOGIC; 
  signal hex2bcd_i_N88 : STD_LOGIC; 
  signal hex2bcd_i_N89 : STD_LOGIC; 
  signal hex2bcd_i_N90 : STD_LOGIC; 
  signal hex2bcd_i_N911 : STD_LOGIC; 
  signal hex2bcd_i_N92 : STD_LOGIC; 
  signal hex2bcd_i_N93 : STD_LOGIC; 
  signal hex2bcd_i_N94 : STD_LOGIC; 
  signal hex2bcd_i_N95 : STD_LOGIC; 
  signal hex2bcd_i_N96 : STD_LOGIC; 
  signal hex2bcd_i_N97 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0003 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0004 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0006 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0007 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0008 : STD_LOGIC; 
  signal hex2bcd_i_bcd_11_cmp_gt0009 : STD_LOGIC; 
  signal hex2bcd_i_bcd_12_cmp_gt0004 : STD_LOGIC; 
  signal hex2bcd_i_bcd_12_cmp_gt0005 : STD_LOGIC; 
  signal hex2bcd_i_bcd_17_cmp_gt0003 : STD_LOGIC; 
  signal hex2bcd_i_bcd_17_mux00031 : STD_LOGIC; 
  signal hex2bcd_i_bcd_17_mux000311_839 : STD_LOGIC; 
  signal hex2bcd_i_bcd_18_mux0003 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0005 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0006 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0007 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0008 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0009 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0010 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0011 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0012 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0013 : STD_LOGIC; 
  signal hex2bcd_i_bcd_2_cmp_gt0014 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0004 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0005 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0006 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0007 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0008 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0009 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0011 : STD_LOGIC; 
  signal hex2bcd_i_bcd_4_cmp_gt0013 : STD_LOGIC; 
  signal hex2bcd_i_bcd_6_mux00041_SW0 : STD_LOGIC; 
  signal hex2bcd_i_bcd_6_mux00041_SW01_860 : STD_LOGIC; 
  signal hex2bcd_i_bcd_9_mux00031 : STD_LOGIC; 
  signal hex2bcd_i_bcd_9_mux000311_862 : STD_LOGIC; 
  signal hex_in_10_SW2 : STD_LOGIC; 
  signal hex_in_10_SW21_865 : STD_LOGIC; 
  signal hex_in_11_SW2 : STD_LOGIC; 
  signal hex_in_11_SW21_868 : STD_LOGIC; 
  signal hex_in_12_SW2 : STD_LOGIC; 
  signal hex_in_12_SW21_871 : STD_LOGIC; 
  signal hex_in_13_SW2 : STD_LOGIC; 
  signal hex_in_13_SW21_874 : STD_LOGIC; 
  signal hex_in_15_1 : STD_LOGIC; 
  signal hex_in_15_11_878 : STD_LOGIC; 
  signal hex_in_2_1_882 : STD_LOGIC; 
  signal hex_in_2_2_883 : STD_LOGIC; 
  signal hex_in_3_SW2 : STD_LOGIC; 
  signal hex_in_3_SW21_886 : STD_LOGIC; 
  signal hex_in_4_SW2 : STD_LOGIC; 
  signal hex_in_4_SW21_889 : STD_LOGIC; 
  signal hex_in_5_SW2 : STD_LOGIC; 
  signal hex_in_5_SW21_892 : STD_LOGIC; 
  signal hex_in_6_SW2 : STD_LOGIC; 
  signal hex_in_6_SW21_895 : STD_LOGIC; 
  signal hex_in_7_SW2 : STD_LOGIC; 
  signal hex_in_7_SW21_898 : STD_LOGIC; 
  signal hex_in_8_SW2 : STD_LOGIC; 
  signal hex_in_9_1_902 : STD_LOGIC; 
  signal play_t_cmp_ge0000 : STD_LOGIC; 
  signal play_t_or0000 : STD_LOGIC; 
  signal play_t_or00001 : STD_LOGIC; 
  signal rd_ptr_cmp_gt0000 : STD_LOGIC; 
  signal resto_11_inv_1000 : STD_LOGIC; 
  signal tmp_addsub0001_10_Q : STD_LOGIC; 
  signal tmp_addsub0001_11_Q : STD_LOGIC; 
  signal tmp_addsub0001_12_Q : STD_LOGIC; 
  signal tmp_addsub0001_13_Q : STD_LOGIC; 
  signal tmp_addsub0001_14_Q : STD_LOGIC; 
  signal tmp_addsub0001_2_Q : STD_LOGIC; 
  signal tmp_addsub0001_3_Q : STD_LOGIC; 
  signal tmp_addsub0001_4_Q : STD_LOGIC; 
  signal tmp_addsub0001_5_Q : STD_LOGIC; 
  signal tmp_addsub0001_6_Q : STD_LOGIC; 
  signal tmp_addsub0001_7_Q : STD_LOGIC; 
  signal tmp_addsub0001_8_Q : STD_LOGIC; 
  signal tmp_mux0001_11_1 : STD_LOGIC; 
  signal tmp_mux0001_11_11_1027 : STD_LOGIC; 
  signal tmp_mux0002_10_Q : STD_LOGIC; 
  signal tmp_mux0002_10_1_1029 : STD_LOGIC; 
  signal tmp_mux0002_11_Q : STD_LOGIC; 
  signal tmp_mux0002_11_1_1031 : STD_LOGIC; 
  signal tmp_mux0002_12_Q : STD_LOGIC; 
  signal tmp_mux0002_12_1_1033 : STD_LOGIC; 
  signal tmp_mux0002_13_Q : STD_LOGIC; 
  signal tmp_mux0002_4_Q : STD_LOGIC; 
  signal tmp_mux0002_4_1_1036 : STD_LOGIC; 
  signal tmp_mux0002_5_Q : STD_LOGIC; 
  signal tmp_mux0002_6_Q : STD_LOGIC; 
  signal tmp_mux0002_6_1_1039 : STD_LOGIC; 
  signal tmp_mux0002_7_Q : STD_LOGIC; 
  signal tmp_mux0003_10_1 : STD_LOGIC; 
  signal tmp_mux0003_11_1 : STD_LOGIC; 
  signal tmp_mux0003_12_1 : STD_LOGIC; 
  signal tmp_mux0003_13_1 : STD_LOGIC; 
  signal tmp_mux0003_5_1 : STD_LOGIC; 
  signal tmp_mux0003_7_1 : STD_LOGIC; 

  signal NLW_Mmult_rd_ptr_u_mult0001_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_rd_ptr_u_mult0001_P_14_UNCONNECTED : STD_LOGIC; 

  signal NLW_Mmult_DOUT_amp_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_Mmult_DOUT_amp_P_0_UNCONNECTED : STD_LOGIC; 
  signal DOUT : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal DebEdge_inst_down_Mcount_q_reg_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal DebEdge_inst_down_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal DebEdge_inst_down_q_reg : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_up_Mcount_q_reg_cy : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal DebEdge_inst_up_Result : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal DebEdge_inst_up_q_reg : STD_LOGIC_VECTOR ( 18 downto 0 ); 
  signal Gain : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal Gain_conv_addsub0000 : STD_LOGIC_VECTOR ( 16 downto 4 ); 
  signal Inc : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Inc_mux0001 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Inc_share0000 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Madd_Gain_conv_addsub0000_cy : STD_LOGIC_VECTOR ( 16 downto 4 ); 
  signal Madd_resto_not0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal Maddsub_Inc_share0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Maddsub_Inc_share0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Maddsub_rd_ptr_mux0001_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Maddsub_rd_ptr_mux0001_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_play_t_cmp_ge0000_cy : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal Mcompar_play_t_cmp_ge0000_lut : STD_LOGIC_VECTOR ( 5 downto 1 ); 
  signal Mcompar_rd_ptr_cmp_gt0000_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Mcompar_rd_ptr_cmp_gt0000_lut : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Mcount_Gain_lut : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal Mcount_play_t_cy : STD_LOGIC_VECTOR ( 29 downto 0 ); 
  signal Mcount_play_t_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Msub_rd_ptr_addsub0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal Msub_rd_ptr_addsub0000_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0003_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0004_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0006_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0006_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0007_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0007_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0008_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0008_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0009_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0009_lut : STD_LOGIC_VECTOR ( 3 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0010_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_11_8_add0010_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0001_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0002_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0003_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0004_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0006_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0006_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0007_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_15_12_add0007_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_19_16_add0003_Madd_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0006_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0006_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0007_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0007_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0008_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0008_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0009_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0009_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0010_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0010_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0011_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0011_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0012_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0012_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0013_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0013_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0014_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0014_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0015_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0015_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0016_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_3_0_add0016_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0002_cy : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0003_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0004_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0004_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0005_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0005_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0006_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0006_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0007_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0007_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0008_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0008_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0009_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0009_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0010_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0010_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0011_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0011_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0012_cy : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0012_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0013_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal hex2bcd_i_Madd_bcd_7_4_add0013_lut : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal hex_in : STD_LOGIC_VECTOR ( 16 downto 1 ); 
  signal play_t : STD_LOGIC_VECTOR ( 30 downto 0 ); 
  signal rd_ptr : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rd_ptr_addsub0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rd_ptr_mux0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rd_ptr_mux0002 : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal rd_ptr_u : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal resto : STD_LOGIC_VECTOR ( 10 downto 10 ); 
  signal tmp_addsub0002 : STD_LOGIC_VECTOR ( 15 downto 3 ); 
  signal tmp_mux0003 : STD_LOGIC_VECTOR ( 14 downto 14 ); 
  
  signal DOUT_amp_P_35_21: STD_LOGIC_VECTOR ( 35 downto 21 );
  signal DOUT_amp_P_4_0: STD_LOGIC_VECTOR (4 downto 0);
  signal rd_ptr_u_P_35_14: STD_LOGIC_VECTOR ( 35 downto 14 );
  
begin
  XST_GND : GND
    port map (
      G => Madd_Gain_conv_addsub0000_cy(16)
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  Inc_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(0),
      S => RST,
      Q => Inc(0)
    );
  Inc_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(1),
      R => RST,
      Q => Inc(1)
    );
  Inc_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(2),
      R => RST,
      Q => Inc(2)
    );
  Inc_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(3),
      R => RST,
      Q => Inc(3)
    );
  Inc_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(4),
      R => RST,
      Q => Inc(4)
    );
  Inc_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(5),
      R => RST,
      Q => Inc(5)
    );
  Inc_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(6),
      R => RST,
      Q => Inc(6)
    );
  Inc_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(7),
      R => RST,
      Q => Inc(7)
    );
  Inc_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(8),
      R => RST,
      Q => Inc(8)
    );
  Inc_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(9),
      R => RST,
      Q => Inc(9)
    );
  Inc_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Inc_not0002,
      D => Inc_mux0001(10),
      R => RST,
      Q => Inc(10)
    );
  Up_tick_req : FDRSE
    port map (
      C => CLK,
      CE => Up_tick_req_not0001,
      D => Madd_Gain_conv_addsub0000_cy(16),
      R => RST,
      S => Up_tick,
      Q => Up_tick_req_644
    );
  Down_tick_req : FDRE
    port map (
      C => CLK,
      CE => Down_tick_req_not0001,
      D => Down_tick,
      R => RST,
      Q => Down_tick_req_220
    );
  rd_ptr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(0),
      R => RST,
      Q => rd_ptr(0)
    );
  rd_ptr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(1),
      R => RST,
      Q => rd_ptr(1)
    );
  rd_ptr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(2),
      R => RST,
      Q => rd_ptr(2)
    );
  rd_ptr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(3),
      R => RST,
      Q => rd_ptr(3)
    );
  rd_ptr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(4),
      R => RST,
      Q => rd_ptr(4)
    );
  rd_ptr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(5),
      R => RST,
      Q => rd_ptr(5)
    );
  rd_ptr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(6),
      R => RST,
      Q => rd_ptr(6)
    );
  rd_ptr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(7),
      R => RST,
      Q => rd_ptr(7)
    );
  rd_ptr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(8),
      R => RST,
      Q => rd_ptr(8)
    );
  rd_ptr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(9),
      R => RST,
      Q => rd_ptr(9)
    );
  rd_ptr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(10),
      R => RST,
      Q => rd_ptr(10)
    );
  rd_ptr_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => rd_ptr_mux0001(11),
      R => RST,
      Q => rd_ptr(11)
    );
  Mmult_rd_ptr_u_mult0001 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => Madd_Gain_conv_addsub0000_cy(16),
      CEB => Madd_Gain_conv_addsub0000_cy(16),
      CEP => Madd_Gain_conv_addsub0000_cy(16),
      CLK => Madd_Gain_conv_addsub0000_cy(16),
      RSTA => Madd_Gain_conv_addsub0000_cy(16),
      RSTB => Madd_Gain_conv_addsub0000_cy(16),
      RSTP => Madd_Gain_conv_addsub0000_cy(16),
      A(17) => Madd_Gain_conv_addsub0000_cy(16),
      A(16) => Madd_Gain_conv_addsub0000_cy(16),
      A(15) => Madd_Gain_conv_addsub0000_cy(16),
      A(14) => Madd_Gain_conv_addsub0000_cy(16),
      A(13) => Madd_Gain_conv_addsub0000_cy(16),
      A(12) => Madd_Gain_conv_addsub0000_cy(16),
      A(11) => Madd_Gain_conv_addsub0000_cy(16),
      A(10) => Inc(10),
      A(9) => Inc(9),
      A(8) => Inc(8),
      A(7) => Inc(7),
      A(6) => Inc(6),
      A(5) => Inc(5),
      A(4) => Inc(4),
      A(3) => Inc(3),
      A(2) => Inc(2),
      A(1) => Inc(1),
      A(0) => Inc(0),
      B(17) => Madd_Gain_conv_addsub0000_cy(16),
      B(16) => Madd_Gain_conv_addsub0000_cy(16),
      B(15) => Madd_Gain_conv_addsub0000_cy(16),
      B(14) => Madd_Gain_conv_addsub0000_cy(16),
      B(13) => Madd_Gain_conv_addsub0000_cy(16),
      B(12) => Madd_Gain_conv_addsub0000_cy(16),
      B(11) => Madd_Gain_conv_addsub0000_cy(16),
      B(10) => Madd_Gain_conv_addsub0000_cy(16),
      B(9) => Madd_Gain_conv_addsub0000_cy(16),
      B(8) => Madd_Gain_conv_addsub0000_cy(16),
      B(7) => Madd_Gain_conv_addsub0000_cy(16),
      B(6) => Madd_Gain_conv_addsub0000_cy(16),
      B(5) => Madd_Gain_conv_addsub0000_cy(16),
      B(4) => Madd_Gain_conv_addsub0000_cy(16),
      B(3) => N1,
      B(2) => Madd_Gain_conv_addsub0000_cy(16),
      B(1) => N1,
      B(0) => Madd_Gain_conv_addsub0000_cy(16),
      BCIN => (others=>'0'),
      P(35 downto 14) => rd_ptr_u_P_35_14,
      P(13) => rd_ptr_u(13),
      P(12) => rd_ptr_u(12),
      P(11) => rd_ptr_u(11),
      P(10) => rd_ptr_u(10),
      P(9) => rd_ptr_u(9),
      P(8) => rd_ptr_u(8),
      P(7) => rd_ptr_u(7),
      P(6) => rd_ptr_u(6),
      P(5) => rd_ptr_u(5),
      P(4) => rd_ptr_u(4),
      P(3) => rd_ptr_u(3),
      P(2) => rd_ptr_u(2),
      P(1) => rd_ptr_u(1),
      P(0) => rd_ptr_u(0),
      BCOUT => open
    );
  Mmult_DOUT_amp : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => Madd_Gain_conv_addsub0000_cy(16),
      CEB => Madd_Gain_conv_addsub0000_cy(16),
      CEP => Madd_Gain_conv_addsub0000_cy(16),
      CLK => Madd_Gain_conv_addsub0000_cy(16),
      RSTA => Madd_Gain_conv_addsub0000_cy(16),
      RSTB => Madd_Gain_conv_addsub0000_cy(16),
      RSTP => Madd_Gain_conv_addsub0000_cy(16),
      A(17) => DOUT(15),
      A(16) => DOUT(15),
      A(15) => DOUT(15),
      A(14) => DOUT(14),
      A(13) => DOUT(13),
      A(12) => DOUT(12),
      A(11) => DOUT(11),
      A(10) => DOUT(10),
      A(9) => DOUT(9),
      A(8) => DOUT(8),
      A(7) => DOUT(7),
      A(6) => DOUT(6),
      A(5) => DOUT(5),
      A(4) => DOUT(4),
      A(3) => DOUT(3),
      A(2) => DOUT(2),
      A(1) => DOUT(1),
      A(0) => DOUT(0),
      B(17) => Gain(5),
      B(16) => Gain(5),
      B(15) => Gain(5),
      B(14) => Gain(5),
      B(13) => Gain(5),
      B(12) => Gain(5),
      B(11) => Gain(5),
      B(10) => Gain(5),
      B(9) => Gain(5),
      B(8) => Gain(5),
      B(7) => Gain(5),
      B(6) => Gain(5),
      B(5) => Gain(5),
      B(4) => Gain(4),
      B(3) => Gain(3),
      B(2) => Gain(2),
      B(1) => Gain(1),
      B(0) => Gain(0),
      BCIN => (others=>'0'),
      P(35 downto 21) => DOUT_amp_P_35_21,
      P(20) => WAVE(15),
      P(19) => WAVE(14),
      P(18) => WAVE(13),
      P(17) => WAVE(12),
      P(16) => WAVE(11),
      P(15) => WAVE(10),
      P(14) => WAVE(9),
      P(13) => WAVE(8),
      P(12) => WAVE(7),
      P(11) => WAVE(6),
      P(10) => WAVE(5),
      P(9) => WAVE(4),
      P(8) => WAVE(3),
      P(7) => WAVE(2),
      P(6) => WAVE(1),
      P(5) => WAVE(0),
      P(4 downto 0) => DOUT_amp_P_4_0,
      BCOUT => open
    );
  Gain_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_2_1,
      R => RST,
      Q => Gain(2)
    );
  Gain_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_1_1,
      R => RST,
      Q => Gain(1)
    );
  Gain_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_5_1,
      R => RST,
      Q => Gain(5)
    );
  Gain_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_3_1,
      R => RST,
      Q => Gain(3)
    );
  Gain_4 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_4_1,
      S => RST,
      Q => Gain(4)
    );
  play_t_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(0),
      R => play_t_or0000,
      Q => play_t(0)
    );
  play_t_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(1),
      R => play_t_or0000,
      Q => play_t(1)
    );
  play_t_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(2),
      R => play_t_or0000,
      Q => play_t(2)
    );
  play_t_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(3),
      R => play_t_or0000,
      Q => play_t(3)
    );
  play_t_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(4),
      R => play_t_or0000,
      Q => play_t(4)
    );
  play_t_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(5),
      R => play_t_or0000,
      Q => play_t(5)
    );
  play_t_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(6),
      R => play_t_or0000,
      Q => play_t(6)
    );
  play_t_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(7),
      R => play_t_or0000,
      Q => play_t(7)
    );
  play_t_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(8),
      R => play_t_or0000,
      Q => play_t(8)
    );
  play_t_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(9),
      R => play_t_or0000,
      Q => play_t(9)
    );
  play_t_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(10),
      R => play_t_or0000,
      Q => play_t(10)
    );
  play_t_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(11),
      R => play_t_or0000,
      Q => play_t(11)
    );
  play_t_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(12),
      R => play_t_or0000,
      Q => play_t(12)
    );
  play_t_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(13),
      R => play_t_or0000,
      Q => play_t(13)
    );
  play_t_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(14),
      R => play_t_or0000,
      Q => play_t(14)
    );
  play_t_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(15),
      R => play_t_or0000,
      Q => play_t(15)
    );
  play_t_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(16),
      R => play_t_or0000,
      Q => play_t(16)
    );
  play_t_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(17),
      R => play_t_or0000,
      Q => play_t(17)
    );
  play_t_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(18),
      R => play_t_or0000,
      Q => play_t(18)
    );
  play_t_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(19),
      R => play_t_or0000,
      Q => play_t(19)
    );
  play_t_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(20),
      R => play_t_or0000,
      Q => play_t(20)
    );
  play_t_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(21),
      R => play_t_or0000,
      Q => play_t(21)
    );
  play_t_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(22),
      R => play_t_or0000,
      Q => play_t(22)
    );
  play_t_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(23),
      R => play_t_or0000,
      Q => play_t(23)
    );
  play_t_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(24),
      R => play_t_or0000,
      Q => play_t(24)
    );
  play_t_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(25),
      R => play_t_or0000,
      Q => play_t(25)
    );
  play_t_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(26),
      R => play_t_or0000,
      Q => play_t(26)
    );
  play_t_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(27),
      R => play_t_or0000,
      Q => play_t(27)
    );
  play_t_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(28),
      R => play_t_or0000,
      Q => play_t(28)
    );
  play_t_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(29),
      R => play_t_or0000,
      Q => play_t(29)
    );
  play_t_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => EN,
      D => Result(30),
      R => play_t_or0000,
      Q => play_t(30)
    );
  Gain_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => Gain_not0001,
      D => Result_0_1,
      R => RST,
      Q => Gain(0)
    );
  Maddsub_Inc_share0000_cy_0_Q : MUXCY
    port map (
      CI => Inc_mux0002,
      DI => Inc(0),
      S => Maddsub_Inc_share0000_lut(0),
      O => Maddsub_Inc_share0000_cy(0)
    );
  Maddsub_Inc_share0000_xor_0_Q : XORCY
    port map (
      CI => Inc_mux0002,
      LI => Maddsub_Inc_share0000_lut(0),
      O => Inc_share0000(0)
    );
  Maddsub_Inc_share0000_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(0),
      DI => Inc(1),
      S => Maddsub_Inc_share0000_lut(1),
      O => Maddsub_Inc_share0000_cy(1)
    );
  Maddsub_Inc_share0000_xor_1_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(0),
      LI => Maddsub_Inc_share0000_lut(1),
      O => Inc_share0000(1)
    );
  Maddsub_Inc_share0000_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(1),
      DI => Inc(2),
      S => Maddsub_Inc_share0000_lut(2),
      O => Maddsub_Inc_share0000_cy(2)
    );
  Maddsub_Inc_share0000_xor_2_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(1),
      LI => Maddsub_Inc_share0000_lut(2),
      O => Inc_share0000(2)
    );
  Maddsub_Inc_share0000_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(2),
      DI => Inc(3),
      S => Maddsub_Inc_share0000_lut(3),
      O => Maddsub_Inc_share0000_cy(3)
    );
  Maddsub_Inc_share0000_xor_3_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(2),
      LI => Maddsub_Inc_share0000_lut(3),
      O => Inc_share0000(3)
    );
  Maddsub_Inc_share0000_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(3),
      DI => Inc(4),
      S => Maddsub_Inc_share0000_lut(4),
      O => Maddsub_Inc_share0000_cy(4)
    );
  Maddsub_Inc_share0000_xor_4_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(3),
      LI => Maddsub_Inc_share0000_lut(4),
      O => Inc_share0000(4)
    );
  Maddsub_Inc_share0000_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(4),
      DI => Inc(5),
      S => Maddsub_Inc_share0000_lut(5),
      O => Maddsub_Inc_share0000_cy(5)
    );
  Maddsub_Inc_share0000_xor_5_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(4),
      LI => Maddsub_Inc_share0000_lut(5),
      O => Inc_share0000(5)
    );
  Maddsub_Inc_share0000_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(5),
      DI => Inc(6),
      S => Maddsub_Inc_share0000_lut(6),
      O => Maddsub_Inc_share0000_cy(6)
    );
  Maddsub_Inc_share0000_xor_6_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(5),
      LI => Maddsub_Inc_share0000_lut(6),
      O => Inc_share0000(6)
    );
  Maddsub_Inc_share0000_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(6),
      DI => Inc(7),
      S => Maddsub_Inc_share0000_lut(7),
      O => Maddsub_Inc_share0000_cy(7)
    );
  Maddsub_Inc_share0000_xor_7_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(6),
      LI => Maddsub_Inc_share0000_lut(7),
      O => Inc_share0000(7)
    );
  Maddsub_Inc_share0000_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(7),
      DI => Inc(8),
      S => Maddsub_Inc_share0000_lut(8),
      O => Maddsub_Inc_share0000_cy(8)
    );
  Maddsub_Inc_share0000_xor_8_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(7),
      LI => Maddsub_Inc_share0000_lut(8),
      O => Inc_share0000(8)
    );
  Maddsub_Inc_share0000_cy_9_Q : MUXCY
    port map (
      CI => Maddsub_Inc_share0000_cy(8),
      DI => Inc(9),
      S => Maddsub_Inc_share0000_lut(9),
      O => Maddsub_Inc_share0000_cy(9)
    );
  Maddsub_Inc_share0000_xor_9_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(8),
      LI => Maddsub_Inc_share0000_lut(9),
      O => Inc_share0000(9)
    );
  Maddsub_Inc_share0000_xor_10_Q : XORCY
    port map (
      CI => Maddsub_Inc_share0000_cy(9),
      LI => Maddsub_Inc_share0000_lut(10),
      O => Inc_share0000(10)
    );
  Madd_Gain_conv_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_4_Q_335,
      O => Madd_Gain_conv_addsub0000_cy(4)
    );
  Madd_Gain_conv_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_Gain_conv_addsub0000_lut_4_Q_335,
      O => Gain_conv_addsub0000(4)
    );
  Madd_Gain_conv_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(4),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_5_1,
      O => Madd_Gain_conv_addsub0000_cy(5)
    );
  Madd_Gain_conv_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(4),
      LI => tmp_mux0003_5_1,
      O => Gain_conv_addsub0000(5)
    );
  Madd_Gain_conv_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(5),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_6_Q_336,
      O => Madd_Gain_conv_addsub0000_cy(6)
    );
  Madd_Gain_conv_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(5),
      LI => Madd_Gain_conv_addsub0000_lut_6_Q_336,
      O => Gain_conv_addsub0000(6)
    );
  Madd_Gain_conv_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(6),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_7_1,
      O => Madd_Gain_conv_addsub0000_cy(7)
    );
  Madd_Gain_conv_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(6),
      LI => tmp_mux0003_7_1,
      O => Gain_conv_addsub0000(7)
    );
  Madd_Gain_conv_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(7),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_8_Q_337,
      O => Madd_Gain_conv_addsub0000_cy(8)
    );
  Madd_Gain_conv_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(7),
      LI => Madd_Gain_conv_addsub0000_lut_8_Q_337,
      O => Gain_conv_addsub0000(8)
    );
  Madd_Gain_conv_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(8),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_9_Q_338,
      O => Madd_Gain_conv_addsub0000_cy(9)
    );
  Madd_Gain_conv_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(8),
      LI => Madd_Gain_conv_addsub0000_lut_9_Q_338,
      O => Gain_conv_addsub0000(9)
    );
  Madd_Gain_conv_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(9),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_10_1,
      O => Madd_Gain_conv_addsub0000_cy(10)
    );
  Madd_Gain_conv_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(9),
      LI => tmp_mux0003_10_1,
      O => Gain_conv_addsub0000(10)
    );
  Madd_Gain_conv_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(10),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_11_1,
      O => Madd_Gain_conv_addsub0000_cy(11)
    );
  Madd_Gain_conv_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(10),
      LI => tmp_mux0003_11_1,
      O => Gain_conv_addsub0000(11)
    );
  Madd_Gain_conv_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(11),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_12_1,
      O => Madd_Gain_conv_addsub0000_cy(12)
    );
  Madd_Gain_conv_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(11),
      LI => tmp_mux0003_12_1,
      O => Gain_conv_addsub0000(12)
    );
  Madd_Gain_conv_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(12),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0003_13_1,
      O => Madd_Gain_conv_addsub0000_cy(13)
    );
  Madd_Gain_conv_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(12),
      LI => tmp_mux0003_13_1,
      O => Gain_conv_addsub0000(13)
    );
  Madd_Gain_conv_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(13),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_14_Q_333,
      O => Madd_Gain_conv_addsub0000_cy(14)
    );
  Madd_Gain_conv_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(13),
      LI => Madd_Gain_conv_addsub0000_lut_14_Q_333,
      O => Gain_conv_addsub0000(14)
    );
  Madd_Gain_conv_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(14),
      DI => N1,
      S => Madd_Gain_conv_addsub0000_lut_15_Q_334,
      O => Madd_Gain_conv_addsub0000_cy(15)
    );
  Madd_Gain_conv_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(14),
      LI => Madd_Gain_conv_addsub0000_lut_15_Q_334,
      O => Gain_conv_addsub0000(15)
    );
  Madd_Gain_conv_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(15),
      LI => Madd_Gain_conv_addsub0000_cy(16),
      O => Gain_conv_addsub0000(16)
    );
  Madd_tmp_addsub0001_cy_2_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Madd_tmp_addsub0001_lut_2_Q,
      O => Madd_tmp_addsub0001_cy_2_Q_350
    );
  Madd_tmp_addsub0001_xor_2_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_tmp_addsub0001_lut_2_Q,
      O => tmp_addsub0001_2_Q
    );
  Madd_tmp_addsub0001_cy_3_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_2_Q_350,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Madd_tmp_addsub0001_cy_3_rt_352,
      O => Madd_tmp_addsub0001_cy_3_Q_351
    );
  Madd_tmp_addsub0001_xor_3_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_2_Q_350,
      LI => Madd_tmp_addsub0001_cy_3_rt_352,
      O => tmp_addsub0001_3_Q
    );
  Madd_tmp_addsub0001_cy_4_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_3_Q_351,
      DI => N1,
      S => Madd_tmp_addsub0001_lut_4_Q,
      O => Madd_tmp_addsub0001_cy_4_Q_353
    );
  Madd_tmp_addsub0001_xor_4_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_3_Q_351,
      LI => Madd_tmp_addsub0001_lut_4_Q,
      O => tmp_addsub0001_4_Q
    );
  Madd_tmp_addsub0001_cy_5_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_4_Q_353,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0001_11_1,
      O => Madd_tmp_addsub0001_cy_5_Q_354
    );
  Madd_tmp_addsub0001_xor_5_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_4_Q_353,
      LI => tmp_mux0001_11_1,
      O => tmp_addsub0001_5_Q
    );
  Madd_tmp_addsub0001_cy_6_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_5_Q_354,
      DI => N1,
      S => Madd_tmp_addsub0001_lut_6_Q_361,
      O => Madd_tmp_addsub0001_cy_6_Q_355
    );
  Madd_tmp_addsub0001_xor_6_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_5_Q_354,
      LI => Madd_tmp_addsub0001_lut_6_Q_361,
      O => tmp_addsub0001_6_Q
    );
  Madd_tmp_addsub0001_cy_7_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_6_Q_355,
      DI => N1,
      S => Madd_tmp_addsub0001_lut_7_Q_362,
      O => Madd_tmp_addsub0001_cy_7_Q_356
    );
  Madd_tmp_addsub0001_xor_7_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_6_Q_355,
      LI => Madd_tmp_addsub0001_lut_7_Q_362,
      O => tmp_addsub0001_7_Q
    );
  Madd_tmp_addsub0001_xor_8_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_7_Q_356,
      LI => Madd_Gain_conv_addsub0000_cy(16),
      O => tmp_addsub0001_8_Q
    );
  Madd_tmp_addsub0001_xor_10_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_tmp_addsub0001_xor_10_rt_363,
      O => tmp_addsub0001_10_Q
    );
  Madd_tmp_addsub0001_xor_11_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => tmp_mux0001_11_11_1027,
      O => tmp_addsub0001_11_Q
    );
  Madd_tmp_addsub0001_cy_12_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Madd_tmp_addsub0001_lut_12_Q_357,
      O => Madd_tmp_addsub0001_cy_12_Q_348
    );
  Madd_tmp_addsub0001_xor_12_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_tmp_addsub0001_lut_12_Q_357,
      O => tmp_addsub0001_12_Q
    );
  Madd_tmp_addsub0001_cy_13_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0001_cy_12_Q_348,
      DI => N1,
      S => Madd_tmp_addsub0001_lut_13_Q_358,
      O => Madd_tmp_addsub0001_cy_13_Q_349
    );
  Madd_tmp_addsub0001_xor_13_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_12_Q_348,
      LI => Madd_tmp_addsub0001_lut_13_Q_358,
      O => tmp_addsub0001_13_Q
    );
  Madd_tmp_addsub0001_xor_14_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0001_cy_13_Q_349,
      LI => Madd_Gain_conv_addsub0000_cy(16),
      O => tmp_addsub0001_14_Q
    );
  Mcompar_play_t_cmp_ge0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcompar_play_t_cmp_ge0000_cy_0_rt_423,
      O => Mcompar_play_t_cmp_ge0000_cy(0)
    );
  Mcompar_play_t_cmp_ge0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(11),
      I1 => play_t(12),
      I2 => play_t(13),
      I3 => play_t(14),
      O => Mcompar_play_t_cmp_ge0000_lut(1)
    );
  Mcompar_play_t_cmp_ge0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_play_t_cmp_ge0000_cy(0),
      DI => N1,
      S => Mcompar_play_t_cmp_ge0000_lut(1),
      O => Mcompar_play_t_cmp_ge0000_cy(1)
    );
  Mcompar_play_t_cmp_ge0000_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(15),
      I1 => play_t(16),
      I2 => play_t(17),
      I3 => play_t(18),
      O => Mcompar_play_t_cmp_ge0000_lut(2)
    );
  Mcompar_play_t_cmp_ge0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_play_t_cmp_ge0000_cy(1),
      DI => N1,
      S => Mcompar_play_t_cmp_ge0000_lut(2),
      O => Mcompar_play_t_cmp_ge0000_cy(2)
    );
  Mcompar_play_t_cmp_ge0000_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(19),
      I1 => play_t(20),
      I2 => play_t(21),
      I3 => play_t(22),
      O => Mcompar_play_t_cmp_ge0000_lut(3)
    );
  Mcompar_play_t_cmp_ge0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_play_t_cmp_ge0000_cy(2),
      DI => N1,
      S => Mcompar_play_t_cmp_ge0000_lut(3),
      O => Mcompar_play_t_cmp_ge0000_cy(3)
    );
  Mcompar_play_t_cmp_ge0000_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(23),
      I1 => play_t(24),
      I2 => play_t(25),
      I3 => play_t(26),
      O => Mcompar_play_t_cmp_ge0000_lut(4)
    );
  Mcompar_play_t_cmp_ge0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_play_t_cmp_ge0000_cy(3),
      DI => N1,
      S => Mcompar_play_t_cmp_ge0000_lut(4),
      O => Mcompar_play_t_cmp_ge0000_cy(4)
    );
  Mcompar_play_t_cmp_ge0000_lut_5_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => play_t(27),
      I1 => play_t(28),
      I2 => play_t(29),
      I3 => play_t(30),
      O => Mcompar_play_t_cmp_ge0000_lut(5)
    );
  Mcompar_play_t_cmp_ge0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_play_t_cmp_ge0000_cy(4),
      DI => N1,
      S => Mcompar_play_t_cmp_ge0000_lut(5),
      O => play_t_cmp_ge0000
    );
  Madd_tmp_addsub0002_cy_3_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Madd_tmp_addsub0002_lut_3_Q_374,
      O => Madd_tmp_addsub0002_cy_3_Q_366
    );
  Madd_tmp_addsub0002_xor_3_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_tmp_addsub0002_lut_3_Q_374,
      O => tmp_addsub0002(3)
    );
  Madd_tmp_addsub0002_cy_4_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_3_Q_366,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0002_4_1_1036,
      O => Madd_tmp_addsub0002_cy_4_Q_367
    );
  Madd_tmp_addsub0002_xor_4_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_3_Q_366,
      LI => tmp_mux0002_4_1_1036,
      O => tmp_addsub0002(4)
    );
  Madd_tmp_addsub0002_cy_5_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_4_Q_367,
      DI => N1,
      S => Madd_tmp_addsub0002_lut_5_Q_375,
      O => Madd_tmp_addsub0002_cy_5_Q_368
    );
  Madd_tmp_addsub0002_xor_5_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_4_Q_367,
      LI => Madd_tmp_addsub0002_lut_5_Q_375,
      O => tmp_addsub0002(5)
    );
  Madd_tmp_addsub0002_cy_6_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_5_Q_368,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => tmp_mux0002_6_1_1039,
      O => Madd_tmp_addsub0002_cy_6_Q_369
    );
  Madd_tmp_addsub0002_xor_6_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_5_Q_368,
      LI => tmp_mux0002_6_1_1039,
      O => tmp_addsub0002(6)
    );
  Madd_tmp_addsub0002_cy_7_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_6_Q_369,
      DI => N1,
      S => Madd_tmp_addsub0002_lut_7_Q_376,
      O => Madd_tmp_addsub0002_cy_7_Q_370
    );
  Madd_tmp_addsub0002_xor_7_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_6_Q_369,
      LI => Madd_tmp_addsub0002_lut_7_Q_376,
      O => tmp_addsub0002(7)
    );
  Madd_tmp_addsub0002_cy_8_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_7_Q_370,
      DI => N1,
      S => Madd_tmp_addsub0002_lut_8_Q_377,
      O => Madd_tmp_addsub0002_cy_8_Q_371
    );
  Madd_tmp_addsub0002_xor_8_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_7_Q_370,
      LI => Madd_tmp_addsub0002_lut_8_Q_377,
      O => tmp_addsub0002(8)
    );
  Madd_tmp_addsub0002_xor_9_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_8_Q_371,
      LI => Madd_Gain_conv_addsub0000_cy(16),
      O => tmp_addsub0002(9)
    );
  Madd_tmp_addsub0002_xor_10_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => tmp_mux0002_10_1_1029,
      O => tmp_addsub0002(10)
    );
  Madd_tmp_addsub0002_xor_11_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => tmp_mux0002_11_1_1031,
      O => tmp_addsub0002(11)
    );
  Madd_tmp_addsub0002_xor_12_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => tmp_mux0002_12_1_1033,
      O => tmp_addsub0002(12)
    );
  Madd_tmp_addsub0002_cy_13_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Madd_tmp_addsub0002_lut_13_Q_372,
      O => Madd_tmp_addsub0002_cy_13_Q_364
    );
  Madd_tmp_addsub0002_xor_13_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Madd_tmp_addsub0002_lut_13_Q_372,
      O => tmp_addsub0002(13)
    );
  Madd_tmp_addsub0002_cy_14_Q : MUXCY
    port map (
      CI => Madd_tmp_addsub0002_cy_13_Q_364,
      DI => N1,
      S => Madd_tmp_addsub0002_lut_14_Q_373,
      O => Madd_tmp_addsub0002_cy_14_Q_365
    );
  Madd_tmp_addsub0002_xor_14_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_13_Q_364,
      LI => Madd_tmp_addsub0002_lut_14_Q_373,
      O => tmp_addsub0002(14)
    );
  Madd_tmp_addsub0002_xor_15_Q : XORCY
    port map (
      CI => Madd_tmp_addsub0002_cy_14_Q_365,
      LI => Madd_Gain_conv_addsub0000_cy(16),
      O => tmp_addsub0002(15)
    );
  Mcount_play_t_cy_0_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => Mcount_play_t_lut(0),
      O => Mcount_play_t_cy(0)
    );
  Mcount_play_t_xor_0_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => Mcount_play_t_lut(0),
      O => Result(0)
    );
  Mcount_play_t_cy_1_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(0),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_1_rt_484,
      O => Mcount_play_t_cy(1)
    );
  Mcount_play_t_xor_1_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(0),
      LI => Mcount_play_t_cy_1_rt_484,
      O => Result(1)
    );
  Mcount_play_t_cy_2_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(1),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_2_rt_506,
      O => Mcount_play_t_cy(2)
    );
  Mcount_play_t_xor_2_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(1),
      LI => Mcount_play_t_cy_2_rt_506,
      O => Result(2)
    );
  Mcount_play_t_cy_3_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(2),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_3_rt_508,
      O => Mcount_play_t_cy(3)
    );
  Mcount_play_t_xor_3_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(2),
      LI => Mcount_play_t_cy_3_rt_508,
      O => Result(3)
    );
  Mcount_play_t_cy_4_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(3),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_4_rt_510,
      O => Mcount_play_t_cy(4)
    );
  Mcount_play_t_xor_4_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(3),
      LI => Mcount_play_t_cy_4_rt_510,
      O => Result(4)
    );
  Mcount_play_t_cy_5_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(4),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_5_rt_512,
      O => Mcount_play_t_cy(5)
    );
  Mcount_play_t_xor_5_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(4),
      LI => Mcount_play_t_cy_5_rt_512,
      O => Result(5)
    );
  Mcount_play_t_cy_6_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(5),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_6_rt_514,
      O => Mcount_play_t_cy(6)
    );
  Mcount_play_t_xor_6_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(5),
      LI => Mcount_play_t_cy_6_rt_514,
      O => Result(6)
    );
  Mcount_play_t_cy_7_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(6),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_7_rt_516,
      O => Mcount_play_t_cy(7)
    );
  Mcount_play_t_xor_7_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(6),
      LI => Mcount_play_t_cy_7_rt_516,
      O => Result(7)
    );
  Mcount_play_t_cy_8_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(7),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_8_rt_518,
      O => Mcount_play_t_cy(8)
    );
  Mcount_play_t_xor_8_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(7),
      LI => Mcount_play_t_cy_8_rt_518,
      O => Result(8)
    );
  Mcount_play_t_cy_9_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(8),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_9_rt_520,
      O => Mcount_play_t_cy(9)
    );
  Mcount_play_t_xor_9_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(8),
      LI => Mcount_play_t_cy_9_rt_520,
      O => Result(9)
    );
  Mcount_play_t_cy_10_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(9),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_10_rt_464,
      O => Mcount_play_t_cy(10)
    );
  Mcount_play_t_xor_10_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(9),
      LI => Mcount_play_t_cy_10_rt_464,
      O => Result(10)
    );
  Mcount_play_t_cy_11_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(10),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_11_rt_466,
      O => Mcount_play_t_cy(11)
    );
  Mcount_play_t_xor_11_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(10),
      LI => Mcount_play_t_cy_11_rt_466,
      O => Result(11)
    );
  Mcount_play_t_cy_12_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(11),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_12_rt_468,
      O => Mcount_play_t_cy(12)
    );
  Mcount_play_t_xor_12_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(11),
      LI => Mcount_play_t_cy_12_rt_468,
      O => Result(12)
    );
  Mcount_play_t_cy_13_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(12),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_13_rt_470,
      O => Mcount_play_t_cy(13)
    );
  Mcount_play_t_xor_13_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(12),
      LI => Mcount_play_t_cy_13_rt_470,
      O => Result(13)
    );
  Mcount_play_t_cy_14_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(13),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_14_rt_472,
      O => Mcount_play_t_cy(14)
    );
  Mcount_play_t_xor_14_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(13),
      LI => Mcount_play_t_cy_14_rt_472,
      O => Result(14)
    );
  Mcount_play_t_cy_15_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(14),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_15_rt_474,
      O => Mcount_play_t_cy(15)
    );
  Mcount_play_t_xor_15_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(14),
      LI => Mcount_play_t_cy_15_rt_474,
      O => Result(15)
    );
  Mcount_play_t_cy_16_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(15),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_16_rt_476,
      O => Mcount_play_t_cy(16)
    );
  Mcount_play_t_xor_16_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(15),
      LI => Mcount_play_t_cy_16_rt_476,
      O => Result(16)
    );
  Mcount_play_t_cy_17_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(16),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_17_rt_478,
      O => Mcount_play_t_cy(17)
    );
  Mcount_play_t_xor_17_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(16),
      LI => Mcount_play_t_cy_17_rt_478,
      O => Result(17)
    );
  Mcount_play_t_cy_18_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(17),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_18_rt_480,
      O => Mcount_play_t_cy(18)
    );
  Mcount_play_t_xor_18_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(17),
      LI => Mcount_play_t_cy_18_rt_480,
      O => Result(18)
    );
  Mcount_play_t_cy_19_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(18),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_19_rt_482,
      O => Mcount_play_t_cy(19)
    );
  Mcount_play_t_xor_19_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(18),
      LI => Mcount_play_t_cy_19_rt_482,
      O => Result(19)
    );
  Mcount_play_t_cy_20_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(19),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_20_rt_486,
      O => Mcount_play_t_cy(20)
    );
  Mcount_play_t_xor_20_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(19),
      LI => Mcount_play_t_cy_20_rt_486,
      O => Result(20)
    );
  Mcount_play_t_cy_21_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(20),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_21_rt_488,
      O => Mcount_play_t_cy(21)
    );
  Mcount_play_t_xor_21_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(20),
      LI => Mcount_play_t_cy_21_rt_488,
      O => Result(21)
    );
  Mcount_play_t_cy_22_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(21),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_22_rt_490,
      O => Mcount_play_t_cy(22)
    );
  Mcount_play_t_xor_22_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(21),
      LI => Mcount_play_t_cy_22_rt_490,
      O => Result(22)
    );
  Mcount_play_t_cy_23_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(22),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_23_rt_492,
      O => Mcount_play_t_cy(23)
    );
  Mcount_play_t_xor_23_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(22),
      LI => Mcount_play_t_cy_23_rt_492,
      O => Result(23)
    );
  Mcount_play_t_cy_24_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(23),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_24_rt_494,
      O => Mcount_play_t_cy(24)
    );
  Mcount_play_t_xor_24_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(23),
      LI => Mcount_play_t_cy_24_rt_494,
      O => Result(24)
    );
  Mcount_play_t_cy_25_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(24),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_25_rt_496,
      O => Mcount_play_t_cy(25)
    );
  Mcount_play_t_xor_25_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(24),
      LI => Mcount_play_t_cy_25_rt_496,
      O => Result(25)
    );
  Mcount_play_t_cy_26_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(25),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_26_rt_498,
      O => Mcount_play_t_cy(26)
    );
  Mcount_play_t_xor_26_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(25),
      LI => Mcount_play_t_cy_26_rt_498,
      O => Result(26)
    );
  Mcount_play_t_cy_27_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(26),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_27_rt_500,
      O => Mcount_play_t_cy(27)
    );
  Mcount_play_t_xor_27_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(26),
      LI => Mcount_play_t_cy_27_rt_500,
      O => Result(27)
    );
  Mcount_play_t_cy_28_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(27),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_28_rt_502,
      O => Mcount_play_t_cy(28)
    );
  Mcount_play_t_xor_28_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(27),
      LI => Mcount_play_t_cy_28_rt_502,
      O => Result(28)
    );
  Mcount_play_t_cy_29_Q : MUXCY
    port map (
      CI => Mcount_play_t_cy(28),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => Mcount_play_t_cy_29_rt_504,
      O => Mcount_play_t_cy(29)
    );
  Mcount_play_t_xor_29_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(28),
      LI => Mcount_play_t_cy_29_rt_504,
      O => Result(29)
    );
  Mcount_play_t_xor_30_Q : XORCY
    port map (
      CI => Mcount_play_t_cy(29),
      LI => Mcount_play_t_xor_30_rt_522,
      O => Result(30)
    );
  Msub_rd_ptr_addsub0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(0),
      I1 => Madd_resto_not0000(0),
      O => Msub_rd_ptr_addsub0000_lut(0)
    );
  Msub_rd_ptr_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Inc(0),
      S => Msub_rd_ptr_addsub0000_lut(0),
      O => Msub_rd_ptr_addsub0000_cy(0)
    );
  Msub_rd_ptr_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Msub_rd_ptr_addsub0000_lut(0),
      O => rd_ptr_addsub0000(0)
    );
  Msub_rd_ptr_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(0),
      DI => Inc(1),
      S => Msub_rd_ptr_addsub0000_lut(1),
      O => Msub_rd_ptr_addsub0000_cy(1)
    );
  Msub_rd_ptr_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(0),
      LI => Msub_rd_ptr_addsub0000_lut(1),
      O => rd_ptr_addsub0000(1)
    );
  Msub_rd_ptr_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(1),
      DI => Inc(2),
      S => Msub_rd_ptr_addsub0000_lut(2),
      O => Msub_rd_ptr_addsub0000_cy(2)
    );
  Msub_rd_ptr_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(1),
      LI => Msub_rd_ptr_addsub0000_lut(2),
      O => rd_ptr_addsub0000(2)
    );
  Msub_rd_ptr_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(2),
      DI => Inc(3),
      S => Msub_rd_ptr_addsub0000_lut(3),
      O => Msub_rd_ptr_addsub0000_cy(3)
    );
  Msub_rd_ptr_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(2),
      LI => Msub_rd_ptr_addsub0000_lut(3),
      O => rd_ptr_addsub0000(3)
    );
  Msub_rd_ptr_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(3),
      DI => Inc(4),
      S => Msub_rd_ptr_addsub0000_lut(4),
      O => Msub_rd_ptr_addsub0000_cy(4)
    );
  Msub_rd_ptr_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(3),
      LI => Msub_rd_ptr_addsub0000_lut(4),
      O => rd_ptr_addsub0000(4)
    );
  Msub_rd_ptr_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(4),
      DI => Inc(5),
      S => Msub_rd_ptr_addsub0000_lut(5),
      O => Msub_rd_ptr_addsub0000_cy(5)
    );
  Msub_rd_ptr_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(4),
      LI => Msub_rd_ptr_addsub0000_lut(5),
      O => rd_ptr_addsub0000(5)
    );
  Msub_rd_ptr_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(5),
      DI => Inc(6),
      S => Msub_rd_ptr_addsub0000_lut(6),
      O => Msub_rd_ptr_addsub0000_cy(6)
    );
  Msub_rd_ptr_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(5),
      LI => Msub_rd_ptr_addsub0000_lut(6),
      O => rd_ptr_addsub0000(6)
    );
  Msub_rd_ptr_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(6),
      DI => Inc(7),
      S => Msub_rd_ptr_addsub0000_lut(7),
      O => Msub_rd_ptr_addsub0000_cy(7)
    );
  Msub_rd_ptr_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(6),
      LI => Msub_rd_ptr_addsub0000_lut(7),
      O => rd_ptr_addsub0000(7)
    );
  Msub_rd_ptr_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(7),
      DI => Inc(8),
      S => Msub_rd_ptr_addsub0000_lut(8),
      O => Msub_rd_ptr_addsub0000_cy(8)
    );
  Msub_rd_ptr_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(7),
      LI => Msub_rd_ptr_addsub0000_lut(8),
      O => rd_ptr_addsub0000(8)
    );
  Msub_rd_ptr_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(9),
      I1 => rd_ptr(9),
      O => Msub_rd_ptr_addsub0000_lut(9)
    );
  Msub_rd_ptr_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(8),
      DI => Inc(9),
      S => Msub_rd_ptr_addsub0000_lut(9),
      O => Msub_rd_ptr_addsub0000_cy(9)
    );
  Msub_rd_ptr_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(8),
      LI => Msub_rd_ptr_addsub0000_lut(9),
      O => rd_ptr_addsub0000(9)
    );
  Msub_rd_ptr_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(9),
      DI => Inc(10),
      S => Msub_rd_ptr_addsub0000_lut(10),
      O => Msub_rd_ptr_addsub0000_cy(10)
    );
  Msub_rd_ptr_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(9),
      LI => Msub_rd_ptr_addsub0000_lut(10),
      O => rd_ptr_addsub0000(10)
    );
  Msub_rd_ptr_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Msub_rd_ptr_addsub0000_cy(10),
      LI => Msub_rd_ptr_addsub0000_lut(11),
      O => rd_ptr_addsub0000(11)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_0_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(0),
      I1 => Madd_resto_not0000(0),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(0)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Madd_resto_not0000(0),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(0),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(0)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(0),
      DI => Madd_resto_not0000(1),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(1),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(1)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(1),
      DI => Madd_resto_not0000(2),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(2),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(2)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(2),
      DI => Madd_resto_not0000(3),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(3),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(3)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(3),
      DI => Madd_resto_not0000(4),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(4),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(4)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(4),
      DI => Madd_resto_not0000(5),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(5),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(5)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(5),
      DI => Madd_resto_not0000(6),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(6),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(6)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(6),
      DI => Madd_resto_not0000(7),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(7),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(7)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(7),
      DI => Madd_resto_not0000(8),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(8),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(8)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_9_Q : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => Inc(9),
      I1 => rd_ptr(9),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(9)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(8),
      DI => rd_ptr(9),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(9),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(9)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_10_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(9),
      DI => resto(10),
      S => Mcompar_rd_ptr_cmp_gt0000_lut(10),
      O => Mcompar_rd_ptr_cmp_gt0000_cy(10)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_11_Q : MUXCY
    port map (
      CI => Mcompar_rd_ptr_cmp_gt0000_cy(10),
      DI => N1,
      S => resto_11_inv_1000,
      O => Mcompar_rd_ptr_cmp_gt0000_cy(11)
    );
  Maddsub_rd_ptr_mux0001_cy_0_Q : MUXCY
    port map (
      CI => rd_ptr_cmp_gt0000,
      DI => rd_ptr_mux0002(0),
      S => Maddsub_rd_ptr_mux0001_lut(0),
      O => Maddsub_rd_ptr_mux0001_cy(0)
    );
  Maddsub_rd_ptr_mux0001_xor_0_Q : XORCY
    port map (
      CI => rd_ptr_cmp_gt0000,
      LI => Maddsub_rd_ptr_mux0001_lut(0),
      O => rd_ptr_mux0001(0)
    );
  Maddsub_rd_ptr_mux0001_cy_1_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(0),
      DI => rd_ptr_mux0002(1),
      S => Maddsub_rd_ptr_mux0001_lut(1),
      O => Maddsub_rd_ptr_mux0001_cy(1)
    );
  Maddsub_rd_ptr_mux0001_xor_1_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(0),
      LI => Maddsub_rd_ptr_mux0001_lut(1),
      O => rd_ptr_mux0001(1)
    );
  Maddsub_rd_ptr_mux0001_cy_2_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(1),
      DI => rd_ptr_mux0002(2),
      S => Maddsub_rd_ptr_mux0001_lut(2),
      O => Maddsub_rd_ptr_mux0001_cy(2)
    );
  Maddsub_rd_ptr_mux0001_xor_2_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(1),
      LI => Maddsub_rd_ptr_mux0001_lut(2),
      O => rd_ptr_mux0001(2)
    );
  Maddsub_rd_ptr_mux0001_cy_3_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(2),
      DI => rd_ptr_mux0002(3),
      S => Maddsub_rd_ptr_mux0001_lut(3),
      O => Maddsub_rd_ptr_mux0001_cy(3)
    );
  Maddsub_rd_ptr_mux0001_xor_3_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(2),
      LI => Maddsub_rd_ptr_mux0001_lut(3),
      O => rd_ptr_mux0001(3)
    );
  Maddsub_rd_ptr_mux0001_cy_4_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(3),
      DI => rd_ptr_mux0002(4),
      S => Maddsub_rd_ptr_mux0001_lut(4),
      O => Maddsub_rd_ptr_mux0001_cy(4)
    );
  Maddsub_rd_ptr_mux0001_xor_4_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(3),
      LI => Maddsub_rd_ptr_mux0001_lut(4),
      O => rd_ptr_mux0001(4)
    );
  Maddsub_rd_ptr_mux0001_cy_5_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(4),
      DI => rd_ptr_mux0002(5),
      S => Maddsub_rd_ptr_mux0001_lut(5),
      O => Maddsub_rd_ptr_mux0001_cy(5)
    );
  Maddsub_rd_ptr_mux0001_xor_5_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(4),
      LI => Maddsub_rd_ptr_mux0001_lut(5),
      O => rd_ptr_mux0001(5)
    );
  Maddsub_rd_ptr_mux0001_cy_6_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(5),
      DI => rd_ptr_mux0002(6),
      S => Maddsub_rd_ptr_mux0001_lut(6),
      O => Maddsub_rd_ptr_mux0001_cy(6)
    );
  Maddsub_rd_ptr_mux0001_xor_6_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(5),
      LI => Maddsub_rd_ptr_mux0001_lut(6),
      O => rd_ptr_mux0001(6)
    );
  Maddsub_rd_ptr_mux0001_cy_7_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(6),
      DI => rd_ptr_mux0002(7),
      S => Maddsub_rd_ptr_mux0001_lut(7),
      O => Maddsub_rd_ptr_mux0001_cy(7)
    );
  Maddsub_rd_ptr_mux0001_xor_7_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(6),
      LI => Maddsub_rd_ptr_mux0001_lut(7),
      O => rd_ptr_mux0001(7)
    );
  Maddsub_rd_ptr_mux0001_cy_8_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(7),
      DI => rd_ptr_mux0002(8),
      S => Maddsub_rd_ptr_mux0001_lut(8),
      O => Maddsub_rd_ptr_mux0001_cy(8)
    );
  Maddsub_rd_ptr_mux0001_xor_8_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(7),
      LI => Maddsub_rd_ptr_mux0001_lut(8),
      O => rd_ptr_mux0001(8)
    );
  Maddsub_rd_ptr_mux0001_cy_9_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(8),
      DI => rd_ptr_mux0002(9),
      S => Maddsub_rd_ptr_mux0001_lut(9),
      O => Maddsub_rd_ptr_mux0001_cy(9)
    );
  Maddsub_rd_ptr_mux0001_xor_9_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(8),
      LI => Maddsub_rd_ptr_mux0001_lut(9),
      O => rd_ptr_mux0001(9)
    );
  Maddsub_rd_ptr_mux0001_cy_10_Q : MUXCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(9),
      DI => rd_ptr_mux0002(10),
      S => Maddsub_rd_ptr_mux0001_lut(10),
      O => Maddsub_rd_ptr_mux0001_cy(10)
    );
  Maddsub_rd_ptr_mux0001_xor_10_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(9),
      LI => Maddsub_rd_ptr_mux0001_lut(10),
      O => rd_ptr_mux0001(10)
    );
  Maddsub_rd_ptr_mux0001_xor_11_Q : XORCY
    port map (
      CI => Maddsub_rd_ptr_mux0001_cy(10),
      LI => Maddsub_rd_ptr_mux0001_lut(11),
      O => rd_ptr_mux0001(11)
    );
  DebEdge_inst_down_state_reg_FFd1_In_SW0 : LUT3_D
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd2_96,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DOWN,
      LO => DebEdge_inst_down_N14,
      O => DebEdge_inst_down_N10
    );
  DebEdge_inst_down_state_reg_FFd3_In_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd1_94,
      I1 => DOWN,
      LO => DebEdge_inst_down_N8
    );
  DebEdge_inst_down_Mcount_q_reg_lut_0_INV_0 : INV
    port map (
      I => DebEdge_inst_down_q_reg(0),
      O => DebEdge_inst_down_Mcount_q_reg_lut
    );
  DebEdge_inst_down_pos_next1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => DOWN,
      I1 => DebEdge_inst_down_state_reg_FFd2_96,
      I2 => DebEdge_inst_down_state_reg_FFd3_98,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_pos_next1_73
    );
  DebEdge_inst_down_Mcount_q_reg_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(18),
      O => DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36
    );
  DebEdge_inst_down_Mcount_q_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(17),
      O => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16
    );
  DebEdge_inst_down_Mcount_q_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(16),
      O => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14
    );
  DebEdge_inst_down_Mcount_q_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(15),
      O => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12
    );
  DebEdge_inst_down_Mcount_q_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(14),
      O => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10
    );
  DebEdge_inst_down_Mcount_q_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(13),
      O => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8
    );
  DebEdge_inst_down_Mcount_q_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(12),
      O => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6
    );
  DebEdge_inst_down_Mcount_q_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(11),
      O => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4
    );
  DebEdge_inst_down_Mcount_q_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(10),
      O => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2
    );
  DebEdge_inst_down_Mcount_q_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(9),
      O => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34
    );
  DebEdge_inst_down_Mcount_q_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(8),
      O => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32
    );
  DebEdge_inst_down_Mcount_q_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(7),
      O => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30
    );
  DebEdge_inst_down_Mcount_q_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(6),
      O => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28
    );
  DebEdge_inst_down_Mcount_q_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(5),
      O => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26
    );
  DebEdge_inst_down_Mcount_q_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(4),
      O => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24
    );
  DebEdge_inst_down_Mcount_q_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(3),
      O => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22
    );
  DebEdge_inst_down_Mcount_q_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(2),
      O => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20
    );
  DebEdge_inst_down_Mcount_q_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(1),
      O => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18
    );
  DebEdge_inst_down_state_reg_FFd2_In : LUT4
    generic map(
      INIT => X"B8F0"
    )
    port map (
      I0 => DOWN,
      I1 => DebEdge_inst_down_state_reg_FFd3_98,
      I2 => DebEdge_inst_down_N10,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd2_In_97
    );
  DebEdge_inst_down_state_reg_FFd1_In : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd3_98,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DebEdge_inst_down_N14,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd1_In_95
    );
  DebEdge_inst_down_state_reg_FFd3_In : LUT4
    generic map(
      INIT => X"331B"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd3_98,
      I1 => DebEdge_inst_down_N7,
      I2 => DebEdge_inst_down_N8,
      I3 => DebEdge_inst_down_m_tick,
      O => DebEdge_inst_down_state_reg_FFd3_In_99
    );
  DebEdge_inst_down_state_reg_FFd3_In_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => DebEdge_inst_down_state_reg_FFd2_96,
      I1 => DebEdge_inst_down_state_reg_FFd1_94,
      I2 => DOWN,
      O => DebEdge_inst_down_N7
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(3),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(4),
      O => DebEdge_inst_down_m_tick
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(16),
      I1 => DebEdge_inst_down_q_reg(17),
      I2 => DebEdge_inst_down_q_reg(2),
      I3 => DebEdge_inst_down_q_reg(18),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(4)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(2),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(3),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(3)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(13),
      I1 => DebEdge_inst_down_q_reg(14),
      I2 => DebEdge_inst_down_q_reg(0),
      I3 => DebEdge_inst_down_q_reg(15),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(3)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(1),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(2),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(2)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(12),
      I1 => DebEdge_inst_down_q_reg(10),
      I2 => DebEdge_inst_down_q_reg(1),
      I3 => DebEdge_inst_down_q_reg(11),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(2)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(0),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(1),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(1)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(6),
      I1 => DebEdge_inst_down_q_reg(8),
      I2 => DebEdge_inst_down_q_reg(3),
      I3 => DebEdge_inst_down_q_reg(9),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(1)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(0),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_cy(0)
    );
  DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => DebEdge_inst_down_q_reg(7),
      I1 => DebEdge_inst_down_q_reg(4),
      I2 => DebEdge_inst_down_q_reg(5),
      O => DebEdge_inst_down_m_tick_cmp_eq0000_wg_lut(0)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_18_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(17),
      LI => DebEdge_inst_down_Mcount_q_reg_xor_18_rt_36,
      O => DebEdge_inst_down_Result(18)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_17_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(16),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_down_Result(17)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_17_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(16),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_down_Mcount_q_reg_cy(17)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_16_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(15),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_down_Result(16)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_16_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(15),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_down_Mcount_q_reg_cy(16)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_15_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(14),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_down_Result(15)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_15_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(14),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_down_Mcount_q_reg_cy(15)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_14_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(13),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_down_Result(14)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_14_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(13),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_down_Mcount_q_reg_cy(14)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_13_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(12),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_down_Result(13)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_13_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(12),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_down_Mcount_q_reg_cy(13)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_12_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(11),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_down_Result(12)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_12_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(11),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_down_Mcount_q_reg_cy(12)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_11_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(10),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_down_Result(11)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_11_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(10),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_down_Mcount_q_reg_cy(11)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_10_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(9),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_down_Result(10)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_10_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(9),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_down_Mcount_q_reg_cy(10)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_9_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(8),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_down_Result(9)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_9_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(8),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_down_Mcount_q_reg_cy(9)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_8_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(7),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_down_Result(8)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_8_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(7),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_down_Mcount_q_reg_cy(8)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_7_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(6),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_down_Result(7)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_7_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(6),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_down_Mcount_q_reg_cy(7)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_6_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(5),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_down_Result(6)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_6_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(5),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_down_Mcount_q_reg_cy(6)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_5_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(4),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_down_Result(5)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_5_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(4),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_down_Mcount_q_reg_cy(5)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_4_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(3),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_down_Result(4)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(3),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_down_Mcount_q_reg_cy(4)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_3_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(2),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_down_Result(3)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(2),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_down_Mcount_q_reg_cy(3)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_2_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(1),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_down_Result(2)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(1),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_down_Mcount_q_reg_cy(2)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_1_Q : XORCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(0),
      LI => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_down_Result(1)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_down_Mcount_q_reg_cy(0),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_down_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_down_Mcount_q_reg_cy(1)
    );
  DebEdge_inst_down_Mcount_q_reg_xor_0_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => DebEdge_inst_down_Mcount_q_reg_lut,
      O => DebEdge_inst_down_Result(0)
    );
  DebEdge_inst_down_Mcount_q_reg_cy_0_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => DebEdge_inst_down_Mcount_q_reg_lut,
      O => DebEdge_inst_down_Mcount_q_reg_cy(0)
    );
  DebEdge_inst_down_pos_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_pos_next1_73,
      R => DebEdge_inst_down_state_reg_FFd1_94,
      Q => Down_tick
    );
  DebEdge_inst_down_q_reg_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(18),
      Q => DebEdge_inst_down_q_reg(18)
    );
  DebEdge_inst_down_q_reg_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(17),
      Q => DebEdge_inst_down_q_reg(17)
    );
  DebEdge_inst_down_q_reg_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(16),
      Q => DebEdge_inst_down_q_reg(16)
    );
  DebEdge_inst_down_q_reg_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(15),
      Q => DebEdge_inst_down_q_reg(15)
    );
  DebEdge_inst_down_q_reg_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(14),
      Q => DebEdge_inst_down_q_reg(14)
    );
  DebEdge_inst_down_q_reg_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(13),
      Q => DebEdge_inst_down_q_reg(13)
    );
  DebEdge_inst_down_q_reg_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(12),
      Q => DebEdge_inst_down_q_reg(12)
    );
  DebEdge_inst_down_q_reg_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(11),
      Q => DebEdge_inst_down_q_reg(11)
    );
  DebEdge_inst_down_q_reg_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(10),
      Q => DebEdge_inst_down_q_reg(10)
    );
  DebEdge_inst_down_q_reg_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(9),
      Q => DebEdge_inst_down_q_reg(9)
    );
  DebEdge_inst_down_q_reg_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(8),
      Q => DebEdge_inst_down_q_reg(8)
    );
  DebEdge_inst_down_q_reg_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(7),
      Q => DebEdge_inst_down_q_reg(7)
    );
  DebEdge_inst_down_q_reg_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(6),
      Q => DebEdge_inst_down_q_reg(6)
    );
  DebEdge_inst_down_q_reg_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(5),
      Q => DebEdge_inst_down_q_reg(5)
    );
  DebEdge_inst_down_q_reg_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(4),
      Q => DebEdge_inst_down_q_reg(4)
    );
  DebEdge_inst_down_q_reg_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(3),
      Q => DebEdge_inst_down_q_reg(3)
    );
  DebEdge_inst_down_q_reg_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(2),
      Q => DebEdge_inst_down_q_reg(2)
    );
  DebEdge_inst_down_q_reg_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(1),
      Q => DebEdge_inst_down_q_reg(1)
    );
  DebEdge_inst_down_q_reg_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_Result(0),
      Q => DebEdge_inst_down_q_reg(0)
    );
  DebEdge_inst_down_state_reg_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd3_In_99,
      Q => DebEdge_inst_down_state_reg_FFd3_98
    );
  DebEdge_inst_down_state_reg_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd1_In_95,
      Q => DebEdge_inst_down_state_reg_FFd1_94
    );
  DebEdge_inst_down_state_reg_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_down_state_reg_FFd2_In_97,
      Q => DebEdge_inst_down_state_reg_FFd2_96
    );
  DebEdge_inst_up_state_reg_FFd1_In_SW0 : LUT3_D
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd2_96,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => UP,
      LO => DebEdge_inst_up_N14,
      O => DebEdge_inst_up_N10
    );
  DebEdge_inst_up_state_reg_FFd3_In_SW1 : LUT2_L
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd1_94,
      I1 => UP,
      LO => DebEdge_inst_up_N8
    );
  DebEdge_inst_up_Mcount_q_reg_lut_0_INV_0 : INV
    port map (
      I => DebEdge_inst_up_q_reg(0),
      O => DebEdge_inst_up_Mcount_q_reg_lut
    );
  DebEdge_inst_up_pos_next1 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => UP,
      I1 => DebEdge_inst_up_state_reg_FFd2_96,
      I2 => DebEdge_inst_up_state_reg_FFd3_98,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_pos_next1_73
    );
  DebEdge_inst_up_Mcount_q_reg_xor_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(18),
      O => DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36
    );
  DebEdge_inst_up_Mcount_q_reg_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(17),
      O => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16
    );
  DebEdge_inst_up_Mcount_q_reg_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(16),
      O => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14
    );
  DebEdge_inst_up_Mcount_q_reg_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(15),
      O => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12
    );
  DebEdge_inst_up_Mcount_q_reg_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(14),
      O => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10
    );
  DebEdge_inst_up_Mcount_q_reg_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(13),
      O => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8
    );
  DebEdge_inst_up_Mcount_q_reg_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(12),
      O => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6
    );
  DebEdge_inst_up_Mcount_q_reg_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(11),
      O => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4
    );
  DebEdge_inst_up_Mcount_q_reg_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(10),
      O => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2
    );
  DebEdge_inst_up_Mcount_q_reg_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(9),
      O => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34
    );
  DebEdge_inst_up_Mcount_q_reg_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(8),
      O => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32
    );
  DebEdge_inst_up_Mcount_q_reg_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(7),
      O => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30
    );
  DebEdge_inst_up_Mcount_q_reg_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(6),
      O => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28
    );
  DebEdge_inst_up_Mcount_q_reg_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(5),
      O => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26
    );
  DebEdge_inst_up_Mcount_q_reg_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(4),
      O => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24
    );
  DebEdge_inst_up_Mcount_q_reg_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(3),
      O => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22
    );
  DebEdge_inst_up_Mcount_q_reg_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(2),
      O => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20
    );
  DebEdge_inst_up_Mcount_q_reg_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(1),
      O => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18
    );
  DebEdge_inst_up_state_reg_FFd2_In : LUT4
    generic map(
      INIT => X"B8F0"
    )
    port map (
      I0 => UP,
      I1 => DebEdge_inst_up_state_reg_FFd3_98,
      I2 => DebEdge_inst_up_N10,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd2_In_97
    );
  DebEdge_inst_up_state_reg_FFd1_In : LUT4
    generic map(
      INIT => X"D8CC"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd3_98,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => DebEdge_inst_up_N14,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd1_In_95
    );
  DebEdge_inst_up_state_reg_FFd3_In : LUT4
    generic map(
      INIT => X"331B"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd3_98,
      I1 => DebEdge_inst_up_N7,
      I2 => DebEdge_inst_up_N8,
      I3 => DebEdge_inst_up_m_tick,
      O => DebEdge_inst_up_state_reg_FFd3_In_99
    );
  DebEdge_inst_up_state_reg_FFd3_In_SW0 : LUT3
    generic map(
      INIT => X"E7"
    )
    port map (
      I0 => DebEdge_inst_up_state_reg_FFd2_96,
      I1 => DebEdge_inst_up_state_reg_FFd1_94,
      I2 => UP,
      O => DebEdge_inst_up_N7
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(3),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(4),
      O => DebEdge_inst_up_m_tick
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_4_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(16),
      I1 => DebEdge_inst_up_q_reg(17),
      I2 => DebEdge_inst_up_q_reg(2),
      I3 => DebEdge_inst_up_q_reg(18),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(4)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(2),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(3),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(3)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_3_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(13),
      I1 => DebEdge_inst_up_q_reg(14),
      I2 => DebEdge_inst_up_q_reg(0),
      I3 => DebEdge_inst_up_q_reg(15),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(3)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(1),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(2),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(2)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_2_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(12),
      I1 => DebEdge_inst_up_q_reg(10),
      I2 => DebEdge_inst_up_q_reg(1),
      I3 => DebEdge_inst_up_q_reg(11),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(2)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(0),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(1),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(1)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(6),
      I1 => DebEdge_inst_up_q_reg(8),
      I2 => DebEdge_inst_up_q_reg(3),
      I3 => DebEdge_inst_up_q_reg(9),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(1)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(0),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_cy(0)
    );
  DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut_0_Q : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => DebEdge_inst_up_q_reg(7),
      I1 => DebEdge_inst_up_q_reg(4),
      I2 => DebEdge_inst_up_q_reg(5),
      O => DebEdge_inst_up_m_tick_cmp_eq0000_wg_lut(0)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_18_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(17),
      LI => DebEdge_inst_up_Mcount_q_reg_xor_18_rt_36,
      O => DebEdge_inst_up_Result(18)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_17_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(16),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_up_Result(17)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_17_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(16),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_17_rt_16,
      O => DebEdge_inst_up_Mcount_q_reg_cy(17)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_16_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(15),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_up_Result(16)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_16_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(15),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_16_rt_14,
      O => DebEdge_inst_up_Mcount_q_reg_cy(16)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_15_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(14),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_up_Result(15)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_15_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(14),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_15_rt_12,
      O => DebEdge_inst_up_Mcount_q_reg_cy(15)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_14_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(13),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_up_Result(14)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_14_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(13),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_14_rt_10,
      O => DebEdge_inst_up_Mcount_q_reg_cy(14)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_13_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(12),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_up_Result(13)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_13_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(12),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_13_rt_8,
      O => DebEdge_inst_up_Mcount_q_reg_cy(13)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_12_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(11),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_up_Result(12)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_12_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(11),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_12_rt_6,
      O => DebEdge_inst_up_Mcount_q_reg_cy(12)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_11_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(10),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_up_Result(11)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_11_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(10),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_11_rt_4,
      O => DebEdge_inst_up_Mcount_q_reg_cy(11)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_10_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(9),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_up_Result(10)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_10_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(9),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_10_rt_2,
      O => DebEdge_inst_up_Mcount_q_reg_cy(10)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_9_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(8),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_up_Result(9)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_9_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(8),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_9_rt_34,
      O => DebEdge_inst_up_Mcount_q_reg_cy(9)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_8_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(7),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_up_Result(8)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_8_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(7),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_8_rt_32,
      O => DebEdge_inst_up_Mcount_q_reg_cy(8)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_7_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(6),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_up_Result(7)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_7_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(6),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_7_rt_30,
      O => DebEdge_inst_up_Mcount_q_reg_cy(7)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_6_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(5),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_up_Result(6)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_6_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(5),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_6_rt_28,
      O => DebEdge_inst_up_Mcount_q_reg_cy(6)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_5_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(4),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_up_Result(5)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_5_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(4),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_5_rt_26,
      O => DebEdge_inst_up_Mcount_q_reg_cy(5)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_4_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(3),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_up_Result(4)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_4_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(3),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_4_rt_24,
      O => DebEdge_inst_up_Mcount_q_reg_cy(4)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_3_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(2),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_up_Result(3)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_3_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(2),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_3_rt_22,
      O => DebEdge_inst_up_Mcount_q_reg_cy(3)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_2_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(1),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_up_Result(2)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_2_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(1),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_2_rt_20,
      O => DebEdge_inst_up_Mcount_q_reg_cy(2)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_1_Q : XORCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(0),
      LI => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_up_Result(1)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_1_Q : MUXCY
    port map (
      CI => DebEdge_inst_up_Mcount_q_reg_cy(0),
      DI => Madd_Gain_conv_addsub0000_cy(16),
      S => DebEdge_inst_up_Mcount_q_reg_cy_1_rt_18,
      O => DebEdge_inst_up_Mcount_q_reg_cy(1)
    );
  DebEdge_inst_up_Mcount_q_reg_xor_0_Q : XORCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      LI => DebEdge_inst_up_Mcount_q_reg_lut,
      O => DebEdge_inst_up_Result(0)
    );
  DebEdge_inst_up_Mcount_q_reg_cy_0_Q : MUXCY
    port map (
      CI => Madd_Gain_conv_addsub0000_cy(16),
      DI => N1,
      S => DebEdge_inst_up_Mcount_q_reg_lut,
      O => DebEdge_inst_up_Mcount_q_reg_cy(0)
    );
  DebEdge_inst_up_pos_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_pos_next1_73,
      R => DebEdge_inst_up_state_reg_FFd1_94,
      Q => Up_tick
    );
  DebEdge_inst_up_q_reg_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(18),
      Q => DebEdge_inst_up_q_reg(18)
    );
  DebEdge_inst_up_q_reg_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(17),
      Q => DebEdge_inst_up_q_reg(17)
    );
  DebEdge_inst_up_q_reg_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(16),
      Q => DebEdge_inst_up_q_reg(16)
    );
  DebEdge_inst_up_q_reg_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(15),
      Q => DebEdge_inst_up_q_reg(15)
    );
  DebEdge_inst_up_q_reg_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(14),
      Q => DebEdge_inst_up_q_reg(14)
    );
  DebEdge_inst_up_q_reg_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(13),
      Q => DebEdge_inst_up_q_reg(13)
    );
  DebEdge_inst_up_q_reg_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(12),
      Q => DebEdge_inst_up_q_reg(12)
    );
  DebEdge_inst_up_q_reg_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(11),
      Q => DebEdge_inst_up_q_reg(11)
    );
  DebEdge_inst_up_q_reg_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(10),
      Q => DebEdge_inst_up_q_reg(10)
    );
  DebEdge_inst_up_q_reg_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(9),
      Q => DebEdge_inst_up_q_reg(9)
    );
  DebEdge_inst_up_q_reg_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(8),
      Q => DebEdge_inst_up_q_reg(8)
    );
  DebEdge_inst_up_q_reg_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(7),
      Q => DebEdge_inst_up_q_reg(7)
    );
  DebEdge_inst_up_q_reg_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(6),
      Q => DebEdge_inst_up_q_reg(6)
    );
  DebEdge_inst_up_q_reg_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(5),
      Q => DebEdge_inst_up_q_reg(5)
    );
  DebEdge_inst_up_q_reg_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(4),
      Q => DebEdge_inst_up_q_reg(4)
    );
  DebEdge_inst_up_q_reg_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(3),
      Q => DebEdge_inst_up_q_reg(3)
    );
  DebEdge_inst_up_q_reg_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(2),
      Q => DebEdge_inst_up_q_reg(2)
    );
  DebEdge_inst_up_q_reg_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(1),
      Q => DebEdge_inst_up_q_reg(1)
    );
  DebEdge_inst_up_q_reg_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_Result(0),
      Q => DebEdge_inst_up_q_reg(0)
    );
  DebEdge_inst_up_state_reg_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd3_In_99,
      Q => DebEdge_inst_up_state_reg_FFd3_98
    );
  DebEdge_inst_up_state_reg_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd1_In_95,
      Q => DebEdge_inst_up_state_reg_FFd1_94
    );
  DebEdge_inst_up_state_reg_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => DebEdge_inst_up_state_reg_FFd2_In_97,
      Q => DebEdge_inst_up_state_reg_FFd2_96
    );
  Up_tick_req_not00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Down_tick,
      I1 => EN,
      O => Up_tick_req_not0001
    );
  Down_tick_req_not00011 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => Up_tick,
      I1 => Down_tick,
      I2 => EN,
      O => Down_tick_req_not0001
    );
  Gain_not000179 : LUT4
    generic map(
      INIT => X"FF7F"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(5),
      O => Gain_not000179_275
    );
  Gain_not0001116 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => MODE,
      I1 => Gain_not000193_276,
      I2 => Gain_not000154_274,
      O => Gain_not0001
    );
  Inc_mux0001_0_1 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => Inc_cmp_eq0000_288,
      I1 => FIX,
      I2 => Inc_share0000(0),
      O => Inc_mux0001(0)
    );
  Inc_cmp_eq0000_SW0 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => Inc(10),
      I1 => Inc(1),
      I2 => Inc(5),
      I3 => Inc(0),
      O => N14
    );
  Inc_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => N13,
      I1 => N10,
      I2 => Inc(9),
      I3 => N14,
      O => Inc_cmp_eq0000_288
    );
  Inc_mux00022 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Up_tick_req_644,
      I1 => FIX,
      O => Inc_mux0002
    );
  Inc_cmp_eq000021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inc(2),
      I1 => Inc(3),
      I2 => Inc(4),
      O => N13
    );
  Inc_not000215 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => N206,
      I1 => Inc(9),
      I2 => Inc(5),
      I3 => N13,
      O => Inc_not000215_302
    );
  Inc_not000244 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Inc(7),
      I1 => Inc(8),
      I2 => Inc(9),
      I3 => Inc(10),
      O => Inc_not000244_305
    );
  Inc_not000277 : LUT4
    generic map(
      INIT => X"FFC4"
    )
    port map (
      I0 => Inc(10),
      I1 => Up_tick_req_644,
      I2 => Inc_not000215_302,
      I3 => Inc_not000264_306,
      O => Inc_not000277_307
    );
  Madd_resto_sub0000_xor_10_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rd_ptr(10),
      I1 => rd_ptr(9),
      O => resto(10)
    );
  hex_in_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => Gain(1),
      I2 => rd_ptr_u(1),
      O => hex_in(1)
    );
  hex2bcd_i_bcd_7_mux00052 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I1 => hex2bcd_i_N90,
      O => hex2bcd_i_Madd_bcd_11_8_add0003_cy(0)
    );
  hex2bcd_i_bcd_11_mux00041 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0002_cy(0)
    );
  hex2bcd_i_bcd_14_mux00031 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0004_lut(3)
    );
  hex2bcd_i_bcd_10_mux00041 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3)
    );
  hex2bcd_i_bcd_14_mux00041 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0004_lut(3),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(1),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0002_cy(0),
      I3 => hex2bcd_i_N381,
      O => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3)
    );
  hex2bcd_i_bcd_7_mux00062 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      I1 => hex2bcd_i_N911,
      O => hex2bcd_i_Madd_bcd_11_8_add0004_cy(0)
    );
  hex2bcd_i_bcd_11_cmp_gt00031 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0004_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0003
    );
  hex2bcd_i_bcd_10_mux00071 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0008_lut(3)
    );
  hex2bcd_i_bcd_10_mux00061 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0007_lut(3)
    );
  hex2bcd_i_bcd_10_mux00051 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0006_lut(3)
    );
  hex2bcd_i_bcd_9_mux00041 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0003_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(0),
      I3 => hex2bcd_i_bcd_11_cmp_gt0003,
      O => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2)
    );
  hex2bcd_i_bcd_11_cmp_gt00071 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0007
    );
  hex2bcd_i_bcd_11_cmp_gt00061 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0006
    );
  hex2bcd_i_bcd_11_cmp_gt00041 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0004
    );
  hex2bcd_i_bcd_10_mux00091 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0010_lut(3)
    );
  hex2bcd_i_bcd_9_mux00071 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_bcd_11_cmp_gt0006,
      I1 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(0),
      I3 => hex2bcd_i_bcd_11_cmp_gt0007,
      O => hex2bcd_i_Madd_bcd_11_8_add0008_lut(2)
    );
  hex2bcd_i_bcd_9_mux00061 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_bcd_11_cmp_gt0004,
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(0),
      I3 => hex2bcd_i_bcd_11_cmp_gt0006,
      O => hex2bcd_i_Madd_bcd_11_8_add0007_lut(2)
    );
  hex2bcd_i_bcd_9_mux00051 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_bcd_11_cmp_gt0003,
      I1 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(0),
      I3 => hex2bcd_i_bcd_11_cmp_gt0004,
      O => hex2bcd_i_Madd_bcd_11_8_add0006_lut(2)
    );
  tmp_mux0002_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => tmp_addsub0001_10_Q,
      O => tmp_mux0002_10_Q
    );
  hex2bcd_i_bcd_15_mux000311 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      O => hex2bcd_i_N811
    );
  FOUT_17_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_17_Q,
      O => FOUT(17)
    );
  hex2bcd_i_bcd_7_mux00072 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      I1 => hex2bcd_i_N93,
      O => hex2bcd_i_Madd_bcd_11_8_add0005_cy(0)
    );
  hex2bcd_i_bcd_15_mux00062 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3),
      I1 => hex2bcd_i_N84,
      O => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(0)
    );
  hex2bcd_i_bcd_10_mux00081 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3)
    );
  hex2bcd_i_bcd_11_mux00051 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0)
    );
  hex2bcd_i_bcd_17_mux000421 : LUT4
    generic map(
      INIT => X"FF15"
    )
    port map (
      I0 => hex2bcd_i_bcd_18_mux0003,
      I1 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(1),
      I2 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut(2),
      I3 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(0),
      O => hex2bcd_i_N221
    );
  hex2bcd_i_bcd_14_mux0007 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0007_cy(1),
      I2 => hex2bcd_i_N391,
      I3 => N57,
      O => BCD_out_15_Q
    );
  hex2bcd_i_bcd_11_mux00091 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0007_cy(0)
    );
  hex2bcd_i_bcd_7_mux00102 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3),
      I1 => hex2bcd_i_N89,
      O => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0)
    );
  hex2bcd_i_bcd_7_mux00092 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      I1 => hex2bcd_i_N97,
      O => hex2bcd_i_Madd_bcd_11_8_add0007_cy(0)
    );
  hex2bcd_i_bcd_7_mux00082 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      I1 => hex2bcd_i_N95,
      O => hex2bcd_i_Madd_bcd_11_8_add0006_cy(0)
    );
  hex2bcd_i_bcd_13_mux000721 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N85,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0007_cy(0),
      O => hex2bcd_i_N421
    );
  hex2bcd_i_bcd_13_mux000621 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N84,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(0),
      O => hex2bcd_i_N391
    );
  hex2bcd_i_bcd_11_cmp_gt00081 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0008
    );
  FOUT_13_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_17_Q,
      I2 => BCD_out_13_Q,
      O => FOUT(13)
    );
  hex2bcd_i_bcd_11_mux00081 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0006_cy(0)
    );
  hex2bcd_i_bcd_11_mux00071 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0007_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0)
    );
  hex2bcd_i_bcd_11_mux00061 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0006_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(1),
      O => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0)
    );
  hex2bcd_i_bcd_15_mux000711 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      I1 => hex2bcd_i_N391,
      I2 => hex2bcd_i_bcd_12_cmp_gt0005,
      I3 => hex2bcd_i_Madd_bcd_15_12_add0007_cy(1),
      O => hex2bcd_i_N85
    );
  hex2bcd_i_bcd_15_mux000611 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      I1 => hex2bcd_i_N411,
      I2 => hex2bcd_i_bcd_12_cmp_gt0004,
      I3 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(1),
      O => hex2bcd_i_N84
    );
  hex2bcd_i_bcd_9_mux00081 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_bcd_11_cmp_gt0007,
      I1 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0),
      I3 => hex2bcd_i_bcd_11_cmp_gt0008,
      O => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2)
    );
  hex2bcd_i_bcd_13_mux00071 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_N421,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3),
      I3 => hex2bcd_i_N84,
      O => BCD_out_14_Q
    );
  hex2bcd_i_bcd_6_mux0011 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0011_cy(1),
      I2 => hex2bcd_i_N481,
      I3 => N61,
      O => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3)
    );
  hex2bcd_i_bcd_6_mux0010 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0010_cy(1),
      I2 => hex2bcd_i_N55,
      I3 => N63,
      O => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3)
    );
  hex2bcd_i_bcd_6_mux0009 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0009_cy(1),
      I2 => hex2bcd_i_N54,
      I3 => N65,
      O => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3)
    );
  hex2bcd_i_bcd_6_mux0008 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0008_cy(1),
      I2 => hex2bcd_i_N511,
      I3 => N67,
      O => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3)
    );
  hex2bcd_i_bcd_6_mux0007 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0007_cy(1),
      I2 => hex2bcd_i_N491,
      I3 => N69,
      O => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3)
    );
  hex2bcd_i_bcd_6_mux0006 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0006_cy(1),
      I2 => hex2bcd_i_N451,
      I3 => N71,
      O => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3)
    );
  hex2bcd_i_bcd_6_mux0005 : LUT4
    generic map(
      INIT => X"9164"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0005_cy(1),
      I1 => hex2bcd_i_N471,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I3 => N73,
      O => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3)
    );
  FOUT_11_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_15_Q,
      I2 => BCD_out_11_Q,
      O => FOUT(11)
    );
  hex2bcd_i_bcd_10_mux0010 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0010_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0010_cy(1),
      I2 => hex2bcd_i_N161,
      I3 => N75,
      O => BCD_out_11_Q
    );
  hex2bcd_i_bcd_11_cmp_gt00091 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3),
      O => hex2bcd_i_bcd_11_cmp_gt0009
    );
  hex2bcd_i_bcd_9_mux000921 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I1 => hex2bcd_i_N92,
      I2 => hex2bcd_i_bcd_11_cmp_gt0009,
      O => hex2bcd_i_N161
    );
  hex2bcd_i_Madd_bcd_11_8_add0009_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N92,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I2 => hex2bcd_i_bcd_11_cmp_gt0008,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1)
    );
  hex2bcd_i_bcd_6_mux0012 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0012_cy(1),
      I2 => hex2bcd_i_N501,
      I3 => N77,
      O => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3)
    );
  hex2bcd_i_bcd_3_mux00052 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I1 => hex2bcd_i_N69,
      O => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0)
    );
  FOUT_7_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_11_Q,
      I2 => BCD_out_7_Q,
      O => FOUT(7)
    );
  hex2bcd_i_bcd_6_mux0013 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0013_cy(1),
      I2 => hex2bcd_i_N531,
      I3 => N97,
      O => BCD_out_7_Q
    );
  FOUT_9_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_13_Q,
      I2 => BCD_out_9_Q,
      O => FOUT(9)
    );
  FOUT_10_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => BCD_out_14_Q,
      I2 => BCD_out_10_Q,
      O => FOUT(10)
    );
  hex2bcd_i_bcd_11_mux001011 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N161,
      I1 => hex2bcd_i_bcd_11_cmp_gt0008,
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0),
      I3 => hex2bcd_i_Madd_bcd_11_8_add0010_cy(1),
      O => hex2bcd_i_N60
    );
  hex2bcd_i_bcd_9_mux00101 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => hex2bcd_i_bcd_11_cmp_gt0009,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I2 => hex2bcd_i_N112,
      I3 => hex2bcd_i_N92,
      O => BCD_out_10_Q
    );
  tmp_mux0002_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => tmp_addsub0001_4_Q,
      O => tmp_mux0002_4_Q
    );
  hex2bcd_i_bcd_4_cmp_gt00131 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N97,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0013
    );
  hex2bcd_i_bcd_4_cmp_gt00111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N95,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0011
    );
  hex2bcd_i_bcd_4_cmp_gt00091 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N93,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0009
    );
  hex2bcd_i_bcd_4_cmp_gt00081 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N92,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0008
    );
  hex2bcd_i_bcd_4_cmp_gt00071 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N911,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0007
    );
  hex2bcd_i_bcd_4_cmp_gt00061 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N89,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0006
    );
  hex2bcd_i_bcd_4_cmp_gt00051 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N90,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0005
    );
  hex2bcd_i_bcd_4_cmp_gt00041 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N88,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0004_lut(3),
      O => hex2bcd_i_bcd_4_cmp_gt0004
    );
  hex2bcd_i_bcd_3_mux00142 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I1 => hex2bcd_i_N77,
      O => hex2bcd_i_Madd_bcd_7_4_add0012_cy(0)
    );
  hex2bcd_i_bcd_3_mux00132 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I1 => hex2bcd_i_N75,
      O => hex2bcd_i_Madd_bcd_7_4_add0011_cy(0)
    );
  hex2bcd_i_bcd_3_mux00122 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I1 => hex2bcd_i_N73,
      O => hex2bcd_i_Madd_bcd_7_4_add0010_cy(0)
    );
  hex2bcd_i_bcd_3_mux00112 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I1 => hex2bcd_i_N70,
      O => hex2bcd_i_Madd_bcd_7_4_add0009_cy(0)
    );
  hex2bcd_i_bcd_3_mux00102 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I1 => hex2bcd_i_N68,
      O => hex2bcd_i_Madd_bcd_7_4_add0008_cy(0)
    );
  hex2bcd_i_bcd_3_mux00092 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I1 => hex2bcd_i_N76,
      O => hex2bcd_i_Madd_bcd_7_4_add0007_cy(0)
    );
  hex2bcd_i_bcd_3_mux00082 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I1 => hex2bcd_i_N74,
      O => hex2bcd_i_Madd_bcd_7_4_add0006_cy(0)
    );
  hex2bcd_i_bcd_3_mux00072 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I1 => hex2bcd_i_N72,
      O => hex2bcd_i_Madd_bcd_7_4_add0005_cy(0)
    );
  hex2bcd_i_bcd_7_mux001211 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N501,
      I1 => hex2bcd_i_bcd_4_cmp_gt0006,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0010_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0012_cy(1),
      O => hex2bcd_i_N94
    );
  hex2bcd_i_bcd_7_mux001111 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N481,
      I1 => hex2bcd_i_bcd_4_cmp_gt0013,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0009_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0011_cy(1),
      O => hex2bcd_i_N92
    );
  hex2bcd_i_bcd_7_mux001011 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N55,
      I1 => hex2bcd_i_bcd_4_cmp_gt0011,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0008_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0010_cy(1),
      O => hex2bcd_i_N89
    );
  hex2bcd_i_bcd_7_mux000911 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N54,
      I1 => hex2bcd_i_bcd_4_cmp_gt0009,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0007_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0009_cy(1),
      O => hex2bcd_i_N97
    );
  hex2bcd_i_bcd_7_mux000811 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N511,
      I1 => hex2bcd_i_bcd_4_cmp_gt0007,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0006_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0008_cy(1),
      O => hex2bcd_i_N95
    );
  hex2bcd_i_bcd_7_mux000711 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N491,
      I1 => hex2bcd_i_bcd_4_cmp_gt0005,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0005_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0007_cy(1),
      O => hex2bcd_i_N93
    );
  hex2bcd_i_bcd_7_mux000611 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N451,
      I1 => hex2bcd_i_bcd_4_cmp_gt0004,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0004_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0006_cy(1),
      O => hex2bcd_i_N911
    );
  hex2bcd_i_bcd_7_mux000511 : LUT4
    generic map(
      INIT => X"69FF"
    )
    port map (
      I0 => hex2bcd_i_N471,
      I1 => hex2bcd_i_N87,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0005_cy(1),
      O => hex2bcd_i_N90
    );
  FOUT_3_106 : LUT4
    generic map(
      INIT => X"0069"
    )
    port map (
      I0 => hex_in(3),
      I1 => hex2bcd_i_N341,
      I2 => hex2bcd_i_bcd_2_cmp_gt0014,
      I3 => hex2bcd_i_Madd_bcd_3_0_add0016_cy(1),
      O => FOUT_3_106_240
    );
  hex2bcd_i_bcd_7_mux001311 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N531,
      I1 => hex2bcd_i_bcd_4_cmp_gt0008,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0011_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0013_cy(1),
      O => hex2bcd_i_N96
    );
  hex_in_16_1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Gain_conv_addsub0000(16),
      I1 => MODE,
      I2 => Gain(4),
      O => hex_in(16)
    );
  hex_in_14_1 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => MODE,
      I1 => Gain(4),
      I2 => tmp_mux0003(14),
      I3 => Gain_conv_addsub0000(14),
      O => hex_in(14)
    );
  hex2bcd_i_bcd_2_cmp_gt00141 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N77,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0014
    );
  hex2bcd_i_bcd_2_cmp_gt00131 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N76,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0013
    );
  hex2bcd_i_bcd_2_cmp_gt00121 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N75,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0012
    );
  hex2bcd_i_bcd_2_cmp_gt00111 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N74,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0011
    );
  hex2bcd_i_bcd_2_cmp_gt00101 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N73,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0010
    );
  hex2bcd_i_bcd_2_cmp_gt00091 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N72,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0009
    );
  hex2bcd_i_bcd_2_cmp_gt00071 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N70,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0007
    );
  hex2bcd_i_bcd_2_cmp_gt00061 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N69,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0006
    );
  hex2bcd_i_bcd_2_cmp_gt00051 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => hex2bcd_i_N68,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      O => hex2bcd_i_bcd_2_cmp_gt0005
    );
  hex2bcd_i_bcd_1_mux001521 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N78,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I2 => hex_in(2),
      O => hex2bcd_i_N341
    );
  hex2bcd_i_bcd_3_mux001611 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N341,
      I1 => hex2bcd_i_bcd_2_cmp_gt0014,
      I2 => hex_in(3),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0016_cy(1),
      O => hex2bcd_i_N79
    );
  hex2bcd_i_bcd_3_mux001511 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N331,
      I1 => hex2bcd_i_bcd_2_cmp_gt0012,
      I2 => hex_in(4),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0015_cy(1),
      O => hex2bcd_i_N78
    );
  hex2bcd_i_bcd_3_mux001411 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N311,
      I1 => hex2bcd_i_bcd_2_cmp_gt0010,
      I2 => hex_in(5),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0014_cy(1),
      O => hex2bcd_i_N77
    );
  hex2bcd_i_bcd_3_mux001311 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N271,
      I1 => hex2bcd_i_bcd_2_cmp_gt0007,
      I2 => hex_in(6),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0013_cy(1),
      O => hex2bcd_i_N75
    );
  hex2bcd_i_bcd_3_mux001211 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N261,
      I1 => hex2bcd_i_bcd_2_cmp_gt0005,
      I2 => hex_in(7),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0012_cy(1),
      O => hex2bcd_i_N73
    );
  hex2bcd_i_bcd_3_mux001111 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N241,
      I1 => hex2bcd_i_bcd_2_cmp_gt0013,
      I2 => hex_in(8),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0011_cy(1),
      O => hex2bcd_i_N70
    );
  hex2bcd_i_bcd_3_mux001011 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N321,
      I1 => hex2bcd_i_bcd_2_cmp_gt0011,
      I2 => hex_in(9),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0010_cy(1),
      O => hex2bcd_i_N68
    );
  hex2bcd_i_bcd_3_mux000911 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N301,
      I1 => hex2bcd_i_bcd_2_cmp_gt0009,
      I2 => hex_in(10),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0009_cy(1),
      O => hex2bcd_i_N76
    );
  hex2bcd_i_bcd_3_mux000811 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N291,
      I1 => hex2bcd_i_bcd_2_cmp_gt0008,
      I2 => hex_in(11),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0008_cy(1),
      O => hex2bcd_i_N74
    );
  hex2bcd_i_bcd_3_mux000711 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N281,
      I1 => hex2bcd_i_bcd_2_cmp_gt0006,
      I2 => hex_in(12),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0007_cy(1),
      O => hex2bcd_i_N72
    );
  hex2bcd_i_bcd_3_mux000611 : LUT4
    generic map(
      INIT => X"96FF"
    )
    port map (
      I0 => hex2bcd_i_N251,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      I2 => hex_in(13),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0006_cy(1),
      O => hex2bcd_i_N711
    );
  hex2bcd_i_bcd_3_mux000511 : LUT4
    generic map(
      INIT => X"69FF"
    )
    port map (
      I0 => hex2bcd_i_N231,
      I1 => hex2bcd_i_N66,
      I2 => hex_in(14),
      I3 => hex2bcd_i_Madd_bcd_3_0_add0005_cy(1),
      O => hex2bcd_i_N69
    );
  tmp_mux0003_5_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_5_Q,
      I2 => tmp_addsub0002(5),
      O => tmp_mux0003_5_1
    );
  tmp_mux0003_7_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_7_Q,
      I2 => tmp_addsub0002(7),
      O => tmp_mux0003_7_1
    );
  tmp_mux0003_10_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_10_Q,
      I2 => tmp_addsub0002(10),
      O => tmp_mux0003_10_1
    );
  tmp_mux0003_11_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_11_Q,
      I2 => tmp_addsub0002(11),
      O => tmp_mux0003_11_1
    );
  tmp_mux0003_12_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_12_Q,
      I2 => tmp_addsub0002(12),
      O => tmp_mux0003_12_1
    );
  tmp_mux0003_13_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_mux0002_13_Q,
      I2 => tmp_addsub0002(13),
      O => tmp_mux0003_13_1
    );
  Madd_tmp_addsub0001_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Gain(1),
      O => Madd_tmp_addsub0001_cy_3_rt_352
    );
  tmp_mux0001_11_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      O => tmp_mux0001_11_1
    );
  Mcompar_play_t_cmp_ge0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(10),
      O => Mcompar_play_t_cmp_ge0000_cy_0_rt_423
    );
  tmp_mux0002_4_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => tmp_addsub0001_4_Q,
      O => tmp_mux0002_4_1_1036
    );
  Mcount_play_t_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(1),
      O => Mcount_play_t_cy_1_rt_484
    );
  Mcount_play_t_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(2),
      O => Mcount_play_t_cy_2_rt_506
    );
  Mcount_play_t_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(3),
      O => Mcount_play_t_cy_3_rt_508
    );
  Mcount_play_t_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(4),
      O => Mcount_play_t_cy_4_rt_510
    );
  Mcount_play_t_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(5),
      O => Mcount_play_t_cy_5_rt_512
    );
  Mcount_play_t_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(6),
      O => Mcount_play_t_cy_6_rt_514
    );
  Mcount_play_t_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(7),
      O => Mcount_play_t_cy_7_rt_516
    );
  Mcount_play_t_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(8),
      O => Mcount_play_t_cy_8_rt_518
    );
  Mcount_play_t_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(9),
      O => Mcount_play_t_cy_9_rt_520
    );
  Mcount_play_t_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(10),
      O => Mcount_play_t_cy_10_rt_464
    );
  Mcount_play_t_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(11),
      O => Mcount_play_t_cy_11_rt_466
    );
  Mcount_play_t_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(12),
      O => Mcount_play_t_cy_12_rt_468
    );
  Mcount_play_t_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(13),
      O => Mcount_play_t_cy_13_rt_470
    );
  Mcount_play_t_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(14),
      O => Mcount_play_t_cy_14_rt_472
    );
  Mcount_play_t_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(15),
      O => Mcount_play_t_cy_15_rt_474
    );
  Mcount_play_t_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(16),
      O => Mcount_play_t_cy_16_rt_476
    );
  Mcount_play_t_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(17),
      O => Mcount_play_t_cy_17_rt_478
    );
  Mcount_play_t_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(18),
      O => Mcount_play_t_cy_18_rt_480
    );
  Mcount_play_t_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(19),
      O => Mcount_play_t_cy_19_rt_482
    );
  Mcount_play_t_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(20),
      O => Mcount_play_t_cy_20_rt_486
    );
  Mcount_play_t_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(21),
      O => Mcount_play_t_cy_21_rt_488
    );
  Mcount_play_t_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(22),
      O => Mcount_play_t_cy_22_rt_490
    );
  Mcount_play_t_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(23),
      O => Mcount_play_t_cy_23_rt_492
    );
  Mcount_play_t_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(24),
      O => Mcount_play_t_cy_24_rt_494
    );
  Mcount_play_t_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(25),
      O => Mcount_play_t_cy_25_rt_496
    );
  Mcount_play_t_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(26),
      O => Mcount_play_t_cy_26_rt_498
    );
  Mcount_play_t_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(27),
      O => Mcount_play_t_cy_27_rt_500
    );
  Mcount_play_t_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(28),
      O => Mcount_play_t_cy_28_rt_502
    );
  Mcount_play_t_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(29),
      O => Mcount_play_t_cy_29_rt_504
    );
  Madd_tmp_addsub0001_xor_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Gain(0),
      O => Madd_tmp_addsub0001_xor_10_rt_363
    );
  tmp_mux0001_11_12 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Gain(0),
      I1 => Gain(1),
      O => tmp_mux0001_11_11_1027
    );
  tmp_mux0002_10_11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => tmp_addsub0001_10_Q,
      O => tmp_mux0002_10_1_1029
    );
  Mcount_play_t_xor_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => play_t(30),
      O => Mcount_play_t_xor_30_rt_522
    );
  resto_11_inv : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => rd_ptr(10),
      I2 => rd_ptr(9),
      O => resto_11_inv_1000
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_10_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => Inc(10),
      I1 => rd_ptr(10),
      I2 => rd_ptr(9),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(10)
    );
  rd_ptr_mux0002_1_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(1),
      I1 => rd_ptr_addsub0000(1),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(1)
    );
  rd_ptr_mux0002_0_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(0),
      I1 => rd_ptr_addsub0000(0),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(0)
    );
  rd_ptr_mux0002_2_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(2),
      I1 => rd_ptr_addsub0000(2),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(2)
    );
  rd_ptr_mux0002_3_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(3),
      I1 => rd_ptr_addsub0000(3),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(3)
    );
  rd_ptr_mux0002_4_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(4),
      I1 => rd_ptr_addsub0000(4),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(4)
    );
  rd_ptr_mux0002_5_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(5),
      I1 => rd_ptr_addsub0000(5),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(5)
    );
  rd_ptr_mux0002_6_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(6),
      I1 => rd_ptr_addsub0000(6),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(6)
    );
  rd_ptr_mux0002_7_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(7),
      I1 => rd_ptr_addsub0000(7),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(7)
    );
  rd_ptr_mux0002_8_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(8),
      I1 => rd_ptr_addsub0000(8),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(8)
    );
  rd_ptr_mux0002_9_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(9),
      I1 => rd_ptr_addsub0000(9),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(9)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(1),
      I1 => rd_ptr(1),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(1)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(2),
      I1 => rd_ptr(2),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(2)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(3),
      I1 => rd_ptr(3),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(3)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(4),
      I1 => rd_ptr(4),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(4)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(5),
      I1 => rd_ptr(5),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(5)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(6),
      I1 => rd_ptr(6),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(6)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(7),
      I1 => rd_ptr(7),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(7)
    );
  Mcompar_rd_ptr_cmp_gt0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(8),
      I1 => rd_ptr(8),
      O => Mcompar_rd_ptr_cmp_gt0000_lut(8)
    );
  rd_ptr_mux0002_10_1 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_ptr(10),
      I1 => rd_ptr_addsub0000(10),
      I2 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_mux0002(10)
    );
  Maddsub_rd_ptr_mux0001_lut_1_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(1),
      I1 => rd_ptr(1),
      I2 => rd_ptr_addsub0000(1),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(1)
    );
  Maddsub_rd_ptr_mux0001_lut_2_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(2),
      I1 => rd_ptr(2),
      I2 => rd_ptr_addsub0000(2),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(2)
    );
  Maddsub_rd_ptr_mux0001_lut_3_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(3),
      I1 => rd_ptr(3),
      I2 => rd_ptr_addsub0000(3),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(3)
    );
  Maddsub_rd_ptr_mux0001_lut_4_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(4),
      I1 => rd_ptr(4),
      I2 => rd_ptr_addsub0000(4),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(4)
    );
  Maddsub_rd_ptr_mux0001_lut_5_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(5),
      I1 => rd_ptr(5),
      I2 => rd_ptr_addsub0000(5),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(5)
    );
  Maddsub_rd_ptr_mux0001_lut_6_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(6),
      I1 => rd_ptr(6),
      I2 => rd_ptr_addsub0000(6),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(6)
    );
  Maddsub_rd_ptr_mux0001_lut_7_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(7),
      I1 => rd_ptr(7),
      I2 => rd_ptr_addsub0000(7),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(7)
    );
  Maddsub_rd_ptr_mux0001_lut_8_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(8),
      I1 => rd_ptr(8),
      I2 => rd_ptr_addsub0000(8),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(8)
    );
  Maddsub_rd_ptr_mux0001_lut_9_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(9),
      I1 => rd_ptr(9),
      I2 => rd_ptr_addsub0000(9),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(9)
    );
  Maddsub_rd_ptr_mux0001_lut_10_Q : LUT4
    generic map(
      INIT => X"660F"
    )
    port map (
      I0 => Inc(10),
      I1 => rd_ptr(10),
      I2 => rd_ptr_addsub0000(10),
      I3 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => Maddsub_rd_ptr_mux0001_lut(10)
    );
  Msub_rd_ptr_addsub0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(1),
      I1 => rd_ptr(1),
      O => Msub_rd_ptr_addsub0000_lut(1)
    );
  Msub_rd_ptr_addsub0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(2),
      I1 => rd_ptr(2),
      O => Msub_rd_ptr_addsub0000_lut(2)
    );
  Msub_rd_ptr_addsub0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(3),
      I1 => rd_ptr(3),
      O => Msub_rd_ptr_addsub0000_lut(3)
    );
  Msub_rd_ptr_addsub0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(4),
      I1 => rd_ptr(4),
      O => Msub_rd_ptr_addsub0000_lut(4)
    );
  Msub_rd_ptr_addsub0000_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(5),
      I1 => rd_ptr(5),
      O => Msub_rd_ptr_addsub0000_lut(5)
    );
  Mcount_Gain_xor_5_11_SW0 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => Gain(5),
      I1 => Up_tick,
      I2 => MODE,
      O => N116
    );
  Mcount_Gain_xor_5_11 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => N116,
      I1 => Mcount_Gain_lut(4),
      I2 => Gain(4),
      I3 => Mcount_Gain_cy_3_Q,
      O => Result_5_1
    );
  Msub_rd_ptr_addsub0000_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(6),
      I1 => rd_ptr(6),
      O => Msub_rd_ptr_addsub0000_lut(6)
    );
  Msub_rd_ptr_addsub0000_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(7),
      I1 => rd_ptr(7),
      O => Msub_rd_ptr_addsub0000_lut(7)
    );
  Msub_rd_ptr_addsub0000_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => Inc(8),
      I1 => rd_ptr(8),
      O => Msub_rd_ptr_addsub0000_lut(8)
    );
  Maddsub_rd_ptr_mux0001_lut_11_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      I1 => rd_ptr_addsub0000(11),
      I2 => rd_ptr(11),
      O => Maddsub_rd_ptr_mux0001_lut(11)
    );
  Msub_rd_ptr_addsub0000_lut_11_Q : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => rd_ptr(9),
      I2 => rd_ptr(10),
      O => Msub_rd_ptr_addsub0000_lut(11)
    );
  Gain_not000154_SW0 : LUT4
    generic map(
      INIT => X"4EFE"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(2),
      I2 => Gain(0),
      I3 => Up_tick,
      O => N118
    );
  Gain_not000154 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => Down_tick,
      I1 => Gain(5),
      I2 => Gain_not000136_273,
      I3 => N118,
      O => Gain_not000154_274
    );
  Inc_not0002219_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => rd_ptr(11),
      I1 => rd_ptr(10),
      I2 => rd_ptr(9),
      I3 => Inc_not000221_303,
      O => N120
    );
  hex_in_3_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N122,
      I2 => rd_ptr_u(3),
      O => hex_in(3)
    );
  hex_in_4_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N124,
      I2 => rd_ptr_u(4),
      O => hex_in(4)
    );
  hex_in_5_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N126,
      I2 => rd_ptr_u(5),
      O => hex_in(5)
    );
  hex_in_6_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N128,
      I2 => rd_ptr_u(6),
      O => hex_in(6)
    );
  hex_in_7_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N130,
      I2 => rd_ptr_u(7),
      O => hex_in(7)
    );
  hex_in_8_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N132,
      I2 => rd_ptr_u(8),
      O => hex_in(8)
    );
  hex_in_10_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N136,
      I2 => rd_ptr_u(10),
      O => hex_in(10)
    );
  hex_in_11_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N138,
      I2 => rd_ptr_u(11),
      O => hex_in(11)
    );
  hex_in_12_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N140,
      I2 => rd_ptr_u(12),
      O => hex_in(12)
    );
  hex_in_13_Q : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => MODE,
      I1 => N142,
      I2 => rd_ptr_u(13),
      O => hex_in(13)
    );
  FOUT_3_139 : LUT4
    generic map(
      INIT => X"FCB8"
    )
    port map (
      I0 => FOUT_3_106_240,
      I1 => MODE,
      I2 => BCD_out_7_Q,
      I3 => N144,
      O => FOUT(3)
    );
  Inc_not000264_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Inc(2),
      I1 => Inc_not000238_304,
      I2 => Inc_not000244_305,
      O => N146
    );
  Mcount_Gain_xor_1_11 : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => Gain(0),
      I1 => MODE,
      I2 => Gain(1),
      I3 => Up_tick,
      O => Result_1_1
    );
  Msub_rd_ptr_addsub0000_lut_10_Q : LUT3
    generic map(
      INIT => X"69"
    )
    port map (
      I0 => Inc(10),
      I1 => rd_ptr(10),
      I2 => rd_ptr(9),
      O => Msub_rd_ptr_addsub0000_lut(10)
    );
  Maddsub_Inc_share0000_lut_0_Q : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => Inc(0),
      I1 => FIX,
      I2 => Up_tick_req_644,
      O => Maddsub_Inc_share0000_lut(0)
    );
  Mcount_Gain_lut_3_1 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => Gain(3),
      I1 => Up_tick,
      I2 => MODE,
      O => Mcount_Gain_lut(3)
    );
  Maddsub_Inc_share0000_lut_1_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(1),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(1)
    );
  Maddsub_Inc_share0000_lut_2_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(2),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(2)
    );
  Maddsub_Inc_share0000_lut_3_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(3),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(3)
    );
  Maddsub_Inc_share0000_lut_4_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(4),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(4)
    );
  Maddsub_Inc_share0000_lut_5_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(5),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(5)
    );
  Maddsub_Inc_share0000_lut_6_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(6),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(6)
    );
  Maddsub_Inc_share0000_lut_7_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(7),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(7)
    );
  Maddsub_Inc_share0000_lut_8_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(8),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(8)
    );
  Maddsub_Inc_share0000_lut_9_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(9),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(9)
    );
  Maddsub_Inc_share0000_lut_10_Q : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => Inc(10),
      I1 => Up_tick_req_644,
      I2 => FIX,
      O => Maddsub_Inc_share0000_lut(10)
    );
  Mcount_Gain_lut_4_1 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => Gain(4),
      I1 => Up_tick,
      I2 => MODE,
      O => Mcount_Gain_lut(4)
    );
  Inc_mux0001_10_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(10),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(10)
    );
  Inc_mux0001_9_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(9),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(9)
    );
  Inc_mux0001_8_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(8),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(8)
    );
  Inc_mux0001_7_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(7),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(7)
    );
  Inc_mux0001_6_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(6),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(6)
    );
  Inc_mux0001_5_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(5),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(5)
    );
  Inc_mux0001_4_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(4),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(4)
    );
  Inc_mux0001_3_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(3),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(3)
    );
  Inc_mux0001_2_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(2),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(2)
    );
  Inc_mux0001_1_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => Inc_share0000(1),
      I1 => Inc_cmp_eq0000_288,
      I2 => FIX,
      O => Inc_mux0001(1)
    );
  hex2bcd_i_bcd_16_mux00041 : LUT4
    generic map(
      INIT => X"0F38"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(1),
      I1 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut(2),
      I2 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(0),
      I3 => hex2bcd_i_bcd_18_mux0003,
      O => BCD_out_17_Q
    );
  hex2bcd_i_bcd_12_mux00071 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0007_cy(0),
      I1 => hex2bcd_i_N85,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3),
      O => BCD_out_13_Q
    );
  hex2bcd_i_Madd_bcd_15_12_add0007_cy_1_1_SW1 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(0),
      I1 => hex2bcd_i_N84,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3),
      O => N150
    );
  hex2bcd_i_Madd_bcd_15_12_add0007_cy_1_1 : LUT4
    generic map(
      INIT => X"FF6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2),
      I3 => N150,
      O => hex2bcd_i_Madd_bcd_15_12_add0007_cy(1)
    );
  hex2bcd_i_Madd_bcd_15_12_add0006_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I2 => hex2bcd_i_N83,
      I3 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0006_cy(1)
    );
  hex2bcd_i_Madd_bcd_15_12_add0005_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0004_lut(3),
      I2 => hex2bcd_i_N82,
      I3 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0005_cy(1)
    );
  hex2bcd_i_Madd_bcd_15_12_add0004_cy_1_11 : LUT4
    generic map(
      INIT => X"FF6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0004_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0012_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N77,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0008,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0011_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0012_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0011_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N75,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0006,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0010_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0011_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0010_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N73,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0013,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0009_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0010_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0009_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N70,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0011,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0008_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0009_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0008_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N68,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0009,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0007_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0008_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0007_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N76,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0007,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0006_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0007_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0006_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N74,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0005,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0005_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0006_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0005_cy_1_11 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N72,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I2 => hex2bcd_i_bcd_4_cmp_gt0004,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0004_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0005_cy(1)
    );
  hex2bcd_i_Madd_bcd_7_4_add0004_cy_1_11 : LUT4
    generic map(
      INIT => X"F99F"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I1 => hex2bcd_i_N711,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0),
      I3 => hex2bcd_i_N87,
      O => hex2bcd_i_Madd_bcd_7_4_add0004_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0015_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I2 => hex2bcd_i_N77,
      I3 => hex_in(2),
      O => hex2bcd_i_Madd_bcd_3_0_add0015_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0014_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(4),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I2 => hex2bcd_i_N75,
      I3 => hex_in(3),
      O => hex2bcd_i_Madd_bcd_3_0_add0014_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0013_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(5),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I2 => hex2bcd_i_N73,
      I3 => hex_in(4),
      O => hex2bcd_i_Madd_bcd_3_0_add0013_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0012_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(6),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I2 => hex2bcd_i_N70,
      I3 => hex_in(5),
      O => hex2bcd_i_Madd_bcd_3_0_add0012_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0011_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(7),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I2 => hex2bcd_i_N68,
      I3 => hex_in(6),
      O => hex2bcd_i_Madd_bcd_3_0_add0011_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0010_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(8),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I2 => hex2bcd_i_N76,
      I3 => hex_in(7),
      O => hex2bcd_i_Madd_bcd_3_0_add0010_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0009_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(9),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I2 => hex2bcd_i_N74,
      I3 => hex_in(8),
      O => hex2bcd_i_Madd_bcd_3_0_add0009_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0008_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(10),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I2 => hex2bcd_i_N72,
      I3 => hex_in(9),
      O => hex2bcd_i_Madd_bcd_3_0_add0008_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0007_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(11),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I2 => hex2bcd_i_N711,
      I3 => hex_in(10),
      O => hex2bcd_i_Madd_bcd_3_0_add0007_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0006_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(12),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I2 => hex2bcd_i_N69,
      I3 => hex_in(11),
      O => hex2bcd_i_Madd_bcd_3_0_add0006_cy(1)
    );
  hex2bcd_i_Madd_bcd_3_0_add0005_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(13),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0004_lut(3),
      I2 => hex2bcd_i_N67,
      I3 => hex_in(12),
      O => hex2bcd_i_Madd_bcd_3_0_add0005_cy(1)
    );
  FOUT_2_SW1 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => rd_ptr_u(2),
      I1 => hex2bcd_i_N78,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      O => N156
    );
  Madd_Gain_conv_addsub0000_lut_4_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => tmp_addsub0002(4),
      I1 => Gain(3),
      I2 => tmp_mux0002_4_Q,
      O => Madd_Gain_conv_addsub0000_lut_4_Q_335
    );
  Madd_Gain_conv_addsub0000_lut_6_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => tmp_addsub0002(6),
      I1 => Gain(3),
      I2 => tmp_mux0002_6_Q,
      O => Madd_Gain_conv_addsub0000_lut_6_Q_336
    );
  Madd_Gain_conv_addsub0000_lut_9_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0002(9),
      O => Madd_Gain_conv_addsub0000_lut_9_Q_338
    );
  Madd_Gain_conv_addsub0000_lut_15_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0002(15),
      O => Madd_Gain_conv_addsub0000_lut_15_Q_334
    );
  Madd_tmp_addsub0001_lut_6_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      O => Madd_tmp_addsub0001_lut_6_Q_361
    );
  Madd_tmp_addsub0001_lut_7_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      O => Madd_tmp_addsub0001_lut_7_Q_362
    );
  Madd_tmp_addsub0001_lut_12_Q : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      O => Madd_tmp_addsub0001_lut_12_Q_357
    );
  Madd_tmp_addsub0001_lut_13_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(1),
      I1 => Gain(0),
      O => Madd_tmp_addsub0001_lut_13_Q_358
    );
  Madd_tmp_addsub0002_lut_3_Q : LUT3
    generic map(
      INIT => X"47"
    )
    port map (
      I0 => tmp_addsub0001_3_Q,
      I1 => Gain(2),
      I2 => Gain(1),
      O => Madd_tmp_addsub0002_lut_3_Q_374
    );
  Madd_tmp_addsub0002_lut_8_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(2),
      I1 => tmp_addsub0001_8_Q,
      O => Madd_tmp_addsub0002_lut_8_Q_377
    );
  Madd_tmp_addsub0002_lut_14_Q : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Gain(2),
      I1 => tmp_addsub0001_14_Q,
      O => Madd_tmp_addsub0002_lut_14_Q_373
    );
  hex2bcd_i_Madd_bcd_11_8_add0004_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I1 => hex2bcd_i_N90,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I3 => hex2bcd_i_Madd_bcd_11_8_add0004_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0004_cy(1)
    );
  FOUT_19_1 : LUT4
    generic map(
      INIT => X"2808"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut(2),
      I2 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(1),
      I3 => hex2bcd_i_bcd_18_mux0003,
      O => FOUT(19)
    );
  hex2bcd_i_Madd_bcd_15_12_add0003_cy_1_11 : LUT4
    generic map(
      INIT => X"FF6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0002_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1)
    );
  FOUT_18_1 : LUT4
    generic map(
      INIT => X"2882"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_bcd_17_cmp_gt0003,
      I2 => hex2bcd_i_Madd_bcd_19_16_add0003_Madd_cy(0),
      I3 => hex2bcd_i_N221,
      O => FOUT(18)
    );
  FOUT_16_1 : LUT3
    generic map(
      INIT => X"82"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3),
      I2 => hex2bcd_i_N85,
      O => FOUT(16)
    );
  hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I1 => hex2bcd_i_N83,
      I2 => hex2bcd_i_bcd_17_cmp_gt0003,
      I3 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(0),
      O => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(1)
    );
  hex2bcd_i_Madd_bcd_11_8_add0005_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      I1 => hex2bcd_i_N911,
      I2 => hex2bcd_i_bcd_11_cmp_gt0003,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1)
    );
  hex2bcd_i_bcd_14_mux0007_SW0 : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      I1 => hex2bcd_i_N83,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      O => N57
    );
  tmp_mux0002_11_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => tmp_addsub0001_11_Q,
      O => tmp_mux0002_11_Q
    );
  hex2bcd_i_bcd_15_mux000411 : LUT4
    generic map(
      INIT => X"36FF"
    )
    port map (
      I0 => hex2bcd_i_N811,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0002_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(1),
      O => hex2bcd_i_N82
    );
  hex2bcd_i_Madd_bcd_11_8_add0008_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      I1 => hex2bcd_i_N97,
      I2 => hex2bcd_i_bcd_11_cmp_gt0007,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0008_cy(1)
    );
  hex2bcd_i_Madd_bcd_11_8_add0007_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      I1 => hex2bcd_i_N95,
      I2 => hex2bcd_i_bcd_11_cmp_gt0006,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0007_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0007_cy(1)
    );
  hex2bcd_i_Madd_bcd_11_8_add0006_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      I1 => hex2bcd_i_N93,
      I2 => hex2bcd_i_bcd_11_cmp_gt0004,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0006_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0006_cy(1)
    );
  hex2bcd_i_bcd_6_mux0011_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I1 => hex2bcd_i_N70,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      I3 => hex2bcd_i_N97,
      O => N61
    );
  hex2bcd_i_bcd_6_mux0010_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I1 => hex2bcd_i_N68,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      I3 => hex2bcd_i_N95,
      O => N63
    );
  hex2bcd_i_bcd_6_mux0009_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I1 => hex2bcd_i_N76,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      I3 => hex2bcd_i_N93,
      O => N65
    );
  hex2bcd_i_bcd_6_mux0008_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I1 => hex2bcd_i_N74,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      I3 => hex2bcd_i_N911,
      O => N67
    );
  hex2bcd_i_bcd_6_mux0007_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I1 => hex2bcd_i_N72,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I3 => hex2bcd_i_N90,
      O => N69
    );
  hex2bcd_i_bcd_6_mux0006_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I1 => hex2bcd_i_N711,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0004_lut(3),
      I3 => hex2bcd_i_N88,
      O => N71
    );
  hex2bcd_i_bcd_10_mux0010_SW0 : LUT4
    generic map(
      INIT => X"3666"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(0),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0008_lut(2),
      I3 => hex2bcd_i_Madd_bcd_11_8_add0008_cy(1),
      O => N75
    );
  tmp_mux0002_12_1 : LUT4
    generic map(
      INIT => X"88B8"
    )
    port map (
      I0 => tmp_addsub0001_12_Q,
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_12_Q
    );
  hex2bcd_i_bcd_6_mux0012_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I1 => hex2bcd_i_N73,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3),
      I3 => hex2bcd_i_N89,
      O => N77
    );
  hex2bcd_i_bcd_11_mux00102 : LUT4
    generic map(
      INIT => X"692D"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(2),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0009_cy(1),
      I2 => hex2bcd_i_N60,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0009_lut(3),
      O => BCD_out_12_Q
    );
  FOUT_12_1 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3),
      I2 => hex2bcd_i_N85,
      I3 => BCD_out_12_Q,
      O => FOUT(12)
    );
  hex2bcd_i_Madd_bcd_7_4_add0003_cy_1_11 : LUT3
    generic map(
      INIT => X"F9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I1 => hex2bcd_i_N69,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      O => hex2bcd_i_Madd_bcd_7_4_add0003_cy(1)
    );
  hex2bcd_i_bcd_6_mux0013_SW0 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I1 => hex2bcd_i_N75,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I3 => hex2bcd_i_N92,
      O => N97
    );
  FOUT_8_1 : LUT4
    generic map(
      INIT => X"D782"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I2 => hex2bcd_i_N96,
      I3 => BCD_out_12_Q,
      O => FOUT(8)
    );
  FOUT_0_1 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => MODE,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3),
      I2 => hex2bcd_i_N79,
      I3 => rd_ptr_u(0),
      O => FOUT(0)
    );
  tmp_mux0002_6_1 : LUT4
    generic map(
      INIT => X"88B8"
    )
    port map (
      I0 => tmp_addsub0001_6_Q,
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_6_Q
    );
  hex2bcd_i_bcd_5_mux001221 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_N77,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I2 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I3 => hex2bcd_i_N94,
      O => hex2bcd_i_N531
    );
  hex2bcd_i_bcd_7_mux000411 : LUT4
    generic map(
      INIT => X"36FF"
    )
    port map (
      I0 => hex2bcd_i_N87,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      I2 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0004_cy(1),
      O => hex2bcd_i_N88
    );
  FOUT_3_8 : LUT4
    generic map(
      INIT => X"99A9"
    )
    port map (
      I0 => hex_in(3),
      I1 => hex_in(2),
      I2 => hex2bcd_i_N78,
      I3 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      O => FOUT_3_8_242
    );
  FOUT_3_28 : LUT4
    generic map(
      INIT => X"0600"
    )
    port map (
      I0 => hex_in(3),
      I1 => hex2bcd_i_N341,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I3 => hex2bcd_i_N77,
      O => FOUT_3_28_241
    );
  tmp_mux0002_6_11 : LUT4
    generic map(
      INIT => X"88B8"
    )
    port map (
      I0 => tmp_addsub0001_6_Q,
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_6_1_1039
    );
  tmp_mux0002_11_11 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => tmp_addsub0001_11_Q,
      O => tmp_mux0002_11_1_1031
    );
  tmp_mux0002_12_11 : LUT4
    generic map(
      INIT => X"88B8"
    )
    port map (
      I0 => tmp_addsub0001_12_Q,
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_12_1_1033
    );
  Mcount_Gain_xor_4_11 : LUT4
    generic map(
      INIT => X"569A"
    )
    port map (
      I0 => Mcount_Gain_lut(4),
      I1 => Mcount_Gain_lut(3),
      I2 => Gain(3),
      I3 => N148,
      O => Result_4_1
    );
  Mcount_Gain_cy_3_1_SW2 : LUT4
    generic map(
      INIT => X"EF8A"
    )
    port map (
      I0 => Gain(2),
      I1 => MODE,
      I2 => Up_tick,
      I3 => N207,
      O => N148
    );
  Mcount_Gain_xor_2_11 : LUT4
    generic map(
      INIT => X"96A5"
    )
    port map (
      I0 => Gain(2),
      I1 => MODE,
      I2 => Mcount_Gain_cy_1_Q,
      I3 => Up_tick,
      O => Result_2_1
    );
  hex2bcd_i_bcd_11_mux00031 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => hex2bcd_i_N88,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(1),
      I2 => hex2bcd_i_N66,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0003_cy(0),
      O => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0)
    );
  hex2bcd_i_bcd_10_mux00031 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(1),
      I1 => hex2bcd_i_N88,
      I2 => hex2bcd_i_N66,
      I3 => hex2bcd_i_Madd_bcd_11_8_add0003_cy(0),
      O => hex2bcd_i_Madd_bcd_11_8_add0004_lut(3)
    );
  hex2bcd_i_bcd_18_mux00031 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => hex2bcd_i_N82,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I2 => hex2bcd_i_Madd_bcd_19_16_add0003_Madd_cy(0),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      O => hex2bcd_i_bcd_18_mux0003
    );
  hex2bcd_i_bcd_17_cmp_gt00031 : LUT4
    generic map(
      INIT => X"8088"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I2 => hex2bcd_i_Madd_bcd_19_16_add0003_Madd_cy(0),
      I3 => hex2bcd_i_N82,
      O => hex2bcd_i_bcd_17_cmp_gt0003
    );
  hex2bcd_i_bcd_6_mux0005_SW0 : LUT4
    generic map(
      INIT => X"696F"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I1 => hex2bcd_i_N69,
      I2 => hex2bcd_i_N66,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      O => N73
    );
  hex2bcd_i_bcd_14_mux0005 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(1),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I3 => N160,
      O => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3)
    );
  hex2bcd_i_bcd_14_mux0006_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0004_lut(3),
      I1 => hex2bcd_i_N82,
      I2 => hex2bcd_i_bcd_12_cmp_gt0005,
      I3 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      O => N162
    );
  hex2bcd_i_bcd_14_mux0006 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0006_lut(3),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0006_cy(1),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      I3 => N162,
      O => hex2bcd_i_Madd_bcd_15_12_add0007_lut(3)
    );
  hex2bcd_i_bcd_6_mux00031 : LUT4
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      I1 => hex2bcd_i_N66,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I3 => hex2bcd_i_N69,
      O => hex2bcd_i_Madd_bcd_7_4_add0004_lut(3)
    );
  hex2bcd_i_bcd_13_mux000321 : LUT4
    generic map(
      INIT => X"FF6A"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(3),
      I1 => hex2bcd_i_Madd_bcd_11_8_add0005_lut(2),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0005_cy(1),
      I3 => hex2bcd_i_N811,
      O => hex2bcd_i_N381
    );
  hex2bcd_i_bcd_6_mux00041 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0004_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0004_cy(1),
      I2 => hex2bcd_i_N67,
      I3 => N164,
      O => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3)
    );
  hex2bcd_i_bcd_12_cmp_gt00041 : LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => hex2bcd_i_N82,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      O => hex2bcd_i_bcd_12_cmp_gt0004
    );
  hex2bcd_i_bcd_2_mux00031 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => hex_in(16),
      I1 => hex_in(14),
      I2 => hex_in(15),
      O => hex2bcd_i_Madd_bcd_3_0_add0004_lut(3)
    );
  hex2bcd_i_bcd_2_mux0013_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I1 => hex2bcd_i_N70,
      I2 => hex2bcd_i_bcd_2_cmp_gt0010,
      I3 => hex_in(5),
      O => N166
    );
  hex2bcd_i_bcd_2_mux0013 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0013_cy(1),
      I2 => hex_in(6),
      I3 => N166,
      O => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3)
    );
  hex2bcd_i_bcd_2_mux0012_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I1 => hex2bcd_i_N68,
      I2 => hex2bcd_i_bcd_2_cmp_gt0007,
      I3 => hex_in(6),
      O => N168
    );
  hex2bcd_i_bcd_2_mux0012 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0012_cy(1),
      I2 => hex_in(7),
      I3 => N168,
      O => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3)
    );
  hex2bcd_i_bcd_2_mux0011_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I1 => hex2bcd_i_N76,
      I2 => hex2bcd_i_bcd_2_cmp_gt0005,
      I3 => hex_in(7),
      O => N170
    );
  hex2bcd_i_bcd_2_mux0011 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0011_cy(1),
      I2 => hex_in(8),
      I3 => N170,
      O => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3)
    );
  hex2bcd_i_bcd_2_mux0010_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I1 => hex2bcd_i_N74,
      I2 => hex2bcd_i_bcd_2_cmp_gt0013,
      I3 => hex_in(8),
      O => N172
    );
  hex2bcd_i_bcd_2_mux0010 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0010_cy(1),
      I2 => hex_in(9),
      I3 => N172,
      O => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3)
    );
  hex2bcd_i_bcd_2_mux0009_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I1 => hex2bcd_i_N72,
      I2 => hex2bcd_i_bcd_2_cmp_gt0011,
      I3 => hex_in(9),
      O => N174
    );
  hex2bcd_i_bcd_2_mux0009 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0009_cy(1),
      I2 => hex_in(10),
      I3 => N174,
      O => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3)
    );
  hex2bcd_i_bcd_2_mux0008_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I1 => hex2bcd_i_N711,
      I2 => hex2bcd_i_bcd_2_cmp_gt0009,
      I3 => hex_in(10),
      O => N176
    );
  hex2bcd_i_bcd_2_mux0008 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0008_cy(1),
      I2 => hex_in(11),
      I3 => N176,
      O => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3)
    );
  hex2bcd_i_bcd_2_mux0007_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I1 => hex2bcd_i_N69,
      I2 => hex2bcd_i_bcd_2_cmp_gt0008,
      I3 => hex_in(11),
      O => N178
    );
  hex2bcd_i_bcd_2_mux0007 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0007_cy(1),
      I2 => hex_in(12),
      I3 => N178,
      O => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3)
    );
  hex2bcd_i_bcd_2_mux0006_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0004_lut(3),
      I1 => hex2bcd_i_N67,
      I2 => hex2bcd_i_bcd_2_cmp_gt0006,
      I3 => hex_in(12),
      O => N180
    );
  hex2bcd_i_bcd_2_mux0006 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0006_cy(1),
      I2 => hex_in(13),
      I3 => N180,
      O => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3)
    );
  hex2bcd_i_bcd_7_mux000311 : LUT4
    generic map(
      INIT => X"FF06"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I1 => hex2bcd_i_N69,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0),
      I3 => hex2bcd_i_N66,
      O => hex2bcd_i_N87
    );
  hex2bcd_i_bcd_2_mux0014_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I1 => hex2bcd_i_N73,
      I2 => hex2bcd_i_bcd_2_cmp_gt0012,
      I3 => hex_in(4),
      O => N182
    );
  hex2bcd_i_bcd_2_mux0014 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_cy(1),
      I2 => hex_in(5),
      I3 => N182,
      O => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3)
    );
  hex2bcd_i_bcd_9_mux001021 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_N94,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I2 => hex2bcd_i_Madd_bcd_11_8_add0010_lut(3),
      I3 => hex2bcd_i_N60,
      O => hex2bcd_i_N112
    );
  hex2bcd_i_bcd_5_mux001121 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I1 => hex2bcd_i_N75,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I3 => hex2bcd_i_N92,
      O => hex2bcd_i_N501
    );
  hex2bcd_i_bcd_5_mux001021 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I1 => hex2bcd_i_N73,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0010_lut(3),
      I3 => hex2bcd_i_N89,
      O => hex2bcd_i_N481
    );
  hex2bcd_i_bcd_5_mux000921 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I1 => hex2bcd_i_N70,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0009_lut(3),
      I3 => hex2bcd_i_N97,
      O => hex2bcd_i_N55
    );
  hex2bcd_i_bcd_5_mux000821 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I1 => hex2bcd_i_N68,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0008_lut(3),
      I3 => hex2bcd_i_N95,
      O => hex2bcd_i_N54
    );
  hex2bcd_i_bcd_5_mux000721 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I1 => hex2bcd_i_N76,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0007_lut(3),
      I3 => hex2bcd_i_N93,
      O => hex2bcd_i_N511
    );
  hex2bcd_i_bcd_5_mux000621 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I1 => hex2bcd_i_N74,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0006_lut(3),
      I3 => hex2bcd_i_N911,
      O => hex2bcd_i_N491
    );
  hex2bcd_i_bcd_5_mux000521 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I1 => hex2bcd_i_N72,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I3 => hex2bcd_i_N90,
      O => hex2bcd_i_N451
    );
  hex2bcd_i_bcd_5_mux000421 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I1 => hex2bcd_i_N711,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0004_lut(3),
      I3 => hex2bcd_i_N88,
      O => hex2bcd_i_N471
    );
  hex2bcd_i_bcd_2_mux0015_SW1 : LUT4
    generic map(
      INIT => X"44B4"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I1 => hex2bcd_i_N75,
      I2 => hex2bcd_i_bcd_2_cmp_gt0014,
      I3 => hex_in(3),
      O => N184
    );
  hex2bcd_i_bcd_2_mux0015 : LUT4
    generic map(
      INIT => X"3883"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_cy(1),
      I2 => hex_in(4),
      I3 => N184,
      O => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3)
    );
  hex2bcd_i_bcd_5_mux001321 : LUT4
    generic map(
      INIT => X"9F99"
    )
    port map (
      I0 => hex2bcd_i_N78,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I2 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I3 => hex2bcd_i_N96,
      O => hex2bcd_i_N521
    );
  tmp_mux0002_5_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => tmp_addsub0001_5_Q,
      O => tmp_mux0002_5_Q
    );
  tmp_mux0003_14_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0002(14),
      I2 => Gain(2),
      I3 => tmp_addsub0001_14_Q,
      O => tmp_mux0003(14)
    );
  tmp_mux0002_13_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(2),
      I1 => tmp_addsub0001_13_Q,
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_13_Q
    );
  hex2bcd_i_bcd_3_mux000311 : LUT3
    generic map(
      INIT => X"57"
    )
    port map (
      I0 => hex_in(16),
      I1 => hex_in(15),
      I2 => hex_in(14),
      O => hex2bcd_i_N66
    );
  tmp_mux0002_7_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(2),
      I1 => tmp_addsub0001_7_Q,
      I2 => Gain(1),
      I3 => Gain(0),
      O => tmp_mux0002_7_Q
    );
  FOUT_3_139_SW0_SW0 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => FOUT_3_8_242,
      I1 => hex2bcd_i_N77,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      O => N188
    );
  FOUT_3_139_SW0 : LUT4
    generic map(
      INIT => X"A080"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3),
      I1 => FOUT_3_28_241,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0016_cy(1),
      I3 => N188,
      O => N144
    );
  hex2bcd_i_bcd_8_mux00101 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I1 => hex2bcd_i_N94,
      I2 => hex2bcd_i_Madd_bcd_11_8_add0010_lut(3),
      I3 => hex2bcd_i_N60,
      O => BCD_out_9_Q
    );
  Madd_Gain_conv_addsub0000_lut_8_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0001_8_Q,
      I2 => Gain(2),
      I3 => tmp_addsub0002(8),
      O => Madd_Gain_conv_addsub0000_lut_8_Q_337
    );
  Madd_Gain_conv_addsub0000_lut_14_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0001_14_Q,
      I2 => Gain(2),
      I3 => tmp_addsub0002(14),
      O => Madd_Gain_conv_addsub0000_lut_14_Q_333
    );
  Madd_tmp_addsub0002_lut_5_Q : LUT4
    generic map(
      INIT => X"41EB"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(1),
      I2 => Gain(0),
      I3 => tmp_addsub0001_5_Q,
      O => Madd_tmp_addsub0002_lut_5_Q_375
    );
  Madd_tmp_addsub0002_lut_7_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => tmp_addsub0001_7_Q,
      O => Madd_tmp_addsub0002_lut_7_Q_376
    );
  Madd_tmp_addsub0002_lut_13_Q : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Gain(2),
      I1 => Gain(0),
      I2 => Gain(1),
      I3 => tmp_addsub0001_13_Q,
      O => Madd_tmp_addsub0002_lut_13_Q_372
    );
  hex2bcd_i_bcd_3_mux000411 : LUT4
    generic map(
      INIT => X"71FF"
    )
    port map (
      I0 => hex_in(13),
      I1 => hex_in(14),
      I2 => hex_in(16),
      I3 => hex_in(15),
      O => hex2bcd_i_N67
    );
  hex2bcd_i_Madd_bcd_7_4_add0013_cy_1_1_SW0 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => hex2bcd_i_N77,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I2 => hex2bcd_i_N94,
      O => N190
    );
  hex2bcd_i_Madd_bcd_7_4_add0013_cy_1_1 : LUT4
    generic map(
      INIT => X"9FF9"
    )
    port map (
      I0 => hex2bcd_i_N78,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I2 => N190,
      I3 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      O => hex2bcd_i_Madd_bcd_7_4_add0013_cy(1)
    );
  hex2bcd_i_bcd_14_mux0005_SW1 : LUT4
    generic map(
      INIT => X"5D6C"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I3 => hex2bcd_i_N82,
      O => N160
    );
  hex2bcd_i_bcd_13_mux000521 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N83,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(0),
      O => hex2bcd_i_N411
    );
  hex2bcd_i_bcd_1_mux001421 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N77,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0014_lut(3),
      I2 => hex_in(3),
      O => hex2bcd_i_N331
    );
  hex2bcd_i_bcd_1_mux001321 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N75,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0013_lut(3),
      I2 => hex_in(4),
      O => hex2bcd_i_N311
    );
  hex2bcd_i_bcd_1_mux001221 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N73,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0012_lut(3),
      I2 => hex_in(5),
      O => hex2bcd_i_N271
    );
  hex2bcd_i_bcd_1_mux001121 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N70,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0011_lut(3),
      I2 => hex_in(6),
      O => hex2bcd_i_N261
    );
  hex2bcd_i_bcd_1_mux001021 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N68,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0010_lut(3),
      I2 => hex_in(7),
      O => hex2bcd_i_N241
    );
  hex2bcd_i_bcd_1_mux000921 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N76,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0009_lut(3),
      I2 => hex_in(8),
      O => hex2bcd_i_N321
    );
  hex2bcd_i_bcd_1_mux000821 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N74,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0008_lut(3),
      I2 => hex_in(9),
      O => hex2bcd_i_N301
    );
  hex2bcd_i_bcd_1_mux000721 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N72,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0007_lut(3),
      I2 => hex_in(10),
      O => hex2bcd_i_N291
    );
  hex2bcd_i_bcd_1_mux000621 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N711,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3),
      I2 => hex_in(11),
      O => hex2bcd_i_N281
    );
  hex2bcd_i_bcd_1_mux000521 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => hex2bcd_i_N69,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I2 => hex_in(12),
      O => hex2bcd_i_N251
    );
  hex2bcd_i_bcd_2_mux00041 : LUT4
    generic map(
      INIT => X"1802"
    )
    port map (
      I0 => hex_in(15),
      I1 => hex_in(14),
      I2 => hex_in(13),
      I3 => hex_in(16),
      O => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3)
    );
  hex2bcd_i_bcd_1_mux000421 : LUT4
    generic map(
      INIT => X"EFFB"
    )
    port map (
      I0 => hex_in(13),
      I1 => hex_in(16),
      I2 => hex_in(15),
      I3 => hex_in(14),
      O => hex2bcd_i_N231
    );
  hex2bcd_i_bcd_2_cmp_gt00041 : LUT4
    generic map(
      INIT => X"B424"
    )
    port map (
      I0 => hex_in(14),
      I1 => hex_in(16),
      I2 => hex_in(15),
      I3 => hex_in(13),
      O => hex2bcd_i_Madd_bcd_7_4_add0002_cy(0)
    );
  hex2bcd_i_bcd_15_mux000511_SW0 : LUT4
    generic map(
      INIT => X"8A87"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      I1 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0004_cy(0),
      I3 => hex2bcd_i_N82,
      O => N196
    );
  hex2bcd_i_bcd_15_mux000511 : LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      I0 => N196,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(1),
      O => hex2bcd_i_N83
    );
  hex2bcd_i_bcd_2_mux0005_SW1 : LUT4
    generic map(
      INIT => X"6426"
    )
    port map (
      I0 => hex_in(16),
      I1 => hex_in(14),
      I2 => hex_in(15),
      I3 => hex_in(13),
      O => N198
    );
  hex2bcd_i_bcd_2_mux0005 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => N198,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_cy(1),
      I2 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      O => hex2bcd_i_Madd_bcd_3_0_add0006_lut(3)
    );
  hex2bcd_i_bcd_15_mux00052 : LUT4
    generic map(
      INIT => X"96AA"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I1 => N196,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(1),
      O => hex2bcd_i_Madd_bcd_19_16_add0003_Madd_cy(0)
    );
  hex2bcd_i_bcd_12_cmp_gt00051 : LUT4
    generic map(
      INIT => X"FF60"
    )
    port map (
      I0 => N196,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(0),
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_cy(1),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      O => hex2bcd_i_bcd_12_cmp_gt0005
    );
  hex2bcd_i_bcd_3_mux00062 : LUT4
    generic map(
      INIT => X"692D"
    )
    port map (
      I0 => N198,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_cy(1),
      I2 => hex2bcd_i_N711,
      I3 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      O => hex2bcd_i_Madd_bcd_7_4_add0004_cy(0)
    );
  hex2bcd_i_bcd_2_cmp_gt00081 : LUT4
    generic map(
      INIT => X"62FF"
    )
    port map (
      I0 => N198,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0005_cy(1),
      I2 => hex2bcd_i_Madd_bcd_3_0_add0005_lut(3),
      I3 => hex2bcd_i_N711,
      O => hex2bcd_i_bcd_2_cmp_gt0008
    );
  Maddsub_rd_ptr_mux0001_lut_0_Q : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => rd_ptr_mux0002(0),
      I1 => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      I2 => Inc(0),
      O => Maddsub_rd_ptr_mux0001_lut(0)
    );
  Madd_tmp_addsub0001_lut_2_INV_0 : INV
    port map (
      I => Gain(0),
      O => Madd_tmp_addsub0001_lut_2_Q
    );
  Madd_tmp_addsub0001_lut_4_INV_0 : INV
    port map (
      I => Gain(0),
      O => Madd_tmp_addsub0001_lut_4_Q
    );
  Mcount_play_t_lut_0_INV_0 : INV
    port map (
      I => play_t(0),
      O => Mcount_play_t_lut(0)
    );
  Mcompar_rd_ptr_cmp_gt0000_cy_11_inv_INV_0 : INV
    port map (
      I => Mcompar_rd_ptr_cmp_gt0000_cy(11),
      O => rd_ptr_cmp_gt0000
    );
  Madd_resto_not0000_8_1_INV_0 : INV
    port map (
      I => rd_ptr(8),
      O => Madd_resto_not0000(8)
    );
  Madd_resto_not0000_7_1_INV_0 : INV
    port map (
      I => rd_ptr(7),
      O => Madd_resto_not0000(7)
    );
  Madd_resto_not0000_6_1_INV_0 : INV
    port map (
      I => rd_ptr(6),
      O => Madd_resto_not0000(6)
    );
  Madd_resto_not0000_5_1_INV_0 : INV
    port map (
      I => rd_ptr(5),
      O => Madd_resto_not0000(5)
    );
  Madd_resto_not0000_4_1_INV_0 : INV
    port map (
      I => rd_ptr(4),
      O => Madd_resto_not0000(4)
    );
  Madd_resto_not0000_3_1_INV_0 : INV
    port map (
      I => rd_ptr(3),
      O => Madd_resto_not0000(3)
    );
  Madd_resto_not0000_2_1_INV_0 : INV
    port map (
      I => rd_ptr(2),
      O => Madd_resto_not0000(2)
    );
  Madd_resto_not0000_1_1_INV_0 : INV
    port map (
      I => rd_ptr(1),
      O => Madd_resto_not0000(1)
    );
  Madd_resto_not0000_0_1_INV_0 : INV
    port map (
      I => rd_ptr(0),
      O => Madd_resto_not0000(0)
    );
  Mcount_Gain_xor_0_11_INV_0 : INV
    port map (
      I => Gain(0),
      O => Result_0_1
    );
  FOUT_2_Q : MUXF5
    port map (
      I0 => N200,
      I1 => N201,
      S => MODE,
      O => FOUT(2)
    );
  FOUT_2_F : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0012_cy(0),
      I1 => hex2bcd_i_N521,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I3 => hex2bcd_i_N94,
      O => N200
    );
  FOUT_2_G : LUT4
    generic map(
      INIT => X"99A9"
    )
    port map (
      I0 => N156,
      I1 => hex_in(1),
      I2 => hex2bcd_i_N79,
      I3 => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3),
      O => N201
    );
  Inc_not0002108 : MUXF5
    port map (
      I0 => N202,
      I1 => N203,
      S => FIX,
      O => Inc_not0002
    );
  Inc_not0002108_F : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => play_t_cmp_ge0000,
      I1 => EN,
      I2 => N120,
      O => N202
    );
  Inc_not0002108_G : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inc_not000277_307,
      I1 => MODE,
      I2 => EN,
      O => N203
    );
  FOUT_1_Q : MUXF5
    port map (
      I0 => N204,
      I1 => N205,
      S => MODE,
      O => FOUT(1)
    );
  FOUT_1_F : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I1 => hex2bcd_i_N78,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I3 => hex2bcd_i_N96,
      O => N204
    );
  FOUT_1_G : LUT3
    generic map(
      INIT => X"59"
    )
    port map (
      I0 => rd_ptr_u(1),
      I1 => hex2bcd_i_N79,
      I2 => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3),
      O => N205
    );
  Mrom_DOUT_rom00001 : RAMB16_S4
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_26 => X"BCCDEEF0123456789ABDEF123578ABDF13579BDF1368ADF257AD0258CF258CF3",
      INIT_00 => X"677888999AAAABBBBBBBBBBBBBBBBBBAAAAA9999888777666554443322211000",
      INIT_01 => X"148BE148BE0369BE1368ADF13579BDF135689BDEF12356789ABCDEF012234456",
      INIT_02 => X"4C4D4C4C3B2A18F6D4B18E5B28E4A06B17C17C16C15AF48D26AF37BF37BF36AD",
      INIT_03 => X"BA875420EC9752FC9630D962EA62EA51C73E93E93E83D71B4E81B4D6F81A2B3C",
      INIT_04 => X"907D4A07D28E38D27C159E26AD148BE1369BDF13578ABCDEFF001111100FFEDC",
      INIT_05 => X"EFFFFFFEDDCB986531FCA742EB841D940C72D83E83D71B4E7092B4C4D5D4C3B2",
      INIT_06 => X"73E93E82C6093C5D6F7F7F6E5C3A07D39E49F49D26AF26AD0369CE024689ACDD",
      INIT_07 => X"3A07D39F4AF49D26AE259CF2479BDE0123455555544321FECA8530DA740D950C",
      INIT_08 => X"F358BDF13567899AAAAA98765320EB9630D962EA51C72D71B5F82B4D5D6E5D4C",
      INIT_09 => X"FFFEDCB98641FC9630C840B72D82D71A4D708192A2918F6C39F5B05AF49D159C",
      INIT_0A => X"951D94FA50B5F93C6F8192A291807D4A17D28D27B048C0369CF14689BCDEFFF0",
      INIT_0B => X"4D5E6D5D4B28F5B17D27C15AE269D0369BE02356789AAAAA99876531FDB853FC",
      INIT_0C => X"059D047AD0358ACEF1234455555543210EDB9742FC952EA62D94FA4F93D70A3C",
      INIT_0D => X"DCA986420EC9630DA62FA62D94F94E93D70A3C5E6F7F7F6D5C3906C28E39E37C",
      INIT_0E => X"B3C4D5D4C4B2907E4B17D38E38D27C049D148BE247ACF135689BCDDEFFFFFFED",
      INIT_0F => X"DEFF001111100FFEDCBA87531FDB9631EB841DA62E951C72D83E82D70A4D7092",
      INIT_10 => X"3B2A18F6D4B18E4B17D38E39E39E37C15AE26AE269D0369CF2579CE024578ABC",
      INIT_11 => X"A63FB73FB73FA62D84FA51C61C71C71B60A4E82B5E81B4D6F81A2B3C4C4D4C4C",
      INIT_12 => X"54432210FEDCBA98765321FEDB986531FDB97531FDA8631EB9630EB841EB841D",
      INIT_13 => X"001122233444556667778889999AAAAABBBBBBBBBBBBBBBBBBAAAA9998887766",
      INIT_14 => X"A998887776666555555555555555555666667777888999AAABBCCCDDEEEFF000",
      INIT_15 => X"FC852FC8520DA752FDA8631FDB97531FDBA875321FEDBA9876543210FEEDCCBA",
      INIT_16 => X"C4C3C4C4D5E6F81A3C5F82B5E82C60A5F94F94FA4FB61C83EA61D951D951DA63",
      INIT_17 => X"5689BCE02479BE147AD037AE26AE26BF49D27D27D28D39F5C28F5C3A18F6E5D4",
      INIT_18 => X"7093C6093E82D83E94FB72EA63FC852FDA7531FDB98654321100FFFFF0011234",
      INIT_19 => X"21111112334578ABDF1469CE258CF37C049E38D28D39F5C2907E5C4C3B3C4D5E",
      INIT_1A => X"9D27D28E4A07D4B3A19191A2B4D6093D72C71C73EA61EA630DA7420ECA876433",
      INIT_1B => X"D6093D71C61C73EA62EB741EC975320FEDCBBBBBBCCDEF12468BD0369C037B04",
      INIT_1C => X"1DB8531FDBA987766666789ABDE0257AD037AE26BF49E39F5B18E5C3B3A2B3C4",
      INIT_1D => X"111234578ACF147AD048C059E38E39F6C3908F7E6E7F81A4D71B50B61C73FB74",
      INIT_1E => X"7BF37C16B05B17D4A18F7E6E7F8093C6F93E83E950C840DA741FCA8754321110",
      INIT_1F => X"C3B2A3B3C5E81B5F93E94FB62EA730DA7520EDBA987666667789ABDF1358BD14",
      INIT_20 => X"0B730C9630DB86421FEDCCBBBBBBCDEF023579CE147BE26AE37C16C17D3906D4",
      INIT_21 => X"34678ACE0247AD036AE16AE37C17C27D3906D4B2A19191A3B4D70A4E82D72D94",
      INIT_22 => X"5D4C3B3C4C5E7092C5F93D82D83E940C73FC852EC9641FDBA875433211111123",
      INIT_23 => X"321100FFFFF00112345689BDF1357ADF258CF36AE27BF49E38D28E3906C3907E",
      INIT_24 => X"D5E6F81A3C5F82C5F93D82D72D72D94FB62EA62EA730DA741EB97420ECB98654",
      INIT_25 => X"6AD159D159D16AE38C16BF4AF49F49F5A06C28E5B28F5C3A18F6E5D4C4C3C4C4",
      INIT_27 => X"00FFEEEDDCCCBBAAA999888777766666555555555555555555666677788899AA"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_Gain_conv_addsub0000_cy(16),
      WE => Madd_Gain_conv_addsub0000_cy(16),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(3) => Madd_Gain_conv_addsub0000_cy(16),
      DI(2) => Madd_Gain_conv_addsub0000_cy(16),
      DI(1) => Madd_Gain_conv_addsub0000_cy(16),
      DI(0) => Madd_Gain_conv_addsub0000_cy(16),
      DO(3) => DOUT(3),
      DO(2) => DOUT(2),
      DO(1) => DOUT(1),
      DO(0) => DOUT(0)
    );
  Mrom_DOUT_rom00004 : RAMB16_S4
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_26 => X"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_00 => X"1111111111110000000000000000000000000000000000000000000000000000",
      INIT_01 => X"2222222222222222222222222111111111111111111111111111111111111111",
      INIT_02 => X"3333333333333333333333333333333333322222222222222222222222222222",
      INIT_03 => X"4444444444444444444444444444444444444444443333333333333333333333",
      INIT_04 => X"5555555555555555555555555555555555555555555544444444444444444444",
      INIT_05 => X"6666666666666666666666666666666666666655555555555555555555555555",
      INIT_06 => X"7777777777777666666666666666666666666666666666666666666666666666",
      INIT_07 => X"7777777777777777777777777777777777777777777777777777777777777777",
      INIT_08 => X"7777777777777777777777777777777777777777777777777777777777777777",
      INIT_09 => X"7777777777777777777777777777777777777777777777777777777777777777",
      INIT_0A => X"7777777777777777777777777777777777777777777777777777777777777778",
      INIT_0B => X"7777777777777777777777777777777777777777777777777777777777777777",
      INIT_0C => X"7777777777777777777777777777777777777777777777777777777777777777",
      INIT_0D => X"6666666666666666666666666666666666666666666666666677777777777777",
      INIT_0E => X"5555555555555555555555555666666666666666666666666666666666666666",
      INIT_0F => X"4444444444444444444555555555555555555555555555555555555555555555",
      INIT_10 => X"3333333333333333333334444444444444444444444444444444444444444444",
      INIT_11 => X"2222222222222222222222222222333333333333333333333333333333333333",
      INIT_12 => X"1111111111111111111111111111111111111122222222222222222222222222",
      INIT_13 => X"0000000000000000000000000000000000000000000000000001111111111111",
      INIT_14 => X"EEEEEEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0",
      INIT_15 => X"DDDDDDDDDDDDDDDDDDDDDDDDDEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE",
      INIT_16 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDDDDDDDDDDDDDD",
      INIT_17 => X"BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBCCCCCCCCCCCCCCCCCCCCCC",
      INIT_18 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBBBBBBBBBBBBBB",
      INIT_19 => X"99999999999999999999999999999999999999AAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_1A => X"8888888888888999999999999999999999999999999999999999999999999999",
      INIT_1B => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_1C => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_1D => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_1E => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_1F => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_20 => X"8888888888888888888888888888888888888888888888888888888888888888",
      INIT_21 => X"9999999999999999999999999999999999999999999999999988888888888888",
      INIT_22 => X"AAAAAAAAAAAAAAAAAAAAAAAAA999999999999999999999999999999999999999",
      INIT_23 => X"BBBBBBBBBBBBBBBBBBBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_24 => X"CCCCCCCCCCCCCCCCCCCCCBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
      INIT_25 => X"DDDDDDDDDDDDDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEE"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_Gain_conv_addsub0000_cy(16),
      WE => Madd_Gain_conv_addsub0000_cy(16),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(3) => Madd_Gain_conv_addsub0000_cy(16),
      DI(2) => Madd_Gain_conv_addsub0000_cy(16),
      DI(1) => Madd_Gain_conv_addsub0000_cy(16),
      DI(0) => Madd_Gain_conv_addsub0000_cy(16),
      DO(3) => DOUT(15),
      DO(2) => DOUT(14),
      DO(1) => DOUT(13),
      DO(0) => DOUT(12)
    );
  Mrom_DOUT_rom00002 : RAMB16_S4
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_26 => X"A50B61C83E94FA50B61C72E94FA50B61D83E94FA61C72D84FA50C72D83FA50B7",
      INIT_00 => X"B61C72D83E94FA50B61C72D83E94FA50B61C72D83E94FA50B61C72D83E94FA50",
      INIT_01 => X"4FA50C72D84FA50B72D83E950B61C72E94FA50B61D83E94FA50B61C83E94FA50",
      INIT_02 => X"D84FB62D940B72D940B72D940B62D94FB61D83FA51C72E940B61D83EA50B72D8",
      INIT_03 => X"FB73FB73EA62EA51D951C840B73FA62E951C84FB72EA51D84FB72E950C83FA61",
      INIT_04 => X"41D962FB740C951EA63FB740C851D952EA62EA73FB73FB73FB840C840C83FB73",
      INIT_05 => X"52FC9630DA741EB852EB852FB852FB852EB841EA740DA63FC952EB740D962FB8",
      INIT_06 => X"EC97520EB9742FDA8530EB9641FCA742FCA742FCA741FC9641EB8530DA741EB8",
      INIT_07 => X"A875320EDB986431FDCA86431FDB976420ECA86420ECA8531FDB97420EC97530",
      INIT_08 => X"55432100FEDCBA9876543210FEDCA987653210EDCB98754310EDCA9764310EDB",
      INIT_09 => X"FFFFFFFFFFFFEEEEEEDDDDCCCBBBAAA9988877665544322110FFEEDCBBA99876",
      INIT_0A => X"7899ABBCDEEFF0112234455667788899AAABBBCCCDDDDEEEEEEFFFFFFFFFFFF0",
      INIT_0B => X"DE0134679ACDE01345789BCDE012356789ACDEF0123456789ABCDEF001234556",
      INIT_0C => X"3579CE02479BDF1358ACE02468ACE024679BDF13468ACDF134689BDE023578AB",
      INIT_0D => X"BE147AD0358BE1469CF147ACF247ACF247ACF1469BE0358ADF2479BE02579CE0",
      INIT_0E => X"BF269D047BE259CF36AD047AE148BE258BF258BF258BE258BE147AD0369CF258",
      INIT_0F => X"7BF38C048C048BF37BF37BF37AE26AE259D158C047BF36AE159C047BF269D148",
      INIT_10 => X"6AF38C059E27BF48D15AE27BF48C159E26AF37B048C159D15AE26AE37BF37BF3",
      INIT_11 => X"D27B05AE38D16B049E27C15AF38D16BF49D26B049D27B049D27B049D26BF48D1",
      INIT_12 => X"5AF49E38C16B05AF49E38D16B05AF49E27C16B059E38D27B05AF48D27C05AF48",
      INIT_13 => X"5AF49E38D27C16B05AF49E38D27C16B05AF49E38D27C16B05AF49E38D27C16B0",
      INIT_14 => X"49E38D27C16B05AF49E38D27C16B05AF49E38D27C16B05AF49E38D27C16B06B0",
      INIT_15 => X"B05AF38D27C05AF48D27C16AF49E38D16B05AF49E27C16B05AF49E38C16B05AF",
      INIT_16 => X"27B049D26BF48D26BF48D26BF49D27B049E27C05AE38D16BF49E27C15AF48D27",
      INIT_17 => X"048C048D159D15AE26AF37BF48C059D16AE37B048D15AE27B048D16AF37C059E",
      INIT_18 => X"BF269D148BF36AE159C048BF37AE26AD159D158C048C048C048CF37BF48C048C",
      INIT_19 => X"AD0369CF258BE147AD147AD047AD047AE147BE158BF259C037AD148BF269D047",
      INIT_1A => X"1368ADF1469BD0257ACF1469BE0368BD0358BD0358BE0369CE147ADF258BE147",
      INIT_1B => X"579ACDF124679BCE023579BCE02468ABDF13579BDF1357ACE02469BDF1468ADF",
      INIT_1C => X"AABCDEFF0123456789ABCDEF012456789BCDEF1234678ABCEF1235689BCEF124",
      INIT_1D => X"0000000000001111122223333444555667788899AABBCDDEEF00122344566789",
      INIT_1E => X"8766544322100FEEDDCBBAA99888776655544433332222111110000000000000",
      INIT_1F => X"21FECB9865321FECBA8764321FEDCB987654210FEDCBA9876543210FFEDCBAA9",
      INIT_20 => X"DA8641FDB96420ECA7531FDB97531FDBA86420ECB975320ECB976421FDCA9754",
      INIT_21 => X"41EB852FDA741EC9630EB8530DB8530DB8630EB9641FCA7520DB9641FDA8631F",
      INIT_22 => X"40D962FB841DA730C952FB851EB741EA740DA740DA741DA741EB852FC9630DA7",
      INIT_23 => X"840C84FB73FC840C840C840C851D951DA62EA73FB840C951EA63FB841D962FB7",
      INIT_24 => X"950C73FA61D840B72EA51D840B73EA61D950C84FB73FA62EA51D951D840C840C",
      INIT_25 => X"2D84FA51C72E94FB61D83EA50C72E940B72D94FB62D84FB62D84FB62D940B72E",
      INIT_27 => X"B60B61C72D83E94FA50B61C72D83E94FA50B61C72D83E94FA50B61C72D83E94F"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_Gain_conv_addsub0000_cy(16),
      WE => Madd_Gain_conv_addsub0000_cy(16),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(3) => Madd_Gain_conv_addsub0000_cy(16),
      DI(2) => Madd_Gain_conv_addsub0000_cy(16),
      DI(1) => Madd_Gain_conv_addsub0000_cy(16),
      DI(0) => Madd_Gain_conv_addsub0000_cy(16),
      DO(3) => DOUT(7),
      DO(2) => DOUT(6),
      DO(1) => DOUT(5),
      DO(0) => DOUT(4)
    );
  Mrom_DOUT_rom00003 : RAMB16_S4
    generic map(
      WRITE_MODE => "WRITE_FIRST",
      INIT_26 => X"BBBAAA99988877776665554443333222111000FFFFEEEDDDCCCCBBBAAA999988",
      INIT_00 => X"333222111000FFFFEEEDDDCCCBBBAAAA99988877766655554443332221110000",
      INIT_01 => X"7666655544433332221110000FFFEEEDDDCCCCBBBAAA99988887776665554444",
      INIT_02 => X"99988887777666555544433332221110000FFFEEEEDDDCCCCBBBAAA999988877",
      INIT_03 => X"AAAA99998888777766665555444333322221110000FFFFEEEDDDDCCCCBBBAAAA",
      INIT_04 => X"AA999988888777766665555544443333222211110000FFFFEEEEEDDDDCCCBBBB",
      INIT_05 => X"77666666555554444433333222221111100000FFFFFEEEEDDDDDCCCCCBBBBAAA",
      INIT_06 => X"1111111000000FFFFFFFEEEEEEDDDDDDCCCCCCBBBBBBAAAAAA99999988888777",
      INIT_07 => X"9999999888888888777777777666666666555555554444444333333332222222",
      INIT_08 => X"EEEEEEEEDDDDDDDDDDDDDDDDCCCCCCCCCCCCCCBBBBBBBBBBBBAAAAAAAAAAA999",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEEE",
      INIT_0A => X"EEEEEEEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0",
      INIT_0B => X"99AAAAAAAAAAABBBBBBBBBBBBCCCCCCCCCCCCCCDDDDDDDDDDDDDDDDEEEEEEEEE",
      INIT_0C => X"2222223333333344444445555555566666666677777777788888888899999999",
      INIT_0D => X"7788888999999AAAAAABBBBBBCCCCCCDDDDDDEEEEEEFFFFFFF00000011111112",
      INIT_0E => X"AABBBBCCCCCDDDDDEEEEFFFFF000001111122222333334444455555666666777",
      INIT_0F => X"BBBCCCDDDDEEEEEFFFF000011112222333344445555566667777888889999AAA",
      INIT_10 => X"AAABBBCCCCDDDDEEEFFFF00001112222333344455556666777788889999AAAAB",
      INIT_11 => X"78889999AAABBBCCCCDDDEEEEFFF00001112223333444555566677778888999A",
      INIT_12 => X"4445556667778888999AAABBBCCCCDDDEEEFFF00001112223333444555666677",
      INIT_13 => X"0001112223334445555666777888999AAAABBBCCCDDDEEEFFFF0001112223334",
      INIT_14 => X"CCCDDDEEEFFF00001112223334445555666777888999AAAABBBCCCDDDEEEFFF0",
      INIT_15 => X"89999AAABBBCCCCDDDEEEFFFF00011122233334445556667777888999AAABBBB",
      INIT_16 => X"66677778888999AAAABBBCCCCDDDEEEFFFF00011112223333444555666677788",
      INIT_17 => X"55556666777788889999AAAABBBCCCCDDDDEEEFFFF0000111222233334445555",
      INIT_18 => X"5566667777788889999AAAAABBBBCCCCDDDDEEEEFFFF00001111122223334444",
      INIT_19 => X"88999999AAAAABBBBBCCCCCDDDDDEEEEEFFFFF00000111122222333334444555",
      INIT_1A => X"EEEEEEEFFFFFF000000011111122222233333344444455555566666677777888",
      INIT_1B => X"6666666777777777888888888999999999AAAAAAAABBBBBBBCCCCCCCCDDDDDDD",
      INIT_1C => X"1111111122222222222222223333333333333344444444444455555555555666",
      INIT_1D => X"0000000000000000000000000000000000000000000000000011111111111111",
      INIT_1E => X"1111111111111000000000000000000000000000000000000000000000000000",
      INIT_1F => X"6655555555555444444444444333333333333332222222222222222111111111",
      INIT_20 => X"DDDDDDCCCCCCCCBBBBBBBAAAAAAAA99999999988888888877777777766666666",
      INIT_21 => X"88777776666665555554444443333332222221111110000000FFFFFFEEEEEEED",
      INIT_22 => X"5544443333322222111100000FFFFFEEEEEDDDDDCCCCCBBBBBAAAAA999999888",
      INIT_23 => X"4443332222111110000FFFFEEEEDDDDCCCCBBBBAAAAA99998888777776666555",
      INIT_24 => X"555444333322221110000FFFFEEEDDDDCCCCBBBAAAA999988887777666655554",
      INIT_25 => X"8777666655544433332221111000FFFFEEEDDDCCCCBBBAAAA999888877776665",
      INIT_27 => X"FFFEEEDDDCCCBBBAAAA99988877766655554443332221110000FFFEEEDDDCCCB"
    )
    port map (
      CLK => CLK,
      EN => EN,
      SSR => Madd_Gain_conv_addsub0000_cy(16),
      WE => Madd_Gain_conv_addsub0000_cy(16),
      ADDR(11) => rd_ptr(11),
      ADDR(10) => rd_ptr(10),
      ADDR(9) => rd_ptr(9),
      ADDR(8) => rd_ptr(8),
      ADDR(7) => rd_ptr(7),
      ADDR(6) => rd_ptr(6),
      ADDR(5) => rd_ptr(5),
      ADDR(4) => rd_ptr(4),
      ADDR(3) => rd_ptr(3),
      ADDR(2) => rd_ptr(2),
      ADDR(1) => rd_ptr(1),
      ADDR(0) => rd_ptr(0),
      DI(3) => Madd_Gain_conv_addsub0000_cy(16),
      DI(2) => Madd_Gain_conv_addsub0000_cy(16),
      DI(1) => Madd_Gain_conv_addsub0000_cy(16),
      DI(0) => Madd_Gain_conv_addsub0000_cy(16),
      DO(3) => DOUT(11),
      DO(2) => DOUT(10),
      DO(1) => DOUT(9),
      DO(0) => DOUT(8)
    );
  play_t_or000011 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => play_t_cmp_ge0000,
      I1 => EN,
      I2 => FIX,
      I3 => N120,
      O => play_t_or00001
    );
  play_t_or00001_f5 : MUXF5
    port map (
      I0 => play_t_or00001,
      I1 => N1,
      S => RST,
      O => play_t_or0000
    );
  Mcount_Gain_xor_3_111 : LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      I0 => Mcount_Gain_lut(3),
      I1 => Gain(2),
      I2 => MODE,
      I3 => Mcount_Gain_cy_1_Q,
      O => Mcount_Gain_xor_3_11
    );
  Mcount_Gain_xor_3_112 : LUT3
    generic map(
      INIT => X"56"
    )
    port map (
      I0 => Mcount_Gain_lut(3),
      I1 => Gain(2),
      I2 => Mcount_Gain_cy_1_Q,
      O => Mcount_Gain_xor_3_111_461
    );
  Mcount_Gain_xor_3_11_f5 : MUXF5
    port map (
      I0 => Mcount_Gain_xor_3_111_461,
      I1 => Mcount_Gain_xor_3_11,
      S => Up_tick,
      O => Result_3_1
    );
  hex_in_2_1 : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => Gain(0),
      I1 => MODE,
      I2 => rd_ptr_u(2),
      I3 => Gain(2),
      O => hex_in_2_1_882
    );
  hex_in_2_2 : LUT4
    generic map(
      INIT => X"88B8"
    )
    port map (
      I0 => rd_ptr_u(2),
      I1 => MODE,
      I2 => Gain(0),
      I3 => Gain(2),
      O => hex_in_2_2_883
    );
  hex_in_2_f5 : MUXF5
    port map (
      I0 => hex_in_2_2_883,
      I1 => hex_in_2_1_882,
      S => tmp_addsub0001_2_Q,
      O => hex_in(2)
    );
  FOUT_15_11 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut(2),
      I1 => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_cy(1),
      I2 => hex2bcd_i_bcd_18_mux0003,
      O => FOUT_15_1
    );
  FOUT_15_1_f5 : MUXF5
    port map (
      I0 => FOUT_15_1,
      I1 => BCD_out_15_Q,
      S => MODE,
      O => FOUT(15)
    );
  FOUT_14_11 : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => hex2bcd_i_bcd_17_cmp_gt0003,
      I1 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I2 => hex2bcd_i_N83,
      I3 => hex2bcd_i_N221,
      O => FOUT_14_1
    );
  FOUT_14_1_f5 : MUXF5
    port map (
      I0 => FOUT_14_1,
      I1 => BCD_out_14_Q,
      S => MODE,
      O => FOUT(14)
    );
  FOUT_6_11 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0012_cy(0),
      I1 => hex2bcd_i_N521,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      I3 => hex2bcd_i_N94,
      O => FOUT_6_1
    );
  FOUT_6_1_f5 : MUXF5
    port map (
      I0 => BCD_out_10_Q,
      I1 => FOUT_6_1,
      S => MODE,
      O => FOUT(6)
    );
  FOUT_5_11 : LUT4
    generic map(
      INIT => X"6966"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I1 => hex2bcd_i_N78,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I3 => hex2bcd_i_N96,
      O => FOUT_5_1
    );
  FOUT_5_1_f5 : MUXF5
    port map (
      I0 => BCD_out_9_Q,
      I1 => FOUT_5_1,
      S => MODE,
      O => FOUT(5)
    );
  hex_in_15_11 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => MODE,
      I1 => Gain(4),
      I2 => Gain(3),
      I3 => Gain_conv_addsub0000(15),
      O => hex_in_15_1
    );
  hex_in_15_12 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Gain(4),
      I1 => MODE,
      I2 => Gain_conv_addsub0000(15),
      O => hex_in_15_11_878
    );
  hex_in_15_1_f5 : MUXF5
    port map (
      I0 => hex_in_15_11_878,
      I1 => hex_in_15_1,
      S => tmp_addsub0002(15),
      O => hex_in(15)
    );
  hex_in_3_SW21 : LUT4
    generic map(
      INIT => X"FEBA"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => tmp_addsub0001_3_Q,
      O => hex_in_3_SW2
    );
  hex_in_3_SW22 : LUT4
    generic map(
      INIT => X"5410"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(2),
      I2 => Gain(1),
      I3 => tmp_addsub0001_3_Q,
      O => hex_in_3_SW21_886
    );
  hex_in_3_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_3_SW21_886,
      I1 => hex_in_3_SW2,
      S => tmp_addsub0002(3),
      O => N122
    );
  hex_in_4_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(4),
      I2 => Gain_conv_addsub0000(4),
      I3 => Gain(3),
      O => hex_in_4_SW2
    );
  hex_in_4_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(4),
      I2 => Gain(3),
      I3 => tmp_addsub0002(4),
      O => hex_in_4_SW21_889
    );
  hex_in_4_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_4_SW21_889,
      I1 => hex_in_4_SW2,
      S => tmp_mux0002_4_Q,
      O => N124
    );
  hex_in_5_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(5),
      I2 => Gain_conv_addsub0000(5),
      I3 => Gain(3),
      O => hex_in_5_SW2
    );
  hex_in_5_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(5),
      I2 => Gain(3),
      I3 => tmp_addsub0002(5),
      O => hex_in_5_SW21_892
    );
  hex_in_5_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_5_SW21_892,
      I1 => hex_in_5_SW2,
      S => tmp_mux0002_5_Q,
      O => N126
    );
  hex_in_6_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(6),
      I2 => Gain_conv_addsub0000(6),
      I3 => Gain(3),
      O => hex_in_6_SW2
    );
  hex_in_6_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(6),
      I2 => Gain(3),
      I3 => tmp_addsub0002(6),
      O => hex_in_6_SW21_895
    );
  hex_in_6_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_6_SW21_895,
      I1 => hex_in_6_SW2,
      S => tmp_mux0002_6_Q,
      O => N128
    );
  hex_in_7_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(7),
      I2 => Gain_conv_addsub0000(7),
      I3 => Gain(3),
      O => hex_in_7_SW2
    );
  hex_in_7_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(7),
      I2 => Gain(3),
      I3 => tmp_addsub0002(7),
      O => hex_in_7_SW21_898
    );
  hex_in_7_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_7_SW21_898,
      I1 => hex_in_7_SW2,
      S => tmp_mux0002_7_Q,
      O => N130
    );
  hex_in_8_SW21 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(3),
      I1 => tmp_addsub0002(8),
      I2 => Gain(2),
      I3 => tmp_addsub0001_8_Q,
      O => hex_in_8_SW2
    );
  hex_in_8_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_8_SW2,
      I1 => Gain_conv_addsub0000(8),
      S => Gain(4),
      O => N132
    );
  hex_in_9_1 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(9),
      I2 => Gain(3),
      I3 => tmp_addsub0002(9),
      O => hex_in_9_1_902
    );
  hex_in_9_f5 : MUXF5
    port map (
      I0 => hex_in_9_1_902,
      I1 => rd_ptr_u(9),
      S => MODE,
      O => hex_in(9)
    );
  hex_in_10_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(10),
      I2 => Gain_conv_addsub0000(10),
      I3 => Gain(3),
      O => hex_in_10_SW2
    );
  hex_in_10_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(10),
      I2 => Gain(3),
      I3 => tmp_addsub0002(10),
      O => hex_in_10_SW21_865
    );
  hex_in_10_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_10_SW21_865,
      I1 => hex_in_10_SW2,
      S => tmp_mux0002_10_Q,
      O => N136
    );
  hex_in_11_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(11),
      I2 => Gain_conv_addsub0000(11),
      I3 => Gain(3),
      O => hex_in_11_SW2
    );
  hex_in_11_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(11),
      I2 => Gain(3),
      I3 => tmp_addsub0002(11),
      O => hex_in_11_SW21_868
    );
  hex_in_11_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_11_SW21_868,
      I1 => hex_in_11_SW2,
      S => tmp_mux0002_11_Q,
      O => N138
    );
  hex_in_12_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(12),
      I2 => Gain_conv_addsub0000(12),
      I3 => Gain(3),
      O => hex_in_12_SW2
    );
  hex_in_12_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(12),
      I2 => Gain(3),
      I3 => tmp_addsub0002(12),
      O => hex_in_12_SW21_871
    );
  hex_in_12_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_12_SW21_871,
      I1 => hex_in_12_SW2,
      S => tmp_mux0002_12_Q,
      O => N140
    );
  hex_in_13_SW21 : LUT4
    generic map(
      INIT => X"E4F5"
    )
    port map (
      I0 => Gain(4),
      I1 => tmp_addsub0002(13),
      I2 => Gain_conv_addsub0000(13),
      I3 => Gain(3),
      O => hex_in_13_SW2
    );
  hex_in_13_SW22 : LUT4
    generic map(
      INIT => X"D888"
    )
    port map (
      I0 => Gain(4),
      I1 => Gain_conv_addsub0000(13),
      I2 => Gain(3),
      I3 => tmp_addsub0002(13),
      O => hex_in_13_SW21_874
    );
  hex_in_13_SW2_f5 : MUXF5
    port map (
      I0 => hex_in_13_SW21_874,
      I1 => hex_in_13_SW2,
      S => tmp_mux0002_13_Q,
      O => N142
    );
  hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_11 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(2),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I2 => hex2bcd_i_N78,
      I3 => rd_ptr_u(1),
      O => hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_1
    );
  hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_12 : LUT4
    generic map(
      INIT => X"FF65"
    )
    port map (
      I0 => hex_in(2),
      I1 => hex2bcd_i_Madd_bcd_3_0_add0015_lut(3),
      I2 => hex2bcd_i_N78,
      I3 => Gain(1),
      O => hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_11_735
    );
  hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_1_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_11_735,
      I1 => hex2bcd_i_Madd_bcd_3_0_add0016_cy_1_1,
      S => MODE,
      O => hex2bcd_i_Madd_bcd_3_0_add0016_cy(1)
    );
  FOUT_4_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_3_0_add0016_lut(3),
      I1 => hex2bcd_i_N79,
      O => FOUT_4_1
    );
  FOUT_4_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0013_lut(3),
      I1 => hex2bcd_i_N96,
      O => FOUT_4_11_245
    );
  FOUT_4_1_f5 : MUXF5
    port map (
      I0 => FOUT_4_11_245,
      I1 => FOUT_4_1,
      S => MODE,
      O => FOUT(4)
    );
  hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_11 : LUT4
    generic map(
      INIT => X"FF69"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I1 => hex2bcd_i_N92,
      I2 => hex2bcd_i_bcd_11_cmp_gt0009,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_1
    );
  hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_12 : LUT4
    generic map(
      INIT => X"69FF"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0011_lut(3),
      I1 => hex2bcd_i_N92,
      I2 => hex2bcd_i_bcd_11_cmp_gt0009,
      I3 => hex2bcd_i_Madd_bcd_7_4_add0012_lut(3),
      O => hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_11_688
    );
  hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_1_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_11_688,
      I1 => hex2bcd_i_Madd_bcd_11_8_add0010_cy_1_1,
      S => hex2bcd_i_N94,
      O => hex2bcd_i_Madd_bcd_11_8_add0010_cy(1)
    );
  hex2bcd_i_bcd_6_mux00041_SW01 : LUT4
    generic map(
      INIT => X"111E"
    )
    port map (
      I0 => hex_in(15),
      I1 => hex_in(14),
      I2 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0),
      I3 => hex2bcd_i_N87,
      O => hex2bcd_i_bcd_6_mux00041_SW0
    );
  hex2bcd_i_bcd_6_mux00041_SW02 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => hex2bcd_i_N87,
      I1 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(0),
      O => hex2bcd_i_bcd_6_mux00041_SW01_860
    );
  hex2bcd_i_bcd_6_mux00041_SW0_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_bcd_6_mux00041_SW01_860,
      I1 => hex2bcd_i_bcd_6_mux00041_SW0,
      S => hex_in(16),
      O => N164
    );
  hex2bcd_i_bcd_9_mux000311 : LUT4
    generic map(
      INIT => X"0F38"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      I1 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(1),
      I2 => hex2bcd_i_N88,
      I3 => hex2bcd_i_N66,
      O => hex2bcd_i_bcd_9_mux00031
    );
  hex2bcd_i_bcd_9_mux000312 : LUT4
    generic map(
      INIT => X"2636"
    )
    port map (
      I0 => hex2bcd_i_N66,
      I1 => hex2bcd_i_N88,
      I2 => hex2bcd_i_Madd_bcd_7_4_add0003_cy(1),
      I3 => hex2bcd_i_Madd_bcd_7_4_add0005_lut(3),
      O => hex2bcd_i_bcd_9_mux000311_862
    );
  hex2bcd_i_bcd_9_mux00031_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_bcd_9_mux000311_862,
      I1 => hex2bcd_i_bcd_9_mux00031,
      S => hex2bcd_i_N90,
      O => hex2bcd_i_Madd_bcd_11_8_add0004_lut(2)
    );
  hex2bcd_i_bcd_17_mux000311 : LUT4
    generic map(
      INIT => X"6433"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I1 => hex2bcd_i_N82,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      O => hex2bcd_i_bcd_17_mux00031
    );
  hex2bcd_i_bcd_17_mux000312 : LUT4
    generic map(
      INIT => X"4633"
    )
    port map (
      I0 => hex2bcd_i_Madd_bcd_15_12_add0003_cy(1),
      I1 => hex2bcd_i_N82,
      I2 => hex2bcd_i_Madd_bcd_15_12_add0005_lut(3),
      I3 => hex2bcd_i_Madd_bcd_15_12_add0001_cy(0),
      O => hex2bcd_i_bcd_17_mux000311_839
    );
  hex2bcd_i_bcd_17_mux00031_f5 : MUXF5
    port map (
      I0 => hex2bcd_i_bcd_17_mux000311_839,
      I1 => hex2bcd_i_bcd_17_mux00031,
      S => hex2bcd_i_N83,
      O => hex2bcd_i_Madd_bcd_19_16_add0004_Madd_lut(2)
    );
  Gain_not000136 : LUT3_L
    generic map(
      INIT => X"72"
    )
    port map (
      I0 => Gain(3),
      I1 => Gain(2),
      I2 => Gain(4),
      LO => Gain_not000136_273
    );
  Inc_not000221 : LUT2_L
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rd_ptr(7),
      I1 => rd_ptr(8),
      LO => Inc_not000221_303
    );
  Inc_cmp_eq000011 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inc(6),
      I1 => Inc(7),
      I2 => Inc(8),
      LO => N206,
      O => N10
    );
  Inc_not000238 : LUT4_L
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => Inc(3),
      I1 => Inc(4),
      I2 => Inc(5),
      I3 => Inc(6),
      LO => Inc_not000238_304
    );
  Gain_not000193 : LUT4_L
    generic map(
      INIT => X"AA2A"
    )
    port map (
      I0 => Up_tick,
      I1 => Gain(4),
      I2 => Gain(3),
      I3 => Gain_not000179_275,
      LO => Gain_not000193_276
    );
  Inc_not000264 : LUT4_L
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => Inc(1),
      I1 => Down_tick_req_220,
      I2 => Up_tick_req_644,
      I3 => N146,
      LO => Inc_not000264_306
    );
  Mcount_Gain_cy_1_1 : LUT4_D
    generic map(
      INIT => X"EF8A"
    )
    port map (
      I0 => Gain(0),
      I1 => MODE,
      I2 => Up_tick,
      I3 => Gain(1),
      LO => N207,
      O => Mcount_Gain_cy_1_Q
    );
  Mcount_Gain_cy_3_1 : LUT4_L
    generic map(
      INIT => X"EF8A"
    )
    port map (
      I0 => Gain(3),
      I1 => MODE,
      I2 => Up_tick,
      I3 => N148,
      LO => Mcount_Gain_cy_3_Q
    );

end Structure_25600;

