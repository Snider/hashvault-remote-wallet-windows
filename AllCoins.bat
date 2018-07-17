@ECHO OFF
COLOR a
PUSHD "%~dp0"

TITLE HashVault public wallet nodes

REM prototype alpha proof-of-concept
REM check if wallet already exists in future versions, number it (or use HHMMDDMMYY or whatnot as default when creating new)

GOTO START

:START

ECHO XMR - Monero
ECHO GRFT - Graft
ECHO ETC I am lazy this is proof of concept

SET /p coin=Coin?_


:choice
ECHO 1) Open wallet
ECHO 2) Restore from keys
ECHO 3) Restore from seed
ECHO 4) Start new wallet

CHOICE /C 1234 /N
GOTO %ERRORLEVEL%

:1
ECHO 1
SET arg=--wallet-file=wallet
REM ask for wallet name, maybe list them! (yeah that's great)
GOTO exec

:2
SET arg="--generate-from-keys=wallet"
GOTO exec

:3
SET arg="--generate-new-wallet=wallet --restore-deterministic-wallet"

:4
SET arg=--generate-new-wallet=wallet

:exec
cd %coin%\cli\
wallet-cli.exe %arg%
REM lookup for names? Dunno. Or user will have to rename it?


COLOR b
ECHO Wallet closed. Press any key to exit
PAUSE >NUL
