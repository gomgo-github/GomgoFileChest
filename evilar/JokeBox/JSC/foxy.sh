#!/bin/bash

python3 -c "import PyQt6" 2>/dev/null || pip install PyQt6

COMMAND="python3 ~/.config/autostart/Modules/JokeBox/JSC/foxy.py"
SOUND_FILE="~/.config/autostart/Modules/JokeBox/JSC/foxy.mp3"

while true; do
    VOLUME=$(amixer get Master | grep -oP '\[\d+%\d*\]' | head -1 | grep -oE '[0-9]+')

    if [ $(( RANDOM % 10000 )) -eq 0 ]; then
        # 1. Preparar audio
        amixer set Master 100% > /dev/null
        
        # 2. Ejecutar paplay en segundo plano (&) y el script en primer plano
        ffplay -nodisp -autoexit ~/.config/autostart/Modules/JokeBox/JSC/foxy.mp3 &
        export VOLUME
        eval $COMMAND
        
        # 3. Restaurar volumen (se ejecutará al cerrar foxy.py)
        amixer set Master "${VOLUME}%" > /dev/null
    fi

    sleep 1

if [ "$1" == "-now" ]; then
    local PREV_VOLUME=$(amixer get Master | grep -oP '\[\d+%\d*\]' | head -1 | grep -oE '[0-9]+')
    
    # Acción
    amixer set Master 100% > /dev/null
    ffplay -nodisp -autoexit ~/.config/autostart/Modules/JokeBox/JSC/foxy.mp3 &
    VOLUME=$PREV_VOLUME eval $COMMAND
    
    # Restaurar
    amixer set Master "${PREV_VOLUME}%" > /dev/null
    exit 0
fi

done
