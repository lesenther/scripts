; Launch Greenshot, take a pic and load editor

If !ProcessExist("greenshot.exe")
	Run, %A_ProgramFiles%\Greenshot\Greenshot.exe

If ProcessExist("greenshot.exe"){
	Send, {Ctrl down}{Printscreen}{Ctrl up}
	Sleep, 200
	Send, {Down}
	Send, {Down}
	Send, {Down}
	Send, {Enter}
	Return
}


ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}