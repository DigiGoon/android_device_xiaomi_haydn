echo 'Starting to clone stuffs needed to build for Haydn'

echo 'Cleaning up folders'
rm -rf device/xiaomi/sm8350-common
rm -rf kernel/xiaomi/sm8350
rm -rf vendor/xiaomi/haydn
rm -rf vendor/xiaomi/sm8350-common

# Device common
echo 'Cloning common device tree'
git clone https://github.com/DigiGoon/android_device_xiaomi_sm8350-common -b derp-13 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 https://github.com/Astridxx/android_kernel_xiaomi_sm8350 -b Octavi-13 kernel/xiaomi/sm8350
cd kernel/xiaomi/sm8350
git submodule init && git submodule update KernelSU
cd ../../..

# Vendor
echo 'Cloning vendor tree'
git clone https://gitlab.com/DigiGoon/proprietary_vendor_xiaomi_haydn -b derp-13 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning common vendor tree'
git clone https://gitlab.com/DigiGoon/proprietary_vendor_xiaomi_sm8350-common -b derp-13 vendor/xiaomi/sm8350-common

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Display
echo 'Cloning display hal'
rm -rf hardware/qcom-caf/sm8350/display && git clone https://github.com/LineageOS/android_hardware_qcom_display -b lineage-20.0-caf-sm8350 hardware/qcom-caf/sm8350/display

# Firmware
echo 'Cloning firmware'
git clone https://gitlab.com/Alucard_Storm/vendor_xiaomi_haydn-firmware -b thirteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica Camera'
git clone https://gitlab.com/Alucard_Storm/haydn-miuicamera -b thirteen-leica vendor/xiaomi/haydn-miuicamera

echo 'Adding slow-mo fix for Leica Camera'
cd hardware/interfaces
wget https://github.com/Astridxx/android_hardware_interfaces/commit/ca6551863fb82110688452981572d44a26806681.patch
patch -p1 <ca6551863fb82110688452981572d44a26806681.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
