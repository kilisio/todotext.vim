if exists("b:current_syntax")
    finish
endif

hi Cyan3        ctermfg=43  guifg=#00d7af "rgb=0,215,175
hi DarkBlue     ctermfg=18  guifg=#000087 "rgb=0,0,135
hi DarkGreen    ctermfg=22  guifg=#005f00 "rgb=0,95,0
hi DarkMagenta  ctermfg=90  guifg=#870087 "rgb=135,0,135
hi DarkOrange   ctermfg=208 guifg=#ff8700 "rgb=255,135,0
hi Green3       ctermfg=34  guifg=#00af00 "rgb=0,175,0
hi NavyBlue     ctermfg=17  guifg=#00005f "rgb=0,0,95
hi Orange4      ctermfg=58  guifg=#5f5f00 "rgb=95,95,0
hi Purple       ctermfg=93  guifg=#8700ff "rgb=135,0,255
hi Red3         ctermfg=160 guifg=#d70000 "rgb=215,0,0

syntax match Context '\(^\|\W\)@[^[:blank:]]\+'     contains=NONE
syntax match Date    '\d\{2,4\}-\d\{2\}-\d\{2\}'    contains=NONE
syntax match Done    '^[xX]\s.\+$'                  contains=Date,Project,Contex,Done,Due,Update,Question
syntax match Due     '[Dd][Uu][Ee]:\d\{2,4\}-\d\{2\}-\d\{2\}'   contains=NONE
syntax match Note    '[Nn][Oo][Tt][Ee]:[^[:blank:]]\+'          contains=None
syntax match Project '\(^\|\W\)+[^[:blank:]]\+'     contains=NONE
syntax match Question '[^[:blank:]]\+?'             contains=NONE
syntax match Update  '[Uu][Pp][Dd]:\d\{2,4\}-\d\{2\}-\d\{2\}'
syntax match PrioA   '^(A)'                       contains=NONE
syntax match PrioB   '^(B)'                       contains=Date,Project,Contex,Done,Due,Update,Question
syntax match PrioC   '^(C)'                       contains=Date,Project,Contex,Done,Due,Update,Question

" Other priority colours might be defined by the user
hi default link PrioA   Red3
hi default link PrioB   DarkOrange
hi default link PrioC   Green3
hi default link Context Green3
hi default link Date    PreProc
hi default link Done    Comment
hi default link Due     Red3
hi default link Note    DarkBlue
hi default link Project DarkOrange
hi default link Question    DarkOrange
hi default link Update  DarkMagenta

let b:current_syntax = "todotext"
