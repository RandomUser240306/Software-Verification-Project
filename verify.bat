@echo off
cd llvm
C:/ti/ccs2040/ccs/tools/compiler/ti-cgt-armllvm_4.0.4.LTS/bin/tiarmclang.exe -S -emit-llvm -mcpu=cortex-m0plus -mfloat-abi=soft -mlittle-endian -mthumb -O0  -I"C:/ti/mspm0_sdk_2_09_00_01/source/third_party/CMSIS/Core/Include" -I"C:/ti/mspm0_sdk_2_09_00_01/source" -D__MSPM0G3507__ -std=c99 -w --no-warnings "C:/Users/krish/Desktop/ECE 382C/Software-Verification-Project/code/*.c"
cd ..
java src.FindRace