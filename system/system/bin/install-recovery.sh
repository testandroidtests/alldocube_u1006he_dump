#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery:67108864:d69e98f498889c7853bd75c215f502091c6a0dc4; then
  applypatch  EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/boot:16777216:1a802b72ea31bd8b5e6d2021a13fcfc3b829d1f1 EMMC:/dev/block/platform/mtk-msdc.0/11230000.MSDC0/by-name/recovery d69e98f498889c7853bd75c215f502091c6a0dc4 67108864 1a802b72ea31bd8b5e6d2021a13fcfc3b829d1f1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
