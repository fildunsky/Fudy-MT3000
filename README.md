This repo started as an OpenWrt firmware storage for one device but now has this firmwares:
- CMCC RAX3000Me Nand USB (ImmortalWrt U-boot)
- Cudy TR3000 v1 (OpenWrt U-Boot layout)
- Cudy TR3000 256mb v1
- Huasifei WH3000
- Huasifei WH3000 Pro

# Huasifei WH3000 v1
Huasifei WH3000 eMMC / Fudy MT3000 OpenWRT firmwares
Built for myself, just for fun.

You can `sysupgrade -F` them to `v2`. Everything works fine (reported by one `v2` user), but there will be no fan controls. If you have `v2` and want fan control, just `sysupgrade -F` OpenWrt for `WH3000 Pro` version, it is compatible, don't worry, also install `luci-app-fancontrol`.

```
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
```

Vanilla versions, no packages added. All kmods (kernel modules) can be installed via the official repo.
After booting, there is an open `Openwrt` Wi-Fi network. The `root` has no password. IP: `192.168.1.1`

[OpenWRT 23.05.5](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2023.05.5/openwrt-23.05.5-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

[OpenWRT 24.10.0](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.0/openwrt-24.10.0-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

`*******************************************************************************`

## QWRT Factory stock firmwares
I've got these files from Huasifei support. Uploading here for collection.

```
            _______       ___       _________________
            __  __ \      __ |     / /__  __ \__  __/
            _  / / /________ | /| / /__  /_/ /_  /
            / /_/ /_/_____/_ |/ |/ / _  _, _/_  /
            \___\_\       ____/|__/  /_/ |_| /_/
 
```
After booting, there are open `QWRT-2.4G` & `QWRT-5G` Wi-Fi networks. The `root` password is `password`. IP: `192.168.1.1`

[QWRT-R24.12.30](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/QWRT%20Factory%20Stock/QWRT-R24.12.30-mediatek-mt7981-mt7981-huasifei-wh3000-emmc-squashfs-sysupgrade.bin)

[QWRT-R25.01.18](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/QWRT%20Factory%20Stock/QWRT-R25.01.18-mediatek-mt7981-mt7981-huasifei-wh3000-emmc-squashfs-sysupgrade.bin)

[QWRT-R25.03.17](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/QWRT%20Factory%20Stock/QWRT-R25.03.17-mediatek-mt7981-mt7981-huasifei-wh3000-emmc-squashfs-sysupgrade.bin)

[QWRT-R25.04.10](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/QWRT%20Factory%20Stock/QWRT-R25.04.10-mediatek-mt7981-mt7981-huasifei-wh3000-emmc-squashfs-sysupgrade.bin)

# Huasifei WH3000 Pro
```
    dMP dMP dMP dMP .aMMMb  .dMMMb  dMP dMMMMMP dMMMMMP dMP 
   dMP dMP dMP dMP dMP"dMP dMP" VP amr dMP     dMP     amr  
  dMMMMMP dMP dMP dMMMMMP  VMMMb  dMP dMMMP   dMMMP   dMP   
 dMP dMP dMP.aMP dMP dMP dP .dMP dMP dMP     dMP     dMP    
dMP dMP  VMMMP" dMP dMP  VMMMP" dMP dMP     dMMMMMP dMP     

         Huasifei WH3000 Pro, OpenWrt 24.10.2
```

[Clean OpenWrt 24.10.2 with fancontrol](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-huasifei_wh3000-pro-squashfs-sysupgrade.bin)
[OpenWrt 24.10.2 with USB modems support](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2%20USB%20modems/openwrt-24.10.2-mediatek-filogic-huasifei_wh3000-pro-squashfs-sysupgrade.bin)

# Cudy TR3000 128mb (OpenWrt U-Boot layout)
Vanilla OpenWRT 24.10.2 for maxed 114mb layout only! I've just cherry-picked [this PR](https://github.com/openwrt/openwrt/pull/17712) since it's still not merged into 24.10.x branch. Compatible with official ImmortalWRT 24.10.x u-boot layout, 93.25mb free space for packages after installation. Flash it only if you changed `FIP` to the ImmortalWrt (OpenWrt U-Boot layout) version! Otherwise, you will brick your device.

[24.10.1 ubootmod](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.1/openwrt-24.10.1-mediatek-filogic-cudy_tr3000-v1-ubootmod-squashfs-sysupgrade.itb)
[24.10.2 ubootmod](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-cudy_tr3000-v1-ubootmod-squashfs-sysupgrade.itb)

# Cudy TR3000 256mb
[OpenWrt 24.10.2](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-cudy_tr3000-256mb-v1-squashfs-sysupgrade.bin)

# CMCC RAX3000Me NAND USB version

[OpenWrt 24.10.2](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-cmcc_rax3000me-squashfs-sysupgrade.itb) - flash the sysupgrade on top of ImmortalWrt 24.10.2 without saving the settings. You should use ImmortalWrt uboot from firmware-selector.immortalwrt.org. This firmware is tested on CMCC RAX3000Me NAND version with USB only. 
