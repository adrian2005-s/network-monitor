# Network Monitor (Bash)

Herramienta ligera orientada a la administración de sistemas Linux para comprobar el estado de disponibilidad de una lista de servidores, pasarelas o dominios.

## Características
- Lectura dinámica de objetivos desde un archivo plano (`targets.txt`).
- Comprobación de conectividad mediante comandos nativos (`ping`).
- Filtrado de líneas vacías y comentarios dentro del archivo de configuración.

## Requisitos
- Entorno Linux / Bash (compatible con Git Bash en Windows).

## Uso
Dale permisos de ejecución al script y lánzalo:
```bash
chmod +x monitor.sh
./monitor.sh

*(El archivo `targets.txt` ya lo tienes listo con el ejemplo que vimos antes).*

