#!/bin/bash
ORIGEN=/srv
CARPETA=caso
DESTINO=/home/elteban26/respaldos
mkdir -p "$DESTINO"
ARCHIVO="$DESTINO/${CARPETA}_$(date +%Y%m%d_%H%M%S).tar.gz"
if tar -czf "$ARCHIVO" -C "$ORIGEN" "$CARPETA"; then
    echo "$(date '+%F %T') OK $ARCHIVO" >> "$DESTINO/respaldo.log"
else
    echo "$(date '+%F %T') FALLO" >> "$DESTINO/respaldo.log"
fi

