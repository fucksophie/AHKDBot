#Hotstring EndChars /
#include jxon.ahk
help()
{
WinActivate,ahk_exe Discord.exe
clipboard =
(
:robot: AHKDBot commands :robot:
reload - Reload the AHKDBot
facepalm - Facepalm somebody.
shorten - Shorten an link
about - Info about AHKDBot.
shutdown  - Shutdown AHDBot
license - AHDBot license.
meow - Get an cute kitten!
woof - Get an dooogoo!
quack - Get an cool duck!
date - Get the date
version - Get AHKDBot version.
welcome - Welcome  an newcommer!
chuck - Chuck Norris joke.
xkcd - Get the newest xkcd comic.
floof - Get an fox
shibe - :heavy_check_mark:  Fixed by Maestr0 :heavy_check_mark: - Get an random shibe pic.
shout - Makes your text be uppercased.
chirp - Get an random bird pic.
answer - Get an gif and an Yes/No answer.
randavatar - Get an random avatar. 400x400 pictures.
randline - :heavy_check_mark:  Fixed by Maestr0 :heavy_check_mark: - Get an random string.
randpic - Get an random picture.
zucc - Get an zucc
ElonMusk - get an Elon
markdown - Markdown guide
)
Send, ^v
send {enter}

}
;
;
;
reload()
{

sendToDiscord("Reloading AHKDBot :white_check_mark:")
reload
}
;
;
;
facepalm()
{
inputbox,user,, Who got the facepalm?
WinActivate,ahk_exe Discord.exe
clipboard =  %user%  :GWfroggyFacepalm: 
Send, ^v
send {enter}

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
; Using 'true' above and the call below allows the script to remain responsive.
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
sendToDiscord(":ahkDiscordSelfbot has been created by OwlsOwlAtNight#4789. He made this in ahk. No discord.ahk. Just simple hotstrings")
}
;
;
;
shutdown()
{
sendToDiscord(":cry: Shutting down :cry:")
ExitApp
}
;
;
;
license()
{
	; Example: Download text to a variable:
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://www.wtfpl.net/txt/copying/", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
WTFPL := whr.ResponseText
WinActivate,ahk_exe Discord.exe
clipboard =
(
--- AHKDBot License ---
 %WTFPL%
 ----------------------------
)
Send, ^v
send {enter}

}
;
;
;
meow()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://shibe.online/api/cats", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
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
whr.Send()
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
; Using 'true' above and the call below allows the script to remain responsive.
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
; Using 'true' above and the call below allows the script to remain responsive.
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
	WinActivate,ahk_exe Discord.exe

clipboard =  
(
Version 3.0 (Release 2)
==================
			Info about 3.0
==================
3.0 has alot more commands. Also ahkDBot has a github rep now. https://github.com/RazorApple/AHKDBot#usage
It has info about setting it up and stuff.
I have plans on making more stuff like commands with parametrs and stuff. Dont get hyped bcs i still dont know 
if i can make that come alive.
Untill then we are going to stick to the clipboard and the function loader thing.
)

Send, ^v
send {enter}

}
;
;
;
welcome()
{
sendToDiscord("wEllCoEM to thE  AaAHK dIIsCOIirird")
}
;
;
;
chuck()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://api.chucknorris.io/jokes/random", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
setkeydelay,35
WinActivate,ahk_exe Discord.exe
clipboard =  % obj.value	
send, ^v
send {enter}
sendToDiscord("http://2.gp/KyyB")
}
;
;
;
xkcd()
{
	whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://xkcd.com/info.0.json", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
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
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
obj :=  Jxon_Load(whr.ResponseText)
WinActivate,ahk_exe Discord.exe
clipboard = % obj.image
send, ^v
send {enter}
return
}
shibe()
{
whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "http://shibe.online/api/shibes", true)
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
sendToDiscord(text)
{
	WinActivate,ahk_exe discord.exe
clipboard = %text%
send, ^v
send {enter}
return
}
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
clipboard = %helllo% %123123%
send, ^v
send {enter}
}
randAvatar()
{
Random,342423423423,1,999999999999
WinActivate,ahk_exe Discord.exe
clipboard = https://api.adorable.io/avatars/400/%342423423423%.png 
send, ^v
send {enter}
}
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
randpic()
{
Random,342423423423,999999999999,999999999999999999
WinActivate,ahk_exe Discord.exe
clipboard = https://picsum.photos/200/340/?random%342423423423%
send, ^v
send {enter}
}
zucc()
{
sendToDiscord("http://www.gstatic.com/tv/thumb/persons/589228/589228_v9_ba.jpg  https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoKj7jy1y2oP66LjQHftgMugt-XqmvAYOm54oMco73Wy3lIhZA")
}
elonmusk()
{
sendToDiscord("https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/08/08/17/elon-musk.jpg    http://www.gstatic.com/tv/thumb/persons/487130/487130_v9_ba.jpg")
}
markdown()
{
sendToDiscord("https://lolisareinthe.club/sFoSNhFV.png")
}
