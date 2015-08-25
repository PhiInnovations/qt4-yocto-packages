Para instalar os pacotes que permitem a execução de uma aplicação Qt na Thunderboard,
execute:

$ ./install.sh   minimal|full    [ -dev ] [ -nodbg ]

A instalação completa (full) instala todas as bibliotecas da SDK. Já a opção minimal instala 
apenas o pacote mínimo de bibliotecas (libQtCoreE, libQtGuiE, libQtNetworkE e o plugin para as
bibliotecas do touchscreen).

Por default as bibliotecas são instaladas com símbolos de debug. Para excluir estes símbolos
use a flag -nodbg.

Para instalar também os headers e binários para desenvolvimento de aplicações na placa use -dev.





