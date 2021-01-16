request(url, cache:=False) {
    req := ComObjCreate("Msxml2.XMLHTTP")
    
    finalUrl := url
    
    if cache {
        Random, bypass, 1, 999999
        finalUrl := finalUrl . "?c=" . bypass
    }

    req.open("GET", finalUrl, False)
    req.Send()
    Return req.responseText
}


testDiscord() {
    if not WinActive("ahk_exe Discord.exe")
        Return True    
}

Join(s,p*){
  static _:="".base.Join:=Func("Join")
  for k,v in p
  {
    if isobject(v)
      for k2, v2 in v
        o.=s v2
    else
      o.=s v
  }
  return SubStr(o,StrLen(s)+1)
}