
>[!quote] Why probability? RANDOMNESS!!
>Makes a lot of stuff faster, more secure (polynomial prime test, simultaneous connection problem, O(1) hash tables).


>[!quote] Definition :
>$G = (V, E)$, $G$ connected, $u, v \in V$ and $X \subseteq V \setminus\{u, v\}$:
>- $X$ is *u-v-seperator* $\iff$ $u$ and $v$ are in different connected components of $G[V \setminus X]$.
>- $G$ is *k-connected* $\iff$
>	- $|V| \geq k + 1$
>	- $\forall u, v \in V$: all *u-v-seperator* $X$ has size $|X| \geq l$











>[!definition] $k$-zusammenhängend
>Sei $G=(V, E)$ ein Graph. G ist $k$-zusammenhängend, wenn gilt:
>	- $|V| \geq k + 1$
>	- $\forall u,v \in V$: jeder u-v-Seperator $X$ hat Grösse $|X| \geq k$



>[!definition] Satz von Menger
>Sei $G=(V, E)$ ein Graph. Dann gilt:
>
>G ist $k$-zusammenhängend $\iff$ $\forall u,v \in V, u \neq v$ gibt es $k$ intern-knotendisjunkte u-v Pfade.


#### shortest path with cut vertex


