## 1.
$G = (V, E)$, zusammenhängender Graph mit $|V| \geq 3$
#### a.
i) $\forall v \in V,\, \deg(v) \equiv_2 0 \implies G$ ist 2-Kanten-zusammenhängend
	Intuition:



ii) $G$ ist 2-Kanten-zusammenhängend $\implies \forall v \in V,\, \deg(v) \equiv_2 0$
	Intuition:
yes, but not quite?
if there exists a vertex with deg(v) = 0, the graph is not connected, which we assumed.
if there exists a vertex with deg(v) = 1, the graph is not 2-kanten-connected, which we assumed.

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

