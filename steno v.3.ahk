Abbreviation(input) {
  ; if (input = "") {
  ;     Send 
  ; }
    if (input = "ㅈㄱㅎㄴ")
        Send 존경하는 국민 여러분{Space}
    if (input = "ㄱㅁㅇㄹ") {
        Send 국민 여러분{Space}
    }
    if (input = "ㅇㄴ요") {
        Send 안녕하세요?{Space}
    }
    if (input = "ㅇㄴ가") {
        Send 안녕하십니까?{Space}
    }
    if (input = "ㅂㄷ") {
        Send ᆸ니다.{Space}
    }
    if (input = "ㅂㄱ") {
        Send ᆸ니까?{Space}
    }
    if (input = "ㅅㄷ") {
        Send ᆻ습니다.{Space}
    }
    if (input = "ㅅㄱ") {
        Send ᆻ습니까?{Space}
    }
    if (input = "ㅅㅂㄷ") {
        Send 십니다.{Space}
    }
    if (input = "ㅅㅂㄱ") {
        Send 십니까?{Space}
    }
    if (input = "ㅓㅂㄷ") {
        Send 었습니다.{Space}
    }
    if (input = "ㅓㅂㄱ") {
        Send 었습니까?{Space}
    }
    if (input = "ㄱㄷ") {
        Send 겠습니다.{Space}
    }
    if (input = "ㄱㄱ") {
        Send 겠습니까?{Space}
    }
    if (input = "ㅅㄱㄷ") {
        Send 시겠습니다.{Space}
    }
    if (input = "ㅅㄱㄱ") {
        Send 시겠습니까?{Space}
    }
    if (input = "ㅎㄷ") {
        Send 합니다.{Space}
    }
    if (input = "ㅎㄱ") {
        Send 합니까?{Space}
    }
    if (input = "혓ㄷ") {
        Send 하였습니다.{Space}
    }
    if (input = "혓ㄱ") {
        Send 하였습니까?{Space}
    }
    if (input = "햇ㄷ") {
        Send 했습니다.{Space}
    }
    if (input = "햇ㄱ") {
        Send 했습니까?{Space}
    }
}

`;::
{
    prev_clip := % Clipboard
	Send +^{Left}^c+{Left}
	Abbreviation(Clipboard)
    Clipboard := % prev_clip
    return
}

esc:: ; Exit
    ExitApp