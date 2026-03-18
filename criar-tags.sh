#!/bin/bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}🚀 Iniciando criação de tags para todos os laboratórios...${NC}"

declare -A labs=(
    ["1"]="Vagrant e Rocky Linux"
    ["2"]="DNS Server"
    ["3"]="DHCP Server"
    ["4"]="HTTP Server (Apache)"
    ["5"]="MariaDB"
    ["6"]="Firewall"
    ["7"]="SMTP Server (Postfix)"
    ["8"]="POP3/IMAP (Dovecot)"
    ["9"]="Autenticação SMTP"
    ["10"]="SSH Server"
    ["11"]="NTP (Chrony)"
    ["12"]="NFS Server"
    ["13"]="Samba Server"
    ["14"]="Rsyslog"
    ["15"]="Fail2ban"
    ["16"]="Configuração Final"
)

for i in {1..16}; do
    lab="lab$i"
    descricao="${labs[$i]}"
    
    if [ -d "$lab" ]; then
        echo -e "${YELLOW}📁 Processando $lab...${NC}"
        
        cd "$lab"
        
        git add .
        git commit -m "$lab: $descricao" 2>/dev/null || echo "   ⏩ Sem mudanças para commit"
        
        # Criar tag específica para este laboratório
        git tag -a "lab$i-v1.0" -m "$lab: $descricao"
        
        echo -e "${GREEN}   ✅ Tag lab$i-v1.0 criada para $lab${NC}"
        
        cd ..
    else
        echo -e "   ⚠️  Diretório '$lab' não encontrado"
    fi
done

echo -e "${GREEN}✅ Todas as tags criadas localmente!${NC}"
echo -e "${YELLOW}📤 Enviando tags para o GitHub...${NC}"

# Enviar todas as tags para o GitHub
git push origin main --tags

echo -e "${GREEN}✅ Tags enviadas para o GitHub!${NC}"
echo ""
echo -e "${YELLOW}📋 Tags criadas:${NC}"
git tag -l
