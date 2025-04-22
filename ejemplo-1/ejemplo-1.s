
.text

.globl _start

_start:

mov $0x3f, %al
mov $0xf3, %ah

mov $60, %rax
xor %rdi, %rdi
syscall
