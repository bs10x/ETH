---
"course:": "[[EProg]]"
"exercises:": "[[EProg_U0_e.pdf]]"
"solutions:": "[[EProg_U0_s.pdf]]"
"hand-in:": "[[EProg_U0_bf]]"
---

### #Kontrollelemente

- Aufreihung - Sequence
- Entscheidung - Decision
- Wiederholung - Repetition
- Rekursion - Recursion

### #EBNF

Extended Backus (Forscher) Naur (Forscher) Form

- Beschreibt die Syntax einer Sprache
	- Liefert eine Menge von Symbolen - Konstruktion
	- Erlaubt die Prüfung von Symbolen - Verifikation

###  #EBNF-Beschreibung

Menge von EBNF Regeln wobei die Reihenfolge unwichtig ist.

### #EBNF-Regeln

LHS (Left Hand Side) $\Leftarrow$ RHS (Right Hand Side)


> [!example]+ RHS: Wert
>  *zero* $\Leftarrow$ 0
>  *one* $\Leftarrow$ 1

> [!example]+ RHS: EBNF Name
>  *null* $\Leftarrow$ zero
>  *eins* $\Leftarrow$ one

> [!example]+ RHS: Kontrollelemente
> ##### Aufreihung
>  *one* $\Leftarrow$ *zero*  *one*
>  ten $\Leftarrow$ *one*  *zero*
> ##### Auswahl
> *dig* $\Leftarrow$ 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 $\rightarrow$ | = or
> *bin* $\Leftarrow$ *one* | *zero* $\rightarrow$ | = or
> 
> abc1 $\Leftarrow$ a (b | c) $\rightarrow$ () = and
> abc2 $\Leftarrow$ (a b) | c $\rightarrow$ () = and
> abc1 $\neq$ abc2
> 
> init1 $\Leftarrow$ B [A] R  $\rightarrow$ [] = optional
> init2 $\Leftarrow$ B (A | $\epsilon$) R $\rightarrow$ $\epsilon$ = nothing
> init1 = init2
