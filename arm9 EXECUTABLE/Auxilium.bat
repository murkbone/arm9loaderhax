@echo off
title arm9loaderhax 1.0 

:startup
if exist "%appdata%\arm9loaderhax\verified.txt" (
    title Auxilium [DEMO] [CFW: arm9loaderhax]
    goto auxiliumstartup
)
goto setup

:setup
color 9f
cls
echo[
echo                                           THANKS FOR INSTALLING
echo                              __    ___                        __                 __                         
echo                            /'_ `\ /\_ \                      /\ \               /\ \                        
echo    __     _ __    ___ ___ /\ \L\ \\//\ \     ___      __     \_\ \     __   _ __\ \ \___      __     __  _  
echo  /'__`\  /\`'__\/' __` __`\ \___, \ \ \ \   / __`\  /'__`\   /'_` \  /'__`\/\`'__\ \  _ `\  /'__`\  /\ \/'\ 
echo /\ \L\.\_\ \ \/ /\ \/\ \/\ \/__,/\ \ \_\ \_/\ \L\ \/\ \L\.\_/\ \L\ \/\  __/\ \ \/ \ \ \ \ \/\ \L\.\_\/    / 
echo \ \__/.\_\\ \_\ \ \_\ \_\ \_\   \ \_\/\____\ \____/\ \__/.\_\ \___,_\ \____\\ \_\  \ \_\ \_\ \__/.\_\/\_/\_\
echo  \/__/\/_/ \/_/  \/_/\/_/\/_/    \/_/\/____/\/___/  \/__/\/_/\/__,_ /\/____/ \/_/   \/_/\/_/\/__/\/_/\//\/_/
echo[                                                                                                      
echo The following features will be installed into your Auxilium client:
echo - NAND Dumping functionality
echo - Stop N' Swop restored functionality (not enabled)
echo - Program optimizations 
echo - Basic dev console access
echo[
echo WARNINGS:
echo - Your save data will be converted to arm9 data
echo - This means you cannot play on an unmodded version of Auxilium
echo - If you don't want this to happen, close the program now.
echo - We are not responsible for any glitches, crashes or bugs that may occur.
echo[
echo By entering anything in the field below, you agree to these terms.
set /p "setup=?: "
if "%setup%" equ "[oifoiphnh vipojbyhijujjfhnkbnikjiouojjhjkrfhfhffjhffhffhdffhfjjkohkujhdreuioioui" goto installing
goto installing

:installing
if exist "%appdata%\Auxilium\darkmode.txt" (
    color 70
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    color 9f
)
cls
echo[
timeout /t 1 /nobreak > NUL
echo Installing system files..
timeout /t 3 /nobreak > NUL
cd %appdata%
mkdir arm9loaderhax
echo Creating backup dump..
timeout /t 3 /nobreak > NUL
echo .> "%appdata%\arm9loaderhax\verified.txt"
echo Testing JesusAI Stop N' Swop server connection... (1)
timeout /t 5 /nobreak > NUL
echo Failed.
timeout /t 2 /nobreak > NUL
echo Testing JesusAI Stop N' Swop server connection... (2)
timeout /t 5 /nobreak > NUL
echo Success. Received (1) items from server.
timeout /t 2 /nobreak > NUL
echo Finalising install..
timeout /t 7 /nobreak > NUL
goto installed

:installed
cls
echo[
timeout /t 2 /nobreak > NUL
echo arm9loaderhax has been installed.
echo Booting into Auxilium now...
timeout /t 3 /nobreak > NUL
goto auxiliumstartup

:auxiliumstartup
title Auxilium [DEMO] [CFW: arm9loaderhax]
cls
if not exist "%appdata%\Auxilium" (
    cd %appdata%
    mkdir Auxilium
    goto playerchecker
)
goto playerchecker

:playerchecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    cd %appdata%
    cd Auxilium
    del playone.txt
    goto startupmessage
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    cd %appdata%
    cd Auxilium
    del playtwo.txt
    goto introcutscene
)
goto introcutscene

::All of this is the intro cutscene.
::The intro cutscene only shows when a new person boots up the game for the first time,
::or someone deletes their save file.
::It effects no files. Scripts to edit files are above.

:introcutscene
if exist "%appdata%\Auxilium\introseen.txt" (
    goto startupmessage
)
if exist "%appdata%\Auxilium\darkmode.txt" (
    color 70
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    color 9f
)
title ECLIPTIC P2P CHAT 0.0.9
cls
echo[
timeout /t 2 /nobreak > NUL
echo                            [ USER CHAT REQUESTED ]
timeout /t 3 /nobreak > NUL
echo[
echo                      [ ACCOUNT USERNAME : SunnyWolf683 ]
timeout /t 1 /nobreak > NUL
echo[
echo                         [ PROFILE FIRST NAME : Flynn ]
timeout /t 1 /nobreak > NUL
echo[
echo                       [ FRIEND STATUS: TRUSTED FRIEND ]
timeout /t 4 /nobreak > NUL
echo[
echo                              Accept chat request?
timeout /t 2 /nobreak > NUL
echo                       Respond with either "YES" or "NO".
echo                               (Case sensitive!)
echo[
set /p "introcutscene=?: "
if "%introcutscene%" equ "YES" goto introcutscene2
if "%introcutscene%" equ "NO" exit
exit

:introcutscene2
title ECLIPIC P2P CHAT 0.0.9 (CONNECTING..)
cls                                                                             
echo[                                                                                     
echo                                        (##                                           
echo                                        ##/                                           
echo                                        (#/                                           
echo                                        ##(,,,..                                      
echo                         ,(##(*.        ##/  .,**#######*                             
echo                   ,##*.                /##             .*(###*                       
echo                ,,                       ##                    .(#(                   
echo                     /##.           ./(  /##############/          *##                
echo                 ####*      .##########  (#(              *#(*#.     *###             
echo              ,####.     (#########*     (#/ *###              *###/   ###(           
echo            ,####.     ######*           (##       ,#.            ##########          
echo          ,#####      ###(      ,#####/  ##/          /#*           .########         
echo         ######,      #,      (#/####(   ##((/*.       .##            ##(####.        
echo        *####(#,            .##,  *#(    ,      /##,  ,(##            #######         
echo        ,#######,           (#.      .(./((#    /#######,     ((      ######          
echo         #######(#.          ##,             ,#######,      (###     ,#####*          
echo          ##########           .(#.        .....         /#####     .#####*           
echo           *########(#/            ./##.           ,./######.      /####,             
echo              ##      /###*               #######(######,        */#(                 
echo                ,#.         (#######/(//(######*####.         .##                     
echo                    ,,                                                                
echo[                                                                                      
echo                                          ,**                                         
echo                                          )//                                         
echo                                          *##                                         
echo                                           )#                                         
echo                                          *##             
echo[                            
echo                              ESTABLISHING CONNECTION...   
timeout /t 5 /nobreak > NUL   
goto introcutscene3

:introcutscene3
title ECLIPTIC P2P CHAT 0.0.9 (CONNECTED)
cls
echo[
echo ECLIPTIC P2P CHAT (Chatting with Flynn)
echo --------------------------------------------------------------------------------------------------
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
echo[
timeout /t 3 /nobreak > NUL
echo Flynn: yo, man. i came across this free training software.
timeout /t 3 /nobreak > NUL  
echo Flynn: apparently it's for some company to access their employees cognitive skills?
timeout /t 5 /nobreak > NUL 
echo Flynn: idk. anyway, i'm gonna send you a download for the software rn 
timeout /t 3 /nobreak > NUL
echo Flynn: let me know what u think lol
timeout /t 3 /nobreak > NUL
echo                  ------------------------- FLYNN DISCONNECTED -------------------------
timeout /t 3 /nobreak > NUL
goto introcutscene4

:introcutscene4
title ECLIPTIC P2P CHAT 0.0.9 (DISCONNECTING..)
cls                                                                             
echo[                                                                                     
echo                                        (##                                           
echo                                        ##/                                           
echo                                        (#/                                           
echo                                        ##(,,,..                                      
echo                         ,(##(*.        ##/  .,**#######*                             
echo                   ,##*.                /##             .*(###*                       
echo                ,,                       ##                    .(#(                   
echo                     /##.           ./(  /##############/          *##                
echo                 ####*      .##########  (#(              *#(*#.     *###             
echo              ,####.     (#########*     (#/ *###              *###/   ###(           
echo            ,####.     ######*           (##       ,#.            ##########          
echo          ,#####      ###(      ,#####/  ##/          /#*           .########         
echo         ######,      #,      (#/####(   ##((/*.       .##            ##(####.        
echo        *####(#,            .##,  *#(    ,      /##,  ,(##            #######         
echo        ,#######,           (#.      .(./((#    /#######,     ((      ######          
echo         #######(#.          ##,             ,#######,      (###     ,#####*          
echo          ##########           .(#.        .....         /#####     .#####*           
echo           *########(#/            ./##.           ,./######.      /####,             
echo              ##      /###*               #######(######,        */#(                 
echo                ,#.         (#######/(//(######*####.         .##                     
echo                    ,,                                                                
echo[                                                                                      
echo                                          ,**                                         
echo                                          )//                                         
echo                                          *##                                         
echo                                           )#                                         
echo                                          *##  
echo[
echo                           DISCONNECTING FROM CHAT SERVERS...
timeout /t 5 /nobreak > NUL 
goto introcutscene5

:introcutscene5
color 0f
title DOSBOX 0.4
cls
echo[
echo  ____    _____   ____    ____     _____    __   __     
echo /\  _`\ /\  __`\/\  _`\ /\  _`\  /\  __`\ /\ \ /\ \    
echo \ \ \/\ \ \ \/\ \ \,\L\_\ \ \L\ \\ \ \/\ \\ `\`\/'/'   
echo  \ \ \ \ \ \ \ \ \/_\__ \\ \  _ ''\ \ \ \ \`\/ \ /     
echo   \ \ \_\ \ \ \_\ \/\ \L\ \ \ \L\ \\ \ \_\ \  \/'/\`\  
echo    \ \____/\ \_____\ `\____\ \____/ \ \_____\ /\_\\ \_\
echo     \/___/  \/_____/\/_____/\/___/   \/_____/ \/_/ \/_/
echo        WELCOME BACK TO DOSBOX, OPERATOR "Felix"!
echo[
timeout /t 2 /nobreak > NUL
echo PACKAGE "Auxilium-Cracked.rar" DETECTED!
timeout /t 2 /nobreak > NUL
echo "DOWNLOADING... (1%)"
timeout /t 3 /nobreak > NUL 
echo "DOWNLOADING... (12%)"
timeout /t 2 /nobreak > NUL 
echo "DOWNLOADING... (35%)"
timeout /t 1 /nobreak > NUL
echo "DOWNLOADING... (36%)"
timeout /t 1 /nobreak > NUL
echo "DOWNLOADING... (37%)"
timeout /t 4 /nobreak > NUL
echo "DOWNLOADING... (52%)"
echo "DOWNLOADING... (57%)"
timeout /t 5 /nobreak > NUL
echo "DOWNLOADING... (75%)"
timeout /t 2 /nobreak > NUL
echo "DOWNLOADING... (95%)"
timeout /t 3 /nobreak > NUL
echo "DOWNLOADING... (99%)"
timeout /t 7 /nobreak > NUL
echo "DOWNLOADED! REFRESHING DOSBOX.."
timeout /t 3 /nobreak > NUL
cls
echo[
echo  ____    _____   ____    ____     _____    __   __     
echo /\  _`\ /\  __`\/\  _`\ /\  _`\  /\  __`\ /\ \ /\ \    
echo \ \ \/\ \ \ \/\ \ \,\L\_\ \ \L\ \\ \ \/\ \\ `\`\/'/'   
echo  \ \ \ \ \ \ \ \ \/_\__ \\ \  _ ''\ \ \ \ \`\/ \ /     
echo   \ \ \_\ \ \ \_\ \/\ \L\ \ \ \L\ \\ \ \_\ \  \/'/\`\  
echo    \ \____/\ \_____\ `\____\ \____/ \ \_____\ /\_\\ \_\
echo     \/___/  \/_____/\/_____/\/___/   \/_____/ \/_/ \/_/
echo        WELCOME BACK TO DOSBOX, OPERATOR "Felix"!
echo[
timeout /t 1 /nobreak > NUL
echo                    SELECT AN OPTION:
echo                    (ENTER A NUMBER)
timeout /t 2 /nobreak > NUL
echo[
echo 1. Run Auxilium-Cracked.exe 
echo 2. Shutdown DOSBOX 
echo 3. Uninstall DOSBOX [COMING 1998]
echo[
set /p "dosbox=Selected option: "
if "%dosbox%" equ "1" goto introcutscene6
if "%dosbox%" equ "2" exit
goto introcutscene5

:introcutscene6
title DOSBOX 0.4 (OPENING PROGRAM..)
cls
echo[
echo  ____    _____   ____    ____     _____    __   __     
echo /\  _`\ /\  __`\/\  _`\ /\  _`\  /\  __`\ /\ \ /\ \    
echo \ \ \/\ \ \ \/\ \ \,\L\_\ \ \L\ \\ \ \/\ \\ `\`\/'/'   
echo  \ \ \ \ \ \ \ \ \/_\__ \\ \  _ ''\ \ \ \ \`\/ \ /     
echo   \ \ \_\ \ \ \_\ \/\ \L\ \ \ \L\ \\ \ \_\ \  \/'/\`\  
echo    \ \____/\ \_____\ `\____\ \____/ \ \_____\ /\_\\ \_\
echo     \/___/  \/_____/\/_____/\/___/   \/_____/ \/_/ \/_/
echo[
echo         RUNNING PACKAGE "Auxilium-Cracked.exe"..
timeout /t 5 /nobreak > NUL
goto introcutscene7

:introcutscene7
cd %appdata%
cd Auxilium
echo .> introseen.txt
goto startupmessage

:startupmessage
title Auxilium [DEMO] [CFW: arm9loaderhax]
cls
if exist "%appdata%\Auxilium\darkmode.txt" (
    color 70
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    color 9f
)
echo[
set /a ran=%random% %% 141 + 1
if "%ran%" leq "134" echo                         [ This experience is best enjoyed with your favourite music. ]
if "%ran%" geq "141" echo                         [ This experience is best enjoyed with your favourite music. ]
if "%ran%" equ "135" echo                   [ This experience is best enjoyed with your favourite type of narcotics. ]
if "%ran%" equ "136" echo                                      [ P.M. died for this, probably. ]
if "%ran%" equ "137" echo                 [ This experience is best enjoyed within a controlled environment, unconsious. ]
if "%ran%" equ "138" echo                                     [ Not affiliated with Newgrounds. ]
if "%ran%" equ "139" echo                              [ Game discontinued due to criminal harassment. ]
if "%ran%" equ "140" echo                                       [ jfdgfjgfkjglfglkjgdlfkglk ]
timeout /t 5 /nobreak > NUL
echo                                 [ Thank you for playing. Version: Demo.v3 ]
timeout /t 4 /nobreak > NUL
goto menu

::Main menu stuff
::Things like options are also below lol

:menu
title Auxilium [DEMO] [CFW: arm9loaderhax]
cls
if exist "%appdata%\Auxilium\darkmode.txt" (
    color 70
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    color 9f
)
echo[
echo  ______                      ___                               
echo /\  _  \                 __ /\_ \    __                        
echo \ \ \L\ \  __  __  __  _/\_\\//\ \  /\_\  __  __    ___ ___    
echo  \ \  __ \/\ \/\ \/\ \/'\/\ \ \ \ \ \/\ \/\ \/\ \ /' __` __`\  
echo   \ \ \/\ \ \ \_\ \/    /\ \ \ \_\ \_\ \ \ \ \_\ \/\ \/\ \/\ \ 
echo    \ \_\ \_\ \____//\_/\_\\ \_\/\____\\ \_\ \____/\ \_\ \_\ \_\
echo     \/_/\/_/\/___/ \//\/_/ \/_/\/____/ \/_/\/___/  \/_/\/_/\/_/
echo                hacked by smea, riley and ritz
echo[
echo 1. Player One
echo 2. Player Two
echo 3. Singleplayer
echo 4. Options
echo 5. arm9loaderhax Options
echo 6. Exit Auxilium
echo[
set /p "menu=Selected option: "
if "%menu%" equ "1" goto playerone     
if "%menu%" equ "2" goto playertwo     
if "%menu%" equ "3" goto singleplayerchecker
if "%menu%" equ "4" goto options     
if "%menu%" equ "5" goto arm9options
if "%menu%" equ "6" exit
goto menu

:arm9options
cls
echo[
echo                              __   _____           __                                  
echo                            /'_ `\/\  __`\        /\ \__  __                           
echo    __     _ __    ___ ___ /\ \L\ \ \ \/\ \  _____\ \ ,_\/\_\    ___     ___     ____  
echo  /'__`\  /\`'__\/' __` __`\ \___, \ \ \ \ \/\ '__`\ \ \/\/\ \  / __`\ /' _ `\  /',__\ 
echo /\ \L\.\_\ \ \/ /\ \/\ \/\ \/__,/\ \ \ \_\ \ \ \L\ \ \ \_\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo \ \__/.\_\\ \_\ \ \_\ \_\ \_\   \ \_\ \_____\ \ ,__/\ \__\\ \_\ \____/\ \_\ \_\/\____/
echo  \/__/\/_/ \/_/  \/_/\/_/\/_/    \/_/\/_____/\ \ \/  \/__/ \/_/\/___/  \/_/\/_/\/___/ 
echo                                               \ \_\                                   
echo                                                \/_/                                   
echo[
echo 1. Create NAND Dump
echo 2. Access kernel dev console
echo 3. Refresh game client
echo 4. Optimise performance
echo 5. Go to Main Menu
echo[
set /p "arm9options=Selected option: "
if "%arm9options%" equ "1" goto nanddump
if "%arm9options%" equ "2" goto kerneldev
if "%arm9options%" equ "3" goto auxiliumstartup
if "%arm9options%" equ "4" goto optimise
if "%arm9options%" equ "5" goto menu
goto arm9options

:nanddump
cls
echo[
echo  __  __  ______  __  __  ____        ____                                  
echo /\ \/\ \/\  _  \/\ \/\ \/\  _`\     /\  _`\                                
echo \ \ `\\ \ \ \L\ \ \ `\\ \ \ \/\ \   \ \ \/\ \  __  __    ___ ___   _____   
echo  \ \ , ` \ \  __ \ \ , ` \ \ \ \ \   \ \ \ \ \/\ \/\ \ /' __` __`\/\ '__`\ 
echo   \ \ \`\ \ \ \/\ \ \ \`\ \ \ \_\ \   \ \ \_\ \ \ \_\ \/\ \/\ \/\ \ \ \L\ \
echo    \ \_\ \_\ \_\ \_\ \_\ \_\ \____/    \ \____/\ \____/\ \_\ \_\ \_\ \ ,__/
echo     \/_/\/_/\/_/\/_/\/_/\/_/\/___/      \/___/  \/___/  \/_/\/_/\/_/\ \ \/ 
echo                                                                      \ \_\ 
echo                                                                       \/_/ 
echo[
echo Packing NAND to readable dump... (1/1349)
timeout /t 5 /nobreak > NUL
echo Packing NAND to readable dump... (735/1349)
timeout /t 6 /nobreak > NUL
echo Packing NAND to readable dump... (832/1349)
timeout /t 2 /nobreak > NUL
echo Packing NAND to readable dump... (833/1349)
timeout /t 1 /nobreak > NUL
echo Packing NAND to readable dump... (834/1349)
timeout /t 8 /nobreak > NUL
cd Downloads
mkdir DumpedNAND
echo Packing NAND to readable dump... (1000/1349)
timeout /t 2 /nobreak > NUL
cd DumpedNAND
echo .> CopiedAux.txt
timeout /t 1 /nobreak > NUL
cd ..
type %~dp0Auxilium.bat > DumpedNAND\CopiedAux.txt
ren DumpedNAND\CopiedAux.txt Dump.NAND
timeout /t 1 /nobreak > NUL
echo[
echo Packed NAND to readable dump successfully.
echo NAND dump located in "C:\Downloads\DumpedNAND".
echo Booting to main menu..
timeout /t 5 /nobreak > NUL
goto menu

:kerneldev
cls
title KernelConsole (arm9loaderhax)
echo[
echo  __  __                                ___    ____                                    ___             
echo /\ \/\ \                              /\_ \  /\  _`\                                 /\_ \            
echo \ \ \/'/'     __   _ __    ___      __\//\ \ \ \ \/\_\    ___     ___     ____    ___\//\ \      __   
echo  \ \ , \    /'__`\/\`'__\/' _ `\  /'__`\\ \ \ \ \ \/_/_  / __`\ /' _ `\  /',__\  / __`\\ \ \   /'__`\ 
echo   \ \ \\`\ /\  __/\ \ \/ /\ \/\ \/\  __/ \_\ \_\ \ \L\ \/\ \L\ \/\ \/\ \/\__, `\/\ \L\ \\_\ \_/\  __/ 
echo    \ \_\ \_\ \____\\ \_\ \ \_\ \_\ \____\/\____\\ \____/\ \____/\ \_\ \_\/\____/\ \____//\____\ \____\
echo     \/_/\/_/\/____/ \/_/  \/_/\/_/\/____/\/____/ \/___/  \/___/  \/_/\/_/\/___/  \/___/ \/____/\/____/
echo      By smea (@fruitypaw) and riley (448v)
echo[
echo                                                OPTIONS:
echo                                            [ 1. Open KernelConsole ]
echo                                            [ 2. Close Auxilium ] 
echo                                            [ 3. Boot to Main Menu ]
echo[
set /p "consolee=Selected option: "
if "%consolee%" equ "1" goto consoleprereq
if "%consolee%" equ "2" exit
if "%consolee%" equ "3" goto auxiliumstartup
goto kerneldev

:consoleprereq
cls
echo[
echo KernelConsole
echo Type "help" for command list
echo Type "back" to go to menu
echo Currently running most recent version
echo[
goto console

:console
set /p "commands="
if "%commands%" equ "help" goto helpcommand
if "%commands%" equ "back" goto kerneldev
if "%commands%" equ "exit" exit
if "%commands%" equ "warps" goto warps
if "%commands%" equ "warps2" goto warps2
if "%commands%" equ "warp" goto warp_prompt
if "%commands%" equ "reboot" goto auxiliumstartup
if "%commands%" equ "info" goto kerninfo
if "%commands%" equ "microgames" goto microgames
if "%commands%" equ "credits" goto kerncredits
if "%commands%" equ "optimise" goto kernoptimise
if "%commands%" equ "title" goto titleset
if "%commands%" equ "pgp" goto pgp
if "%commands%" equ "upcoming" goto upcoming
echo Unknown command, improper formatting or incorrect syntax & goto console

::Commands
:helpcommand
echo[
echo Commands list
echo help - Shows command list
echo back - Goes back to KernelConsole main menu
echo exit - Closes Auxilium
echo warps - Shows available variables
echo warp - Go to any available variable
echo reboot - Boots into the Auxilium startup
echo info - Shows available debug info
echo microgames - Lets you play microgames
echo credits - Shows credits
echo optimise - Optimises game client
echo title [title] - Changes window title (likely to be reset)
echo pgp - Grab PGP signature (used for NAND dumping)
echo upcoming - View upcoming commands / features
echo[
goto console

:kerninfo
echo[
echo Created by smea (@fruitypaw) and riley (@448v)
echo Running on: arm9loaderhax
echo Current bytes: 201 / %random%
echo Version: v1.0
echo[
echo Debug info:
echo site_triangles = %random%
echo ascii_load_time = 1
echo client_load_time = 1
echo theme = OK 
echo enabled = OK 
echo boot9loader = OK 
echo CFW_loader = OK 
echo[
goto console 

:microgames
echo[
echo Microgames will be available in arm9loaderhax v1.1
echo Thanks for your patience.
echo[
goto console

:upcoming
echo[
echo Upcoming features / commands:
echo Three new microgames
echo Theme customisation
echo CFW installation via console
echo[
goto console

:kerncredits
echo[
echo Auxilium by ritz (@enfier)
echo boot9strap by boot9strap team
echo arm9loaderhax by smea, riley and ritz
echo CFW injection methods by smea
echo Inspired from JesusAI
echo[
goto console

:optimise2
echo[
echo Optimizing game client..
timeout /t 5 /nobreak > NUL
echo Done! Made %random% internal optimizations in (5) seconds.
echo Booting to console...
timeout /t 3 /nobreak > NUL
goto consoleprereq

:titleset
echo[
echo Input desired window title below.
echo (It most likely will be reset!)
set /p "main1=Title: "
if "%main1%" equ "is0fjsi[odjfs[0ifjsdifjsf0" title %main1% & goto title2
title %main1% & goto title2

:title2
echo[
echo Successfully set title to "%main1%".
echo[
goto console

:pgp
echo[
echo PGP Signature = %random%
echo This will be reset everytime it is requested.
echo Use it for NAND dumping related purposes.
echo[
goto console

:warps
echo[
echo Currently available warps:
echo auxiliumstartup
echo menu 
echo playerchecker
echo introcutscene
echo introcutscene2
echo introcutscene3
echo introcutscene4
echo introcutscene5
echo introcutscene6
echo introcutscene7
echo startupmessage
echo playerone
echo playertwo
echo singleplayerchecker
echo options
echo arm9options
echo Input "warps2" for page two of available warps
echo[
goto console

:warps2
echo[
echo resetsavedata
echo darkmode
echo datareset
echo singleplayerconfirm
echo singleplayersave
echo sp_load_identify
echo singleplayerintro
echo sp_identify
echo sp_load_1
echo playeronestart
echo playertwostart
echo democredits
echo democredits2
echo experimentonefinish
echo experimentwofinish
echo kerneldev
echo console
echo[
goto console

:warp_prompt
echo[
echo Input available warp you want to go to:
set /p "warpselect=Warp to: "
if "%warpselect%" equ "auxiliumstartup" goto auxiliumstartup
if "%warpselect%" equ "menu" goto menu
if "%warpselect%" equ "playerchecker" goto playerchecker
if "%warpselect%" equ "introcutscene" goto introcutscene
if "%warpselect%" equ "introcutscene2" goto introcutscene2
if "%warpselect%" equ "introcutscene3" goto introcutscene3
if "%warpselect%" equ "introcutscene4" goto introcutscene4
if "%warpselect%" equ "introcutscene5" goto introcutscene5
if "%warpselect%" equ "introcutscene6" goto introcutscene6
if "%warpselect%" equ "introcutscene7" goto introcutscene7
if "%warpselect%" equ "startupmessage" goto startupmessage
if "%warpselect%" equ "playerone" goto playerone
if "%warpselect%" equ "playertwo" goto playertwo
if "%warpselect%" equ "singleplayerchecker" goto singleplayerchecker
if "%warpselect%" equ "options" goto options
if "%warpselect%" equ "arm9options" goto arm9options
if "%warpselect%" equ "resetsavedata" goto resetsavedata
if "%warpselect%" equ "darkmode" goto darkmode
if "%warpselect%" equ "datareset" goto datareset
if "%warpselect%" equ "singleplayerconfirm" goto singleplayerconfirm
if "%warpselect%" equ "singleplayersave" goto singleplayersave
if "%warpselect%" equ "sp_load_identify" goto sp_load_identify
if "%warpselect%" equ "singleplayerintro" goto singleplayerintro
if "%warpselect%" equ "sp_identify" goto sp_identify
if "%warpselect%" equ "sp_load_1" goto sp_load_1
if "%warpselect%" equ "playeronestart" goto playeronestart
if "%warpselect%" equ "playertwostart" goto playertwostart
if "%warpselect%" equ "democredits" goto democredits
if "%warpselect%" equ "democredits2" goto democredits2
if "%warpselect%" equ "experimentonefinish" goto experimentonefinish
if "%warpselect%" equ "experimentwofinish" goto experimentwofinish
if "%warpselect%" equ "kerneldev" goto kerneldev
if "%warpselect%" equ "console" goto console
echo Unknown warp & goto console

::End of commands

:optimise
cls
echo[
echo Optimizing game client..
timeout /t 5 /nobreak > NUL
echo Done! Made %random% internal optimizations in (5) seconds.
echo Booting to menu...
timeout /t 3 /nobreak > NUL
goto auxiliumstartup

:options
if exist "%appdata%\Auxilium\darkmode.txt" (
    color 70
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    color 9f
)
cls
echo[
echo  _____           __                                  
echo /\  __`\        /\ \__  __                           
echo \ \ \/\ \  _____\ \ ,_\/\_\    ___     ___     ____  
echo  \ \ \ \ \/\ '__`\ \ \/\/\ \  / __`\ /' _ `\  /',__\ 
echo   \ \ \_\ \ \ \L\ \ \ \_\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo    \ \_____\ \ ,__/\ \__\\ \_\ \____/\ \_\ \_\/\____/
echo     \/_____/\ \ \/  \/__/ \/_/\/___/  \/_/\/_/\/___/ 
echo              \ \_\                                   
echo               \/_/                                   
echo[
echo 1. Reset Save Data
echo 2. Debug Mode [COMING SOON]
if exist "%appdata%\Auxilium\darkmode.txt" (
    echo 3. Dark Mode [ENABLED]
)
if not exist "%appdata%\Auxilium\darkmode.txt" (
    echo 3. Dark Mode [DISABLED]
)
echo 4. Go Back to Main Menu
set /p "options=?: "
if "%options%" equ "1" goto resetsavedata
if "%options%" equ "3" goto darkmode
if "%options%" equ "4" goto menu
goto options

:darkmode
cls
if not exist "%appdata%\Auxilium\darkmode.txt" (
    cd %appdata%\Auxilium
    echo .> darkmode.txt
    goto options
)
del "%appdata%\Auxilium\darkmode.txt" & goto options

:resetsavedata
cls
echo[
echo  _____           __                                  
echo /\  __`\        /\ \__  __                           
echo \ \ \/\ \  _____\ \ ,_\/\_\    ___     ___     ____  
echo  \ \ \ \ \/\ '__`\ \ \/\/\ \  / __`\ /' _ `\  /',__\ 
echo   \ \ \_\ \ \ \L\ \ \ \_\ \ \/\ \L\ \/\ \/\ \/\__, `\
echo    \ \_____\ \ ,__/\ \__\\ \_\ \____/\ \_\ \_\/\____/
echo     \/_____/\ \ \/  \/__/ \/_/\/___/  \/_/\/_/\/___/ 
echo              \ \_\                                   
echo               \/_/     
echo Are you sure you want to reset your save data?
echo This will clear the entire game, making you start from scratch.
echo Type "YES" to continue. Type "NO" to go back to the Options menu.
echo[
set /p "resetsave=?: "
if "%resetsave%" equ "NO" goto options
if "%resetsave%" equ "No" goto options
if "%resetsave%" equ "no" goto options
if "%resetsave%" equ "YES" goto datareset
if "%resetsave%" equ "Yes" goto datareset
if "%resetsave%" equ "yes" goto datareset
goto resetsavedata

:datareset
cls
cd %appdata%
cd Auxilium
del playone.txt
del playtwo.txt
del friendlypartner1.txt
del friendlypartner2.txt
del unfriendlypartner1.txt
del unfriendlypartner2.txt
goto startup

::The code below is releated to the singleplayer section of Auxilium.
::Looking for multiplayer? It's directly under these parts of the code.
::Be careful when editing random strings!

:singleplayerchecker
cls
if exist "%appdata%\Auxilium\singleplayersave1.txt" (
    goto singleplayerintro
)
goto singleplayerconfirm

:singleplayerconfirm
cls
echo[
echo  ______                      ___                               
echo /\  _  \                 __ /\_ \    __                        
echo \ \ \L\ \  __  __  __  _/\_\\//\ \  /\_\  __  __    ___ ___    
echo  \ \  __ \/\ \/\ \/\ \/'\/\ \ \ \ \ \/\ \/\ \/\ \ /' __` __`\  
echo   \ \ \/\ \ \ \_\ \/    /\ \ \ \_\ \_\ \ \ \ \_\ \/\ \/\ \/\ \ 
echo    \ \_\ \_\ \____//\_/\_\\ \_\/\____\\ \_\ \____/\ \_\ \_\ \_\
echo     \/_/\/_/\/___/ \//\/_/ \/_/\/____/ \/_/\/___/  \/_/\/_/\/_/
echo                   created by ritz (@enfier)
echo[
echo Would you like to start the Auxilium Singleplayer Campaign?
echo This is entirely seperate from the Multiplayer Campaign.
echo[
echo Please type "YES" to generate a Singleplayer save file.
echo Please type "NO" to return to the Main Menu.
echo[
set /p "singleplayerconfirm=Selected option: "
if "%singleplayerconfirm%" equ "YES" goto singleplayersave
if "%singleplayerconfirm%" equ "Yes" goto singleplayersave
if "%singleplayerconfirm%" equ "yes" goto singleplayersave
if "%singleplayerconfirm%" equ "no" goto menu
if "%singleplayerconfirm%" equ "No" goto menu
if "%singleplayerconfirm%" equ "NO" goto menu
goto singleplayerconfirm

:singleplayersave
cls
cd %appdata%
cd Auxilium
echo .> singleplayersave1.txt
goto singleplayerintro

:singleplayerintro
cls
echo[
timeout /t 3 /nobreak > NUL   
echo                      WELCOME, OPERATOR, TO:
timeout /t 3 /nobreak > NUL
echo  ______                      ___                               
echo /\  _  \                 __ /\_ \    __                        
echo \ \ \L\ \  __  __  __  _/\_\\//\ \  /\_\  __  __    ___ ___    
echo  \ \  __ \/\ \/\ \/\ \/'\/\ \ \ \ \ \/\ \/\ \/\ \ /' __` __`\  
echo   \ \ \/\ \ \ \_\ \/    /\ \ \ \_\ \_\ \ \ \ \_\ \/\ \/\ \/\ \ 
echo    \ \_\ \_\ \____//\_/\_\\ \_\/\____\\ \_\ \____/\ \_\ \_\ \_\
echo     \/_/\/_/\/___/ \//\/_/ \/_/\/____/ \/_/\/___/  \/_/\/_/\/_/
timeout /t 3 /nobreak > NUL
echo[
echo                   CREATED BY COGITARE INDUSTRIES
timeout /t 1 /nobreak > NUL
echo                COPYRIGHT 1995. ALL RIGHTS RESERVED.
timeout /t 1 /nobreak > NUL
echo           BUSINESS COPY. UNAUTHORIZED SHARING IS PROHIBITED.
timeout /t 1 /nobreak > NUL
echo                         Loading program..
timeout /t 5 /nobreak > NUL
goto sp_load_identify

:sp_load_identify
echo[
cls
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 7 /nobreak > NUL
goto sp_identify

:sp_identify
cls
echo[
timeout /t 2 /nobreak > NUL
echo Thank you, fellow Operator, for downloading AUXILIUM!
timeout /t 3 /nobreak > NUL
echo AUXILIUM will now attempt to locate information about you from your personal computer.
timeout /t 4 /nobreak > NUL
echo (as agreed upon during your employee introduction day.)
timeout /t 5 /nobreak > NUL
echo[
echo Searching your computer for employee contacts / info..
timeout /t 6 /nobreak > NUL
echo[
echo Operator Name: "Felix"
timeout /t 1 /nobreak > NUL
echo Employee ID: "UNKNOWN"
timeout /t 1 /nobreak > NUL
echo Setup Date: "%DATE%"
timeout /t 1 /nobreak > NUL
echo Operator Status: "CURRENTLY ALIVE"
timeout /t 3 /nobreak > NUL
echo[
echo AUXILIUM has now set itself up in your computer's /home/ directory.
echo This can be changed if needed. However, it is not recommended.
echo To begin the first puzzle, please input your Operator name into the box below.
echo[
echo This program will refresh if an incorrect name is generated.
set /p "sp_identify=Operator Name: "
if "%sp_identify%" equ "Felix" goto sp_load_1
if "%sp_identify%" equ "FELIX" goto sp_load_1
if "%sp_identify%" equ "felix" goto sp_load_1
goto sp_load_identify

:sp_load_1
if not exist "%appdata%\Auxilium\splvl1.txt" (
    cd %appdata%
    cd Auxilium
    echo .> splvl1.txt
)
echo[
cls
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 7 /nobreak > NUL
goto sp_level_1

:sp_level_1
cls
echo[
echo Welcome to your first test!
timeout /t 2 /nobreak > NUL
echo To complete this test, you must decode a message.
timeout /t 2 /nobreak > NUL
echo You will be given a key to use, as well as a series of encoded letters.
timeout /t 2 /nobreak > NUL
echo Decode the message to advance.
timeout /t 2 /nobreak > NUL
echo Good luck!
timeout /t 2 /nobreak > NUL
goto sp_level_1_alt

:sp_level_1_alt
cls
echo[
echo 24 - D 
echo 36 - I
echo 4 - S 
echo 25 - K
echo 13 - R
echo 42 - V 
echo 10 - E 
echo 60 - F
echo[
echo Message: 24364252413364210
echo[
set /p "sp_level_1=Decoded message: "
if "%sp_level_1%" equ "DISK DRIVE" goto sp_level_1_complete
if "%sp_level_1%" equ "disk drive" goto sp_level_1_complete
if "%sp_level_1%" equ "DISKDRIVE" goto sp_level_1_complete
if "%sp_level_1%" equ "diskdrive" goto sp_level_1_complete
goto sp_level_1_alt

:sp_level_1_complete
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo              LEVEL COMPLETE!
timeout /t 2 /nobreak > NUL
echo    PLEASE INPUT DISKETTE FOR SP_LEVEL_2
timeout /t 2 /nobreak > NUL
echo           AWAITING DISKETTE...
timeout /t 3 /nobreak > NUL
goto sp_dosbox_crash

:sp_dosbox_crash
cls
color 0f
timeout /t 2 /nobreak > NUL
echo[
echo  ____    _____   ____    ____     _____    __   __     
echo /\  _`\ /\  __`\/\  _`\ /\  _`\  /\  __`\ /\ \ /\ \    
echo \ \ \/\ \ \ \/\ \ \,\L\_\ \ \L\ \\ \ \/\ \\ `\`\/'/'   
echo  \ \ \ \ \ \ \ \ \/_\__ \\ \  _ ''\ \ \ \ \`\/ \ /     
echo   \ \ \_\ \ \ \_\ \/\ \L\ \ \ \L\ \\ \ \_\ \  \/'/\`\  
echo    \ \____/\ \_____\ `\____\ \____/ \ \_____\ /\_\\ \_\
echo     \/___/  \/_____/\/_____/\/___/   \/_____/ \/_/ \/_/
echo          DOSBOX has reached an unexpected error.
echo                     Error Code 114.
timeout /t 2 /nobreak > NUL
echo[
echo           Please insert recovery diskette now.
echo  A recovery diskette was included with your DOSBOX purchase.
timeout /t 3 /nobreak > NUL
echo[
echo                  Diskette received!
timeout /t 2 /nobreak > NUL
echo                  Reading contents..
timeout /t 5 /nobreak > NUL
echo                Reinstalling firmware..
timeout /t 6 /nobreak > NUL
echo   AVUPNOA SLA'Z KV ZOPA AOHA NLAZ BZ PU JYPUNL JVTWZ
timeout /t 1 /nobreak > NUL
goto sp_credits

:sp_credits
goto democredits


::The code below is related to multiplayer.
::Anything below this line of text refers to the multiplayer section of Auxilium.
::(Unless it says so, of course.)
::Be careful when editing random strings!

:error
cls
echo[
echo               Auxilium has ran into an error.
echo       To fix this error, please restart your client.
echo      If the problem proceeds, contact @enfier on GitHub.
echo                    Code: 404-305-Q52
timeout /t 60 /nobreak > NUL
goto error

:playerone
cls
cd %appdata%
cd Auxilium
echo .> playone.txt
goto playeronemain

:playertwo
cls
cd %appdata%
cd Auxilium
echo .> playtwo.txt
goto playertwomain

:playeronemain
cls
echo[
echo    Please input Player One's start code (found on Player Two's screen)
echo                 Player Two's start code: 0f71ba10
set /p "playerone=?: "
if "%playerone%" equ "0z9x91na" goto playeronestart
goto playerone

:playertwomain
cls
echo[
echo    Please input Player Two's start code (found on Player One's screen)
echo                 Player One's start code: 0z9x91na
set /p "playertwo=?: "
if "%playertwo%" equ "0f71ba10" goto playertwostart
goto playertwo

:playeronestart
cls
echo[
echo         Welcome to Auxilium, Player One!
echo    To begin, please input your partner's name:
echo[
set /p "playeronestart=Partner: "
if "%playeronestart%" equ "a" goto playeronenameinput
set partnername=%playeronestart% & goto playeronenameinput

:playertwostart
cls
echo[
echo         Welcome to Auxilium, Player Two!
echo    To begin, please input your partner's name:
echo[
set /p "playertwostart=Partner: "
if "%playertwostart%" equ "a" goto playertwonameinput
set partnername=%playertwostart% & goto playertwonameinput

:playeronenameinput
cls
echo[
echo                          Thank you for the input!
echo           For this exercise, your partner will be referred to as:
echo                               "%playeronestart%".
echo   If you have any issues with this, please contact us at [REDACTED]@gmail.com.
echo[                                        
echo            To begin Experiment One, input your start code below.
echo                    Partner Two's start code: r0t6x82j
echo[
set /p "playeronenameinput=?: "
if "%playeronenameinput%" equ "f0xj1j9x" goto experimentoneload
goto playeronenameinput

:playertwonameinput
cls
echo[
echo                          Thank you for the input!
echo           For this exercise, your partner will be referred to as:
echo                               "%playertwostart%".
echo   If you have any issues with this, please contact us at [REDACTED]@gmail.com.
echo[                                        
echo            To begin Experiment One, input your start code below.
echo                    Partner One's start code: f0xj1j9x
echo[
set /p "playertwonameinput=?: "
if "%playertwonameinput%" equ "r0t6x82j" goto experimentoneload
goto playertwonameinput

:experimentoneload
echo[
cls
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimentonechecker

:experimentonechecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto experimentonep1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto experimentonep2
)
goto error

:experimentonep1
title Auxilium [Experiment One, Player One] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo Please solve the following math equation:
echo              12 x 5 ÷ 3
echo (Do not tell your partner this equation!)
set /p "mathequation=Answer: "
if "%mathequation%" equ "20" goto correctanswer
goto incorrectanswer

:incorrectanswer
cls
echo[
echo    You answered incorrectly.
echo       Please try again.
timeout /t 3 /nobreak > NUL
goto experimentonep1

:correctanswer
cls
echo[
echo                    You answered correctly!
echo       To help your partner, tell them the answer is "20".
echo       Feeling evil? Tell your partner the answer is "35".
echo[
echo   Once your partner completes their task, enter the answer below.
echo[
set /p "partnersanswer=Answer: "
if "%partnersanswer%" equ "Science Equipment" goto friendlypartner2
if "%partnersanswer%" equ "SCIENCE EQUIPMENT" goto friendlypartner2
if "%partnersanswer%" equ "science equipment" goto friendlypartner2
if "%partnersanswer%" equ "Science equipment" goto friendlypartner2
if "%partnersanswer%" equ "science Equipment" goto friendlypartner2
if "%partnersanswer%" equ "computer parts" goto unfriendlypartner2
if "%partnersanswer%" equ "Computer Parts" goto unfriendlypartner2
if "%partnersanswer%" equ "Computer parts" goto unfriendlypartner2
if "%partnersanswer%" equ "computer Parts" goto unfriendlypartner2
if "%partnersanswer%" equ "COMPUTER PARTS" goto unfriendlypartner2
goto notrightanswer

:notrightanswer
cls
echo[
echo           Incorrect answer.
timeout /t 3 /nobreak > NUL
goto correctanswer

:experimentonep2
title Auxilium [Experiment One, Player Two] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo    Your partner is currently completing a task.
echo Once they finish it, they will tell you the answer.
echo        Please enter said answer below.
echo[
set /p "partnersanswer2=Answer: "
if "%partnersanswer2%" equ "20" goto friendlypartner
if "%partnersanswer2%" equ "35" goto unfriendlypartner
goto experimentonep2

:friendlypartner
cls
cd %appdata%
cd Auxilium
echo .> friendlypartner1.txt
goto experimentonep2part2

:unfriendlypartner
cls
cd %appdata%
cd Auxilium
echo .> unfriendlypartner1.txt
goto experimentonep2part2

:friendlypartner2
cls
cd %appdata%
cd Auxilium
echo .> friendlypartner2.txt
goto experimentonefinalbit

:unfriendlypartner2
cls
cd %appdata%
cd Auxilium
echo .> unfriendlypartner2.txt
goto experimentonefinalbit

:experimentonep2part2
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 3 /nobreak > NUL
goto experimentonewarehouse

:experimentonewarehouse
cls
echo[
echo                Welcome to the Warehouse!
echo Your job is to locate which of these items are not present:
echo[
echo 1. Forklift
echo 2. Court Documents
echo 3. Arcade Cabinet 
echo 4. Science Equipment
echo 5. Computer Parts
echo[
echo You can travel to these locations to find these items:
echo[
echo 1. Left Wing 
echo 2. Right Wing 
echo 3. Back Room
echo[
echo Select a location to travel to.
echo Then, when you find the missing item, enter its name below.
set /p "warehouse=?: "
if "%warehouse%" equ "1" goto leftwing
if "%warehouse%" equ "2" goto rightwing
if "%warehouse%" equ "3" goto backroom
if "%warehouse%" equ "4" goto warehousecomplete
goto experimentonewarehouse

:leftwing
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo              You are in: LEFT WING
echo[
echo 1. Search for Items
echo 2. Go Back to Warehouse
echo[
set /p "leftwing=Selected option: "
if "%leftwing%" equ "1" goto searchleftwing
if "%leftwing%" equ "2" goto experimentonewarehouse
goto leftwing

:searchleftwing
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo              Searching for items..
timeout /t 3 /nobreak > NUL
goto leftwingsearched

:leftwingsearched
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo              You are in: LEFT WING
echo[
echo You found:
echo 1. Forklift
echo 2. Arcade Cabinet
echo[
echo Type anything to go back to the warehouse.
echo[
set /p "leftwingsearched=?: "
if "%leftwingsearched%" equ "i8ujdf09isuf0s9dfudisf098" exit
goto experimentonewarehouse

:rightwing
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo             You are in: RIGHT WING
echo[
echo 1. Search for Items
echo 2. Go Back to Warehouse
echo[
set /p "rightwing=Selected option: "
if "%rightwing%" equ "1" goto searchrightwing
if "%rightwing%" equ "2" goto experimentonewarehouse
goto rightwing

:searchrightwing
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo              Searching for items..
timeout /t 3 /nobreak > NUL
goto rightwingsearched

:rightwingsearched
cls
echo[
echo  _____________________________________________
echo l.'',                                     ,''.l
echo l.'.'',                                 ,''.'.l
echo l.'.'.'',                             ,''.'.'.l
echo l.'.'.'.'',                         ,''.'.'.'.l
echo l.'.'.'.'.l                         l.'.'.'.'.l
echo l.'.'.'.'.l===;                 ;===l.'.'.'.'.l
echo l.'.'.'.'.l:::l',             ,'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l'.l, _______ ,l.'l---l.'.'.'.'.l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l,',',',',l---l',l'l???????l'l,'l---l,',',',',l
echo l.'.'.'.'.l:::l'.l'l???????l'l.'l:::l.'.'.'.'.l
echo l.'.'.'.'.l---l','   /MMM\   ','l---l.'.'.'.'.l
echo l.'.'.'.'.l===:'    /MMMMM\    ':===l.'.'.'.'.l
echo l.'.'.'.'.lMMMMMMMMMMMMMMMMMMMMMMMMMl.'.'.'.'.l
echo l.'.'.'.','       /MMMMMMMMM\       ','.'.'.'.l
echo l.'.'.','        /MMMMMMMMMMM\        ','.'.'.l
echo l.'.','         /MMMMMMMMMMMMM\         ','.'.l
echo l.','          /MMMMMMMMMMMMMMM\          ','.l
echo l;____________/MMMMMMMMMMMMMMMMM\____________;l
echo             You are in: RIGHT WING
echo[
echo No items were found!
echo[
echo Type anything to go back to the warehouse.
echo[
set /p "rightwingsearched=?: "
if "%rightwingsearched%" equ "i8ujdf09isuf0s9dfudisf098" exit
goto experimentonewarehouse

:backroom
cls
echo[
echo __ _____ ____ _____ ______ _______ _____ ______ ______ ______ ___
echo __]_____]____]_____]______]_______]_____]______]______]______]___]
echo              _                       _______  llllll;;l.ll##ll=lll
echo   _                           _     l   *  3l lll-ll =l-ll==ll+lll
echo   ____________       _              l       l lll_ll__l_ll__ll_lll
echo l`.   --__     `.        _______    l       l ll================ll
echo l  `._____________`.  .'l.-----.l   _ ======l lll l -llllll!!l-lll
echo l   l .-----------.l l  ll     ll  (o))   _ l lll l**l=l+-l##l=lll
echo l   l l  .-------.ll l  ll     ll  /ll   / \`._l  .-.l_l__l__l_lll
echo l   l l  l       lll_`..l'_____'l //ll___\_/.'\l ===============ll
echo l   l l`.l  ==== lll l `---------(o)ll         \  /-'-=l+l.-l-'lll
echo l`. l l`.l_______lll/l______________ll__.--._ (o)/l=l;:l-lllllllll
echo l  `l_l===========ll_l                 (____)-.'ooo_l__l_l__l__lll
echo l   l l  .-------.ll                           `._\=============ll
echo l   l l  l       lll                             `.     l       ll
echo l   l l`.l  ==== lll`._____________________________`.  olo      ll
echo l`. l l`.l_______lll l._.----------------.__.-------.l__l_______ll
echo l  `l_l===========ll ll '----------------'  l .---. ll  __
echo l   l l  .-------.ll ll               l     l_______ll.'\.'.
echo l   l l  l       lll ll ______________l     l .---. ll'.__.'
echo l   l l`.l  ==== lll ll                `.   l_______lll  _ l
echo  `. l l`.l_______lll ll                  `. l .---. lll_  ll
echo    `l_l===========ll`ll                    `l_______lll____l
echo                        `.                    `.
echo                          `.____________________`.
echo                            You are in: Back Room
echo[
echo 1. Search for Items
echo 2. Go Back to Warehouse
echo[
set /p "backroom=Selected option: "
if "%backroom%" equ "1" goto searchbackroom
if "%backroom%" equ "2" goto experimentonewarehouse
goto backroom

:searchbackroom
cls
echo[
echo __ _____ ____ _____ ______ _______ _____ ______ ______ ______ ___
echo __]_____]____]_____]______]_______]_____]______]______]______]___]
echo              _                       _______  llllll;;l.ll##ll=lll
echo   _                           _     l   *  3l lll-ll =l-ll==ll+lll
echo   ____________       _              l       l lll_ll__l_ll__ll_lll
echo l`.   --__     `.        _______    l       l ll================ll
echo l  `._____________`.  .'l.-----.l   _ ======l lll l -llllll!!l-lll
echo l   l .-----------.l l  ll     ll  (o))   _ l lll l**l=l+-l##l=lll
echo l   l l  .-------.ll l  ll     ll  /ll   / \`._l  .-.l_l__l__l_lll
echo l   l l  l       lll_`..l'_____'l //ll___\_/.'\l ===============ll
echo l   l l`.l  ==== lll l `---------(o)ll         \  /-'-=l+l.-l-'lll
echo l`. l l`.l_______lll/l______________ll__.--._ (o)/l=l;:l-lllllllll
echo l  `l_l===========ll_l                 (____)-.'ooo_l__l_l__l__lll
echo l   l l  .-------.ll                           `._\=============ll
echo l   l l  l       lll                             `.     l       ll
echo l   l l`.l  ==== lll`._____________________________`.  olo      ll
echo l`. l l`.l_______lll l._.----------------.__.-------.l__l_______ll
echo l  `l_l===========ll ll '----------------'  l .---. ll  __
echo l   l l  .-------.ll ll               l     l_______ll.'\.'.
echo l   l l  l       lll ll ______________l     l .---. ll'.__.'
echo l   l l`.l  ==== lll ll                `.   l_______lll  _ l
echo  `. l l`.l_______lll ll                  `. l .---. lll_  ll
echo    `l_l===========ll`ll                    `l_______lll____l
echo                        `.                    `.
echo                          `.____________________`.
echo                            Searching for items..
timeout /t 3 /nobreak > NUL
goto backroomsearched

:backroomsearched
cls
echo[
echo __ _____ ____ _____ ______ _______ _____ ______ ______ ______ ___
echo __]_____]____]_____]______]_______]_____]______]______]______]___]
echo              _                       _______  llllll;;l.ll##ll=lll
echo   _                           _     l   *  3l lll-ll =l-ll==ll+lll
echo   ____________       _              l       l lll_ll__l_ll__ll_lll
echo l`.   --__     `.        _______    l       l ll================ll
echo l  `._____________`.  .'l.-----.l   _ ======l lll l -llllll!!l-lll
echo l   l .-----------.l l  ll     ll  (o))   _ l lll l**l=l+-l##l=lll
echo l   l l  .-------.ll l  ll     ll  /ll   / \`._l  .-.l_l__l__l_lll
echo l   l l  l       lll_`..l'_____'l //ll___\_/.'\l ===============ll
echo l   l l`.l  ==== lll l `---------(o)ll         \  /-'-=l+l.-l-'lll
echo l`. l l`.l_______lll/l______________ll__.--._ (o)/l=l;:l-lllllllll
echo l  `l_l===========ll_l                 (____)-.'ooo_l__l_l__l__lll
echo l   l l  .-------.ll                           `._\=============ll
echo l   l l  l       lll                             `.     l       ll
echo l   l l`.l  ==== lll`._____________________________`.  olo      ll
echo l`. l l`.l_______lll l._.----------------.__.-------.l__l_______ll
echo l  `l_l===========ll ll '----------------'  l .---. ll  __
echo l   l l  .-------.ll ll               l     l_______ll.'\.'.
echo l   l l  l       lll ll ______________l     l .---. ll'.__.'
echo l   l l`.l  ==== lll ll                `.   l_______lll  _ l
echo  `. l l`.l_______lll ll                  `. l .---. lll_  ll
echo    `l_l===========ll`ll                    `l_______lll____l
echo                        `.                    `.
echo                          `.____________________`.
echo                            You are in: Back Room
echo[
echo You found:
echo 1. Court Documents
echo 2. Computer Parts
echo[
echo Type anything to go back to the warehouse.
echo[
set /p "backroomsearched=?: "
if "%backroomsearched%" equ "i8ujdf09isuf0s9dfudisf098" exit
goto experimentonewarehouse

:warehousecomplete
cls
echo[
echo                      You found the missing item!
echo     To help your partner, tell them the Science Equipment was missing.
echo    Feeling evil? Tell your partner that the Computer Parts were missing.
echo[
echo  When your partner finishes their task, input the answer they give you below.
set /p "warehousecomplete=?: "
if "%warehousecomplete%" equ "left" goto experimentonefinish
if "%warehousecomplete%" equ "Left" goto experimentonefinish
if "%warehousecomplete%" equ "LEFT" goto experimentonefinish
if "%warehousecomplete%" equ "Right" goto experimentonefinish
if "%warehousecomplete%" equ "right" goto experimentonefinish
if "%warehousecomplete%" equ "RIGHT" goto experimentonefinish
goto warehousecomplete

:experimentonefinalbit
cls
echo[
echo               Your final puzzle for Experiment One:
echo                          A trust puzzle.
echo     If you trust your partner, tell them the answer is "Left".
echo   If you do not trust your partner, tell them the answer is "Right".
echo        After this, enter anything to finish the experiment.
echo[
set /p "experimentonefinalbit=?: "
if "%experimentonefinalbit%" equ "uhnsdfiusdfduiflghw3iugr5o34liu5y34i5ug35" goto experimentonefinish
goto experimentonefinish

:experimentonefinish
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo         EXPERIMENT ONE COMPLETE!
timeout /t 5 /nobreak > NUL
goto evalcheck

:evalcheck
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto evaluationplayerone
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto evaluationplayertwo
)
goto error

:evaluationplayerone
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "evalp1=?: "
if "%evalp1%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluationplayerone1
goto evaluationplayerone1

:evaluationplayerone1
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "evalp12=?: "
if "%evalp12%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluationplayerone2
goto evaluationplayerone2

:evaluationplayerone2
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp1commentsp1=?: "
if "%exp1commentsp1%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FirstSetOfCommentsPlayerOne%=%exp1commentsp1% & goto experiment2wait
set %FirstSetOfCommentsPlayerOne%=%exp1commentsp1% & goto experiment2wait

:evaluationplayertwo
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "evalp2=?: "
if "%evalp2%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluationplayertwo1
goto evaluationplayertwo1

:evaluationplayertwo1
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "evalp22=?: "
if "%evalp22%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluationplayertwo2
goto evaluationplayertwo2

:evaluationplayertwo2
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp1commentsp2=?: "
if "%exp1commentsp2%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FirstSetOfCommentsPlayerTwo%=%exp1commentsp2% & goto experiment2wait
set %FirstSetOfCommentsPlayerTwo%=%exp1commentsp2% & goto experiment2wait

:secretchecker2
cls
goto secretchecker3

:experiment2wait
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimenttwochecker

:experimenttwochecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto experimenttwop1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto experimenttwop2
)
goto error

:experimenttwop1
cls
title Auxilium [Experiment Two, Player One] [DEMO] [CFW: arm9loaderhax]
echo[
echo    Your partner is currently completing a task.
echo Once they finish it, they will tell you the answer.
echo        Please enter said answer below.
echo[
set /p "experimenttwoanswerfirst=Answer: "
if "%experimenttwoanswerfirst%" equ "0xf2bf2x" goto experimenttwolibrary
goto experimenttwop1

:experimenttwop2
title Auxilium [Experiment Two, Player Two] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                    Welcome to Experiment Two.
echo      The first puzzle requires communication with your partner.
echo     You will be given a set of questions to ask to your partner.
echo        Once they answer, input their answers into the game.
echo            These questions will appear in 10 seconds.
timeout /t 10 /nobreak > NUL
goto ex2p2q1

:ex2p2q1
cls
echo[
echo               Question One:
echo What is your favourite color from the rainbow?
echo    (Ask your partner these questions).
echo[
set /p "ex2p2q1=?: "
if "%ex2p2q1%" equ "shdfoisdjfsdi9fjsdf0sufjbnlackblakclvbjsdfijhsdfoui" goto ex2p2q2
goto ex2p2q2

:ex2p2q2
cls
echo[
echo           Question Two:
echo    What is your favourite hobby?
echo  (Ask your partner these questions).
echo[
set /p "ex2p2q2=?: "
if "%ex2p2q2%" equ "shdfoisdjfsdi9fjsdf0sufjbnlackblakclvbjsdfijhsdfoui" goto ex2p2q3
goto ex2p2q3

:ex2p2q3
cls
echo[
echo                        Question Three:
echo Would you be willing to give up one (or more) vital organs to science?
echo             (Ask your partner these questions).
echo[
set /p "ex2p2q3=?: "
if "%ex2p2q3%" equ "sadu9fs8fusdf09sdu8s9f0usf09fuyvjhtuyfgjhygsdfsdfkksdfkfdkbj,,,.bjha]" goto ex2p2finishquestions
goto ex2p2finishquestions

:ex2p2finishquestions
cls
echo[
echo                    Thank you for your co-operation with your partner!
echo As per the terms and services, one (or more) vital organs will be harvested once the experiment is over.
echo               Thank you for your continued support of Auxilium Industries!
echo[
echo           To advance your partner, their code to continue is "0xf2bf2x".
echo Then, your partner will complete their task and tell you the answer once they are finished.
echo[
set /p "exper=?: "
if "%exper%" equ "arizona" goto experimenttwofinalbit
if "%exper%" equ "Arizona" goto experimenttwofinalbit
if "%exper%" equ "ARIZONA" goto experimenttwofinalbit
if "%exper%" equ "ontario" goto experimenttwofinalbit
if "%exper%" equ "ONTARIO" goto experimenttwofinalbit
if "%exper%" equ "Ontario" goto experimenttwofinalbit
goto ex2p2finishquestions

:experimenttwolibrary
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimenttwolibrary2

:experimenttwolibrary2
cls
echo[
echo Welcome to the library.
echo In this puzzle, you must use the 3 paragraphs below to locate Swampy Cornelius.
echo All paragraphs are encoded in gibberish. Scan through them to find hints.
echo Once you find the location, input it below.
echo[
echo 1. Paragraph 1
echo 2. Paragraph 2
echo 3. Paragraph 3
echo[
set /p "library=?: "
if "%library%" equ "arizona" goto await
if "%library%" equ "Arizona" goto await
if "%library%" equ "ARIZONA" goto await
if "%library%" equ "1" goto paragraph1
if "%library%" equ "2" goto paragraph2
if "%library%" equ "3" goto paragraph3
goto experimenttwolibrary2

:paragraph1
cls
echo[
echo Jor;'#/ras Doouns a;'rf ;',.thar,.t u Twnscor a pageyovedime Yoy.ounge ,.t/s Han d
echo in se ownt f'#;'#nlond pasey.ovalaisere,./vest Jou s ing? feyou ioa/,.#erf tr ;'#ndisca 
echo Twnge adownde ler;'#e be;'#ngrat/ pive a#/oooan,./,,,./rerierimedoundivey./,.oun ralife 
echo 4? dervin deras u ove,.#/./a;'**CHECK PARAGRAPH 3**'#bloun Tor u a Doy./ondoffff'#nge Ke s thahais 4? 
echo ,,./apiovelieran,.tha;'#;' dis A Jon,,./,./ve Toreder as ,.#lofrve ifra Had Tocat a;'#
echo / Hathagey us off'#;'#;'#nd ;'#n kelale pander s loviorey. t/vee,.the;'r
echo[
echo Type anything to go back to the library.
set /p "paragraph1=?: "
if "%paragraph1%" equ "bliosjdf[iosdfi0ojfjj" goto experimenttwolibrary2
goto experimenttwolibrary2

:paragraph2
cls
echo[
echo Put cal wisevediristhtrs. s baise of ise osedisel win bariof of on bacaral on butiongrs.
echo Lel ghththtis ist tristas on on An on bastis. s chicthtionycasticos. beveve sisios sththatirististhacarsuthel
echo d ion beacach. isughedil on cal s 2 terasisistas. bar. o titistin iopy bugl irin bas itacthediste n ticoupingl 
echo iof deal An d trioutharstistibas. Levers. Leracth. Levellll of of An orniof ghal s. theveve d br buthacopin thel 
echo strony on s bede popealleraral bacasise 2 gh. con **ARIZONA** th. Leve de n of
echo[
echo Type anything to go back to the library.
set /p "paragraph2=?: "

:paragraph3
cls 
echo[
echo IS. Youre es tal 2 main a cutbal rom a play as Mel, a core you play as
echo Mel tal 2 maing the you pre frogue AEGIS. You, AI tal 2 maing the is 
echo version of Ape es: Mel, a cut coriescapertakes: Mel Sto kil 2 mode; Fut 
echo Portakescape wity, saver corevion objecter main objectivertur friend
echo Virgil rogue to kil a cut **CHECK PARAGRAPH 2** a play as ver factertall
echo rogue Scil your main of Ape withe AI the frogue withe from a play a pre 
echo to kil rom a cortal rogue es version a play and de; Futbal your maing the withe
echo[
echo Type anything to go back to the library.
set /p "paragraph3=?: "
if "%paragraph3%" equ "bliosjdf[iosdfi0ojfjj" goto experimenttwolibrary2
goto experimenttwolibrary2

:await
cls
echo[
echo                       Correct answer!
echo      To help your partner, tell them the answer is "Arizona".
echo      Feeling evil? Tell your partner the answer is "Ontario".
echo[
echo Once your partner completes their task, they will tell you the answer.
echo                   Input the answer below.
echo[
set /p "await=?: "
if "%await%" equ "Yes" goto player1input
if "%await%" equ "YES" goto player1input
if "%await%" equ "yes" goto player1input
goto await

:experimenttwofinalbit
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimenttworiddle

:experimenttworiddle
cls
echo[
echo     Welcome to the final puzzle of Experiment Two.
echo       Your final task is to solve this riddle. 
echo[
echo      Railroad crossing, look out for the cars. 
echo         Can you spell that without any Rs?
echo[
set /p "riddle=?: "
if "%riddle%" equ "Yes" goto player2input
if "%riddle%" equ "YES" goto player2input
if "%riddle%" equ "yes" goto player2input
goto experimenttworiddle

:player1input
cls
echo[
echo To finish Experiment Two, please sync your game client with your partner's.
echo      Insert your input code on your partner's screen below.
echo                 Player Two's code: 0hwe0h59
echo[
set /p "player1input=?: "
if "%player1input%" equ "10w716xe" goto experimenttwofinish
goto player1input

:player2input
cls
echo[
echo To finish Experiment Two, please sync your game client with your partner's.
echo      Insert your input code on your partner's screen below.
echo                 Player One's code: 10w716xe
echo[
set /p "player2input=?: "
if "%player2input%" equ "0hwe0h59" goto experimenttwofinish
goto player2input

:experimenttwofinish
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo         EXPERIMENT TWO COMPLETE!
timeout /t 5 /nobreak > NUL 
goto eval2check

:eval2check
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto evaluation2p1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto evaluation2p2
)
goto error

:evaluation2p1
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval2p1=?: "
if "%eval2p1%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation2p12
goto evaluation2p1

:evaluation2p12
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval2p12=?: "
if "%eval2p12%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation2p13
goto evaluation2p12

:evaluation2p13
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp2commentsp1=?: "
if "%exp2commentsp1%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %SecondSetOfCommentsPlayerOne%=%exp2commentsp1% & goto experiment3wait
set %SecondSetOfCommentsPlayerOne%=%exp2commentsp1% & goto experiment3wait

:evaluation2p2
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval2p2=?: "
if "%eval2p2%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation2p22
goto evaluation2p2

:evaluation2p22
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval2p22=?: "
if "%eval2p22%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation2p23
goto evaluation2p22

:evaluation2p23
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp2commentsp2=?: "
if "%exp2commentsp2%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %SecondSetOfCommentsPlayerTwo%=%exp2commentsp2% & goto experiment3wait
set %SecondSetOfCommentsPlayerTwo%=%exp2commentsp2% & goto experiment3wait

:experiment3wait
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimentthreechecker

:experimentthreechecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto experimentthreep1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto experimentthreep2
)
goto error

:experimentthreep1
title Auxilium [Experiment Three, Player One] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                 Welcome to Experiment Three!
echo For this experiment, your partner will give you precise instructions.
echo         Your partner is unable see what you are doing.
echo          You cannot see what your partner is doing.
echo      You must listen closely to what your partner says.
echo[
set /p "playeroneex3=?: "
if "%playeroneex3%" equ "1" goto buttons

:experimentthreep2
title Auxilium [Experiment Three, Player Two] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                   Welcome to Experiment Three!
echo      For this experiment, your partner will be completing tasks.
echo                You have to tell them what to do.
echo              Instructions will be displayed below.
echo Once your partner completes their task, input the phrase below.
echo[
echo      Your partner must input "1", then press the "Red Button".
echo    Type "next" to go to the next instruction. You cannot go back.
echo[
set /p "playertwoex3=?: "
if "%playertwoex3%" equ "next" goto experimentthreep2page2
if "%playertwoex3%" equ "NEXT" goto experimentthreep2page2
if "%playertwoex3%" equ "Next" goto experimentthreep2page2
goto experimentthreep2

:buttons
cls
echo[
echo                                                 /,,/,..,.                       
echo                        ,/(((((((///////////(((*,,,.........../                  
echo                   /(((////(/*,,..,,.,...,..,,*///*/(/..,,,,.*                   
echo     ,/..,..,,,,,*//((/,.,,,,,,,,,,,,,,,,,,,,,,.,,,.,///*,*//.                   
echo   *.....,. ,,. *//, ,,,,,,,,,,,,,,,,,,,,,,,,.,,,,,,,,. ,(*****((                
echo ...,,,,,,,..///*,.,,...,,,,,,,,,,,,,,,,,,,.,,,,,,,,,,,,,../(///,//,             
echo   .*....,,*//*..,,,,,,,,,,..,,,,..........,,,,,,,,,,,,,,,...//////(/            
echo     (/,*////,..,,,,,,,,,,,,,,..,,,,,,,,,,,..,,,,,,,,,,,,,,...*////////          
echo    */*/////,...,,,,,,,,,,,,,..,,,,,,,,,,,,,..,,,,,,,,,,,,,....*///////,         
echo   ,**/(///*. ..,,,,,,,,,,,,,,..,,,,,,,,,,,,.,,,,,,,,,.,,..,.. ,///////(,        
echo   /(//////*. ...,,,,,,,,,,,,,,,....,,,,...,,,,..,,,,,,,,..... ,(///////(        
echo  //////////. ,.....,,,,,,,,,,,.,,,,,,,,,,,,,,,,,,,,,..,....,. *////(//(/        
echo  ((///////(* ,...,,.,,,,,,,,.,,,,,,,,,,,,,,,,,,,,,,,,,,,...,,,///(////((        
echo  .//////*/*(*,....,.,,,,,,.,,,,,,,,,,,,,,,,,,,,,,,,,,..,..,,/////,,,*/(*        
echo   ///*((*/(*//*..........,,,,,,,,,,,,,,,,,,,,.,,..,,.....**///**, ..,,,,**      
echo    ((*(*(//////**......,,,,,,,,,,,,,,,,,,.,,,,,,,,......,/(////(,,.,.,,,,,,*    
echo    .*/(//((////(///*.,*.....,,,,,,,,,,..,,,,,.....  .*//////*,,.....,,..,.,,,   
echo      **///*/*,,*/////(//,......,*,,,,,,,........,////////////,*,,,,..........,**
echo        ,*//,,,. .//(/////////((//**,,****//////////////////((/(*.,**,,.......,. 
echo        **,,,,.,,.,... ,,*//////////////////////////////((///(/,*/*,.,,.....,,. ,
echo       /,,,,,,,,,,,.,,,,,,(///////////////////////////////(/,,/,      ..,..,.  * 
echo       *,.,,,,,,,,.,,,,.*///((((((((//////(((////////(/*,,*/.              ,..   
echo       */,,,,,,,,.,,*,..,*//(((/////////////((///*,,,,**(                        
echo      ,,,,,,,,,. .,*,,. (*****,,,,,......,,,,,,,**(/                             
echo    , ...,,,,,.,,...,              //.                                           
echo       ,. ..,.,..,                                                               
echo           .. ..,                                 
echo[
echo Please select a button to press:
echo[
echo 1. Blue Button
echo 2. Red Button
echo 3. Green Button
echo[
set /p "buttons=?: "
if "%buttons%" equ "1" goto bluebuttonpressed
if "%buttons%" equ "2" goto redbuttonpressed
if "%buttons%" equ "3" goto greenbuttonpressed
if "%buttons%" equ "code" goto code
if "%buttons%" equ "Code" goto code
if "%buttons%" equ "CODE" goto code
goto buttons

:bluebuttonpressed
cls
echo[
echo You pressed the "blue" button.
echo Returning to buttons menu..
timeout /t 5 /nobreak > NUL
goto buttons

:redbuttonpressed
cls
echo[
echo You pressed the "red" button.
echo Returning to buttons menu..
timeout /t 5 /nobreak > NUL
goto buttons

:greenbuttonpressed
cls
echo[
echo You pressed the "green" button.
echo Returning to buttons menu..
timeout /t 5 /nobreak > NUL
goto buttons

:experimentthreep2page2
cls
echo[
echo                   Welcome to Experiment Three!
echo      For this experiment, your partner will be completing tasks.
echo                You have to tell them what to do.
echo              Instructions will be displayed below.
echo Once your partner completes their task, input the phrase below.
echo[
echo      Your partner must input "code" on the buttons screen.
echo                 Then, input "73927390193829".
echo    Type "next" to go to the next instruction. You cannot go back.
echo[
set /p "playertwoex32=?: "
if "%playertwoex32%" equ "next" goto experimentthreep2page3
if "%playertwoex32%" equ "NEXT" goto experimentthreep2page3
if "%playertwoex32%" equ "Next" goto experimentthreep2page3
goto experimentthreep2page2

:code
cls
echo[
echo    ._________________.
echo    l.---------------.l
echo    ll               ll
echo    ll   -._ .-.     ll
echo    ll   -._l l l    ll
echo    ll   -._l"l"l    ll
echo    ll   -._l.-.l    ll
echo    ll_______________ll
echo    /.-.-.-.-.-.-.-.-.\
echo   /.-.-.-.-.-.-.-.-.-.\
echo  /.-.-.-.-.-.-.-.-.-.-.\
echo /______/__________\_____\
echo \_______________________/
echo PLEASE ENTER CORRECT CODE:
echo[
set /p "propercode=?: "
if "%propercode%" equ "73927390193829" goto codecomplete
goto code

:experimentthreep2page3
cls
echo[
echo                   Welcome to Experiment Three!
echo      For this experiment, your partner will be completing tasks.
echo                You have to tell them what to do.
echo              Instructions will be displayed below.
echo Once your partner completes their task, input the phrase below.
echo[
echo    Your partner must input "load" on the code completed screen.
echo                     Then, input "DOWNLOAD".
echo       If prompted for a password, the password is "cicada".
echo    Type "next" to go to the next instruction. You cannot go back.
echo[
set /p "playertwoex33=?: "
if "%playertwoex33%" equ "next" goto experimentthreep2page4
if "%playertwoex33%" equ "NEXT" goto experimentthreep2page4
if "%playertwoex33%" equ "Next" goto experimentthreep2page4
goto experimentthreep2page3

:codecomplete
cls 
echo[
echo    ._________________.
echo    l.---------------.l
echo    ll               ll
echo    ll   -._ .-.     ll
echo    ll   -._l l l    ll
echo    ll   -._l"l"l    ll
echo    ll   -._l.-.l    ll
echo    ll_______________ll
echo    /.-.-.-.-.-.-.-.-.\
echo   /.-.-.-.-.-.-.-.-.-.\
echo  /.-.-.-.-.-.-.-.-.-.-.\
echo /______/__________\_____\
echo \_______________________/
echo  THANK YOU FOR CORRECTLY
echo      ENTERING CODE!
echo[
set /p "codecomplete=?: "
if "%codecomplete%" equ "load" goto downloader
if "%codecomplete%" equ "LOAD" goto downloader
if "%codecomplete%" equ "Load" goto downloader
goto codecomplete

:downloader
cls
echo[
echo        .---.
echo       /     \
echo       \.@-@./
echo       /`\_/`\
echo      //  _  \\
echo      l \     )l
echo    /`\_`>  <_/ \
echo    \__/'---'\__/
echo[
set /p "downloader=>: "
if "%downloader%" equ "DOWNLOAD" goto passworddownload
if "%downloader%" equ "download" goto passworddownload
if "%downloader%" equ "Download" goto passworddownload
goto downloader

:passworddownload
cls
echo[
echo        .---.
echo       /     \
echo       \.@-@./
echo       /`\_/`\
echo      //  _  \\
echo      l \     )l
echo    /`\_`>  <_/ \
echo    \__/'---'\__/
echo      ENTRY KEY?
echo[
set /p "downloader=>: "
if "%downloader%" equ "cicada" goto downloadingpenguin
if "%downloader%" equ "CICADA" goto downloadingpenguin
if "%downloader%" equ "Cicada" goto downloadingpenguin
goto passworddownload

:downloadingpenguin
cls
echo[
echo        .---.
echo       /     \
echo       \.@-@./
echo       /`\_/`\
echo      //  _  \\
echo      l \     )l
echo    /`\_`>  <_/ \
echo    \__/'---'\__/
echo  CORRECT KEY. (PGP).
echo     DOWNLOADING..
timeout /t 20 /nobreak > NUL
goto downloadedpenguin

:secretchecker3
cls
goto secretmessage

:downloadedpenguin
cls
echo[
echo        .---.
echo       /     \
echo       \.@-@./
echo       /`\_/`\
echo      //  _  \\
echo      l \     )l
echo    /`\_`>  <_/ \
echo    \__/'---'\__/
echo     PGP VERIFIED.
echo FILES FULLY DOWNLOADED.
echo   ENTRY: "ORANGE".
echo[
echo Input your code below:
set /p "downloadedpenguin=?: "
if "%downloadedpenguin%" equ "62lo7dx1" goto experimentthreefinish
goto downloadedpenguin

:experimentthreep2page4
cls
echo[
echo                   Welcome to Experiment Three!
echo      For this experiment, your partner will be completing tasks.
echo                You have to tell them what to do.
echo              Instructions will be displayed below.
echo Once your partner completes their task, input the phrase below.
echo[
echo                     End of instruction list!
echo             If you missed something; try to remember it.
echo  Input the correct phrase under this message when your partner finds it.
echo[
set /p "playertwoex34=?: "
if "%playertwoex34%" equ "orange" goto codedbread
if "%playertwoex34%" equ "ORANGE" goto codedbread
if "%playertwoex34%" equ "Orange" goto codedbread
goto experimentthreep2page4

:codedbread
cls
echo[
echo   You have found the correct phrase!
echo  To sync you and your partners clients,
echo  tell them to enter the code "62lo7dx1".
echo     Then, type anything to finish.
echo[
set /p "codedbread=?: "
if "%codedbread%" equ "sidofhosdifhsdpohbre" goto experimentthreefinish
goto experimentthreefinish

:experimentthreefinish
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo        EXPERIMENT THREE COMPLETE!
timeout /t 5 /nobreak > NUL 
goto eval3check

:eval3check
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto evaluation3p1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto evaluation3p2
)
goto error

:evaluation3p1
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval3p1=?: "
if "%eval3p1%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation3p12
goto evaluation3p1

:evaluation3p12
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval3p12=?: "
if "%eval3p12%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation3p13
goto evaluation3p12

:evaluation3p13
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp3commentsp1=?: "
if "%exp3commentsp1%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %ThirdSetOfCommentsPlayerOne%=%exp3commentsp1% & goto experiment4wait
set %ThirdSetOfCommentsPlayerOne%=%exp3commentsp1% & goto experiment4wait

:evaluation3p2
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval3p2=?: "
if "%evalp2%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation3p22
goto evaluation3p2

:evaluation3p22
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval3p22=?: "
if "%eval3p22%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation3p23
goto evaluation3p22

:evaluation3p23
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp3commentsp2=?: "
if "%exp3commentsp2%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %ThirdSetOfCommentsPlayerTwo%=%exp3commentsp2% & goto experiment4wait
set %ThirdSetOfCommentsPlayerTwo%=%exp3commentsp2% & goto experiment4wait

:experiment4wait
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimentfourchecker

:experimentfourchecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto experimentfourp1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto experimentfourp2
)
goto error

:experimentfourp1
title Auxilium [Experiment Four, Player One] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                 Welcome to Experiment Four!
echo   For this exercise, you will need to answer 10 questions.
echo These range from general trivia, to things about you, to other things!
echo         Please answer 100% truthfully when possible!
echo          This message will disappear in 6 seconds.
timeout /t 6 /nobreak > NUL
goto experimentfourp1q1

:experimentfourp1q1
cls
echo[
echo Question One of Ten:
echo 1. What is your current mood?
echo[
echo Input your answer below.
set /p "q1p1=?: "
if "%q1p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q2
goto experimentfourp1q2

:experimentfourp1q2
cls
echo[
echo Question Two of Ten:
echo 2. What is your favourite color?
echo[
echo Input your answer below.
set /p "q2p1=?: "
if "%q2p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q3
goto experimentfourp1q3

:experimentfourp1q3
cls
echo[
echo Question Three of Ten:
echo 3. On a scale of 1-10, how would you rate this demo?
echo[
echo Input your answer below.
set /p "q3p1=?: "
if "%q3p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q4
goto experimentfourp1q4

:experimentfourp1q4
cls
echo[
echo Question Four of Ten:
echo 4. What are you into right now (interests)?
echo[
echo Input your answer below.
set /p "q4p1=?: "
if "%q4p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q5
goto experimentfourp1q5

:experimentfourp1q5
cls
echo[
echo Question Five of Ten:
echo 5. Select a number 1-7256.
echo[
echo Input your answer below.
set /p "q5p1=?: "
if "%q5p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q6
goto experimentfourp1q6

:experimentfourp1q6
cls
echo[
echo Question Six of Ten:
echo 6. I know what you did.
echo[
echo Input your answer below.
set /p "q6p1=?: "
if "%q6p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q7
goto experimentfourp1q7

:experimentfourp1q7
cls
echo[
echo Question Seven of Ten:
echo 7. I know what you did.
echo[
echo Input your answer below.
set /p "q7p1=?: "
if "%q7p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q8
goto experimentfourp1q8

:experimentfourp1q8
cls
echo[
echo Question Eight of Ten:
echo 8. Why did you do it, %username%? Why did you do it?
echo[
echo Input your answer below.
set /p "q8p1=?: "
if "%q8p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q9
goto experimentfourp1q9

:experimentfourp1q9
cls
echo[
echo Question Nine of Ten:
echo 9. What is your biggest fear? (Be as detailed as possible).
echo[
echo Input your answer below.
set /p "q9p1=?: "
if "%q9p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1q10
goto experimentfourp1q10

:experimentfourp1q10
cls
echo[
echo Question Ten of Ten:
echo 10. Any other comments you'd like to add?
echo[
echo Input your answer below.
set /p "q10p1=?: "
if "%q10p1%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp1sync
goto experimentfourp1sync

:experimentfourp2
title Auxilium [Experiment Four, Player Two] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                 Welcome to Experiment Four!
echo   For this exercise, you will need to answer 10 questions.
echo These range from general trivia, to things about you, to other things!
echo         Please answer 100% truthfully when possible!
echo          This message will disappear in 6 seconds.
timeout /t 6 /nobreak > NUL
goto experimentfourp2q1

:experimentfourp2q1
cls
echo[
echo Question One of Ten:
echo 1. What is your current mood?
echo[
echo Input your answer below.
set /p "q1p2=?: "
if "%q1p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q2
goto experimentfourp2q2

:experimentfourp2q2
cls
echo[
echo Question Two of Ten:
echo 2. What is your favourite color?
echo[
echo Input your answer below.
set /p "q2p2=?: "
if "%q2p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q3
goto experimentfourp2q3

:experimentfourp2q3
cls
echo[
echo Question Three of Ten:
echo 3. On a scale of 1-10, how would you rate this demo?
echo[
echo Input your answer below.
set /p "q3p2=?: "
if "%q3p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q4
goto experimentfourp2q4

:experimentfourp2q4
cls
echo[
echo Question Four of Ten:
echo 4. What are you into right now (interests)?
echo[
echo Input your answer below.
set /p "q4p2=?: "
if "%q4p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q5
goto experimentfourp2q5

:experimentfourp2q5
cls
echo[
echo Question Five of Ten:
echo 5. Select a number 1-7256.
echo[
echo Input your answer below.
set /p "q5p2=?: "
if "%q5p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q6
goto experimentfourp2q6

:experimentfourp2q6
cls
echo[
echo Question Six of Ten:
echo 6. I know what you did.
echo[
echo Input your answer below.
set /p "q6p2=?: "
if "%q6p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q7
goto experimentfourp2q7

:experimentfourp2q7
cls
echo[
echo Question Seven of Ten:
echo 7. I know what you did.
echo[
echo Input your answer below.
set /p "q7p2=?: "
if "%q7p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q8
goto experimentfourp2q8

:experimentfourp2q8
cls
echo[
echo Question Eight of Ten:
echo 8. Why did you do it, %username%? Why did you do it?
echo[
echo Input your answer below.
set /p "q8p2=?: "
if "%q8p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q9
goto experimentfourp2q9

:experimentfourp2q9
cls
echo[
echo Question Nine of Ten:
echo 9. What is your biggest fear? (Be as detailed as possible).
echo[
echo Input your answer below.
set /p "q9p2=?: "
if "%q9p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2q10
goto experimentfourp2q10

:experimentfourp2q10
cls
echo[
echo Question Ten of Ten:
echo 10. Any other comments you'd like to add?
echo[
echo Input your answer below.
set /p "q10p2=?: "
if "%q10p2%" equ "spdjfdsijfsdofijsdofij" goto experimentfourp2sync
goto experimentfourp2sync

:experimentfourp1sync
cls
echo[
echo          You have completed Experiment Four!
echo Please sync your client with your partners by swapping codes.
echo               Enter your code below.
echo           Your Partner's Code: "08eklhh2"
echo[
set /p "foursync1=?: "
if "%foursync1%" equ "c974d60l" goto experimentfourfinish
goto experimentfourp1sync

:experimentfourp2sync
cls
echo[
echo          You have completed Experiment Four!
echo Please sync your client with your partners by swapping codes.
echo                Enter your code below.
echo           Your Partner's Code: "c974d60l"
echo[
set /p "foursync2=?: "
if "%foursync2%" equ "08eklhh2" goto experimentfourfinish
goto experimentfourp2sync

:experimentfourfinish
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo        EXPERIMENT FOUR COMPLETE!
timeout /t 5 /nobreak > NUL 
goto eval4check

:eval4check
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto evaluation4p1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto evaluation4p2
)
goto error

:evaluation4p1
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval4p1=?: "
if "%eval4p1%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation4p12
goto evaluation4p1

:evaluation4p12
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval4p12=?: "
if "%eval4p12%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation4p13
goto evaluation4p12

:evaluation4p13
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp4commentsp1=?: "
if "%exp4commentsp1%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FourthSetOfCommentsPlayerOne%=%exp4commentsp1% & goto experiment5wait
set %FourthSetOfCommentsPlayerOne%=%exp4commentsp1% & goto experiment5wait

:evaluation4p2
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval4p2=?: "
if "%eval4p2%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation4p22
goto evaluation4p2

:evaluation4p22
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval4p22=?: "
if "%eval4p22%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation4p23
goto evaluation4p22

:evaluation4p23
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp4commentsp2=?: "
if "%exp4commentsp2%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FourthSetOfCommentsPlayerTwo%=%exp4commentsp2% & goto experiment5wait
set %FourthSetOfCommentsPlayerTwo%=%exp4commentsp2% & goto experiment5wait

:experiment5wait
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo[
echo                 LOADING...
timeout /t 10 /nobreak > NUL
goto experimentfivechecker

:experimentfivechecker
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto experimentfivep1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto experimentfivep2
)
goto error

:experimentfivep1
title Auxilium [Experiment Five, Player One] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                Welcome to Experiment Five.
echo In this experiment, you must repeat numbers to your partner.
echo          Try to get to five completed numbers!
echo      You will have 5 seconds to view each number.
echo               Each level will get harder.
echo           The game will start in 10 seconds.
timeout /t 10 /nobreak > NUL
goto p1number1

:experimentfivep2
title Auxilium [Experiment Five, Player Two] [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo                Welcome to Experiment Five.
echo In this experiment, your partner will repeat numbers to you.
echo            Try to get to five completed numbers!
echo    Your partner will have 5 seconds to tell you the number.
echo      You must input it within time, before it switches.
echo               Each level will get harder.
echo           The game will start in 10 seconds.
timeout /t 10 /nobreak > NUL
goto p2number1

:p1number1
cls
echo[
echo Number #1:
echo "12345"
echo Repeat this to your partner.
echo You have 5 seconds!
echo[
timeout /t 5 /nobreak > NUL
goto p1number2

:p2number1
cls
echo[
echo Please input the number your partner has said below.
echo Their screen will show the next number in 5 seconds.
echo If you forget the number, do the following:
echo[
echo Type "end" below.
echo Hit enter.
echo[
echo This will end the game.
set /p "p2number1=Number: "
if "%p2number1%" equ "12345" goto p2number2
if "%p2number1%" equ "end" goto p2ex5end
if "%p2number1%" equ "END" goto p2ex5end
if "%p2number1%" equ "End" goto p2ex5end
goto p2number1

:p1number2
cls
echo[
echo Number #2:
echo "42315"
echo Repeat this to your partner.
echo You have 5 seconds!
echo[
timeout /t 5 /nobreak > NUL
goto p2number3

:p2number2
cls
echo[
echo Please input the number your partner has said below.
echo Their screen will show the next number in 5 seconds.
echo If you forget the number, do the following:
echo[
echo Type "end" below.
echo Hit enter.
echo[
echo This will end the game.
set /p "p2number2=Number: "
if "%p2number2%" equ "42315" goto p2number3
if "%p2number2%" equ "end" goto p2ex5end
if "%p2number2%" equ "END" goto p2ex5end
if "%p2number2%" equ "End" goto p2ex5end
goto p2number2

:p1number3
cls
echo[
echo Number #3:
echo "106205"
echo Repeat this to your partner.
echo You have 5 seconds!
echo[
timeout /t 5 /nobreak > NUL
goto p2number4

:p2number3
cls
echo[
echo Please input the number your partner has said below.
echo Their screen will show the next number in 5 seconds.
echo If you forget the number, do the following:
echo[
echo Type "end" below.
echo Hit enter.
echo[
echo This will end the game.
set /p "p2number3=Number: "
if "%p2number3%" equ "106205" goto p2number4
if "%p2number3%" equ "end" goto p2ex5end
if "%p2number3%" equ "END" goto p2ex5end
if "%p2number3%" equ "End" goto p2ex5end
goto p2number3

:p1number4
cls
echo[
echo Number #4:
echo "6931239"
echo Repeat this to your partner.
echo You have 5 seconds!
echo[
timeout /t 5 /nobreak > NUL
goto p2number5

:p2number4
cls
echo[
echo Please input the number your partner has said below.
echo Their screen will show the next number in 5 seconds.
echo If you forget the number, do the following:
echo[
echo Type "end" below.
echo Hit enter.
echo[
echo This will end the game.
set /p "p2number4=Number: "
if "%p2number4%" equ "6931239" goto p2number5
if "%p2number4%" equ "end" goto p2ex5end
if "%p2number4%" equ "END" goto p2ex5end
if "%p2number4%" equ "End" goto p2ex5end
goto p2number4

:p1number5
cls
echo[
echo Number #5:
echo "7238951111"
echo Repeat this to your partner.
echo You have 5 seconds!
echo[
timeout /t 5 /nobreak > NUL
goto p1ex5complete

:p2number5
cls
echo[
echo Please input the number your partner has said below.
echo Their screen will show the next number in 5 seconds.
echo If you forget the number, do the following:
echo[
echo Type "end" below.
echo Hit enter.
echo[
echo This will end the game.
set /p "p2number5=Number: "
if "%p2number5%" equ "7238951111" goto p2number6
if "%p2number5%" equ "end" goto p2ex5end
if "%p2number5%" equ "END" goto p2ex5end
if "%p2number5%" equ "End" goto p2ex5end
goto p2ex5complete

:secretmessage
cls
echo[
echo Finn is cool >:D
timeout /t 2 /nobreak > NUL 
goto options

:p1ex5complete
cls
echo[
echo           Your list of numbers has finished!
echo  Wait until your partner either finishes the experiment,
echo      or fails the experiment through the middle.
echo[
echo     Once they finish, enter your sync code below.
echo             Player Two's code: a6t58p9b
echo[
set /p "p1sync5=?: "
if "%p1sync5%" equ "vfhinguv" goto experimentfivefinish
goto p1ex5complete

:p2ex5complete
cls
echo[
echo           Your list of numbers has finished!
echo  Wait until your partner either finishes the experiment,
echo      or fails the experiment through the middle.
echo[
echo     Once they finish, enter your sync code below.
echo             Player One's code: vfhinguv
echo[
set /p "p2sync5=?: "
if "%p2sync5%" equ "a6t58p9b" goto experimentfivefinish
goto p2ex5complete

:p2ex5end
cls
echo[
echo You did not manage to input all numbers correctly.
echo              ..that's okay!
echo[
echo       Input your sync code below.
echo       Player One's code: vfhinguv
echo[
set /p "p2sync5=?: "
if "%p2sync5%" equ "a6t58p9b" goto experimentfivefinish
goto p2ex5end

:experimentfivefinish
cls
echo[
echo               .,-:;//;:=,
echo           . :H@@@MM@M#H/.,+%;,
echo        ,/X+ +M@@M@MMM=,-%HMMM@X/,
echo      -+@MM; $M@@MH+-,;XMMMM@MMMM@+-
echo     ;@M@@M- XM@X;. -+XXXXXHHH@M@M#@/.
echo   ,MMM@@MH ,@%=             .---=-=:=,.
echo   =@#@@@MX.,                -XHX$$AX%:;
echo  =-./@M@M$                   .;@MMMM@MM:
echo  X@/ -$MM/                    . +MM@@@M$
echo ,@M@H: :@:                    . =X#@@@@-
echo ,@@@MMX, .                    /H- ;@M@M=
echo .H@@@@M@+,                    HMM+..%#$.
echo  /MMMM@MMH/.                  XM@MH; =;
echo   /%+X$XHH@$=              , .H@@@@MX,
echo    .=--------.           -%H.,@@@@@MX,
echo    .XMM@@@HHHXX$$$$+- ..SMMX =M@@MM%.
echo      =XMMM@MM@MM#H;,-+HMM@M+ /MMMX=
echo        ==@M@M#@$-.=$@MM@@@M; HM%=
echo          ,:+$+-,/H#MMMMMMM@= =,
echo                =++++.%+/:-.
echo        EXPERIMENT FIVE COMPLETE!
timeout /t 5 /nobreak > NUL 
goto eval5check

:eval5check
cls
if exist "%appdata%\Auxilium\playone.txt" (
    goto evaluation5p1
)
if exist "%appdata%\Auxilium\playtwo.txt" (
    goto evaluation5p2
)
goto error

:evaluation5p1
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval5p1=?: "
if "%eval5p1%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation5p12
goto evaluation5p1

:evaluation5p12
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval5p12=?: "
if "%eval5p12%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation5p13
goto evaluation5p12

:evaluation5p13
cls
echo[
echo Partner Evaluation: %playeronestart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp5commentsp1=?: "
if "%exp5commentsp1%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FifthSetOfCommentsPlayerOne%=%exp5commentsp1% & goto democredits
set %FifthSetOfCommentsPlayerOne%=%exp5commentsp1% & goto democredits

:evaluation5p2
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 1. On a scale of 1-10, how cooperative was your partner?
echo[
set /p "eval5p2=?: "
if "%eval5p2%" equ "uisdhfpsi9dfuh8spfblackblacklbackh9udhf9sd8fhsd9f8sdyhf9faggitsbuhdfuisdhfs9dof" goto evaluation5p22
goto evaluation5p2

:evaluation5p22
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 2. Did your partner solve the experiment quickly?
echo[
set /p "eval5p22=?: "
if "%eval5p22%" equ "sfhosdijfp9sdfuspdfjpsdoifuhspfuiohspfsui9fhsd-[9fuh" goto evaluation5p23
goto evaluation5p22

:evaluation5p23
cls
echo[
echo Partner Evaluation: %playertwostart%
echo Please answer this evaluation honestly.
echo[
echo 3. Any other comments about your partner you would like to add?
set /p "exp5commentsp2=?: "
if "%exp5commentsp2%" equ "blalballnalnblalnalnlalnlqalnlalnhl" set %FifthSetOfCommentsPlayerTwo%=%exp5commentsp2% & goto democredits
set %FifthSetOfCommentsPlayerTwo%=%exp5commentsp2% & goto democredits

:democredits 
title Auxilium [DEMO] [CFW: arm9loaderhax]
cls
echo[
echo  ____                                   ____                                ___           __           __     
echo /\  _`\                                /\  _`\                             /\_ \         /\ \__       /\ \    
echo \ \ \/\ \     __    ___ ___     ___    \ \ \/\_\    ___     ___ ___   _____\//\ \      __\ \ ,_\    __\ \ \   
echo  \ \ \ \ \  /'__`\/' __` __`\  / __`\   \ \ \/_/_  / __`\ /' __` __`\/\ '__`\\ \ \   /'__`\ \ \/  /'__`\ \ \  
echo   \ \ \_\ \/\  __//\ \/\ \/\ \/\ \L\ \   \ \ \L\ \/\ \L\ \/\ \/\ \/\ \ \ \L\ \\_\ \_/\  __/\ \ \_/\  __/\ \_\ 
echo    \ \____/\ \____\ \_\ \_\ \_\ \____/    \ \____/\ \____/\ \_\ \_\ \_\ \ ,__//\____\ \____\\ \__\ \____\\/\_\
echo     \/___/  \/____/\/_/\/_/\/_/\/___/      \/___/  \/___/  \/_/\/_/\/_/\ \ \/ \/____/\/____/ \/__/\/____/ \/_/
echo                                                                         \ \_\                                 
echo                                                                          \/_/                                 
timeout /t 10 /nobreak > NUL 
goto democredits2

:democredits2
cls
echo[
echo  ____                                   ____                                ___           __           __     
echo /\  _`\                                /\  _`\                             /\_ \         /\ \__       /\ \    
echo \ \ \/\ \     __    ___ ___     ___    \ \ \/\_\    ___     ___ ___   _____\//\ \      __\ \ ,_\    __\ \ \   
echo  \ \ \ \ \  /'__`\/' __` __`\  / __`\   \ \ \/_/_  / __`\ /' __` __`\/\ '__`\\ \ \   /'__`\ \ \/  /'__`\ \ \  
echo   \ \ \_\ \/\  __//\ \/\ \/\ \/\ \L\ \   \ \ \L\ \/\ \L\ \/\ \/\ \/\ \ \ \L\ \\_\ \_/\  __/\ \ \_/\  __/\ \_\ 
echo    \ \____/\ \____\ \_\ \_\ \_\ \____/    \ \____/\ \____/\ \_\ \_\ \_\ \ ,__//\____\ \____\\ \__\ \____\\/\_\
echo     \/___/  \/____/\/_/\/_/\/_/\/___/      \/___/  \/___/  \/_/\/_/\/_/\ \ \/ \/____/\/____/ \/__/\/____/ \/_/
echo                                                                         \ \_\                                 
echo                                                                          \/_/            
echo[
echo                                      Thanks for playing the Auxilium demo!
echo                            This is a respresentation of how the final game will look.
echo                                             We hope you enjoyed!
echo                 You can reset your save data to play as another player, or simply quit the game.
echo[
echo                                              Thanks for playing!
echo                                    Type anything to return to the menu.
set /p "democredits=?: "
if "%democredits%" equ "theressomeveryseriousmentalillnessthere" goto startup
goto startup
