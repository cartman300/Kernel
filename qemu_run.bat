@echo off
del Kernel.iso

rmdir bin\boot /S /Q
mkdir bin\boot
xcopy boot bin\boot /E

bash -c "grub-mkrescue -o Kernel.iso bin"

start qemu-system-x86_64.exe -cpu Nehalem -m 512 -cdrom Kernel.iso -no-shutdown -monitor telnet:127.0.0.1:1234,server,nowait
start telnet 127.0.0.1 1234
