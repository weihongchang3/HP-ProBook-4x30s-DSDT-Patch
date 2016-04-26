#!/bin/bash
printf "!! creating config/config_4x30s.plist\n"
cp config_parts/config_master.plist config/config_4x30s.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:KernelPm false" config/config_4x30s.plist
/usr/libexec/plistbuddy -c "Set SMBIOS:ProductName MacBookPro8,2" config/config_4x30s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD3000.plist config/config_4x30s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT76d1.plist config/config_4x30s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_non_Intel_USB3.plist config/config_4x30s.plist
printf "\n"
printf "!! creating config/config_4x40s.plist\n"
cp config_parts/config_master.plist config/config_4x40s.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro9,2" config/config_4x40s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD3000.plist config/config_4x40s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD4000.plist config/config_4x40s.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT76d9.plist config/config_4x40s.plist
printf "\n"
printf "!! creating config/config_4x0s_G0.plist\n"
cp config_parts/config_master.plist config/config_4x0s_G0.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro9,2" config/config_4x0s_G0.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD4000.plist config/config_4x0s_G0.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT76e0.plist config/config_4x0s_G0.plist
printf "\n"
printf "!! creating config/config_4x0s_G1_Ivy.plist\n"
cp config/config_4x0s_G0.plist config/config_4x0s_G1_Ivy.plist
printf "\n"
printf "!! creating config/config_ZBook_G0.plist\n"
cp config/config_4x0s_G0.plist config/config_ZBook_G0.plist
printf "\n"
printf "!! creating config/config_8x0s_G1_Ivy.plist\n"
cp config/config_4x0s_G0.plist config/config_8x0s_G1_Ivy.plist
printf "\n"
printf "!! creating config/config_9x70m.plist\n"
cp config/config_4x0s_G0.plist config/config_9x70m.plist
printf "\n"
printf "!! creating config/config_6x60p.plist\n"
cp config_parts/config_master.plist config/config_6x60p.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:KernelPm false" config/config_6x60p.plist
/usr/libexec/plistbuddy -c "Set SMBIOS:ProductName MacBookPro8,2" config/config_6x60p.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD3000.plist config/config_6x60p.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT7605.plist config/config_6x60p.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_non_Intel_USB3.plist config/config_6x60p.plist
printf "\n"
printf "!! creating config/config_8x60p.plist\n"
cp config/config_6x60p.plist config/config_8x60p.plist
printf "\n"
printf "!! creating config/config_6x70p.plist\n"
cp config_parts/config_master.plist config/config_6x70p.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro9,2" config/config_6x70p.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD4000.plist config/config_6x70p.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT7605.plist config/config_6x70p.plist
printf "\n"
printf "!! creating config/config_8x70p.plist\n"
cp config/config_6x70p.plist config/config_8x70p.plist
printf "\n"
printf "!! creating config/config_2x70p.plist\n"
cp config/config_6x70p.plist config/config_2x70p.plist
printf "\n"
printf "!! creating config/config_3x0_G1.plist\n"
cp config_parts/config_master.plist config/config_3x0_G1.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro9,2" config/config_3x0_G1.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_HD4000.plist config/config_3x0_G1.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT7695.plist config/config_3x0_G1.plist
printf "\n"
printf "!! creating config/config_8x0s_G1_Haswell.plist\n"
cp config_parts/config_master.plist config/config_8x0s_G1_Haswell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_8x0s_G1_Haswell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookAir6,2" config/config_8x0s_G1_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Haswell.plist config/config_8x0s_G1_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT76e0.plist config/config_8x0s_G1_Haswell.plist
printf "\n"
printf "!! creating config/config_4x0s_G1_Haswell.plist\n"
cp config/config_8x0s_G1_Haswell.plist config/config_4x0s_G1_Haswell.plist
printf "\n"
printf "!! creating config/config_4x0s_G2_Haswell.plist\n"
cp config_parts/config_master.plist config/config_4x0s_G2_Haswell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_4x0s_G2_Haswell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookAir6,2" config/config_4x0s_G2_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Haswell.plist config/config_4x0s_G2_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_ALC282.plist config/config_4x0s_G2_Haswell.plist
printf "\n"
printf "!! creating config/config_8x0s_G2_Haswell.plist\n"
cp config/config_4x0s_G2_Haswell.plist config/config_8x0s_G2_Haswell.plist
printf "\n"
printf "!! creating config/config_4x0s_G2_Broadwell.plist\n"
cp config_parts/config_master.plist config/config_4x0s_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_4x0s_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookAir7,2" config/config_4x0s_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Broadwell.plist config/config_4x0s_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_ALC282.plist config/config_4x0s_G2_Broadwell.plist
printf "\n"
printf "!! creating config/config_8x0s_G2_Broadwell.plist\n"
cp config_parts/config_master.plist config/config_8x0s_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_8x0s_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookAir7,2" config/config_8x0s_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Broadwell.plist config/config_8x0s_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_ALC280.plist config/config_8x0s_G2_Broadwell.plist
printf "\n"
printf "!! creating config/config_ZBook_G2_Haswell.plist\n"
cp config_parts/config_master.plist config/config_ZBook_G2_Haswell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_ZBook_G2_Haswell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro11,1" config/config_ZBook_G2_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Haswell.plist config/config_ZBook_G2_Haswell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_IDT76e0.plist config/config_ZBook_G2_Haswell.plist
printf "\n"
printf "!! creating config/config_ZBook_G2_Broadwell.plist\n"
cp config_parts/config_master.plist config/config_ZBook_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_ZBook_G2_Broadwell.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro11,1" config/config_ZBook_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Broadwell.plist config/config_ZBook_G2_Broadwell.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_ALC280.plist config/config_ZBook_G2_Broadwell.plist
printf "\n"
printf "!! creating config/config_4x0s_G3_Skylake.plist\n"
cp config_parts/config_master.plist config/config_4x0s_G3_Skylake.plist
/usr/libexec/plistbuddy -c "Set KernelAndKextPatches:AsusAICPUPM false" config/config_4x0s_G3_Skylake.plist
/usr/libexec/plistbuddy -c "Set :SMBIOS:ProductName MacBookPro11,1" config/config_4x0s_G3_Skylake.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_Skylake.plist config/config_4x0s_G3_Skylake.plist
./merge_plist.sh "KernelAndKextPatches:KextsToPatch" config_parts/config_CX20724.plist config/config_4x0s_G3_Skylake.plist
printf "\n"
printf "!! creating config/config_1040_G1_Haswell.plist\n"
cp config/config_8x0s_G1_Haswell.plist config/config_1040_G1_Haswell.plist
printf "\n"