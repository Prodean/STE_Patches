echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_av"$CL_RST
cd frameworks/av
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_av refs/changes/32/52032/3
git cherry-pick FETCH_HEAD
cd ..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_frameworks_native"$CL_RST
cd native
git fetch http://review.cyanogenmod.org/CyanogenMod/android_frameworks_native refs/changes/33/52033/5
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking OMX Patch - android_system_core"$CL_RST
cd system/core
git fetch http://review.cyanogenmod.org/CyanogenMod/android_system_core refs/changes/34/52034/2
git cherry-pick FETCH_HEAD
cd ../..
echo -e $CL_BLU"Cherrypicking vibrator fix"$CL_RST
cd hardware/libhardware_legacy
git fetch https://github.com/TeamCanjica/android_hardware_libhardware_legacy cm-10.2
git cherry-pick 60207c7e08182e122030547cc3e22d8b27ec623b
cd ../..
echo -e $CL_BLU"Fix for low incall volume bug"$CL_RST
cp STE_Patches/Phone.patch packages/apps/Phone/Phone.patch
cd packages/apps/Phone
git apply Phone.patch
rm Phone.patch
cd ../..


