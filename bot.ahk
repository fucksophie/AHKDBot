#Include <JXON>
#Include <tools>
#SingleInstance, force
SendMode Input
SetWorkingDir, %A_ScriptDir%

commands := []

Loop, Read, %A_ScriptFullpath%
{
    If InStr(A_LoopReadLine, "::") && !InStr(A_LoopReadLine, "InStr") {
        StringTrimLeft, leftRemoved, A_LoopReadLine, 3
        StringTrimRight, hotstring, leftRemoved, 2
        commands.Push(hotstring)
    }
}

::!help::
    msgbox
    (
        Selfbot.ahk----------------------------------
        A simple to use selfbot written in Autohotkey.
        Use !commands to see all commands.
        Written by lukeacat.
    )
    ListHotkeys
return

::!commands::
    MsgBox, % ", ".join(commands)
Return

::!reload::
    MsgBox, Reloading.
    reload
Return

::!shutdown::
    MsgBox, Shuttinbg down.
    ExitApp
Return

::!shorten::
    if testDiscord()
        Return

    InputBox, url, Shorten a URL, Shorten a url via Tinyurl.

    Send, % request("https://tinyurl.com/api-create.php?url=" . url)
    Send, {Enter}
Return

::!decide::
    if testDiscord()
        Return
    decide := Jxon_Load(request("https://yesno.wtf/api/", True))
    answer := decide["answer"]
    Send, I have decided, that this is %answer% moment.
    Send, {Enter}
    Send, % decide["image"]
    Send, {Enter}
Return

::!xkcd::
    if testDiscord()
        Return

    post := Jxon_Load(request("https://xkcd.com/info.0.json"))

    title := post["safe_title"]
    img := post["img"]

    Send, XKCD post "%title%"
    Send, {Enter}
    Send, % post["img"]
    Send, {Enter}
Return

::!birds::
::!shibes::
::!cats::
    if testDiscord()
        Return

    StringTrimLeft, type, A_ThisHotkey, 3
    image := Jxon_Load(request("https://shibe.online/api/" . type, True))
    
    Send, % image[1]
    Send, {Enter}
Return

::!fox::
    if testDiscord()
        Return

    image := Jxon_Load(request("https://randomfox.ca/floof/", True))

    Send, % image["image"]
    Send, {Enter}
Return