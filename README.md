# Fudy MT3000
Huasifei WH3000 / Fudy MT3000 OpenWRT firmwares
I build for myself and just for fun

```
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 OpenWrt 24.10.0, r28427-6df0e3d02a
 OpenWrt 23.05.5, r24106-10cc5fcd00
 -----------------------------------------------------
```

Vanilla versions, no packages added. All kmods (kernel modules) can be installed via the official repo.
After booting, there is an open `Openwrt` Wi-Fi network. The `root` has no password.

## ! DO NOT update the `base-files` package!
There is a bug with the Read-Only filesystem after that, which can be fixed via uboot sysupgrade flashing only. If you know how to solve it, let me know.

[OpenWRT 23.05.5](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/openwrt-23.05.5-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

[OpenWRT 24.10.0](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/openwrt-24.10.0-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)
