
>[!quote] Why probability? RANDOMNESS!!
>Makes a lot of stuff faster, more secure (polynomial prime test, simultaneous connection problem, O(1) hash tables).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







>[!quote] Vertex connectivity:
>$G = (V, E)$, $G$ connected, $u, v \in V$ and $X \subseteq V \setminus\{u, v\}$:
>- $X$ is *u-v-seperator* $\iff$ $u$ and $v$ are in different connected components of $G[V \setminus X]$.
>- $G$ is *k-connected* $\iff$
>	- $|V| \geq k + 1$
>	- $\forall u, v \in V$: every *u-v-seperator* $X$ has size $|X| \geq k$

>[!quote] Edge connectivity :
>$G = (V, E)$, $G$ connected, $u, v \in V$ and $X \subseteq E$:
>- $X$ is *u-v-edge-seperator* $\iff$ $u$ and $v$ are in different connected components of $G' = (V, E \setminus X)$.
>- $G$ is *k-edge-connected* $\iff$
>	- $\forall u,v \in V$: every *u-v-edge-seperator* $X$ has size $|X| \geq k$




>[!definition] Satz von Menger
>Sei $G=(V, E)$ ein Graph. Dann gilt:
>
>G ist $k$-zusammenhängend $\iff$ $\forall u,v \in V, u \neq v$ gibt es $k$ intern-knotendisjunkte u-v Pfade.














>[!quote] Cut vertex, cut edge :
>$G = (V, E)$, $G$ connected:
>- $v \in V$ is *cut vertex (Artikulationsknoten)* $\iff$ $G[V\setminus\{v\}]$ not connected.
>- $e\in E$ is *cut edge (Brücke)* $\iff$ $G - e$ not connected.

>[!quote] $low[v]$
>$$
>low[v] = min \left( dfs[v], \underset{(v, w) \in E}{min} \begin{cases} dfs[w], \text{ falls (v, w) Restkante}\\ low[w], \text{ falls (v, w) Baumkante } \end{cases} \right)
>$$



#### Cut vertex with DFS:
$v$ is cut vertex if:
1. $v$ ≠ root, and $v$ has child $u$ in DFS-tree with $low[u] \geq dfs[v]$
2. $v$ = root and v has at least two children in DFS-tree
>[]









#### Shortest path with cut vertex


