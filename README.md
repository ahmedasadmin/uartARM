arm-none-eabi-as -g -mcpu=arm926ej-s startup.s -o startup.o
arm-none-eabi-gcc -g -c -mcpu=arm926ej-s hw2-entry.c -o hw2-entry.o
arm-none-eabi-ld -T qemuboot.ld entry.o startup.o -o qemuboot.elf
arm-none-eabi-objcopy -O binary qemuboot.elf qemuboot.bin
emu-system-arm -M versatilepb -nographic -kernel qemuboot.bin

// the above line used to run the program 
// for more detials u can visit Professional Embedded Arm Development book

