


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

Thus we have a topological ordering where $v_1$​ is the first vertex, $v_n$​ is the last vertex, and the vertices in between are ordered according to the topological ordering. This proves the existence of such a topological sorting for $G$.



(b) Prove that for any directed $v_1-v_n$-path $P : v_1 = v_{i_0} , v_{i_1} , \dots , v_{i_l} = v_n$ we have $i_0 < i_1 < \dots < i_l$.


**Proof:**
Assume, for the sake of contradiction, that there exists a directed path $P$ where $i_k​\geq i_k+1$​ for some $k$ (i.e., the indices are not strictly increasing).

Consider the first occurrence of $i_k​\geq i_{k+1}$​ in the path. This means that there is an edge from $v_{i_k}​​$ to $v_{i_k+1​}$​, creating a subpath $v_{i_k}​​,\ v_{ik+1}​​,\ \dots,\ v_{i_l}​$​. Since $i_k​\geq i_{k+1}$​, this subpath forms a cycle.

However, this contradicts the assumption that the graph is a directed acyclic graph (DAG). In a DAG, there cannot be any cycles. Therefore, our assumption that there exists $i_k​\geq i_{k+1}$​ is false.

Since $i_0\geq i_1$​ is false, $i_1​≥i_2$​ is false, and so on, it follows that $i_0​<i_1​<\dots<i_l$​.

Therefore, for any directed $v_1​−v_n​$-path $P$, the indices of the vertices along the path are strictly increasing.




(c)
Describe a bottom-up dynamic programming algorithm that, given a graph G with the property that v1, . . . , vn is a topological sorting, returns the number of v1-vn paths in G in O(|V | + |E|) time. You can assume that the graph is provided to you as a pair (n, Adj) of the integer n = |V | and the adjacency lists Adj. Your algorithm can access Adj[u], which is a list of vertices to which u has a direct edge, in constant time. Formally, Adj[u] := {v ∈ V | (u, v) ∈ E}.

In your solution, address the following aspects:
1. Dimensions of the DP table: What are the dimensions of the DP table?
2. Subproblems: What is the meaning of each entry?
3. Recursion: How can an entry of the table be computed from previous entries? Justify why your recurrence relation is correct. Specify the base cases of the recursion, i.e., the cases that do not depend on others.
4. Calculation order: In which order can entries be computed so that values needed for each entry have been determined in previous steps?
5. Extracting the solution: How can the solution be extracted once the table has been filled?
6. Running time: What is the running time of your solution? Hint: Define the entry of the DP table as DP [i] = number of paths in G from vi to vn


**Solution:**

**1. Dimensions of the DP Table:**
The DP table will be a 1D array, DP, of size $(n+1)$ where $(n = |V|)$. 

**2. Subproblems:**
Each entry $DP[i]$ represents the number of paths from vertex $(v_i)$ to $(v_n)$ in the graph.

**3. Recursion:**
The recurrence relation for computing $DP[i]$ from previous entries is as follows:
$DP[i] = \sum_{j \in \text{Adj}[i]} DP[j]$
This means that the number of paths from $(v_i)$ to $(v_n)$ is the sum of the number of paths from each vertex $j$ in the adjacency list of $(v_i)$ to $(v_n)$.

**Base Cases:**
$DP[n] = 1$ because there is only one path from $(v_n)$ to $(v_n)$, which is the vertex itself.

**4. Calculation Order:**
We fill in the DP table in a bottom-up manner, starting from the last vertex $(v_n)$ and moving towards the first vertex $(v_1)$. This ensures that when we calculate $DP[i]$, all the necessary values $DP[j]$ for $(j \in \text{Adj}[i])$ have already been computed.

**5. Extracting the Solution:**
The solution is given by $DP[1]$, which represents the number of paths from $(v_1)$ to $(v_n)$.

**6. Running Time:**
The running time of the solution is \(O(|V| + |E|)\) since we visit each vertex once and each edge once while filling in the DP table.

Here's the Python code for the algorithm:

```python
def count_paths(n, Adj):
    DP = [0] * (n + 1)

    # Base case
    DP[n] = 1

    # Bottom-up calculation
    for i in range(n - 1, 0, -1):
        for j in Adj[i]:
            DP[i] += DP[j]

    return DP[1]  # Number of paths from v1 to vn
```

In this code, `Adj` is the adjacency list representation of the graph, where `Adj[i]` is the list of vertices to which \(v_i\) has a direct edge.