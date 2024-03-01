---
"slides:": "[[AuW-00-slides]]"
---

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

%% TODO: extend %%



___


>[!quote] Cut vertex, cut edge :
>$G = (V, E)$, $G$ connected:
>- $v \in V$ is *cut vertex (Artikulationsknoten)* $\iff$ $G[V\setminus\{v\}]$ not connected.
>- $e\in E$ is *cut edge (Brücke)* $\iff$ $G - e$ not connected.

>[!quote] $low[v]$
>$$
>low[v] = min \left( dfs[v], \underset{(v, w) \in E}{min} \begin{cases} dfs[w], \text{ falls (v, w) Restkante}\\ low[w], \text{ falls (v, w) Baumkante } \end{cases} \right)
>$$


___
#### Cut vertex with DFS
>[!quote] Finding cut vertices and cut edges:
>$v$ is cut vertex $\iff$
>1. $v \neq$ root, and $v$ has child $u$ in DFS-tree with $low[u] \geq dfs[v]$
>2. $v =$ root and v has at least two children in DFS-tree
>
>DFS-tree edge $e = (v, w)$, $v$ parent vertex, $w$ child vertex is cut edge $\iff$
>1. $low[w] > dfs[v]$
>2. leftover edges (edges not in the DFS-tree) are never cut edges

#### Shortest path with cut vertex

Satz:
Die um die Berechnung von $low[]$ ergänzte **Tiefensuche** berechnet in einem zusammenhängenden Graphen alle Artikulationsknoten und Brücken in Zeit **O(m + n)**.

___
# Cycles


Satz: Ein zusammenhängender Graph G = (V, E) enthält eine Eulertour $\iff$ der Grad jedes Knotens gerade ist. … und eine solche kann man in O(|E|) Zeit finden


gray codes, hypercubes, blah blah


