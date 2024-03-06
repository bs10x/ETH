## 1.
$G = (V, E)$, zusammenhängender Graph mit $|V| \geq 3$
#### a.
i)
$\forall v \in V,\, \deg(v) \equiv_2 0 \implies G$ ist 2-Kanten-zusammenhängend

No, consider as counter example the complete graph on five vertices, $K_5$. Since $\forall v \in V \deg(v) = 5-1 \equiv_2 0$, but removing any two edges still leaves the graph connected.
$\square$


ii)
$G$ ist 2-Kanten-zusammenhängend $\implies \forall v \in V,\, \deg(v) \equiv_2 0$

No, consider the graph on $V = \{a, b, c, d\}$ with $E=\{ \{a, b\}, \{b, c\}, \{c, d\}, \{d, a\}, \{a, c\} \}$. The graph is 2-edge-connected but there exist some vertices $v \in V$ s.t. $\deg(v) \not\equiv_2 0$, namely (for the counter example provided here) $a$ and $c$.
$\square$

___

#### b.
i)
$G$ hat Hamiltonkreis $\implies$ $G$ ist 2-zusammenhängend

Yes,
$$
\begin{align}
& G \text{ zsh. } \overset{\cdot}{\implies}\forall v \in V, \deg(v) \equiv_2 0 \\
\end{align}
$$

ii)
$G$ ist 2-zusammenhängend $\implies$ $G$ hat Hamiltonkreis

No, consider the $3 \times 3$ grid.

___

#### c.
Let $G$ be 2-connected. Let $(u, v, w)$ be a path of length 2 in $G$. Show that we can extend this path to a cycle, i.e. that $G$ contains a cycle in which $u$, $v$, and $w$ are adjacent vertices.
Intuition:

