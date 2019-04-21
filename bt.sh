#!/bin/bash
export PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export file=/www/server/panel/class/common.py
/etc/init.d/bt stop
sed -i $'164s/panelAuth.panelAuth().get_order_status(None)/{\'status\': \True, \'msg\': {\'endtime\': 32503651199}}/g' ${file}
touch /www/server/panel/data/userInfo.json
/etc/init.d/bt restart
echo -e "执行完成"
