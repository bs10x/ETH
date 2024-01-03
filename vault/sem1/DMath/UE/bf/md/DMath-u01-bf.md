#### 1.5
#### a.
|  A 	|  B 	|   C	| A  B  	|  (A  B)  C 	|
|---	|---	|---	|---	|---	|
|   0 	|   0	|   0	|   0	|   0	|
|   0	|   0	|   1	|   0	|   1	|
|   0	|   1	|   0	|   1	|   1	|
|   0	|   1	|   1	|   1	|   0	|
|   1	|   0	|   0	|   1	|   1	|
|   1	|   0	|   1	|   1	|   0	|
|   1	|   1	|   0	|   0	|   0	|
|   1 	|   1	|   1 	|   0	|   1	|

|  A 	|  B 	|   C	| B  C  	|  A  (B  C) 	|
|---	|---	|---	|---	|---	|
|   0 	|   0	|   0	|   0	|   0	|
|   0	|   0	|   1	|   1	|   1	|
|   0	|   1	|   0	|   1	|   1	|
|   0	|   1	|   1	|   0	|   0	|
|   1	|   0	|   0	|   0	|   1	|
|   1	|   0	|   1	|   1	|   0	|
|   1	|   1	|   0	|   1	|   0	|
|   1 	|   1	|   1 	|   0	|   1	|

(A  B)  C $\equiv$ A  (B  C)
q.e.d.  
***


#### b.
| A | B | $\neg$A | $\neg$B | $\neg$A $\wedge$ $\neg$B | $\neg$(A  B) |
|---|---|---|---|--------------------------|---------------|
| 0 | 0 | 1 | 1 | 1 | 1 |
| 0 | 1 | 1 | 0 | 0 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 0 | 0 | 1 | 1 |

$\neg$A $\wedge$ $\neg$B $\equiv$ $\neg$(A  B)
q.e.d.  
***


#### c.
truth table of F:

| A | B | C | F |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 0 |
| 0 | 1 | 1 | 1 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 1 |
| 1 | 1 | 1 | 0 |


truth table of G:

| A | B | C | A  B | (A  B)  C | (A  B)  ((A  B)  C) | A  (A  B)  ((A  B)  C) |
|---|---|---|-------|-------------|-------------------------|-----------------------------|
| 0 | 0 | 0 | 0     | 0           | 0                       | 0                           |
| 0 | 0 | 1 | 0     | 1           | 1                       | 1                           |
| 0 | 1 | 0 | 1     | 1           | 0                       | 0                           |
| 0 | 1 | 1 | 1     | 0           | 1                       | 1                           |
| 1 | 0 | 0 | 1     | 1           | 0                       | 1                           |
| 1 | 0 | 1 | 1     | 0           | 1                       | 0                           |
| 1 | 1 | 0 | 0     | 0           | 0                       | 1                           |
| 1 | 1 | 1 | 0     | 1           | 1                       | 0                           |

F $\equiv$ A  (A  B)  ((A  B)  C)
q.e.d.  
***





$$

\begin{align}
F = ((\lnot A \lor \lnot B )\land \lnot A) \land ((\lnot B \land \lnot A) \lor C) \\
&\equiv \lnot A \land ((\lnot B \land \lnot A) \lor C) &\text{(absorption) 1.} \\
&\equiv (\lnot A \land (\lnot B \land \lnot A) ) \lor (\lnot A \land C) &\text{(1st distributive law) 2.} \\
&\equiv (\lnot A \land (\lnot A \land \lnot B) ) \lor (\lnot A \land C) &\text{(commutativity of $\land$) 3.} \\
&\equiv ((\lnot A \land \lnot A) \land \lnot B ) \lor (\lnot A \land C) &\text{(associativity) 4.} \\
&\equiv (\lnot A \land \lnot B ) \lor (\lnot A \land C) &\text{(idempotence) 5.} \\
&\equiv \lnot A \land (\lnot B  \lor C) &\text{(1st distributive law) 6.} \\
= G
\end{align}
$$

$G = \lnot A \land (\lnot B \lor C)$
$F \equiv G$
