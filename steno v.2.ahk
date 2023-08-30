; fisrt ᄀ ᄂ ᄃ ᄅ ᄆ ᄇ ᄉ ᄋ ᄌ ᄎ ᄏ ᄐ ᄑ ᄒ ᄁ ᄄ ᄈ ᄊ ᄍ
; middle ᅡ ᅣ ᅥ ᅧ ᅩ ᅭ ᅮ ᅲ ᅳ ᅵ ᅢ ᅦ ᅤ ᅨ
; last ᆨ ᆩ ᆫ ᆬ ᆭ ᆮ ᆯ ᆰ ᆱ ᆲ ᆳ ᆴ ᆵ ᆶ ᆷ ᆸ ᆹ ᆺ ᆼ ᆽ ᆾ ᆿ ᇀ ᇁ ᇂ


; ====== Functions ======

rome2hangul(rome,shape) { ; shape: 0=first, 1=last
    if (rome = "r") { ; consonants
        if (shape = 0) {
            Send, ᄀ
            return
        }
        if (shape = 1) {
            Send, ᆨ
            return
        }
    }
    if (rome = "s") {
        if (shape = 0) {
            Send, ᄂ
            return
        }
        if (shape = 1) {
            Send, ᆫ
            return
        }
    }
    if (rome = "e") {
        if (shape = 0) {
            Send, ᄃ
            return
        }
        if (shape = 1) {
            Send, ᆮ
            return
        }
    }
    if (rome = "f") {
        if (shape = 0) {
            Send, ᄅ
            return
        }
        if (shape = 1) {
            Send, ᆯ
            return
        }
    }
    if (rome = "a") {
        if (shape = 0) {
            Send, ᄆ
            return
        }
        if (shape = 1) {
            Send, ᆷ
            return
        }
    }
    if (rome = "q") {
        if (shape = 0) {
            Send, ᄇ
            return
        }
        if (shape = 1) {
            Send, ᆸ
            return
        }
    }
    if (rome = "t") {
        if (shape = 0) {
            Send, ᄉ
            return
        }
        if (shape = 1) {
            Send, ᆺ
            return
        }
    }
    if (rome = "d") {
        if (shape = 0) {
            Send, ᄋ
            return
        }
        if (shape = 1) {
            Send, ᆼ
            return
        }
    }
    if (rome = "w") {
        if (shape = 0) {
            Send, ᄌ
            return
        }
        if (shape = 1) {
            Send, ᆽ
            return
        }
    }
    if (rome = "c") {
        if (shape = 0) {
            Send, ᄎ
            return
        }
        if (shape = 1) {
            Send, ᆾ
            return
        }
    }
    if (rome = "z") {
        if (shape = 0) {
            Send, ᄏ
            return
        }
        if (shape = 1) {
            Send, ᆿ
            return
        }
    }
    if (rome = "x") {
        if (shape = 0) {
            Send, ᄐ
            return
        }
        if (shape = 1) {
            Send, ᇀ
            return
        }
    }
    if (rome = "v") {
        if (shape = 0) {
            Send, ᄑ
            return
        }
        if (shape = 1) {
            Send, ᇁ
            return
        }
    }
    if (rome = "g") {
        if (shape = 0) {
            Send, ᄒ
            return
        }
        if (shape = 1) {
            Send, ᇂ
            return
        }
    }
    if (rome = "R") {
        if (shape = 0) {
            Send, ᄁ
            return
        }
        if (shape = 1) {
            Send, ᆩ
            return
        }
    }
    if (rome = "E") {
        if (shape = 0) {
            Send, ᄄ
            return
        }
        if (shape = 1) {
            Send, ퟍ
            return
        }
    }
    if (rome = "Q") {
        if (shape = 0) {
            Send, ᄈ
            return
        }
        if (shape = 1) {
            Send, ퟦ
            return
        }
    }
    if (rome = "T") {
        if (shape = 0) {
            Send, ᄊ
            return
        }
        if (shape = 1) {
            Send, ᆻ
            return
        }
    }
    if (rome = "W") {
        if (shape = 0) {
            Send, ᄍ
            return
        }
        if (shape = 1) {
            Send, ퟹ
            return
        }
    }
    if (rome = "k") { ; vowels
        Send, ᅡ
        return
    }
    if (rome = "i") { ; vowels
        Send, ᅣ
        return
    }
    if (rome = "j") { ; vowels
        Send, ᅥ
        return
    }
    if (rome = "u") { ; vowels
        Send, ᅧ
        return
    }
    if (rome = "h") { ; vowels
        Send, ᅩ
        return
    }
    if (rome = "y") { ; vowels
        Send, ᅭ
        return
    }
    if (rome = "n") { ; vowels
        Send, ᅮ
        return
    }
    if (rome = "b") { ; vowels
        Send, ᅲ
        return
    }
    if (rome = "m") { ; vowels
        Send, ᅳ
        return
    }
    if (rome = "l") { ; vowels
        Send, ᅵ
        return
    }
    if (rome = "o") { ; vowels
        Send, ᅢ
        return
    }
    if (rome = "p") { ; vowels
        Send, ᅦ
        return
    }
    if (rome = "O") { ; vowels
        Send, ᅤ
        return
    }
    if (rome = "P") { ; vowels
        Send, ᅨ
        return
    }
}

judgeInsertLast(prev, input) {
    result = 0
    if (prev = "r") {
        if (input = "t") {
            result := 1
        }
    }
    else if (prev = "s") {
        if (input = "w" or input = "g") {
            result := 1
        }
    }
    else if (prev = "f") {
        if (input = "r" or input = "a" or input = "q" or input = "t" or input = "x" or input = "v" or input = "g")
            result := 1
    }
    else if (prev = "q") {
        if (input = "t")
            result := 1
    }
    return result
}

cons(state,prev,key) {
    if (state = 0 || state = 3) {
        rome2hangul(key,0)
    }
    else if (state = 1) {
        rome2hangul(key,1)
        state := 2
    }
    else if (state = 2) {
        if (judgeInsertLast(prev, "r") = 1) {
            rome2hangul(key,1)
            state := 3
        }
        else {
            rome2hangul(key,0)
            state := 0
        }
    }
    prev := key
    return state, prev
}
vowel(state,prev,key) {
    if (state = 2 || state = 3) {
        Send, {Backspace}
        rome2hangul(prev,0) ; last2first
    }
    rome2hangul(key,0)
    return
}

; ====== Codes ======

Mode := 0
state := 0 ; 0=first, 1=middle, 2=last, 3=doubleLast
prev := ""

shift::
return

`;::
{
    Send, `;
    Mode := 1
    return
}


; space::
; {
;     SendEvent, {Space}
;     state := 0
;     prev := ""
;     return
; }

; === Consonants ===
if (Mode = 0) {
    r::
    {
        state := cons(state,prev,"r")
        prev := "r"
        return
    }

    s::
    {
        state := cons(state,prev,"s")
        prev := "s"
        return
    }

    e::
    {
        state := cons(state,prev,"e")
        prev := "e"
        return
    }

    f::
    {
        state := cons(state,prev,"f")
        prev := "f"
        return
    }

    a::
    {
        state := cons(state,prev,"a")
        prev := "a"
        return
    }

    q::
    {
        state := cons(state,prev,"q")
        prev := "q"
        return
    }

    t::
    {
        state := cons(state,prev,"t")
        prev := "t"
        return
    }

    d::
    {
        state := cons(state,prev,"d")
        prev := "d"
        return
    }

    w::
    {
        state := cons(state,prev,"w")
        prev := "w"
        return
    }

    c::
    {
        state := cons(state,prev,"c")
        prev := "c"
        return
    }

    z::
    {
        state := cons(state,prev,"z")
        prev := "z"
        return
    }

    x::
    {
        state := cons(state,prev,"x")
        prev := "x"
        return
    }

    v::
    {
        state := cons(state,prev,"v")
        prev := "v"
        return
    }

    g::
    {
        state := cons(state,prev,"g")
        prev := "g"
        return
    }

    +r::
    {
        state := cons(state,prev,"R")
        prev := "R"
        return
    }

    +e::
    {
        state := cons(state,prev,"E")
        prev := "E"
        return
    }

    +q::
    {
        state := cons(state,prev,"Q")
        prev := "Q"
        return
    }

    +t::
    {
        state := cons(state,prev,"T")
        prev := "T"
        return
    }

    +w::
    {
        state := cons(state,prev,"W")
        prev := "W"
        return
    }


    ; === Vowels ===
    k::
    {
        vowel(state,prev,"k")
        state := 1
        prev := "k"
        return
    }

    i::
    {
        vowel(state,prev,"i")
        state := 1
        prev := "i"
        return
    }

    j::
    {
        vowel(state,prev,"j")
        state := 1
        prev := "j"
        return
    }

    u::
    {
        vowel(state,prev,"u")
        state := 1
        prev := "u"
        return
    }

    h::
    {
        vowel(state,prev,"h")
        state := 1
        prev := "h"
        return
    }

    y::
    {
        vowel(state,prev,"y")
        state := 1
        prev := "y"
        return
    }

    n::
    {
        vowel(state,prev,"n")
        state := 1
        prev := "n"
        return
    }

    b::
    {
        vowel(state,prev,"b")
        state := 1
        prev := "b"
        return
    }

    m::
    {
        vowel(state,prev,"m")
        state := 1
        prev := "m"
        return
    }

    l::
    {
        vowel(state,prev,"l")
        state := 1
        prev := "l"
        return
    }

    o::
    {
        vowel(state,prev,"o")
        state := 1
        prev := "o"
        return
    }

    p::
    {
        vowel(state,prev,"p")
        state := 1
        prev := "p"
        return
    }

    +o::
    {
        vowel(state,prev,"O")
        state := 1
        prev := "O"
        return
    }

    +p::
    {
        vowel(state,prev,"P")
        state := 1
        prev := "P"
        return
    }
}


; ====== Debug ======
::;debug::
{
    rome2hangul("r",1)
    return
}

esc:: ; Exit
{
    ExitApp
}

; ==== Abbreviation ====
::;qe::
Send, ᆸ니다.{Enter}