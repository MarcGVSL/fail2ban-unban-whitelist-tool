# Fail2Ban Unban & Whitelist Tool

This script allows you to:
- Check if an IP is currently banned in any Fail2Ban jail.
- Unban the IP if necessary.
- Whitelist the IP by adding it to the `ignoreip` directive in `jail.local`.

## 🔧 Installation (on any server)

Run this one-liner:

```bash
wget -O - https://raw.githubusercontent.com/MarcGVSL/fail2ban-unban-whitelist-tool/main/install.sh | bash
