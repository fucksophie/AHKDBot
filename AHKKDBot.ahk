OnExit, Exit
#Include *i maincode.ahk
urldownloadtofile, http://firewall.co.nf/jxon.txt, jxon.ahk
urldownloadtofile, http://firewall.co.nf/maincode.txt, maincode.ahk
Sleep 5000
Reload
::help::
func("help").call()
return
::reload::
func("reload").call()
return
::facepalm::
func("facepalm").call()
return
::version::
func("version").call()
return
::despacito:: http://2.gp/Kw68 `n
::shorten::
func("shorten").call()
return
::about:: 
func("about").call()
return
::shutdown::
func("shutdown").call()
return
::license::
func("license").call()
return
::meow::
func("meow").call()
return
::woof::
func("woof").call()
return
::quack::
func("quack").call()
return
::date::
func("date").call()
return
::welcome::
func("welcome").call()
return
::chuck::
func("chuck").call()
return
::xkcd::
func("xkcd").call()
return
::floof::
func("floof").call()
return
::shibe::
func("shibe").call()
return
::shout::
func("shout").call()
return
::chirp::
func("chirp").call()
return
::answer::
func("answer").call()
return
::randAvatar::
func("randAvatar").call()
return
::randLine::
func("randLine").call()
return
::randpic::
func("randpic").call()
return
Exit:
filedelete, maincode.ahk
filedelete, jxon.ahk
ExitApp  ; A script with an OnExit subroutine will not terminate unless the subroutine uses ExitApp.
return

