#!/bin/bash

# Sem parametro só gera lista, se passar 1 como parametro instala as extensões
if [ -z $1 ]; then
	echo "gerando lista"
	code --list-extensions >> extensions.txt
else	
	echo "instalando extensões"
	code --list-extensions | xargs -L 1 echo code --install-extension
fi
