# Dotfiles

### Instalación ArchLinux

```bash
loadkeys la-latin1
```

```bash
cfdisk
```

> Para maquinas virtuales usar `dos` como **label type**

Particiones: 512M (Primary/sda1), 15GB (Primary/sda2), 4.5GB (Primary/Linux Swap/sda3)

```bash
mkfs.vfat -F 32 /dev/sda1
```

```bash
mkfs.ext4 /dev/sda2
```

```bash
mkswap /dev/sda3
```

```bash
mkswapon
```

```bash
lsblk
```

```bash
mount /dev/sda2 /mnt
```

```bash
mkdir /mnt/boot
```

```bash
mount /dev/sda1 /mnt/boot
```

```bash
pacstrap /mnt linux linux-firmware networkmanager grub base base-devel git nvim nano
```

```bash
genfstab -U /mnt > /mnt/etc/fstab
```

```bash
cat !$
```

```bash
arch-chroot /mnt
```

Asignar contraseña al usuario `root`

```bash
passwd
```

Crear nuevo usuario

```bash
useradd -m nombre-usuario
```

```bash
passwd nombre-usuario
```

Añadir usuario nuevo al grupo `wheel`, asi al ejecutar el comando `sudo su` nos permitiría convertirnos directamente al usuario `root`

```bash
usermod -aG wheel nombre-usuario
```

```bash
groups nombre-usuario
```

```bash
nano /etc/sudoers
```

> Descomentamos `%wheel ALL=(ALL:ALL) ALL`

Configuración de las regiones

```bash
nano /etc/locale.gen
```

> Descomentamos `en_US.UTF-8 UTF-8` `es_CO.UTF-8 UTF-8`

```bash
locale-gen
```

```bash
touch /etc/vconsole.conf >> "KEYMAP=la-latin1"
```

```bash
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
```

```bash
hwclock --systohc
```

Instalación del bootloader (GRUB)

```bash
grub-install /dev/sda
```

```bash
grub-mkconfig -o /boot/grub/grub.cfg
```

Configuramos nombre de la maquina

```bash
echo nombre-maquina > /etc/hostname
```

Creamos un nuevo `initramfs`
```bash
mkinitcpio -P
```

Creamos el archivos `hots`

```bash
nano /etc/hots
```

```bash
127.0.0.1       localhost
::1             localhost
127.0.0.1       nombre-maquina.localhost nombre-maquina
```

Iniciamos el servicio del `NetworkManger`

```bash
systemctl start NetworkManager.service
```

```bash
systemctl enable NetworkManager
```

```bash
exit
```

```bash
umount -R /mnt
```

```bash
reboot now
```
