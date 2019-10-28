#Hotstring EndChars /
#include jxon.ahk
; commit this as "Removed zucc,markdown,elonmusk,facepalm and despacito due to useless commands and markdown used a website that has died a long time ago. Also removed to maestr0 due to me making a credits commands for this probs.  Added spam command, but please don't use it on not-private channels. You'll get banned in the server and discord too. Use the spam feature to farm pokemon in a private channel on your own server."
help()
{
msgbox
(
    AHKDBot commands
reload - Reload the AHKDBot
shorten - Shorten an link
about - Info about AHKDBot.
shutdown  - Shutdown AHDBot
version - Get the version of AHKDBot.
meow - Get an cute kitten!
woof - Get an dooogoo!
quack - Get an cool duck!
date - Get the current date..
chuck - Chuck Norris joke.
xkcd - Get the newest xkcd comic.
floof - Get an fox
shibe - Get an random shibe pic.
shout - Makes your text be uppercased.
chirp - Get an random bird pic.
answer - Get an gif and an Yes/No answer.
randavatar - Get an random avatar. 400x400 pictures.
randline - Get an random string.
randpic - Get an random picture.
credit - Crediting the awsome people who made this happen!
)
}
;
;
;
credit()
{
msgbox,
(
maestr0 and the autohotkey community.
most help was with regex, thanks for the help!
)
} 
;
;
;
reload()
{
msgbox Reloading AHKDBot
reload
}
;
;
;
shorten()
{
 Inputbox, url,, Shorten an URL!
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://tinyurl.com/api-create.php?url=" url, true)
whr.Send()
whr.WaitForResponse()
short := whr.ResponseText
WinActivate,ahk_exe Discord.exe
clipboard = %short%
Send, ^v
send {enter}

}
;
;
;
about()
{
msgbox AHKDBot has been created by https://senpai.cf. They, made this in ahk. No discord.ahk.
}
;
;
;
shutdown()
{
msgbox Shutting down.
ExitApp
}
;
;
;
meow()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://shibe.online/api/cats", true)
whr.Send()
whr.WaitForResponse()
Output := SubStr(whr.ResponseText,3,StrLen(whr.ResponseText)-4)
WinActivate,ahk_exe discord.exe
clipboard = %Output%
send, ^v
send {enter}

}
;
;
;
woof()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://dog.ceo/api/breeds/image/random", false)
whr.Send()/
obj :=  Jxon_Load(whr.ResponseText)
setkeydelay,80
WinActivate,ahk_exe Discord.exe
clipboard = % obj.message	
send, ^v
send {enter}
setkeydelay, 10

}
;
;
;
quack()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://random-d.uk/api/v1/random?", true)
whr.Send()
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
setkeydelay,35
WinActivate,ahk_exe Discord.exe
clipboard =  % obj.url	
send, ^v
send {enter}

}
;
;
;
date()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://worldclockapi.com/api/json/cet/now", true)
whr.Send()
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
clipboard =  % obj.currentDateTime
send, ^v
send {enter}
}
;
;
;
version()
{
msgbox,
(
Version 4 (Release 3)
==================
			Info about v4
==================
v4 is pretty much a cleanup, and a fixing of a lot of problems. I've also gotten rid of my old website from the main loader that loads this file.
Also removed a bunch of useless/garbage commands that just plain didn't work or where broken.
Worked on this at the 10/27/2019 and 10/28/2019 outage. 5 pm and 10/11am the next day.
Hope the internet comes back fast.
https://senpai.cf
)
}
;
;
;
chuck()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://api.chucknorris.io/jokes/random", true)
whr.Send()
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
setkeydelay,35
WinActivate,ahk_exe Discord.exe
clipboard =  % obj.value	
send, ^v
send {enter}
}
;
;
;
xkcd()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://xkcd.com/info.0.json", true)
whr.Send()
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
setkeydelay,35
WinActivate,ahk_exe Discord.exe
clipboard =  % obj.alt
send, ^v
send {enter}
WinActivate,ahk_exe Discord.exe
clipboard = % obj.img
send, ^v
send {enter}
}
;
;
;
floof()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://randomfox.ca/floof/", true)
whr.Send()
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
WinActivate,ahk_exe Discord.exe

whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://shibe.online/api/birds", true)
whr.Send()
whr.WaitForResponse()
Output := SubStr(whr.ResponseText,3,StrLen(whr.ResponseText)-4)
WinActivate,ahk_exe discord.exe
clipboard = %Output%
send, ^v
send {enter}
return
}
;
;
;
shibe()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://shibe.online/api/shibes", true)
whr.Send()

whr.WaitForResponse()
Output := SubStr(whr.ResponseText,3,StrLen(whr.ResponseText)-4)
WinActivate,ahk_exe discord.exe
clipboard = %Output%
send, ^v
send {enter}
return
}
;
;
;
chirp()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://shibe.online/api/birds", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
Output := SubStr(whr.ResponseText,3,StrLen(whr.ResponseText)-4)
WinActivate,ahk_exe discord.exe
clipboard = %Output%
send, ^v
send {enter}
return
}
;
;
shout()
{
inputbox,hello,,SHOUT TO ANYBODY YOU WANAT!
stringupper,despacito,hello
	WinActivate,ahk_exe discord.exe
clipboard = %despacito%
send, ^v
send {enter}
return
}
;
;
;
answer()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://yesno.wtf/api/", false)
whr.Send()
obj :=  Jxon_Load(whr.ResponseText)
answer := % obj.answer
123123 := % obj.image
stringupper,helllo,answer,T
WinActivate,ahk_exe Discord.exe
clipboard = %helllo%! %123123%
send, ^v
send {enter}
}
;
;
;
randAvatar()
{
Random,342423423423,1,999999999999
WinActivate,ahk_exe Discord.exe
clipboard = https://api.adorable.io/avatars/400/%342423423423%.png 
send, ^v
send {enter}
}
;
;
;
randLine()
{
numA    := [1,2,3,4,5,6,7,8,9,0]
letterA    := ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

list_random := ""
loop, 6
{
    Random, num, 1, 10
    Random, let, 1, 26
    list_random .= numA[num] letterA[let] 
}
WinActivate,ahk_exe Discord.exe
clipboard =  % list_random
send, ^v
send {enter}
return
}
;
;
;
spam()
{
numA    := [1,2,3,4,5,6,7,8,9,0]
letterA    := ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","~","{","}",">","<",".",",",";","=","-","_",")","*","&","("]

list_random := ""
loop, 1000
{
    Random, num, 1, 10
    Random, let, 1, 33
    list_random .= numA[num] letterA[let] 
}
WinActivate,ahk_exe Discord.exe
clipboard =  % list_random
send, ^v
send {enter}
return
}
;
;
;
randpic()
{
Random,342423423423,999999999999,999999999999999999
WinActivate,ahk_exe Discord.exe
clipboard = https://picsum.photos/200/340/?random%342423423423%
send, ^v
send {enter}
}
; Project made by https://senpai.cf
;                    GNU GENERAL PUBLIC LICENSE 2