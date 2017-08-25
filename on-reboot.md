crontab -e -u minecraft
@reboot bash /etc/init.d/multicraft start

nano /etc/init.d/multicraft
>
#!/bin/sh

### BEGIN INIT INFO
# Provides:          Multicraft daemon
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Controls the Multicraft daemon.
# Description:       It's all kewl.
### END INIT INFO
MULTICRAFT="/home/mc/multicraft"

case "$1" in
    start)
        #Stop command
        $MULTICRAFT/bin/multicraft -v start
    ;;
    stop)
        #Stop command
        $MULTICRAFT/bin/multicraft -v stop
    ;;
    restart)
        $MULTICRAFT/bin/multicraft -v restart
        #Restart command
    ;;
    *)
    echo "Usage: $0 {start|stop|restart}"
    exit 1
    ;;
esac
exit 0
>

chmod a+x /etc/init.d/multicraft
update-rc.d install multicraft defaults
service multicraft {start|stop|restart}
