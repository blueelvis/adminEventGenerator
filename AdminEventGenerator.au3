#RequireAdmin								              ;Ask for Administrator Privilleges
AutoItSetOption("SendKeyDownDelay",100)		;Make sure that this works on slow systems as well
AutoItSetOption("SendKeyDelay",100)
ShellExecute("eventvwr.msc",@SW_MAXIMIZE)	;Open Event Viewer in Maximized Mode
WinWaitActive("Event Viewer")				      ;Wait for Event Viewer To Open
Send("E")									                ;Start using the Keyboard shortcuts
Send("{DOWN}")
Send("{RIGHT}")
Sleep(1000)
Send("A")
Send("+{F10}")
Send("w")
WinWaitActive("Save As")
Sleep(1000)
Send("{TAB 5}")
Send("{ENTER}")
Send("Desktop")
Send("{ENTER}")
Send("{TAB 5}")
Send("Admin.evtx")
Send("{ENTER}")
WinWaitActive("Display Information")
Send("{ENTER}")
ProcessClose("mmc.exe")
