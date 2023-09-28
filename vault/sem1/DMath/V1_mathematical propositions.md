---
"course:": "[[DMath]]"
"tags:": 
"exercises:": "[[DMath_U0_e.pdf]]"
"solutions:": "[[DMath_U0_s.pdf]]"
"hand in:": "[[DMath_U0_bf.pdf]]"
---

#sem1 #dmath 


***Mathematische Aussage:***

- "91 ist eine Primzahl."
	- Vermutung? ~~Theorem? Lemma?~~
	- Verstehen wir, was die Aussage aussagt?
	- Ist die Aussage wahr oder falsch?
	- Wann ist sie wahr, wann falsch?
	- 7\*13=91 –> 91 ist keine Primzahl –> also ist die Aussage nicht wahr

- "Vögel können fliegen."
	- Mathematische Aussage? **Nein**

-  "Egal welches Feld eines 8x8 Bretts, der Rest ist durch eine L-Form abdeckbar."
	- Verstehen wir die Aussage? **Ja**
	- _P(k) = 1 <=> "==Für jede== Position im k\*k Quadrat die markiert ist, ==existiert== eine Zerlegung des Restfelds."_
	- _"Für jede"_ <=> $\forall$
	- _"existiert"_ <=> $\exists$

>Es gibt Aussagen, bei denen klar ist, wie deren Wahrheit beweisbar ist.
>Es gibt Aussagen, bei denen nicht klar ist, wie deren Unwahrheit beweisbar ist.

- P(2)=1
	- 2\*2=4, 4-1=3, 3%3=0
	- 4-1 ist 3, 3 ist ohne rest durch 3 teilbar, also ist die Aussage nicht wahr beweisbar 
- P(3)=0
	- 3\*3=9, 9-1=8, 8 % 3 != 0
	- 9-1 ist 8, was nicht ohne Rest durch 3 teilbar ist, also ist die Aussage nicht wahr 

- k^2 % 3 != 1 –> P(k)=0
- wenn das Quadrat von k minus eins nicht ohne Rest durch drei teilbar ist, so ist P(k)=0.

- **Theorem: P(k)=1 => P(2k)=1** (RHS ist Implikation von LHS)
- **Beweis:** (nicht von LHS sondern nur Implikation daraus, also LHS)
	- Rekursion ermöglicht Zerlegung in Viertel, Wählen der markierten Felder um die Mitte, L



> **Aufgabenstellung**: Auf einem 8x8 Feld aus Quadraten wird ein Feldabgedeckt. Existiert eine Konfiguration an Anordnungen von L-förmigen Formen, bestehend aus drei Häuschen, bei dem das gesamte Brett ohne Überlappung abgedeckt wird.

$P(k) = 1 \overset{def}{\longleftrightarrow}$ Für jede ($\forall$) Markierung existiert ($\exists$) eine Zerlegung des Restfeldes 

$P(2) = 1$
$P(3) = 0 \longleftarrow$ $k^2 \not\equiv_3 1 \Rightarrow P(k) = 0$
$P(4) = 1$
$P(5) = 0$

Theorem: $P(k) = 1 \Rightarrow P(2k) = 1$ (Rekursiver Algorithmus)



### Example  1.5

> **Aufgabenstellung**: Eine Schweizer Schokolade besteht aus 6 Reihen und 4 Stücken pro Reihe. Wir möchten es in 24 Stücke brechen mit der minimalen Anzahl an Operationen des Brechens.

> **Abstraktion**: Jeder Bruch produziert ein weiteres Stück, deshalb braucht es sowieso 24 Brüche um 24 Stücke zu erzeugen.

### Example 1.6

> **Aufgabenstellung**: Man kann die Form 1.6 in 8 gleiche Teile einteilen, kann man sie in 9 gleiche Stücke einteilen.

> **Abstraktion**: