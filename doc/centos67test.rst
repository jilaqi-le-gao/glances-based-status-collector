this is testing on centos6.7
================================

reinstall python3
======================

using command like this::

       $ sudo yum install centos-release-scl
       $ sudo yum install rh-python36
       $ scl enable rh-python36 bash

then using pip install glances.
note, the pip has to be checked with pip --version to ensure it is python36version

reference: `https://lists.centos.org/pipermail/centos-announce/2015-December/021555.html`

glances conf file
=====================

it is in directory `/opt/rh/rh-python36/root/usr/share/doc/glances/glances.conf` .

but it is only one template, we need to copy it into `/etc/glances/glances.conf` .

steps to install
======================

* install python3 with scl.
* install glances and influxdb
* change setting of glances.conf and copy file.
* add auto start script.
* run

all these can be finished in one script! LOL


