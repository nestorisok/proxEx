.586
.MODEL FLAT

.STACK 4096

.DATA

num1 DWORD ?
num2 DWORD ?

.CODE

_MainProc PROC
;main

mov EBX, 6


; fib proc that takes the value and does fibonacci seq to it
MyFib PROC
push EBP
mov EBP, ESP
push EBX
mov EAX, DWORD PTR[EBP + 8]
cmp EAX, 1
jle LEND
mov EBX, EAX
dec EAX
push EAX
call MyFib
add ESP, 4
imul EAX, EBX
jmp LEXIT
LEND:
mov EAX, 1
LEXIT:
pop EBX
pop EBP
ret
MyFib ENDP

call MyFib

; a proc that does nPr = n!/(n-r)!, where n is the first parameter and r is seconds
MyPerm PROC

MyPerm ENDP




;main
_MainProc ENDP
END