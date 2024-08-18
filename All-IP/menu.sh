#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}==============================${NC}"
echo -e "${GREEN}    Auto Script Socks Proxy   ${NC}"
echo -e "${GREEN}      CREATED BY DOT AJA      ${NC}"
echo -e "${BLUE}==============================${NC}"
echo -e "${YELLOW}1)${NC} ${GREEN}Socks 1 Proxy${NC}"
echo -e "${YELLOW}2)${NC} ${GREEN}Socks 2 Proxy${NC}"
echo -e "${YELLOW}3)${NC} ${GREEN}Socks 3 Proxy${NC}"
echo -e "${YELLOW}4)${NC} ${GREEN}Socks 4 Proxy${NC}"
echo -e "${YELLOW}5)${NC} ${RED}keluar${NC}"
echo -e "${BLUE}==============================${NC}"

read -p "Pilih Instalasi: " choice

case $choice in
    1)
        bash -c "$(wget -qO- https://raw.githubusercontent.com/DotAja/all-in-one/main/All-IP/1-IP.sh)"
        ;;
    2)
        bash -c "$(wget -qO- https://raw.githubusercontent.com/DotAja/all-in-one/main/All-IP/2-IP.sh)"
        ;;
    3)
        bash -c "$(wget -qO- https://raw.githubusercontent.com/DotAja/all-in-one/main/All-IP/3-IP.sh)"
        ;;
    4)
        bash -c "$(wget -qO- https://raw.githubusercontent.com/DotAja/all-in-one/main/All-IP/4-IP.sh)"
        ;;
    5)
        echo -e "${RED}Keluar...${NC}"
        exit 0
        ;;
    *)
        echo -e "${RED}Pilihan tidak valid.${NC}"
        ;;
esac
