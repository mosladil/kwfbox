mkdir -p /var/root
cd /var/root
mount -o remount,rw /

tar xzf /var/install_wh/binutils*gz
for i in `find .` ; do if [ ! -e /$i ] ; then ln -s /var/root/$i /$i ; fi ; done

for i in /var/install_wh/*.deb ; do echo $i; ar p $i data.tar.gz | tar xz ; done
for i in `find .` ; do if [ ! -e /$i ] ; then ln -s /var/root/$i /$i ; fi ; done

for i in /var/install_wh/*.debx ; do echo $i; ar p $i data.tar.xz | xzcat | tar x ; done
for i in `find .` ; do if [ ! -e /$i ] ; then ln -s /var/root/$i /$i ; fi ; done

for i in /var/install_wh/*.debz2 ; do echo $i; ar p $i data.tar.bz2 | bzcat | tar x ; done
for i in `find .` ; do if [ ! -e /$i ] ; then ln -s /var/root/$i /$i ; fi ; done
