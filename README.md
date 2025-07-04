# Huasifei WH3000 v1
Huasifei WH3000 eMMC / Fudy MT3000 OpenWRT firmwares
Building for myself, just for fun.

You can `sysupgrade -F` them to `v2`. Everything works fine (reported by one `v2` user), but there will be no fan controls.

```
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 OpenWrt 24.10.1, r28597-0425664679
 OpenWrt 24.10.0, r28427-6df0e3d02a
 OpenWrt 23.05.5, r24106-10cc5fcd00
 -----------------------------------------------------
```

Vanilla versions, no packages added. All kmods (kernel modules) can be installed via the official repo.
After booting, there is an open `Openwrt` Wi-Fi network. The `root` has no password. IP: `192.168.1.1`

[OpenWRT 23.05.5](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2023.05.5/openwrt-23.05.5-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

[OpenWRT 24.10.0](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.0/openwrt-24.10.0-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

`*******************************************************************************`

[OpenWRT 24.10.1 from Firmware Selector, wifi disabled by default](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.1/openwrt-24.10.1-mediatek-filogic-huasifei_wh3000-squashfs-sysupgrade.bin)

## LEDE build [from source](https://github.com/coolsnowwolf/lede)

```
     _________
    /        /\      _    ___ ___  ___
   /  LE    /  \    | |  | __|   \| __|
  /    DE  /    \   | |__| _|| |) | _|
 /________/  LE  \  |____|___|___/|___|
 \        \   DE /
  \    LE  \    /  -------------------------------------------
   \  DE    \  /    OpenWrt 24.10.0, r7246-9914389a8
    \________\/    -------------------------------------------

```

LEDE open wifi network
IP: `192.168.1.1`
login: `root`
password: `password`

[R25.3.15](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/LEDE%2025.3.15/openwrt-mediatek-filogic-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)
Many preinstalled packages, Argon theme, Zerotier, Wifi schedule, kmod-tun, kmod-nft-tproxy, and the most recent kernel.

### ! For LEDE: DO NOT update the `base-files` package!
There is a bug with the Read-Only filesystem after that, which can be fixed via uboot sysupgrade flashing only. If you know how to solve it, drop me a line.

## ImmortalWrt-mt798x-24.10 with closed source Mediatek drivers from [PadavanOnly](https://github.com/padavanonly/immortalwrt-mt798x-24.10)

Everything seems to work fine, but still testing...

```
.___                               __         .__
|   | _____   _____   ____________/  |______  |  |
|   |/     \ /     \ /  _ \_  __ \   __\__  \ |  |
|   |  Y Y  \  Y Y  (  <_> )  | \/|  |  / __ \|  |__
|___|__|_|  /__|_|  /\____/|__|   |__| (____  /____/
          \/      \/  BE FREE AND UNAFRAID  \/
 -----------------------------------------------------
 ImmortalWrt 24.10-SNAPSHOT, r32993-3c4e606420
 -----------------------------------------------------
```
After booting, there are open `ImmortalWrt-2.4G` & `ImmortalWrt-5G` Wi-Fi networks. The `root` has no password. IP: `192.168.6.1`

[immortalwrt-mt798x-24.10-supgrade](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/immortalwrt-mt798x-24.10%20PadavanOnly/immortalwrt-mediatek-mt7981-huasifei_wh3000-emmc-squashfs-sysupgrade.bin)

P.S. For tests only. Zerotier is not working on this firmware. If you know how to fix it, let me know.

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

# Cudy TR3000 v1 (OpenWrt U-Boot layout)
Vanilla OpenWRT 24.10.1 for maxed 114mb layout only! I've just cherry-picked [this PR](https://github.com/openwrt/openwrt/pull/17712) since it's still not approved. Compatible with official ImmortalWRT 24.10.1 u-boot layout, 93.25mb free space for packages after installation. Flash it only if you changed `FIP` to the ImmortalWrt (OpenWrt U-Boot layout) version! Otherwise, you will brick your device.
```
  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 OpenWrt 24.10.1, r28597-0425664679
```
[24.10.1 ubootmod](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.1/openwrt-24.10.1-mediatek-filogic-cudy_tr3000-v1-ubootmod-squashfs-sysupgrade.itb)

# Cudy TR3000 256mb v1

[OpenWrt 24.10.2](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-cudy_tr3000-256mb-v1-squashfs-sysupgrade.bin)

# Huasifei WH3000 Pro

[OpenWrt 24.10.2](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/OpenWRT%2024.10.2/openwrt-24.10.2-mediatek-filogic-huasifei_wh3000-pro-squashfs-sysupgrade.bin)

[Factory QWRT_R25.06.01](https://github.com/fildunsky/Fudy-MT3000/raw/refs/heads/main/QWRT%20Factory%20Stock/QWRT_R25_06_01_mediatek_mt7981_huasifei_fudy_pro_squashfs_sysupgrade.bin)