welcome
=======

The [pharo-server](http://stfx.eu/pharo-server/) on the [cloud](https://openshift.redhat.com/app/).

You can see it in action at http://welcome-asylum.rhcloud.com/

variables
=========

OPENSHIFT_GEAR_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15b99/welcome/"<br>
OPENSHIFT_GEAR_NAME="welcome"<br>
OPENSHIFT_GEAR_TYPE="diy-0.1"<br>
OPENSHIFT_HOMEDIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15b99/"<br>
OPENSHIFT_INTERNAL_IP="127.11.151.1"<br>
OPENSHIFT_INTERNAL_PORT="8080"<br>
OPENSHIFT_LOG_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd69399/welcome/logs/"<br>
OPENSHIFT_REPO_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15b99/app-root/runtime/repo/"<br>

tests
=====


OPENSHIFT_DATA_DIR=~/workspaces/welcome-data OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/.openshift/action_hooks/start <br>
OPENSHIFT_DATA_DIR=~/workspaces/welcome-data OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/pharo-server/st-exec.sh run <br>
OPENSHIFT_DATA_DIR=~/workspaces/welcome-data OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/.openshift/action_hooks/stop <br>
OPENSHIFT_DATA_DIR=~/workspaces/welcome-data OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/pharo-server/st-exec.sh open <br>

