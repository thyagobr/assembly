*** How to create the disk image: ***

#1 Edit your input bootloader assembly code
#2 Compile it: nasm <source.asm> -f bin -o <target.bin>
#3 Insert it on a floppy image: dd if=<target.bin> of=<image.vfd> bs=1440
