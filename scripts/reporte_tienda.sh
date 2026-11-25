#!/bin/bash
while true; do
    FECHA=$(date '+%Y-%m-%d %H:%M:%S')
    VENTAS=$(ls /srv/caso/ventas 2>/dev/null | wc -l)
    FACTURAS=$(ls /srv/caso/facturas 2>/dev/null | wc -l)
    DISCO=$(df -h /srv/caso | tail -1 | awk '{print $5}')
    echo "$FECHA | ventas=$VENTAS | facturas=$FACTURAS | disco=$DISCO" >> /srv/caso/reportes/actividad.log
    sleep 30
done

