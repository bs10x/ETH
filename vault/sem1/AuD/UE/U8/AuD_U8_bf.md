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
\begin{array}{c|c|c|c|c|c|c} 
& a & b & c & d & e & f\\\hline
a & \\\hline
b & 0 \\\hline
c & 0 & 0 \\\hline
d & 0 & 0 & 0 \\\hline
e & 0 & 0 & 0 & 0 \\\hline
f & 0 & 0 & 0 & 0 & 0 \\
\end{array}
$$




$$
\begin{array}{c|c|c|c|c|c|c} 
& a & b & c & d & e & f\\\hline
a & \\\hline
b & 1 \\\hline
c & 0 & 1 \\\hline
d & 1 & 0 & 1 \\\hline
e & 0 & 1 & 0 & 1 \\\hline
f & 1 & 0 & 1 & 0 & 1 \\
\end{array}
$$