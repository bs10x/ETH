


## 9.2

(a) If for every vertex $v \in V$ its in-degree $deg_{in}(v)$ is even, then $|E|$ is even.

**Proof:**
This statement is true. Consider any directed graph G = (V, E) where every vertex v has an even in-degree. We can count the number of edges by summing up the in-degrees of all vertices because each edge contributes to the in-degree of one vertex. Since every in-degree is even, the sum of all in-degrees is even. This implies that the number of edges |E| is also even.

___

(b) For a longest directed path $P : v_0, \dots , v_l$ in $G$, the endpoint has to be a sink.

**Proof:**
This statement is true. Let's assume, for the sake of contradiction, that the longest directed path P has an endpoint vₗ that is not a sink. Since vₗ is not a sink, it must have an outgoing edge. However, this would contradict the maximality of the path P because if we add the outgoing edge from vₗ to the path, we would obtain a longer path, which contradicts the assumption that P is the longest path. Therefore, the endpoint vₗ must be a sink.

This completes the proof, demonstrating that in a directed graph, the endpoint of the longest directed path must be a sink.

___

(b) The following graph has a topological sorting. If so, give a topological sorting; if not, prove why no topological sorting can exist.

```mermaid
graph TD
A-->B;
B;
C-->B;
D-->A;
D-->B;
E-->B;
E-->C;
E-->F;
F-->I;
F-->H;
G-->D;
G-->H;
H-->A;
H-->D;
H-->I;
I-->B;






```


To find a topological sorting, we can use the following algorithm:

1. Identify any vertex with in-degree 0 (a vertex with no incoming edges) and add it to the sorting.
2. Remove the chosen vertex and its outgoing edges from the graph.
3. Repeat steps 1-2 until all vertices are in the sorting.

If we successfully perform these steps, we have a topological sorting. If at any point no vertex with in-degree 0 exists, and there are still vertices remaining in the graph, then no topological sorting is possible.

Let's apply this algorithm to the given graph:

1. Choose G (in-degree 0), remove G and its outgoing edges.
2. Choose E (in-degree 0), remove E and its outgoing edges.
3. Choose C (in-degree 0), remove C and its outgoing edges.
4. Choose D (in-degree 0), remove D and its outgoing edges.
5. Choose A (in-degree 0), remove A and its outgoing edges.
6. Choose H (in-degree 0), remove H and its outgoing edges.
7. Choose F (in-degree 0), remove F and its outgoing edges.
8. Choose I (in-degree 0), remove I and its outgoing edges.
9. Choose B (in-degree 0), remove B and its outgoing edges.

The resulting topological sorting is: G, E, C, D, A, H, F, I, B.

Therefore, the given graph has a topological sorting.




## 9.4

Let $G = (V, E)$ be a directed graph without directed cycles (i.e., a directed acyclic graph or short DAG). Assume that $V = {v1, . . . , vn}$ $(\text{for} n = |V | \in N)$. Further assume that $v_1$ is a source and $v_n$ is a sink. The goal of this exercise is to find the number of paths from $v_1$ to $v_n$.

(a) Prove that there exists a topological sorting of G that has $v_1$ as first and $v_n$ as last vertex.

**Proof:**
To prove that there exists a topological sorting of $G$ that has $v_1$​ as the first vertex and $v_n$​ as the last vertex, we can use the properties of a directed acyclic graph (DAG) and the fact that $v_1$​ is a source and $v_n$​ is a sink.

Since $G$ is a DAG, it has a topological ordering. Let's consider a topological ordering $v_{\pi(1)},\ v_{\pi(2)},\ v_{\pi(3)},,\ v_{\pi(4)},\ v_{\pi(n)}$, where $\pi(i)$ represents the position of vertex $v_i$​ in the topological ordering.

Since $v_{1}$ is a source, it has no incoming edges. Therefore, in the topological ordering, $v_{1}$  must come before any vertex $v_{i}$ ​where $i>1$. In other words, $\pi(1)<\pi(n)$ for all $i>1$.

Similarly, since $v_n$​ is a sink, it has no outgoing edges. Therefore, in the topological ordering, $v_n$​ must come after any vertex $v_i$​ where $i<n$. In other words, $\pi(i)<\pi(n)$ for all $i<n$.

Now, let's consider the vertices between $v_1$ and $v_n$, i.e. $v_{\pi(2)},\ v_{\pi(3)},\ v_{\pi(4)}, v_{\pi(n-1)},$ Since $G$ is a DAG, there are no cycles, so there must be a directed path from $v_1$ to $v_n$ that goes through these intermediate vertices. Therefore, in the topological ordering, $v_1$ comes before $v_{\pi(2)}$, which comes before $v_{\pi(3)}$, and so on, until $v_{\pi(n-1)}$, which comes before $v_{n}$.

Thus we have a topological ordering where $v_1$​ is the first vertex, $v_n$​ is the last vertex, and the vertices in between are ordered according to the topological ordering. This proves the existence of such a topological sorting for �G.