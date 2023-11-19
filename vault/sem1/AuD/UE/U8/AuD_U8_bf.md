## ex. 8.1

In this exercise, we want to prove the following statement: Among any six people, there are either three that all know each other or three that all do not know each other (or both). We assume that this relation is symmetric, so if person $A$ knows person $B$, then also $B$ knows $A$. We model the problem as a graph. We define $G = (V, E)$ to be a graph on 6 vertices, where the vertices correspond to the six people and two people are connected by an edge if they know each other.

a)
*Prove the above statement, i.e. that in every possible graph on 6 vertices, there are three vertices that are all pairwise adjacent or there are three vertices that are all pairwise not adjacent.*

We will prove this using case distinction. Let's imagine the graph $G$ with the six vertices {a, b, c, d, e, f}. To model the edges, we will utilise a matrix, where each column and row represent a vertex and it's possible edges. since we don't want to count edges twice (symetry) and a vertex can't be connected to itself, the matrix looks like this, for the cases where everyone knows everyone and no one knows anybody, respectively:

$$
\begin{array}{c|c|c|c|c|c|c} 
& a & b & c & d & e & f\\\hline
a & \\\hline
b & 1 \\\hline
c & 1 & 1 \\\hline
d & 1 & 1 & 1 \\\hline
e & 1 & 1 & 1 & 1 \\\hline
f & 1 & 1 & 1 & 1 & 1 \\
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