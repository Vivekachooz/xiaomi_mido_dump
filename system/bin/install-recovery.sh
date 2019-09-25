#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29265230:981f2d21ae2017924de3823d1468144b49c1ed4b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26273098:461138b4d8ddf20b6e4ff566902d37e93152b446 EMMC:/dev/block/bootdevice/by-name/recovery 981f2d21ae2017924de3823d1468144b49c1ed4b 29265230 461138b4d8ddf20b6e4ff566902d37e93152b446:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
