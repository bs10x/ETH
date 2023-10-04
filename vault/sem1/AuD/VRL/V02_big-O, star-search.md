---
"course:": "[[AuD]]"
"exercises:": "[[AuD_U2_e.pdf]]"
"solutions:": "[[AuD_U2_s.pdf]]"
"hand-in:": "[[AuD_U2_bf.pdf]]"
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


