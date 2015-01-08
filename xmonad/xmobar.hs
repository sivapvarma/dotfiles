Config { font = "xft:Source Code Pro:size=10:antialias=true"
        , borderColor = "black"
        , border = TopB
        , bgColor = "#000000"
        , fgColor = "grey"
        , position = TopW L 100
        , commands = [ Run Weather "VOBG" ["-t","<tempC>C","-L","20","-H","35","--normal","green","--high","red","--low","lightblue"] 36000
                        , Run Cpu ["-L","3","-H","50","--normal","green","--high","red"] 10
                        , Run Memory ["-t","Mem: <usedratio>%"] 10
                        , Run Com "uname" ["-s", "-r"] "" 36000
                        , Run Date "%a %b %d %Y %H:%M:%S" "date" 10
                        , Run StdinReader
                        ]
        , sepChar = "%"
        , alignSep = "}{"
        , template = "%StdinReader% | %cpu% | %memory% }{<fc=#ee9a00>%date%</fc> | %uname% | %VOBG% "
        }
