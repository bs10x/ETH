
## 1.
###### a.
Erstellen Sie eine Beschreibung *geradezahl*, die als legale Symbole alle geraden Zahlen (d.h. Zahlen, die ohne Rest durch 2 teilbar sind) zulässt. Beispiele sind +02, 4, 10, -20.

*sign* <= \[ + | - ]
*digit* <= \[ 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 ]
*even_digit* <= 2 | 4 | 6 | 8
*zero* <= 0
*geradezahl* <= *sign* { *digit* } *even_digit* \[ *zero* ]



###### b.
Zeigen Sie in einer Tabelle, dass Ihre Beschreibung das Symbol “28” als gerade Zahl erkennt.


## 2.
Erstellen Sie eine Beschreibung \<x2ygemischt\> , die als legale Symbole genau jene Wörter zulässt, in denen für jedes “X” zwei “Y” als Paar auftreten. Beispiele sind XYY, YYX, XYYYYX, XXYYYY.

## 3. 
Die folgenden EBNF-Beschreibungen sind nicht äquivalent. Finden Sie ein kürzestmögliches Symbol, das von der einen Beschreibung als legal erkannt wird, aber nicht von der anderen. (Fangen Sie mit einfachen Kombinationen von A und B an.)
EBNF-Beschreibung: ⇐ \[ A \] \[ B \]
EBNF-Beschreibung: ⇐ \[ A \[ B \] \]


## 4.
Erstellen Sie eine EBNF Beschreibung \<doppelt\> , die als legale Symbole genau jene Wörter zulässt, in denen die doppelte Anzahl “Y” nach einer Folge von “X” auftritt. Beispiele sind XYY, XXYYYY, usw.
