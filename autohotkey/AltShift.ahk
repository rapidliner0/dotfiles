Menu_EditScript:
    Run, C:\Program Files\Microsoft VS Code\Code.exe %A_ScriptFullPath%
return

#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
Lalt & Shift::Send,{F13}
Ralt & Shift::Send,{F16}