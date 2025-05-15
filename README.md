# Fail2Ban Unban & Whitelist Tool

Ce script permet de :

* Vérifier si une IP est bannie par Fail2Ban dans un ou plusieurs jails.
* La débannir automatiquement si nécessaire.
* L’ajouter à la whitelist (`ignoreip`) dans `jail.local`.

---

## 🔧 Installation automatique sur n’importe quel serveur

**Commande rapide :**

```bash
wget -O - https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh | bash
```

**Ou en deux étapes :**

```bash
wget https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh
chmod +x install.sh
./install.sh
```

Cela :

* Télécharge `unban_ip.sh` dans `/usr/local/bin/`
* Le rend exécutable
* Crée un alias `unbanip` dans `.bashrc`

---

## 🚀 Utilisation

```bash
unbanip 194.32.76.109
```

Le script affichera :

* Les jails actifs
* Si l’IP était bannie
* Si elle a été débannie
* Si elle a été ajoutée à la whitelist

---

## 📁 Fichiers

* `unban_ip.sh` : script principal
* `install.sh` : script d’installation rapide

---

## 🔒 Prérequis

* Fail2Ban installé et actif
* Accès root (`sudo`)
* Utilitaires : `bash`, `wget`, `grep`, `sed`, `systemctl`

---

## 👤 Auteur

**MarcGVSL**
Global VoIP Services Ltd
[https://voipservices.online](https://voipservices.online)

---

# 🌐 English version

## Fail2Ban Unban & Whitelist Tool

This script allows you to:

* Check if an IP is banned in any active Fail2Ban jail.
* Unban it automatically if needed.
* Add it to the whitelist (`ignoreip`) in `jail.local`.

---

## 🔧 Quick installation on any server

**One-liner command:**

```bash
wget -O - https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh | bash
```

**Or in two steps:**

```bash
wget https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh
chmod +x install.sh
./install.sh
```

This will:

* Download `unban_ip.sh` to `/usr/local/bin/`
* Make it executable
* Add the alias `unbanip` to your `.bashrc`

---

## 🚀 Usage

```bash
unbanip 194.32.76.109
```

The script will display:

* Active jails
* Whether the IP was banned
* If it was unbanned
* If it was added to the whitelist

---

## 📁 Files

* `unban_ip.sh`: main script
* `install.sh`: quick setup script

---

## 🔒 Requirements

* Fail2Ban installed and running
* Root access (`sudo`)
* Tools: `bash`, `wget`, `grep`, `sed`, `systemctl`

---

## 👤 Author

**MarcGVSL**
Global VoIP Services Ltd
[https://voipservices.online](https://voipservices.online)
