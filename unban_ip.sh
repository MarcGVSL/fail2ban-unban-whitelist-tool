#!/bin/bash

if [ -z "$1" ]; then
    echo "❌ Utilisation : $0 <IP à débannir>"
    exit 1
fi

IP="$1"

echo "🔎 Traitement de l’IP : $IP"

echo "📦 Jails actifs :"
fail2ban-client status | grep "Jail list"

BANNED=false
for JAIL in $(fail2ban-client status | grep "Jail list" | cut -d: -f2 | sed 's/,//g'); do
    JAIL=$(echo $JAIL | xargs)
    echo "🔍 Vérification dans le jail: $JAIL"
    if fail2ban-client status "$JAIL" | grep -q "$IP"; then
        echo "🚫 L’IP $IP est bannie dans le jail $JAIL, débannissement en cours..."
        fail2ban-client set "$JAIL" unbanip "$IP"
        BANNED=true
    fi
done

JAIL_CONF="/etc/fail2ban/jail.local"
if ! grep -q "$IP" "$JAIL_CONF"; then
    echo "📥 Ajout de $IP à ignoreip dans $JAIL_CONF"
    if grep -q "^ignoreip" "$JAIL_CONF"; then
        sudo sed -i "/^ignoreip/s/$/ $IP/" "$JAIL_CONF"
    else
        echo -e "\nignoreip = $IP" | sudo tee -a "$JAIL_CONF" > /dev/null
    fi
else
    echo "✅ L’IP $IP est déjà whitelister dans ignoreip."
fi

echo "🔄 Redémarrage de Fail2Ban..."
sudo systemctl restart fail2ban

if [ "$BANNED" = true ]; then
    echo "✅ L’IP $IP était bannie et a été débannie + ajoutée à la whitelist."
else
    echo "ℹ️ L’IP $IP n’était pas bannie, mais a été ajoutée à la whitelist."
fi
