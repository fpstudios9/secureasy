#!/bin/sh
HOST=''
USER=''
PASSWD=''
WAY='/www/secureasy/upload/'
FILE='test.txt'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
cd /www/secureasy/upload
put $FILE
quit
END_SCRIPT
exit 0
