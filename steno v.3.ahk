Abbreviation(input) {
  ; if (input = "") {
  ;     Send 
  ;     return
  ; }
    if (input = "ㅈㄱㅎㄴ") {
        Send 존경하는
        return
    }
    if (input = "ㄱㅁㅇㄹ") {
        Send 국민 여러분
        return
    }
    if (input = "ㅇㄴ요") {
        Send 안녕하세요
        return
    }
    if (input = "ㅇㄴ가") {
        Send 안녕하십니까
        return
    }
    if (input = "ㅂㄷ") {
        Send ᆸ니다.
        return
    }
    if (input = "ㅂㄱ") {
        Send ᆸ니까?
        return
    }
    if (input = "ㅅㄷ") {
        Send ᆻ습니다.
        return
    }
    if (input = "ㅅㄱ") {
        Send ᆻ습니까?
        return
    }
    if (input = "ㅅㅂㄷ") {
        Send 십니다.
        return
    }
    if (input = "ㅅㅂㄱ") {
        Send 십니까?
        return
    }
    if (input = "ㅓㅂㄷ") {
        Send 었습니다.
        return
    }
    if (input = "ㅓㅂㄱ") {
        Send 었습니까?
        return
    }
    if (input = "ㄱㄷ") {
        Send 겠습니다.
        return
    }
    if (input = "ㄱㄱ") {
        Send 겠습니까?
        return
    }
    if (input = "ㅅㄱㄷ") {
        Send 시겠습니다.
        return
    }
    if (input = "ㅅㄱㄱ") {
        Send 시겠습니까?
        return
    }
    if (input = "ㅎㄷ") {
        Send 합니다.
        return
    }
    if (input = "ㅎㄱ") {
        Send 합니까?
        return
    }
    if (input = "혓ㄷ") {
        Send 하였습니다.
        return
    }
    if (input = "혓ㄱ") {
        Send 하였습니까?
        return
    }
    if (input = "햇ㄷ") {
        Send 했습니다.
        return
    }
    if (input = "햇ㄱ") {
        Send 했습니까?
        return
    }
}

`;::
{
	Send +^{Left}^c+{Left}
	Abbreviation(Clipboard)
    return
}

esc:: ; Exit
{
    ExitApp
}