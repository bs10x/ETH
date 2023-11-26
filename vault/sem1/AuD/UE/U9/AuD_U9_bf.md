


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

A 



## 9.4