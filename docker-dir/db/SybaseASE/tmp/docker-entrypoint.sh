#!/bin/bash

/opt/sybase/ASE-15_0/bin/dataserver \
    -d/opt/datadir/master.dat \
    -b 60M \
    -z 4K \
    -e/opt/datadir/sybase_errorlog \
    -c/opt/datadir/SYBASE.cfg \
    -M/opt/datadir/ \
    -sSYBASE



/opt/sybase/ASE-15_0/bin/dataserver \
    -d/opt/datadir/master.dat \
    -e/opt/datadir/sybase_errorlog \
    -c/opt/datadir/SYBASE.cfg \
    -M/opt/datadir/ \
    -sSYBASE
while ! echo | nc -4 localhost 5000 > /dev/null 2>&1; do sleep 1; done


isql -Usa -P --retserverror -SSYBASE << EOF
disk init name = "sysprocsdev",
physname = "/opt/datadir/sysprocsdev",
size = "180M"
go
create database sybsystemprocs on sysprocsdev = 180
go
EOF

isql -Usa -P --retserverror -SSYBASE -n -i $SYBASE/$SYBASE_ASE/scripts/installmaster
