welcome
=======

http://stfx.eu/pharo-server/ on the cloud

OPENSHIFT_GEAR_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15
b99/welcome/"
OPENSHIFT_GEAR_NAME="welcome"
OPENSHIFT_GEAR_TYPE="diy-0.1"
OPENSHIFT_HOMEDIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15b
99/"
OPENSHIFT_INTERNAL_IP="127.11.151.1"
OPENSHIFT_INTERNAL_PORT="8080"
OPENSHIFT_LOG_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd69399/welcome/logs/"
OPENSHIFT_REPO_DIR="/var/lib/stickshift/0241774a9d7b41febc1dd693d5d15b99/app-root/runtime/repo/"

OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/.openshift/action_hooks/start 
OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/pharo-server/st-exec.sh run
OPENSHIFT_LOG_DIR=~/workspaces OPENSHIFT_REPO_DIR=~/workspaces/welcome OPENSHIFT_INTERNAL_IP='127.0.0.1' ~/workspaces/welcome/.openshift/action_hooks/stop
~/workspaces/welcome/pharo-server/st-exec.sh open