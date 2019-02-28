Testing with influxdb
=====================

* versions
    | glances v3.1.0
    | influx
    | ubuntu 18.04
    | python3.6.7

* glances configure script location (which is modified) : `/etc/glances/glances.conf`
* need to pip install influxdb


influxdb configuration
========================

install
-----------

* `sudo apt-get`
* `service influxdb start`

setting up database
---------------------

using bash::

    influx
    > create database glances

setting up authentication
----------------------------

file path `/etc/influxdb/influxdb.conf` changed ::

    # Determines whether HTTP endpoint is enabled.
    enabled = true

    # The bind address used by the HTTP service.
    bind-address = ":8086"

    # Determines whether HTTP authentication is enabled.
    auth-enabled = true

    # The default realm sent back when issuing a basic auth challenge.
    # realm = "InfluxDB"

    # Determines whether HTTP request logging is enable.d
    log-enabled = true

    # Determines whether detailed write logging is enabled.
    write-tracing = false

    # Determines whether the pprof endpoint is enabled.  This endpoint is used for
    # troubleshooting and monitoring.
    pprof-enabled = true


then using `glances --export influxdb` can found it works. besides, it still has a command line interface.

reference
------------

`https://www.cnblogs.com/shhnwangjian/p/6897216.html?utm_source=itdadao&utm_medium=referral`

grafana
=============

can directly import grafana from online data. which is 2387.
but some minor changes is required to do is replace localhost name, with `$host` .

auto start glances
======================

`nohup glances --export influxdb -q &`
