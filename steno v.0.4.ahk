`;:: ;Abb key
{
    prev_clip := Clipboard
    Clipboard := ""
    Send +^{Left}^c+{Left}
    if (Abbreviation(Clipboard) = "fail") {
        Send {Space}^{v}
    }
	else {
		Clipboard := Abbreviation(Clipboard)
		Sleep 5
		Send ^{v}
	}
    Clipboard := % prev_clip
    return
}
space:: ;doubleSpace
{
    prev_clip := Clipboard
    Clipboard := "  "
    Send {Space}^{v}
    Clipboard := % prev_clip
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
    if (input = "ㅈㄱ") {
        return "존경"
    }
    if (input = "ㅎㄴ") {
        return "하는"
    }
    if (input = "ㄱㅁ") {
        return "국민"
    }
    if (input = "ㄱ며") {
        return "국민 여러분"
    }
    if (input = "ㅇㄴㅎ십ㅂㄱ") {
        return "안녕하십니까. "
    }
    if (input = "ㅈ") {
        return "저는 "
    }
    if (input = "ㅣㅂ") {
        return "입니다. "
    }
    if (input = "ㅎㅂ") {
        return "합니다. "
    }
    if (input = "ㅅㅂ") {
        return "습니다. "
    }
    if (input = "ㄱㅂ") {
        return "겠습니다. "
    }
    if (input = "ㅂ") {
        return "ㅂ니다. "
    }
    if (input = "ㄺㅎㅂ" || input = "ㄹㄱㅎㅂ") {
        return "라고 합니다. "
    }
    if (input = "ㅇㄴ") {
        return "오늘 "
    }
    if (input = "ㅂㄱㅅㅂ") {
        return "반갑습니다. "
    }
    if (input = "잘") {
        return "이 자리에 "
    }
    if (input = "ㄷ은") {
        return "된 것은 "
    }
    return fail
}
