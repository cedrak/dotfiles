#!/bin/bash
$PATH="/mnt/chroot"

#montowanie partycji z systemem
mount /dev/sda* "$PATH"
mkdir "$PATH/boot"
mount /dev/sda* "$PATH/boot"

#montowanie /proc /sys /dev
mount -t proc none "$PATH/proc"
mount --rbind /sys "$PATH/sys"
mount --rbind /dev "$PATH/dev"

#chroot + zmiana w ścieżce terminala
chroot "$PATH" /bin/bash
source /etc/profile
export PS1="(chroot) $PS1"
