---
"course:": "[[LinAlg]]"
"exercises:": "[[LinAlg_U7_e.pdf]]"
"hand-in:": "[[LinAlg_U7_bf.pdf]]"
"solutions:": "[[LinAlg_U7_s.pdf]]"
---



### #Orthonormal-Basis
### #Gram-Schmidt-Algorithm


$q_1 = \frac{a_1}{||a_1||}$
and 
$q_2= null$






### #Normal-Gleichungen  

$A^\top A \hat{x} = A^\top b$







$q_1=\frac{a_1}{\|a_1\|}$
$q_2 = \frac{a_2 - (a_2^{\top}q_1)q_1}{\|a_2 - (a_2^{\top}q_1)q_1\|}$


(3, -1, -2) - dotP((3, -1, -2), (-1/sqrt(3), -1/sqrt(3), -1/sqrt(3))) \* (-1/sqrt(3), -1/sqrt(3), -1/sqrt(3))
/
||(3, -1, -2) - dotP((3, -1, -2), (-1/sqrt(3), -1/sqrt(3), -1/sqrt(3))) \* (-1/sqrt(3), -1/sqrt(3), -1/sqrt(3))||




$q_k = \frac{a_k - \sum_{i=1}^{k-1}(a_k^{\top}q_i)q_i}{\|\sum_{i=1}^{k-1}(a_k^{\top}q_i)q_i\|}$
