@echo off
del Kernel.iso

rmdir bin\boot /S /Q
mkdir bin\boot
xcopy boot bin\boot /E

bash -c "grub-mkrescue -o Kernel.iso bin"

qemu-system-x86_64.exe -smp 1 -m 512 -cdrom Kernel.iso -no-shutdown
