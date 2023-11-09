#!/bin/sh
# Assure that java 1.8 jre is installed
screen -S mc -dm ash -c 'cd/server; java -jar serverStart.jar -nogui'
tail -f /dev/null
