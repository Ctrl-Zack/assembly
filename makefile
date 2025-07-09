# ex: make learning-asm-1
%: src/%.asm
	nasm -f elf -o bin/$*.o src/$*.asm
	ld -m elf_i386 -o bin/$* bin/$*.o

# ex: make run-learning-asm-1
run-%: bin/%
	./$*

clean:
# 	del /q *.obj *.exe 2>nul || exit 0 -> windows
	rm -f bin/*