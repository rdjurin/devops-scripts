#!/bin/bash

openssl req -x509 -out localhost.crt \
    -keyout localhost.key \
    -days 3650  \
    -newkey rsa:2048 \
    -nodes -sha256   \
    -subj '/CN=localhost' \
    -extensions EXT \
    -config <(printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")

openssl pkcs12 -export -in localhost.crt -inkey localhost.key -name localhost -out localhost.p12 -passout pass:password
