#!/bin/bash
# Run as root, of course.

cp /vagrant/carbon.conf /opt/graphite/conf/.
cp /vagrant/relay-rules.conf /opt/graphite/conf/.
/usr/bin/python /opt/graphite/bin/carbon-cache.py start
/usr/bin/python /opt/graphite/bin/carbon-relay.py start