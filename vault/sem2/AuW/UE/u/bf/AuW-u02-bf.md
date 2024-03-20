![[AuW-u02-e.pdf]]

<div style="page-break-after: always;"></div>

# a)

For the purpose of simplicity, let $(1)$ be the mapping of numerical values corresponding to the card values. Note, that this mapping is arbitrarily chosen and does not influence the outcome. Let $(2)$ be a function returning every cards numerical value. Let $(3)$ be some auxiliary definitions and $(4)$ the definition of the bipartite Graph $G$, representing the stacks of playing cards and the values they contain.

$$
\begin{align}
(1)&\\
1 &\simeq \text{"6"} \\
2 &\simeq \text{"7"} \\
3 &\simeq \text{"8"} \\
4 &\simeq \text{"9"} \\
5 &\simeq \text{"10"} \\
6 &\simeq \text{"Under"} \\
7 &\simeq \text{"Ober"} \\
8 &\simeq \text{"König"} \\
9 &\simeq \text{"Ass"} \\
\\ \\
(2)& \\
\nu(k) :&= w, \quad k = (w, h) \in \mathcal K \\
\\ \\
(3)& \\
\mathcal I &= \{ 1, 2, .., 4 \} \\
\mathcal J &= \{ 1, 2, .., 9 \} \\
\mathcal W &= \mathcal J\\ %\{ 6, 7, 8, 9, 10, \text{U} , \text O, \text K, \text A \} \\
\mathcal H &= \{ \diamondsuit, \clubsuit, \heartsuit, \spadesuit \} \\
\mathcal K &= \mathcal W \times \mathcal H \\
\mathcal S_{j \in \ \mathcal J} &= \{ k_{i \in \mathcal I} \in \mathcal K \ | \ k_i\notin \mathcal S_{j' \in \mathcal J \setminus \{j\}} \} \\
\\ \\
(4)& \\
G &= (V, E) \\
A &= \{ \mathcal S_j \ | \ j \in \mathcal J \} \\
B &= \mathcal J  \\
V &= A \uplus B \\
E &= \{ (\mathcal S_{j \in \mathcal J}, w) \in  A \times B \ | \ \exists k \in \mathcal S_j  : \ \nu(k) = w \} \\
\end{align}
$$
Let $G$ be the bipartite graph representing the exclusive union of the partition of stacks of cards and let an edge between a stack of cards and a value denote, that there exists (at least) a card of said value in the aforementioned stack. 

Construction of the graph takes $\mathcal O(36) = \mathcal O(1)$ time. The algorithm is

```
return true
```

Which is again, $\mathcal O(1)$.
$\square$
<div style="page-break-after: always;"></div>


# b)

A straightforward approach is to iterate over all possible combinations, which, given the constant number of cards, takes $\mathcal O(1)$:
```
// pick-cards(stack S1, S2, ... S9)

picked = {}
for stack Si do
	card ci_fmax = {}
	for card cj in stack Si
		if f(cj) > f(ci_fmax) do
			if !picked.contains(val(cj)) do
				picked.add(cj)
			elseif !picked.contains(val(ci_fmax)) do
				picked.add(ci_fmax)
			else backtrack() end
		end
	end
end

function backtrack()
	picked.remove(#picked)    // remove card last added
	go back to last decision
	if !pick-different-possible do backtrack()
	else pick-different end
end

function pick different()
	pick a different card and continue
end

print(picked)
```

A more efficient approach is to use the fact, that $G$ is bipartite (let the two partitions be the stacks and card values). We can use the Hopcroft-Karp algorithm to find a perfect matching (which exists, since $G$ is bipartite). We pick all cards in the perfect matching's vertex set.

**Runtime analysis**
Graph construction: $\mathcal O(36) = \mathcal O(1)$ 

Hopcroft-Karp algorithm: $\mathcal O(\sqrt{|V|} \cdot (|V| + |E|)) \leq \mathcal O(\sqrt{36} \cdot(36 + 18)) = \mathcal O(1)$

Thus the algorithm has constant runtime.
$\square$