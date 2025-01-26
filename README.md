# Hello World in x86 Assembly (32-bit Windows)

A minimal Hello World implementation in x86 32-bit assembly for Windows systems using MASM (Microsoft Macro Assembler).

## Installation

### Windows
1. Install MASM32 SDK from http://www.masm32.com/
2. Add MASM32 directory to your system PATH
3. Install Visual Studio Build Tools (for ml.exe)

## Building and Running

```batch
:: Assemble and link
ml /c /coff hello.asm
link /subsystem:console hello.obj

:: Run
hello.exe
```

## Code Explanation

The implementation uses the Windows API through kernel32.dll:
- GetStdHandle to obtain the console output handle
- WriteConsoleA to write the message to the console
- ExitProcess to terminate the program

The program follows the stdcall calling convention used by Windows:
- Parameters pushed right-to-left
- Called function cleans up the stack
- Windows API functions use ASCII versions (suffix A)
