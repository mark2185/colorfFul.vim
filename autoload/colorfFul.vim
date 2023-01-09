vim9script

const ESC_CODE = char2nr("\<ESC>")

def MarkCharInLine(c: string, l: number): void
    const regex = '\V\%.l' .. c
    call matchadd('ColorfFulMarker', regex, 999)
enddef

def ClearMatches(): void
    for hi in filter(getmatches(), 'v:val.group ==# "ColorfFulMarker"')
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
    var [_, lineIndex, cursorIndex, _] = getpos('.')
    MarkCharInLine(charToFind, lineIndex)
    return forward .. charToFind
enddef
