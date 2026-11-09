#!/bin/bash

# Archivo que contiene los destinos a revisar (uno por línea)
TARGETS="targets.txt"

if [ ! -f "$TARGETS" ]; then
    echo "Error: No se encuentra el archivo $TARGETS"
    exit 1
fi

echo "=== INICIO DE COMPROBACIÓN DE RED: $(date) ==="

while IFS= read -r host; do
    # Ignorar líneas vacías o comentarios
    [[ -z "$host" || "$host" =~ ^# ]] && continue

    if ping -c 1 -W 2 "$host" &> /dev/null; then
        echo "[ONLINE]  El host $host responde correctamente."
    else
        echo "[ALERTA]  El host $host NO responde al ping."
    fi
done < "$TARGETS"
echo "=== FIN DE LA COMPROBACIÓN ==="