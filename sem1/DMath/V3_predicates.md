---
"course:": "[[DMath]]"
"tags:":
---
| A | B | A$\rightarrow$B | A$\wedge$(A$\rightarrow$B) | (A$\wedge$(A$\rightarrow$B)) $\rightarrow$ B |
|---|---|-----------------|----------------------------|---|
| 0 | 0 | 1               | 0                          | 1 |
| 0 | 1 | 1               | 0                          | 1 |
| 1 | 0 | 0               | 0                          | 1 |
| 1 | 1 | 1               | 1                          | 1 |

>man kann S beweisen, indem
>	1. eine Aussage R formulieren
>	2. R beweisen
>	3. R$\Rightarrow$S beweisen
>
>A$\wedge$(A$\rightarrow$B) $\models$ B

> [!example] Lemma 2.1
> 5. erstes Distributivgesetz
> A$\wedge$(B$\vee$C) $\equiv$ (A$\wedge$B)$\vee$(A$\wedge$C)

>[!example] Definition von $\wedge$
>A$\wedge$(B$\rightarrow$B) $\equiv$ ($\neg$A$\vee$B) (Definition von $\rightarrow$)
>$\equiv$ (A$\wedge$$\neg$A) $\vee$ (A$\wedge$B) (Lemma 2.1, 5.)
>$\equiv$ $\perp$ $\vee$ (A$\wedge$B)
>$\equiv$ A$\wedge$B


^^^^^^^^^^^^^^^^^^^^^^^^
bis Skript 2.3




## U (Universum)
#### f(x, y) Funktionen
add(x, y)
mult(x, y)

#### P(x,y) (Prädikate)
less(x, y) is true when x\<y
equal(x, y) is true when x=y
prime(x) is true when x is prime
divides(x, y) DEF. 