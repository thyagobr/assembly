[BITS 16] ;tell the assembler that its a 16 bit code
[ORG 0x7C00]  ;Origin, tell the assembler that where the code will
;be in memory after it is been loaded

mov al, 65
call PrintCharacter
JMP $     ;infinite loop

PrintCharacter:
  mov ah, 0x0E
  mov bh, 0x00
  mov bl, 0x07

  int 0x10
  ret

TIMES 510 - ($ - $$) db 0 ;fill the rest of sector with 0
DW 0xAA55     ; add boot signature at the end of bootloader
