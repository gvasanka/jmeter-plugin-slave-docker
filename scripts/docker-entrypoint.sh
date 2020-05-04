#!/bin/bash
set -e

case $1 in
    slave-mode)
        export _JAVA_OPTIONS="-Xms$2 -Xmx$3"
        $JMETER_HOME/bin/jmeter-server \
            -Dserver.rmi.localport=1099 \
            -Dserver_port=1099 \
            -Jserver.rmi.ssl.disable=true
        echo "----JMeter slave server successfully started---"
        echo "----JMeter Home ::: $JMETER_HOME ----"
        ;;
    *)
        echo "Sorry, Provided option doesn't support, Only slave-mode supported. correct your values !"
        ;;
esac

exec "$@"
