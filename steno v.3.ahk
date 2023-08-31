`;::
{
    prev_clip := % Clipboard
	Send +^{Left}^c+{Left}
	Abbreviation(Clipboard)
    Clipboard := % prev_clip
    return
}

esc:: 
{
    ExitApp
}


; ====== Function ======

Abbreviation(input) {
  ; if (input = "") {
  ;     Clipboard := ""
  ; }
    if (input = "ㅈㄱㅎㄴ")
        Clipboard := "존경하는 국민 여러분, "
    if (input = "ㅇㄴ가")
        Clipboard := "안녕하십니까. "
    if (input = "ㅈ")
        Clipboard := "저는 "
    if (input = "ㅎㄷ")
        Clipboard := "합니다.  "
    if (Clipboard != input)
        Send ^{v}
}