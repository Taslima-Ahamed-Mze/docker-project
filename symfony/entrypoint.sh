#!/bin/bash
set -e
# RETOUR A LA RACINE
cd
# EXPORT DU PATH
export PATH="$HOME/.symfony5/bin:$PATH"
# RETOUR REPERTOIRE PRECEDENT (cd hyphen)
cd -
# DEMARRAGE SERVER SYMFONY SUR SON PORT
symfony server:start --port=80
