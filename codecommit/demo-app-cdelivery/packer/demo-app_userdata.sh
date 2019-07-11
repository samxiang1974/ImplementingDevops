#!/bin/bash

set -euf -o pipefail
exec 1> >(logger -s -t $(basename $0)) 2>&1

# Install SaltStack
yum -y install ruby24
/usr/sbin/alternatives --set ruby /usr/bin/ruby2.4
yum -y install https://repo.saltstack.com/yum/amazon/salt-amzn-repo-2019.2.amzn1.noarch.rpm
yum clean expire-cache; yum -y install salt-minion; chkconfig salt-minion off

# Put custom grains in place
echo -e 'grains:\n roles:\n  - demo-app' > /etc/salt/minion.d/grains.conf
