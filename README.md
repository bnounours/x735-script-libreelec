# x735-script-openelec

This repo is a fro from https://github.com/geekworm-com/x735-script
The idea is to adapt it to make it work on openelec distrib with Kodi

# Install

## Prerequisites
For the script to manage the fan we need to add a line in config.txt. As the file system is read only we must follow this sequence (as explained on the libreelec site https://wiki.libreelec.tv/configuration/config_txt)

```bash
mount -o remount,rw /flash
nano /flash/config.txt
```

add line `dtoverlay=pwm-2chan,pin2=13,func2=4` as the end

Put back the partition to read-only
```bash
mount -o remount,ro /flash
```


## Scripts

Make a tmp directory :
```bash
cd 
mkdir x735
```

Download the repository:

```bash
wget https://github.com/bnounours/x735-script-libreelec/archive/refs/heads/main.zip -P /storage/x735
```

Unzip the archive and install
```bash
cd /storage/x735
unzip main.zip
cd x735-script-openelec-main/
chmod +x *.sh
./install.sh
```
then Reboot
```bash
reboot
```



# Uninstall
Go to /storage/x735 and run script uninstall
```bash
/storage/x735/uninstall.sh
```


# Info from the original doc


User Guide: https://wiki.geekworm.com/X735-script

Email: support@geekworm.com
