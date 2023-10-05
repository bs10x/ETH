---
"course:": "[[AuD]]"
"exercises:": "[[AuD_U2_e.pdf]]"
"hand-in:": "[[AuD_U2_bf.pdf]]"
"solutions:": "[[AuD_U2_s.pdf]]"
---
## #big-O-notation







>[!example] **Beschreibung**
>*Star*: kennt keine andere Person
>*Normie*: kennt *Star*

>[!example] **Ziel:**
>unter n Personen ($P$); $P_1$, $P_2$, $P_3$, ..., $P_n$, *Star* finden (falls da), mit möglichst wenigen fragen.
>$P_i$$\overset{?}{\rightarrow}$$P_j$

>[!example] **Naiv:**
>alle $P_n$ fragen!
>$\rightarrow$n*(n-1) elementare operationen

>[!example] **rekursiver Ansatz:**
>n $\geq$ 3
>1. finde *"Star"* $P_s$ unter $P_1$ ... $P_{n-1}$
>2. teste, ob $P_s$ auch Star ist für $P_1$ ... $P_n$ $\quad$ (+2 Fragen}
>3. teste, ob $P_n$ Star ist für $P_1$ ... $P_{n-1}$ $\quad$ (+2 Fragen)
>
>best case: (nie Schritt 3)
>
>
>worst case: (immer Schritt 3)





| $n$ | $Fragen \space B C \space P_1 \space ist \space Star$ | $Fragen \space WC \space P_n \space ist \space Star$ |
| - | - | - |
| $2$ | $+2$ | $+2$ |
| $3$ | $+2$ | $+2 \cdot 2$ |
| $4$ | $+2$ | $+2 \cdot 3$ |
| $\vdots$ | $\vdots$ | $\vdots$ |
| $n$ | $+2$ | $+2\cdot(n-1)$ |
| $Total$ | $2(n-1)$ | $n(n-2)$ |




### #aktien-kursveränderung

+7 -11 +18 +10 -23 -3 +27 -1

höchste gewinne: +18+10-23-3+27= +29

problem: max subarray sum (MSS)

eingabe: $a_i ,\,a_{i+1},\,\cdot\cdot\cdot ,a_j,\, a\in\mathbb{Z},\,i,\,j\in ?$

naiver algorithmus:
- berechne alle teilsummen



pseudocode:
for (i: 1..n)
	$S_{i, i}\leftarrow a_i \quad +0A$
	$S_{i,\,i+1}\leftarrow a_i+a_{i+1} \quad +1A$
	$S_{i,\,i+2}\leftarrow a_i+a_{i+1}+ a_{i+2} \quad +2A$
	$\cdot\cdot\cdot$
	$S_{i,\,n}\leftarrow a_i + \cdot\cdot\cdot +a_n \quad +(n-i)$
endfor


A(n) = Anzahl Additionen (worst case)
$\quad\quad = \frac{(n-i)\cdot(n-i+1)}{2}$

$\frac{(n-i)^2}{2}\geq \frac{(n-i)\cdot(n-i+1)}{2} \leq \frac{(n-i+1)^2}{2}$ Abschätzung (lower und upper bound)

$A(n) \leq \frac{1}{2}\cdot(n^2 +(n-1)^2 +(n-2)^2 +\cdot\cdot\cdot+2^n+1^2)$


