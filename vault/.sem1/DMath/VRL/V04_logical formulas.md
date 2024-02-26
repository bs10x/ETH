---
"course:": "[[sem1/DMath/lib/DMath]]"
"exercises:": "[[DMath_U2_e.pdf]]"
"hand-in:": "[[DMath_U2_bf.pdf]]"
"solutions:": "[[DMath_U2_s.pdf]]"
---


### #Prädikat

>[!example] Prädikate:
>Es gibt eine kleinste Zahl.
>$\exists x \forall y; \space (x\leq y)$
>
>Es gibt nicht für jede Zahl eine (*noch*) kleinere.
>$\lnot\forall x \exists ; \space (y<x)$
>
>Formeln sind äquivalent.





Universum: **U** | U=$\mathbb{N}$
Prädikate: **P, Q**, P(x), Q(x, y) | $\leq$, prime, even
Funktionen: **f, g** f(x), g(x, y) | +, -
Konstanten: **a, b, c** | 0, 1, 2, 3
Formeln: $\forall x \space(P(x)\rightarrow Q(x))$



Eine Formel an sich ist nicht wahr oder falsch, es kommt auf die Interpretation an.


$(\exists x,\space (x \leq 2)) \space\wedge\space (\exists y,\space (y \geq 5)) \space\equiv (\space\exists x,\space (x \leq 2)) \space\wedge\space (\exists x,\space (x \geq 5))$



$(x<1) \wedge ((\exists y,\space \exists z), \space ((yz=x) \rightarrow (y=1)) \vee (z=1)) \overset{def.}{\Leftrightarrow}$ prime(x)

prime(35) = 1 $\wedge$ 1







###  #Informelle-Äquivalenz
$\lnot \exists x \space P(x) \equiv \forall  x \lnot P(x)$
Durch Äquivalenz-transformation 



### #Transitivität
$\exists x, \space\exists y, \space\exists z; \space (P(x, \space y) \wedge P(y, \space z) \rightarrow P(x, \space z))$




