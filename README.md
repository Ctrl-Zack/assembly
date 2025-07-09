# assembly

## Notes

```asm
mov eax, 1
mov ebx, 1
int 80h
```
calling linux system call: \
eax -> 1 = sys_exit \
ebx -> 1 = exit status

in windows it is equivalent to
```asm
extern ExitProcess

call ExitProcess
```

compile it using:
```bash
nasm -f win64 $*.asm -o $*.obj
gcc -nostdlib $*.obj -lkernel32 -o $*.exe
```

\
Linux:

- Compile
```bash
nasm -f elf -o bin/$*.o src/$*.asm
ld -m elf_i386 -o bin/$* bin/$*.o
```

- Standard C Functions
```bash
nasm -f elf -o $*.o $*.asm
gcc -no-pie -m32 $*.o -o $*
```

- calling C Functions
```bash
nasm -f elf -o $*.o $*.asm
gcc -no-pie -m32 $*.o {c_filename}.c -o $*
```