.global _start
.section .text
_start:
	mov r0, #8
	
S:
	b S
	.end

.section .data