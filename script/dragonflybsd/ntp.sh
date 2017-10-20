#!/bin/sh -u

echo "==> Install NTP";
pkg install -y ntp;

echo "==> Reinstall python, base ISO version is broken"
cd /usr && make dports-create-shallow && cd /usr/dports/lang/python27 && make reinstall clean && ln -s /usr/local/bin/python2.7 /usr/local/bin/python
