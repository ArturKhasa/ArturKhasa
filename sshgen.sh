#!/bin/bash
# Запуск
# wget https://raw.githubusercontent.com/ArturKhasa/ArturKhasa/refs/heads/main/sshgen.sh -O script.sh
# chmod +x script.sh
# ./script.sh

# Генерация SSH-ключа
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -C "arturbk2@yandex.ru" -f ~/.ssh/id_rsa -N ""
fi

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
