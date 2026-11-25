# Proyecto Final Sistemas Operativos - Tienda de Barrio

## Caso
Servidor Ubuntu para una tienda de barrio: ventas, facturas, inventario, reportes y respaldos.

## Usuarios y grupos
- dueno_tienda: tienda_ventas, tienda_admin
- empleado1: tienda_ventas
- empleado2: tienda_ventas
- elteban26: sudo

## Servicio
reporte-tienda.service: registra actividad cada 30 segundos en /srv/caso/reportes/actividad.log.

## Respaldo
Script respaldar.sh + cron root a las 2:00 a.m. Restauración verificada con diff.

## Evidencias
Ver carpeta evidencias/ y salidas_texto/.
