
0x080483f4 <main+0>:	push   ebp                        ; base pointer, pointing somewhere in the stack
0x080483f5 <main+1>:	mov    ebp,esp                    ; move base pointer to stack pointer
0x080483f7 <main+3>:	and    esp,0xfffffff0             ; set last 4 bits to 0
0x080483fa <main+6>:	sub    esp,0x60                   ; decrease the stack pointer, allocate memory
0x080483fd <main+9>:	mov    DWORD PTR [esp+0x5c],0x0   ; set value in stack register, settin an integer
0x08048405 <main+17>:	lea    eax,[esp+0x1c]             ; lea, load effective address, similar to move but moves the address offset
0x08048409 <main+21>:	mov    DWORD PTR [esp],eax
0x0804840c <main+24>:	call   0x804830c <gets@plt>
0x08048411 <main+29>:	mov    eax,DWORD PTR [esp+0x5c]
0x08048415 <main+33>:	test   eax,eax
0x08048417 <main+35>:	je     0x8048427 <main+51>
0x08048419 <main+37>:	mov    DWORD PTR [esp],0x8048500
0x08048420 <main+44>:	call   0x804832c <puts@plt>
0x08048425 <main+49>:	jmp    0x8048433 <main+63>
0x08048427 <main+51>:	mov    DWORD PTR [esp],0x8048529
0x0804842e <main+58>:	call   0x804832c <puts@plt>
0x08048433 <main+63>:	leave                            ; set ESP to EBP, then pop EBP, destroying the allocated stack
0x08048434 <main+64>:	ret                              ; setting the address of the caller into the instruction pointer eip