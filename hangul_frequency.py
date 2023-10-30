from hgtk import checker, letter

text = list(input("Type the Text"))

hg_first = ['ㄱ','ㄲ','ㄴ','ㄷ','ㄸ','ㄹ','ㅁ','ㅂ','ㅃ','ㅅ','ㅆ','ㅇ','ㅈ','ㅉ','ㅊ','ㅋ','ㅌ','ㅍ','ㅎ']
hg_middle = []
hg_last = []

list_first = []
list_middle = []
list_last = []
for t in text:
    if checker.is_hangul(t):
        decomposed_hangul = letter.decompose(text_i)
        for d_hg in range(len(decomposed_hangul)):
            if d_hg == 0:
                list_first.append(decomposed_hangul[d_hg]
                
list_first.count()