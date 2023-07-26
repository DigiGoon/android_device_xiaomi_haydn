echo 'Adding slow-mo fix for Leica Camera'
cd hardware/interfaces
wget https://raw.githubusercontent.com/Astridxx/Patch-haydn/Octavi-13/0003-Update-HIDL-overrideFormat-from-HAL.patch
patch -p1 <0003-Update-HIDL-overrideFormat-from-HAL.patch
cd ../..
echo 'Deleting vendorsetup.sh from device tree'
rm device/xiaomi/haydn/vendorsetup.sh