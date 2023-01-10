vim9script

def MarkCharInLine(c: string, l: number): void
    const regex = '\V\%.l' .. c
    call matchadd('ColorfFulMarker', regex, 999)
enddef

export def ClearMatches(): void
    for hi in filter(getmatches(), 'v:val.group ==# "ColorfFulMarker"')
        call matchdelete(hi.id)
    endfor
enddef

export def FindWith(forward: string): string
    # Prefer getcharstr() over getchar()->nr2char().
    # The former is more readable and more reliable.
    # Also the return value is not necessarily a number, it can also be a
    # string which is the case then vim automatically
    # presses the pseudo-key <CursorHold> which makes it go haywire
    # in vim9script
    const charToFind = getcharstr()
    ClearMatches()
    if charToFind == "\<ESC>" || charToFind == "\<CursorHold>"
        return ''
    endif

    var line = getline('.')
    var [_, lineIndex, cursorIndex, _] = getpos('.')
    MarkCharInLine(charToFind, lineIndex)
    return forward .. charToFind
enddef
