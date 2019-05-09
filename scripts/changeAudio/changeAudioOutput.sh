#!/bin/bash

SCRIPT=$(readlink -f $0)
DIR=`dirname $SCRIPT`
# DIR=/home/ap/Git/linux/scripts/changeAudio

if [[ $XDG_CURRENT_DESKTOP == "i3" ]]; then
    #notify-send "Ambiente i3"
    if [[ $(pactl info | grep "Default Sink") =~ "hdmi-stereo" ]]; then
      pactl set-card-profile alsa_card.pci-0000_00_1b.0 output:analog-stereo
      notify-send -i $DIR/speaker.png "Saída de Áudio Alterada" "PADRÃO stereo"
    else
      pactl set-card-profile alsa_card.pci-0000_00_1b.0 output:hdmi-stereo
      notify-send -i $DIR/headphone.png "Saída de Áudio Alterada" "HDMI stereo"
    fi
else
    #notify-send "Ambiente NÃO i3"
    if [[ $(pactl info | grep "Default Sink") =~ "hdmi-stereo" ]]; then
      pactl set-card-profile 0 output:analog-stereo
      notify-send -i $DIR/speaker.png "Saída de Áudio Alterada" "PADRÃO stereo"
    else
      pactl set-card-profile 0 output:hdmi-stereo
      notify-send -i $DIR/headphone.png "Saída de Áudio Alterada" "HDMI stereo"
    fi
fi
