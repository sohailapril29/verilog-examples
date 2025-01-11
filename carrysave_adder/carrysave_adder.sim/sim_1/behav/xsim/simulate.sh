#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2024.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Jan 11 19:24:06 IST 2025
# SW Build 5239630 on Fri Nov 08 22:34:34 MST 2024
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_csa_behav -key {Behavioral:sim_1:Functional:tb_csa} -tclbatch tb_csa.tcl -log simulate.log"
xsim tb_csa_behav -key {Behavioral:sim_1:Functional:tb_csa} -tclbatch tb_csa.tcl -log simulate.log

