## 1.
$G = (V, E)$, zusammenhängender Graph mit $|V| \geq 3$
#### a.
i)
$\forall v \in V,\, \deg(v) \equiv_2 0 \implies G$ ist 2-Kanten-zusammenhängend

Incorrect, consider as counter example the complete graph on five vertices, $K_5$. Since $\forall v \in V \deg(v) = 5-1 \equiv_2 0$, but removing any two edges still leaves the graph connected.



ii) $G$ ist 2-Kanten-zusammenhängend $\implies \forall v \in V,\, \deg(v) \equiv_2 0$

Incorrect, consider the graph
$$
\begin{align}
& G = (V, E) \\
& V = (v_0, v_1, \dots, v_n) \\
& E = ( \{\}, \{\} )
\end{align}
$$ 


___

#### b.
i) $G$ hat Hamiltonkreis $\implies$ $G$ ist 2-zusammenhängend
ii) $G$ ist 2-zusammenhängend $\implies$ $G$ hat Hamiltonkreis

___

#### c.
Let $G$ be 2-connected. Let $(u, v, w)$ be a path of length 2 in $G$. Show that we can extend this path to a cycle, i.e. that $G$ contains a cycle in which $u$, $v$, and $w$ are adjacent vertices.
Intuition:

