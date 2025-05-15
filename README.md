# Fail2Ban Unban & Whitelist Tool

Ce script permet de :
- Vérifier si une IP est bannie par Fail2Ban dans un ou plusieurs jails.
- La débannir automatiquement si nécessaire.
- L’ajouter à la whitelist (`ignoreip`) dans `jail.local`.

## 🔧 Installation automatique sur n’importe quel serveur

# Exécute simplement :
wget -O - https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh | bash

# Ou en deux étapes :
wget https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh
chmod +x install.sh
./install.sh

# Cela :
Télécharge unban_ip.sh dans /usr/local/bin/
Le rend exécutable
Crée un alias unbanip dans ton .bashrc

# 🚀 Utilisation
unbanip 194.32.76.109

# Le script affichera :
Les jails actifs
Si l’IP était bannie
Si elle a été débannie
Si elle a été ajoutée à la whitelist

# 📁 Fichiers
unban_ip.sh : script principal
install.sh : script d’installation rapide

# 🔒 Prérequis
Fail2Ban installé et actif
Accès root (sudo)
Utilitaires : bash, wget, grep, sed, systemctl

# 👤 Auteur
# MarcGVSL
# Global VoIP Services Ltd
# https://voipservices.online
