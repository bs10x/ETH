

>[!quote] Counting systems:
>decimal (base 10):
>- good for people with 10 fingers (toes)
>- bad for computers
>
>binary (base 2):
>- bits, nibbles, bytes
>- negative numbers??
>- addition? check!
>
>hexadecimal (base 16):
>- very nice, easy to read, compact to store (one 0x number is one nibble)

>[!idea] MSB (most significant bit) encodes sign:
>good intuition, but:
>- makes addition very difficult
>- two different representations of zero (10000, 00000)

>[!idea] one's complement:
>just invert every bit:
>- addition is solved (ignore the carry)
>- MSB still encodes sign
>- still two zeros

>[!idea] two's complement:
>invert every bit and add 1 (LSB):
>- addition works (ignore carry)
>- one representation of zero
>- MSB encodes sign
>- one more negative number than positive numbers





