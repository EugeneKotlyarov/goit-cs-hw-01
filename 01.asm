org  0x100
section .data
    a db 5
    b db 3
    c db 2
    resultMsg db 'Result: $'

section .text
_start:
    ; b - c + a => 'b' sub 'c' add 'a'
    mov al, [b]          ; 'b' в al
    sub al, [c]          ; від al віднімаємо 'с'
    add al, [a]          ; до al додаємо 'a'

    ; весь інший код із завдання без змін
    add al, 30h

    mov ah, 09h
    lea dx, resultMsg
    int 21h

    mov dl, al
    mov ah, 02h
    int 21h

    mov ax, 4c00h
    int 21h