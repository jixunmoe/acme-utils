# Acme.sh Utils

Utility scripts for manage (distribute) `acme.sh` certs to various machine.

## Install

```sh
make install
```

## `le-install`

After issuing certs, rsync + reload nginx config:

```sh
CERT_DOMAIN="example.com"
CERT_CODE="server-uk"
mkdir -p /opt/le-install/certs/server-uk
acme.sh --install-cert -d "${CERT_DOMAIN}" \
  --key-file "/opt/le-install/certs/server-uk/wildcard.${CERT_DOMAIN}.key" \
  --fullchain-file "/opt/le-install/certs/server-uk/wildcard.${CERT_DOMAIN}.crt" \
  --reloadcmd "/opt/le-install/le-install 'some-user@${CERT_DOMAIN}:22' server-uk"
```
