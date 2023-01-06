# colorfFul.vim
               _             __   ___      _       _           ~
      ___ ___ | | ___  _ __ / _| / __\   _| |_   _(_)_ __ ___  ~
     / __/ _ \| |/ _ \| '__| |_ / _\| | | | \ \ / / | '_ ` _ \ ~
    | (_| (_) | | (_) | |  |  _/ /  | |_| | |\ V /| | | | | | |~
     \___\___/|_|\___/|_|  |_| \/    \__,_|_(_)_/ |_|_| |_| |_|~

                Color me pleasantly surprised!


## Usage
By using `{f,F,t,T}<char>` the `<char>` will be highlighted
with the `Search` highlight group.

Remove the highlighting by invoking `{f,F,t,T}<Esc>`.

## Configuration
If you don't want to use the `Search` highlight group for the char,
link ColorfFulMarker to some other group.
```viml
highlight link ColorfFulMarker Search
```
