`;::
{
    prev_clip := Clipboard
    Send +^{Left}^c+{Left}
    if (Abbreviation(Clipboard) != "fail") {
        Clipboard := Abbreviation(Clipboard)
    }
    Sleep 5
    Send ^{v}
    Clipboard := prev_clip
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
    if (input = "ㅈㄱㅎㄴ") {
        return "존경하는 국민 여러분, "
    }
    if (input = "ㅇㄴ가") {
        return "안녕하십니까. "
    }
    if (input = "ㅈ") {
        return "저는 "
    }
    if (input = "ㅇㄷ") {
        return "입니다. "
    }
    if (input = "ㅎㄷ") {
        return "합니다. "
    }
    if (input = "ㅅㄷ") {
        return "습니다. "
    }
    if (input = "ㄱㄷ") {
        return "겠습니다. "
    }
    if (input = "ㅂㄷ") {
        return "ㅂ니다. "
    }
    if (input = "ㄹㅎㄷ" || input = "ㅀㄷ") {
        return "라고 합니다. "
    }
    if (input = "ㅇㄴ") {
        return "오늘 "
    }
    if (input = "ㅂㄱㄷ") {
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