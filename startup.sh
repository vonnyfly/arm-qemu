#!/bin/sh

# install
#qemu-system-arm -m 1024M -M versatilepb -kernel vmlinuz-3.2.0-4-versatile -initrd initrd.gz -append "root=/dev/ram" -hda armdisk.img -no-reboot -serial stdio  -redir tcp:3333::22

# start
# dmesg | grep tty
# /etc/inittab
# s0:2345:respawn:/sbin/getty -L 115200 ttyS0 vt102
# /etc/securetty
# ttyS0
#
qemu-system-arm -m 1024M -M versatilepb -kernel boot/vmlinuz-3.2.0-4-versatile -initrd boot/initrd.img -append "root=/dev/sda1 console=ttyAMA0,115200 console=tty  highres=off" -hda armdisk.img -redir tcp:3333::22 -nographic
