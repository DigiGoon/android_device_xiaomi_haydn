echo 'Adding lowest possible refresh rate in doze mode'
cd frameworks/native
wget https://raw.githubusercontent.com/Astridxx/Patch-Haydn/main/Spark/0001-Use-lowest-possible-refresh-rate-in-doze-mode.patch
patch -p1 <0001-Use-lowest-possible-refresh-rate-in-doze-mode.patch
cd ../..

echo 'Adding Slowmo fix for Leica camera'
cd hardware/interfaces
wget https://raw.githubusercontent.com/Astridxx/Patch-Haydn/main/Spark/0002-Update-HIDL-overrideFormat-from-HAL.patch
patch -p1 <0002-Update-HIDL-overrideFormat-from-HAL.patch
cd ../..

rm device/xiaomi/haydn/vendorsetup.sh