@ECHO OFF
MODE CON cols=22 lines=10

:: Example de batch utilisant la souris
:: Ceci est un logiciel libre, vous pouver le distribuer selon
:: les termes de la licence GNU GPL

:DEBUT
echo �������������������Ŀ
echo �      Fichier      �
echo ���������������������
echo �������������������Ŀ
echo �      Edition      �
echo ���������������������
echo �������������������Ŀ
echo �    Assistants     �
echo ���������������������
FOR /F "tokens=1,2 delims=:" %%A in ('BatBox /m') DO (
SET Y=%%B
SET X=%%A
)
IF %Y% LSS 3 GOTO :FICHIER
IF %Y% LSS 6 GOTO :EDITION
IF %Y% LSS 9 GOTO :ASSISTANT
GOT0 :DEBUT
:FICHIER
CLS
ECHO vous avez choisis fichier !
PAUSE>NUL
GOTO:EOF
:EDITION
CLS
ECHO vous avez choisis edition !
PAUSE>NUL
GOTO:EOF
:ASSISTANT
CLS
ECHO vous avez choisis assistant
PAUSE>NUL
GOTO:EOF
