extern printf
extern exit

section .data
    var1 dd 10
    var2 dd 25
    fmt  db "%d + %d = %d", 10, 0

section .text
    global main

main:
    mov eax, [var2]
    push eax          
    mov eax, [var1]
    push eax          

    mov eax, [esp]    
    add eax, [esp+4]  

    push eax          
    push dword [esp+8]
    push dword [esp+8]
    push fmt          
    call printf

    add esp, 16       
    add esp, 8        

    push 0
    call exit
