@256
D=A
@SP
M=D
@return-address0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(return-address0)
(INF_LOOP)
@INF_LOOP
0;JMP
(Square.new)
@3
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address1
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.alloc
0;JMP
(return-address1)
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@1
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@2
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address2
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.draw
0;JMP
(return-address2)
@SP
AM=M-1
D=M
@5
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.dispose)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address3
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.deAlloc
0;JMP
(return-address3)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.draw)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@return-address4
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address4)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address5
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address5)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.erase)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address6
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address6)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address7
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address7)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.incSize)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@254
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE0
D;JLT
D=0
@FALSE0
0;JMP
(TRUE0)
D=-1
(FALSE0)
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@510
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE1
D;JLT
D=0
@FALSE1
0;JMP
(TRUE1)
D=-1
(FALSE1)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A&D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address8
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.erase
0;JMP
(return-address8)
@SP
AM=M-1
D=M
@5
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address9
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.draw
0;JMP
(return-address9)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.decSize)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE2
D;JGT
D=0
@FALSE2
0;JMP
(TRUE2)
D=-1
(FALSE2)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address10
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.erase
0;JMP
(return-address10)
@SP
AM=M-1
D=M
@5
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address11
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.draw
0;JMP
(return-address11)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.moveUp)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE3
D;JGT
D=0
@FALSE3
0;JMP
(TRUE3)
D=-1
(FALSE3)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address12
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address12)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address13
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address13)
@SP
AM=M-1
D=M
@5
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@return-address14
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address14)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address15
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address15)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.moveDown)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@254
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE4
D;JLT
D=0
@FALSE4
0;JMP
(TRUE4)
D=-1
(FALSE4)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address16
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address16)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address17
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address17)
@SP
AM=M-1
D=M
@5
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@return-address18
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address18)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address19
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address19)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.moveLeft)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE5
D;JGT
D=0
@FALSE5
0;JMP
(TRUE5)
D=-1
(FALSE5)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address20
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address20)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address21
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address21)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@return-address22
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address22)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address23
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address23)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Square.moveRight)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@510
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE6
D;JLT
D=0
@FALSE6
0;JMP
(TRUE6)
D=-1
(FALSE6)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address24
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address24)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address25
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address25)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@return-address26
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.setColor
0;JMP
(return-address26)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A+D
@SP
AM=M+1
A=A-1
M=D
@return-address27
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@9
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP
(return-address27)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(SquareGame.new)
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address28
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.alloc
0;JMP
(return-address28)
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@30
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address29
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@8
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.new
0;JMP
(return-address29)
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(SquareGame.dispose)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address30
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.dispose
0;JMP
(return-address30)
@SP
AM=M-1
D=M
@5
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address31
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.deAlloc
0;JMP
(return-address31)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(SquareGame.run)
@SP
AM=M+1
A=A-1
M=0
@SP
AM=M+1
A=A-1
M=0
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(WHILE_EXP0)
@1
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
(WHILE_EXP1)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE7
D;JEQ
D=0
@FALSE7
0;JMP
(TRUE7)
D=-1
(FALSE7)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
@return-address32
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.keyPressed
0;JMP
(return-address32)
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address33
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@SquareGame.moveSquare
0;JMP
(return-address33)
@SP
AM=M-1
D=M
@5
M=D
@WHILE_EXP1
0;JMP
(WHILE_END1)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@81
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE8
D;JEQ
D=0
@FALSE8
0;JMP
(TRUE8)
D=-1
(FALSE8)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(IF_FALSE0)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@90
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE9
D;JEQ
D=0
@FALSE9
0;JMP
(TRUE9)
D=-1
(FALSE9)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
@IF_FALSE1
0;JMP
(IF_TRUE1)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address34
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.decSize
0;JMP
(return-address34)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE1)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@88
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE10
D;JEQ
D=0
@FALSE10
0;JMP
(TRUE10)
D=-1
(FALSE10)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
@IF_FALSE2
0;JMP
(IF_TRUE2)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address35
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.incSize
0;JMP
(return-address35)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE2)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@131
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE11
D;JEQ
D=0
@FALSE11
0;JMP
(TRUE11)
D=-1
(FALSE11)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
@IF_FALSE3
0;JMP
(IF_TRUE3)
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(IF_FALSE3)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@133
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE12
D;JEQ
D=0
@FALSE12
0;JMP
(TRUE12)
D=-1
(FALSE12)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE
@IF_FALSE4
0;JMP
(IF_TRUE4)
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(IF_FALSE4)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@130
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE13
D;JEQ
D=0
@FALSE13
0;JMP
(TRUE13)
D=-1
(FALSE13)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE5
D;JNE
@IF_FALSE5
0;JMP
(IF_TRUE5)
@3
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(IF_FALSE5)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@132
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE14
D;JEQ
D=0
@FALSE14
0;JMP
(TRUE14)
D=-1
(FALSE14)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE6
D;JNE
@IF_FALSE6
0;JMP
(IF_TRUE6)
@4
D=A
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
(IF_FALSE6)
(WHILE_EXP2)
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE15
D;JEQ
D=0
@FALSE15
0;JMP
(TRUE15)
D=-1
(FALSE15)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
D=!D
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@WHILE_END2
D;JNE
@return-address36
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Keyboard.keyPressed
0;JMP
(return-address36)
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@3
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address37
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@SquareGame.moveSquare
0;JMP
(return-address37)
@SP
AM=M-1
D=M
@5
M=D
@WHILE_EXP2
0;JMP
(WHILE_END2)
@WHILE_EXP0
0;JMP
(WHILE_END0)
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(SquareGame.moveSquare)
@0
D=A
@ARG
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@3
M=D
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@1
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE16
D;JEQ
D=0
@FALSE16
0;JMP
(TRUE16)
D=-1
(FALSE16)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
@IF_FALSE0
0;JMP
(IF_TRUE0)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address38
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.moveUp
0;JMP
(return-address38)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE0)
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@2
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE17
D;JEQ
D=0
@FALSE17
0;JMP
(TRUE17)
D=-1
(FALSE17)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
@IF_FALSE1
0;JMP
(IF_TRUE1)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address39
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.moveDown
0;JMP
(return-address39)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE1)
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@3
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE18
D;JEQ
D=0
@FALSE18
0;JMP
(TRUE18)
D=-1
(FALSE18)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
@IF_FALSE2
0;JMP
(IF_TRUE2)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address40
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.moveLeft
0;JMP
(return-address40)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE2)
@1
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@4
D=A
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@SP
AM=M-1
A=M
D=A-D
@TRUE19
D;JEQ
D=0
@FALSE19
0;JMP
(TRUE19)
D=-1
(FALSE19)
@SP
AM=M+1
A=A-1
M=D
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
@IF_FALSE3
0;JMP
(IF_TRUE3)
@0
D=A
@THIS
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address41
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Square.moveRight
0;JMP
(return-address41)
@SP
AM=M-1
D=M
@5
M=D
(IF_FALSE3)
@5
D=A
@SP
AM=M+1
A=A-1
M=D
@return-address42
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.wait
0;JMP
(return-address42)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP
(Main.main)
@SP
AM=M+1
A=A-1
M=0
@return-address43
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@5
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@SquareGame.new
0;JMP
(return-address43)
@0
D=A
@
D=M+D
@R13
M=D
@SP
AM=M-1
D=M
@R13
A=M
M=D
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address44
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@SquareGame.run
0;JMP
(return-address44)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@LCL
A=M+D
D=M
@SP
AM=M+1
A=A-1
M=D
@return-address45
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@SP
AM=M+1
A=A-1
M=D
@ARG
D=M
@SP
AM=M+1
A=A-1
M=D
@THIS
D=M
@SP
AM=M+1
A=A-1
M=D
@THAT
D=M
@SP
AM=M+1
A=A-1
M=D
@6
D=A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@SquareGame.dispose
0;JMP
(return-address45)
@SP
AM=M-1
D=M
@5
M=D
@0
D=A
@SP
AM=M+1
A=A-1
M=D
@LCL
D=M
@R14
M=D
@5
D=A
@R14
A=M-D
D=M
@R13
M=D
@SP
AM=M-1
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
AM=M-1
D=M
@THAT
M=D
@R14
AM=M-1
D=M
@THIS
M=D
@R14
AM=M-1
D=M
@ARG
M=D
@R14
AM=M-1
D=M
@LCL
M=D
@R13
A=M
0;JMP