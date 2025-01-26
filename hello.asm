.386
.model flat,stdcall
option casemap:none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
includelib \masm32\lib\kernel32.lib

.data
    msg db 'Hello, World!',0dh,0ah,0    ; Message with CRLF and null terminator

.code
start:
    push    STD_OUTPUT_HANDLE
    call    GetStdHandle                 ; Get handle to console
    
    push    NULL                         ; lpNumberOfCharsWritten
    push    lengthof msg - 1            ; Length of string
    push    offset msg                   ; String to write
    push    eax                         ; Console handle
    call    WriteConsoleA
    
    push    0                           ; Exit code 0
    call    ExitProcess
end start
