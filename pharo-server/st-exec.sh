#!/bin/bash

function usage() {
    cat <<END
Usage: $0 <command>
    manage a Smalltalk server
Naming
    pharo-server.pid  will be used to hold the process id

Commands:
    start <ip-address>   start the server (bind to ip address)
    run   <ip-address>   run the server in foreground (bind to ip address)
    open                 open the image
    stop                 stop the server
    restart              restart the server
    pid                  print the process id 
    usage                this help
END
    exit 1
}

script_home=$(dirname $0)
script_home=$(cd $script_home && pwd)

command=$1
ip_address=$OPENSHIFT_INTERNAL_IP
port=8080
log_file=$OPENSHIFT_LOG_DIR/pharo-server.log
image="$script_home/Pharo-2.0.image"

echo Executing $0 $command $image $ip_address $port
echo Working directory $script_home

if [ ! -e "$image" ]; then
    echo $image not found
    exit 1
fi

st_file="zn-server $ip_address $port"

pid_file="$script_home/pharo-server.pid"

vm=$script_home/bin/CogVM
options="-vm-display-null -vm-sound-null"

function start() {
    echo Starting $script in background
    if [ -e "$pid_file" ]; then
	rm -f $pid_file
    fi
    echo $vm $options $image $st_file
    nohup $vm $options $image $st_file > $log_file 2>&1 &
    echo $! >$pid_file
}

function stop() {
    echo Stopping $script
    if [ -e "$pid_file" ]; then
        pid=`cat $pid_file`
        echo Killing $pid
	kill $pid 
	rm -f $pid_file
    else
        echo Pid file not found: $pid_file
	echo Searching in process list for $script
	pids=`ps ax | grep $script | grep -v grep | grep -v $0 | awk '{print $1}'`
	if [ -z "$pids" ]; then
            echo No pids found!
	else
            for p in $pids; do
		if [ $p != "$pid" ]; then
                    echo Killing $p
                    kill $p
		fi
            done
	fi
    fi
}

function run() {
    echo Running $script in foreground
    echo $vm $options $image $st_file
    $vm $options $image $st_file
}

function open() {
    echo Openning $image
    echo $vm $image
    $vm $image
}

function restart() {
    echo Restarting $script
    stop
    start
}

function printpid() {
    if [ -e $pid_file ]; then
	cat $pid_file
    else
        echo Pid file not found: $pid_file
	echo Searching in process list for $script
	pids=`ps ax | grep $script | grep -v grep | grep -v $0 | awk '{print $1}'`
	if [ -z "$pids" ]; then
            echo No pids found!
	else
	    echo $pids
	fi 
    fi
}

case $command in
    start)
		start
		;;
    stop)
		stop
		;;
    restart)
		restart
		;;
    run)
	        run
		;;
    open)
	        open
		;;
    pid)
	        printpid
		;;
    *)
		usage
		;;
esac
