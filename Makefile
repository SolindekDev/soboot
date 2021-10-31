compile:
	nasm boot.asm -f bin -o os.bin
	qemu-system-x86_64.exe os.bin