yum install -y centos-release-scl
yum install -y rh-python36 gcc gcc-c++

mkdir /etc/glances
cp ./glances.conf /etc/glances/glances.conf
change="s/prefix=xxxxxxxx/prefix=$1/g"
sed -ien $change /etc/glances/glances.conf

scl enable rh-python36 "pip install glances influxdb -i https://pypi.douban.com/simple"

cp start_glances.sh /etc/init.d/
chmod 777 /etc/init.d/start_glances.sh
#/etc/init.d/start_glances.sh
