#!/bin/sh

#指定文件路径
FILE="/usr/share/rpcd/ucode/luci"

#添加NSS状态显示
<<<<<<< HEAD
sed -i "s#const fd = popen('top.*')#const fd = popen('/sbin/cpuusage')#g" $FILE
=======
sed -i "s#const fd = popen('top -n1 | awk \\\'/^CPU/ {printf(\"%d%\", 100 - \$8)}\\\'')#const fd = popen(access('/sbin/cpuusage') ? '/sbin/cpuusage' : 'top -n1 | awk \\\'/^CPU/ {printf(\"%d%\", 100 - \$8)}\\\'')#g" $FILE
>>>>>>> 94392b39ec (稳定版本发布)

exit 0