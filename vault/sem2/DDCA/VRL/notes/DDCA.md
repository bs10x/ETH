

>[!quote] Counting systems
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

>[!idea] MSB (most significant bit) encodes sign
>good intuition, but:
>- makes addition very difficult
>- two different representations of zero (10000, 00000)

>[!idea] One's complement
>just invert every bit:
>- addition is solved (ignore the carry)
>- MSB still encodes sign
>- still two zeros

>[!idea] Two's complement
>invert every bit and add 1 (LSB):
>- addition works (ignore carry)
>- one representation of zero
>- MSB encodes sign
>- one more negative number than positive numbers

___

>[!quote] Principles for engineering
>- Good engineers are lazy! (They do not want to work unnecessarily, be creative)
>- They know how to ask the question “WHY?” (Take nothing for granted)
>- Engineering is not religion (Use what works best for you)
>- Keep it simple and stupid (Engineers’ job is to manage complexity)




>[!quote] nMOS, pMOS, CMOS
>nMOS:
>- made with n-type semiconductor (negative surcharge)
>- input = on -> output off, vice versa 
>
>pMOS:
>- made with p-type semiconductor (positive surcharge)
>- input = output
>
>CMOS:
>

