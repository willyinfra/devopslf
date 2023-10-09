#!/bin/bash

ORIGEM="/etc"
DESTINO="/backups"
NOME="bkpetc_$(date +%d-%m-%Y).tar.gz"

"[ -a "$DESTINO" ]" || mkdir -pv $DESTINO
#mkdir -pv $DESTINO
tar -czvf $DESTINO/$NOME $ORIGEM

find $DESTINO -mtime +30 -exec rm {} \;




