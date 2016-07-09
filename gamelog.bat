// by dylanh72@hawaii.edu

@ECHO off
title Gamers Edge Game Logger
set gameout=None
// CALL gamelist.bat (pending addition)
:start
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO Last Game Checked Out: %gameout%
ECHO.
ECHO 1 Check Out
ECHO 2 Check In
ECHO 3 Exit
ECHO.
set /p question=Choose: 
if /i [%question%]==[1] goto checkout
if /i [%question%]==[2] goto checkin
if /i [%question%]==[3] goto exit
if /i [%user%]==[] goto start

:checkout
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-OUT
set /p user=Enter Username: 
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-OUT
ECHO Username: %user%
set /p gameout=Game ID#: 
:admin
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-OUT
ECHO Username: %user%
ECHO Game ID#: %gameout%
ECHO.
ECHO Employee:
ECHO 1 Dylan Hunt
ECHO 2 Ryan Helms
ECHO 3 Jason Pharr
ECHO 4 Other
set /p admin=Enter your employee ID#: 
if /i [%admin%]==[1] GOTO dylan
if /i [%admin%]==[2] GOTO ryan
if /i [%admin%]==[3] GOTO jason
if /i [%admin%]==[4] GOTO other
if /i [%admin%]==[] GOTO admin

:dylan
set admin=Dylan Hunt
GOTO finish2
:ryan
set admin=Ryan Helms
GOTO finish2
:jason
set admin=Jason Pharr
GOTO finish2
:other
set /p admin=Enter your FULL NAME: 
GOTO finish2

:finish2
CLS
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-OUT
ECHO.
ECHO %date%
time/t
ECHO Username: %user%
ECHO Game ID#: %gameout%
ECHO Employee: %admin%
ECHO.
set /p correct=Correct? (y/n): 
if  [%correct%]==[y] GOTO write2
if  [%correct%]==[yes] GOTO write2
if  [%correct%]==[n] GOTO start
if  [%correct%]==[no] GOTO start

:write2
ECHO. >> gamelog.txt
ECHO %date% >> gamelog.txt
time/t >> gamelog.txt
ECHO Username: %user% >> gamelog.txt
ECHO Game ID#: %gameout% >> gamelog.txt
ECHO Employee: %admin% >> gamelog.txt
ECHO CHECKED OUT >> gamelog.txt
ECHO _______________________ >> gamelog.txt
GOTO start

:checkin
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-IN
set /p user=Enter Username: 
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-IN
ECHO Username: %user%
set /p gamein=Game ID#: 
:admin
cls
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-IN
ECHO Username: %user%
ECHO Game ID#: %gamein%
ECHO.
ECHO Employee:
ECHO 1 Dylan Hunt
ECHO 2 Ryan Helms
ECHO 3 Jason Pharr
ECHO 4 Other
set /p admin=Enter your employee ID#: 
if /i [%admin%]==[1] GOTO dylan
if /i [%admin%]==[2] GOTO ryan
if /i [%admin%]==[3] GOTO jason
if /i [%admin%]==[4] GOTO other
if /i [%admin%]==[] GOTO admin

:dylan
set admin=Dylan Hunt
GOTO finish1
:ryan
set admin=Ryan Helms
GOTO finish1
:jason
set admin=Jason Pharr
GOTO finish1
:other
set /p admin=Enter your FULL NAME: 
GOTO finish1

:finish1
CLS
ECHO **************************
ECHO GAMERS EDGE GAME LOGGER
ECHO **************************
ECHO.
ECHO CHECK-IN
ECHO.
ECHO %date%
time/t
ECHO Username: %user%
ECHO Game ID#: %gamein%
ECHO Employee: %admin%
ECHO.
set /p correct=Correct? (y/n): 
if  [%correct%]==[y] GOTO write1
if  [%correct%]==[yes] GOTO write1
if  [%correct%]==[n] GOTO start
if  [%correct%]==[no] GOTO start

:write1
ECHO. >> gamelog.txt
ECHO %date% >> gamelog.txt
time/t >> gamelog.txt
ECHO Username: %user% >> gamelog.txt
ECHO Game ID#: %gamein% >> gamelog.txt
ECHO Employee: %admin% >> gamelog.txt
ECHO CHECKED IN >> gamelog.txt
ECHO _______________________ >> gamelog.txt
GOTO start

:exit
exit