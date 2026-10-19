#!/bin/bash
# nama: Muhammad Farliansyah Bayumi
# nim: 09011382530156
# kelas: SKU3B

INTERVAL=60 # Jeda waktu dalam detik 

while true; do 
	bash "$(dirname "$0")/backup.sh"
	sleep "$INTERVAL"
done 
