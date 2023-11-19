## ex. 8.1

In this exercise, we want to prove the following statement: Among any six people, there are either three that all know each other or three that all do not know each other (or both). We assume that this relation is symmetric, so if person $A$ knows person $B$, then also $B$ knows $A$. We model the problem as a graph. We define $G = (V, E)$ to be a graph on 6 vertices, where the vertices correspond to the six people and two people are connected by an edge if they know each other.

a)
*Prove the above statement, i.e. that in every possible graph on 6 vertices, there are three vertices that are all pairwise adjacent or there are three vertices that are all pairwise not adjacent.*

We will prove this using case distinction. Let's imagine the graph $G$ with the six vertices {a, b, c, d, e, f}. To model the edges, we will utilise an adjacency table, where each column represent a vertex and the rows contain its degree, i.e. what other vertices it's connected to. since we don't want to count edges twice (symetry) and a vertex can't be connected to itself, the matrix looks like this, for the cases where everyone knows everyone and no one knows anybody, respectively:

$$
\begin{array}{c|c|c|c|c|c} 
a & b & c & d & e & f \\\hline
5 & 5 & 5 & 5 & 5 & 5 \\\hline
\text{b, c, d, e, f} & \text{c, d, e, f, a} & \text{d, e, f, a, b} & \text{e, f, a, b, c} & \text{f, a, b, c, d} & \text{a, b, c, d, e} \\
\end{array}
$$

$$
\begin{array}{c|c|c|c|c|c} 
a & b & c & d & e & f \\\hline
0 & 0 & 0 & 0 & 0 & 0 \\\hline
\\
\end{array}
$$

we note that for any three people to not know each other means, that there exists a cycle between their respective vertices, so for example $a$ knows $b$, $b$ knows $c$, and $c$ knows $a$ (and of course vice versa). we can denote this property as follows: if two people know each other, find a third who they both know. that is a cycle between three friends. if we start randomly adding edges, we note, that there always a set of two vertices, together with a third, that are all not connected until we reach 6 edges. at this point however, the only way for there to not be a cycle of strangers, there must be two cycles already. after we add four more, we note that there must now exist at least one cycle between three vertices. that is because at nine edges every vertex must be connected to at least two other vertex, and thus, no matter where we draw the tenth edge, a cycle will close.




b)
Is the statement also true for five people? In other words, does the following hold: For any graph $G = (V, E)$ with 5 vertices, there are either three vertices that are all pairwise adjacent or there are three vertices that are all pairwise not adjacent (or both). Provide a proof or a counterexample.

disproven by counterexample. observe the adjacency table for the following graph:

$$
\begin{array}{c|c|c|c|c} 
a & b & c & d & e \\\hline
2 & 2 & 2 & 2 & 2 \\\hline
\text {b, d} & \text{a, e} & \text{d, e} & \text {a, c} & \text{b, c}\\
\end{array}
$$

since it's not possible to find two unconnected vertices with a third that isn't connected to either, but there's also no closed cycle between three vertices, the statement is disproven.


## 8.5
In the following, let $G = (V, E)$ be a graph, $n = |V|$ and $m = |E|$.

a)
Let $v \neq w \in V$. Prove that if there is a walk with endpoints $v$ and $w$, then there is a path with endpoints $v$ and $w$.

**Proof:**
Let's assume that there is a walk with endpoints $v$ and $w$. A walk is a sequence of vertices where consecutive vertices are connected by edges, and it may revisit vertices. We want to show that there exists a path with endpoints $v$ and $w$. If the walk has repeated vertices, we can remove the repeated vertices while keeping the edges between them. This operation does not change the fact that it's a walk but turns it into a path if there are no repeated vertices. Thus, we obtain a path with endpoints $v$ and $w$.


b)
Every graph with <$m \geq n$ is connected.

**False:** Consider a disconnected graph with two separate components, each having one vertex. The number of vertices $n$ is 2, and the number of edges $m$ is 0. Here, $m < n$, but the graph is not connected.


c)
If $G$ contains a Hamiltonian path, then $G$ contains a Eulerian walk.

**False:** A Hamiltonian path visits each vertex exactly once. An Eulerian walk, on the other hand, visits each edge exactly once. Not every Hamiltonian path traverses each edge exactly once, so the statement is false. Consider a path graph with three vertices; it has a Hamiltonian path but not an Eulerian walk.


d)
If every vertex of a non-empty graph $G$ has degree at least 2, then $G$ contains a cycle.

**True:** If every vertex has degree at least 2, then you can start at any vertex, move to a neighbor, then to another neighbor, and so on. Since every vertex has at least two neighbors, at some point, you must revisit a vertex, forming a cycle.


e)
Suppose in a graph $G$ every pair of vertices $v$, $w$ has a common neighbour (i.e., for all distinct vertices $v$, $w$, there is a vertex x such that $\{v, x\}$ and $\{w, x\}$ are both edges). Then there exists a vertex $p$ in $G$ which is a neighbour of every other vertex in $G$ (i.e., $p$ has degree $n − 1$).

f)
Let $G$ be a connected graph with at least 3 vertices. Suppose there exists a vertex $v_{cut}$ in $G$ so that after deleting $v_{cut}$, $G$ is no longer connected. Then $G$ does not have a Hamiltonian cycle. (Deleting a vertex v means that we remove v and any edge containing v from the graph)





e) **True:** Since every pair of vertices has a common neighbor, you can construct a graph where one vertex is connected to all other vertices. Let $p$ be that vertex. It is a common neighbor for every pair of vertices, and therefore, it has degree $n - 1$.

f) **True:** Suppose $G$ is a connected graph with at least 3 vertices, and there exists a vertex $v_{cut}$ such that after deleting it, $G$ becomes disconnected. This means $v_{cut}$ is a cut vertex. A Hamiltonian cycle is a cycle that visits every vertex exactly once. If $v_{cut}$ is removed, the cycle cannot visit $v_{cut}$, and therefore, the graph does not have a Hamiltonian cycle.