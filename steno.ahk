; fisrt ᄀ ᄂ ᄃ ᄅ ᄆ ᄇ ᄉ ᄋ ᄌ ᄎ ᄏ ᄐ ᄑ ᄒ ᄁ ᄄ ᄈ ᄊ ᄍ
; middle ᅡ ᅣ ᅥ ᅧ ᅩ ᅭ ᅮ ᅲ ᅳ ᅵ ᅢ ᅦ ᅤ ᅨ
; last ᆨ ᆩ ᆫ ᆬ ᆭ ᆮ ᆯ ᆰ ᆱ ᆲ ᆳ ᆴ ᆵ ᆶ ᆷ ᆸ ᆹ ᆺ ᆼ ᆽ ᆾ ᆿ ᇀ ᇁ ᇂ


; ====== Functions ======

judgeInsertLast(previous, input) {
    result = 0
    if (previous = "r") {
        if (input = "t") {
            result := 1
        }
    }
    else if (previous = "s") {
        if (input = "w" or input = "g") {
            result := 1
        }
    }
    else if (previous = "f") {
        if (input = "r" or input = "a" or input = "q" or input = "t" or input = "x" or input = "v" or input = "g")
            result := 1
    }
    else if (previous = "q") {
        if (input = "t")
            result := 1
    }
    return result
}
last2first(state,previous) {
    if (previous = "r") {
        return "ᄀ"
    }
    if (previous = "s") {
        return "ᄂ"
    }
}


; ====== Codes ======

state := 0 ; Type of letter which came previously (0=fisrt, 1=middle, 2=last, 3=doubleLast)
previous := " "

space::
{
    SendEvent, {Space}
    state := 0
    previous := " "
}
return

; === CONSONANT ===
r::
{
    if (state = 0 || state = 3) {
        Send, ᄀ
    }
    else if (state = 1) {
        Send, ᆨ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆨ
            state := 3
        }
        else {
            Send, ᄀ
            state := 0
        }
    }
    previous := "r"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

s::
{
    if (state = 0 || state = 3) {
        Send, ᄂ
    }
    else if (state = 1) {
        Send, ᆫ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆫ
            state := 3
        }
        else {
            Send, ᄂ
            state := 0
        }
    }
    previous := "s"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

e::
{
    if (state = 0 || state = 3) {
        Send, ᄃ
    }
    else if (state = 1) {
        Send, ᆮ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆮ
            state := 3
        }
        else {
            Send, ᄃ
            state := 0
        }
    }
    previous := "e"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

f::
{
    if (state = 0 || state = 3) {
        Send, ᄅ
    }
    else if (state = 1) {
        Send, ᆯ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆯ
            state := 3
        }
        else {
            Send, ᄅ
            state := 0
        }
    }
    previous := "f"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

a::
{
    if (state = 0 || state = 3) {
        Send, ᄆ
    }
    else if (state = 1) {
        Send, ᆷ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆷ
            state := 3
        }
        else {
            Send, ᄆ
            state := 0
        }
    }
    previous := "a"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

q::
{
    if (state = 0 || state = 3) {
        Send, ᄇ
    }
    else if (state = 1) {
        Send, ᆸ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆸ
            state := 3
        }
        else {
            Send, ᄇ
            state := 0
        }
    }
    previous := "q"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

t::
{
    if (state = 0 || state = 3) {
        Send, ᄉ
    }
    else if (state = 1) {
        Send, ᆺ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆺ
            state := 3
        }
        else {
            Send, ᄉ
            state := 0
        }
    }
    previous := "t"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

d::
{
    if (state = 0 || state = 3) {
        Send, ᄋ
    }
    else if (state = 1) {
        Send, ᆼ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆼ
            state := 3
        }
        else {
            Send, ᄋ
            state := 0
        }
    }
    previous := "d"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

w::
{
    if (state = 0 || state = 3) {
        Send, ᄌ
    }
    else if (state = 1) {
        Send, ᆽ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆽ
            state := 3
        }
        else {
            Send, ᄌ
            state := 0
        }
    }
    previous := "w"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

c::
{
    if (state = 0 || state = 3) {
        Send, ᄎ
    }
    else if (state = 1) {
        Send, ᆾ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆾ
            state := 3
        }
        else {
            Send, ᄎ
            state := 0
        }
    }
    previous := "c"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

z::
{
    if (state = 0 || state = 3) {
        Send, ᄏ
    }
    else if (state = 1) {
        Send, ᆿ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᆿ
            state := 3
        }
        else {
            Send, ᄏ
            state := 0
        }
    }
    previous := "z"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

x::
{
    if (state = 0 || state = 3) {
        Send, ᄐ
    }
    else if (state = 1) {
        Send, ᇀ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᇀ
            state := 3
        }
        else {
            Send, ᄐ
            state := 0
        }
    }
    previous := "x"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

v::
{
    if (state = 0 || state = 3) {
        Send, ᄑ
    }
    else if (state = 1) {
        Send, ᇁ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᇁ
            state := 3
        }
        else {
            Send, ᄑ
            state := 0
        }
    }
    previous := "v"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

g::
{
    if (state = 0 || state = 3) {
        Send, ᄒ
    }
    else if (state = 1) {
        Send, ᇂ
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(previous, "r") = 1) {
            Send, ᇂ
            state := 3
        }
        else {
            Send, ᄒ
            state := 0
        }
    }
    previous := "g"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

; === VOWEL ===
k::
{
    if (state = 2 || state = 3) {
        Send, {Backspace}
        Send, last2first(state,previous)
    }
    Send, ᅡ
    state := 1
    previous := "k"
    ; == Debug ==
    ;Send, %state%
    ;Send, %previous%
}
return

; === Debug ===
^q::
{
    Send, {Space}
}
return

esc:: ; Exit
{
    ExitApp
}