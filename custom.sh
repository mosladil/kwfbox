mount `blkid | grep f7aecc96-38f1-430c-879d-9747bc236d47 | sed -r 's/([^:]*).*/\1/' ` /var/nas/data
mount `blkid | grep a31c42e6-670e-4743-b8d6-58353072e43e | sed -r 's/([^:]*).*/\1/' ` /var/nas/media
mount -o remount,rw /

nmbd -D
smbd -D
modprobe w83627hf
mediatomb --home /var/mediatomb -d > /tmp/mtomb.log
