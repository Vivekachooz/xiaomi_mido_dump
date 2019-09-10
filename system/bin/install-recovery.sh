#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29265230:89000ed5a8190e6fda80ed7843563306dc7ee93c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26273098:14ce9545780a643e6fe224603538ccf6f8092266 EMMC:/dev/block/bootdevice/by-name/recovery 89000ed5a8190e6fda80ed7843563306dc7ee93c 29265230 14ce9545780a643e6fe224603538ccf6f8092266:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
