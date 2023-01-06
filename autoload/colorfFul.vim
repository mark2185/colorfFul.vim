vim9script

const ESC_CODE = char2nr("\<ESC>")

highlight link ColorfFulDefaultLabel Search

def MarkCharInLine(c: string, l: number): void
    const regex = '\%.l' .. c
    call matchadd('ColorfFulDefaultLabel', regex, 999)
enddef

def ClearMatches(): void
    for hi in filter(getmatches(), 'v:val.group ==# "ColorfFulDefaultLabel"')
        call matchdelete(hi.id)
    endfor
enddef

export def FindWith(forward: string): string
    const inputChar = getchar()
    ClearMatches()
    if inputChar == ESC_CODE
        return ''
    endif

    const charToFind = nr2char(inputChar)
    var line = getline('.')
    # echom "Line: " .. line
    var [_, lineIndex, cursorIndex, _] = getpos('.')
    # echom printf("Pos, char: %s, %s", lineIndex, charToFind)
    MarkCharInLine(charToFind, lineIndex)
    return forward .. charToFind
enddef
