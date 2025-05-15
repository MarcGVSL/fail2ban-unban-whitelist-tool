#!/bin/bash

# Télécharger le script principal
echo "📥 Téléchargement du script unban_ip.sh..."
wget -O /usr/local/bin/unban_ip.sh https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/unban_ip.sh

# Donner les droits d'exécution
chmod +x /usr/local/bin/unban_ip.sh

# Ajouter un alias dans .bashrc s'il n'existe pas déjà
if ! grep -q "alias unbanip=" ~/.bashrc; then
    echo "🔧 Ajout de l'alias unbanip dans ~/.bashrc"
    echo "alias unbanip='sudo /usr/local/bin/unban_ip.sh'" >> ~/.bashrc
    source ~/.bashrc
else
    echo "✅ Alias unbanip déjà présent"
fi

echo "✅ Installation terminée. Utilisez : unbanip <IP>"
