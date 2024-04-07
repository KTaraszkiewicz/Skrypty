#!/bin/bash
version=$(cat /proc/version)
if [[ $version == *"Linux"* && $version != *"WSL"* ]]; then
    systemctl status sshd
elif [[ $version == *"WSL"* ]]; then
    echo "Liczba zmiennych środowiskowych zawierających BASH lub SHELL:"
    env | grep -E 'BASH|SHELL' | wc -l
    # Wyświetl te zmienne
    echo "Zmienne środowiskowe zawierające BASH lub SHELL:"
    env | grep -E 'BASH|SHELL'
else
    echo "Inna platforma."
fi

