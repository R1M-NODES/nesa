#!/bin/bash

# Підключення загальних функцій та змінних з репозиторію
source <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/common.sh)

# Відображення логотипу
printLogo

sudo apt update -y
sudo apt install mc wget curl git htop netcat net-tools unzip jq build-essential ncdu tmux make cmake clang pkg-config libssl-dev protobuf-compiler bc lz4 screen -y

# Встановлення Docker та Docker Compose
printGreen "Install Docker and Docker Compose"
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/docker-install.sh)

# Встановлення rush-install.sh
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/rush-install.sh)

# Встановлення ufw-install.sh
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/ufw.sh)

# Встановлення go_install.sh
bash <(curl -s https://raw.githubusercontent.com/R1M-NODES/utils/master/go_install.sh)

# Встановлення
bash <(curl -s https://raw.githubusercontent.com/nesaorg/bootstrap/master/bootstrap.sh)
