
```java
public void BFS(int s) { // only runs on G with weights of 1
  int[] distance = new int[n]; // distances from s
  for (int i = 0; i < n; i++) distance[i] = -1; // populate distances
  Queue<Integer> Q = new LinkedList<Integer>(); 
  Q.add(s); // add source to queue
  distance[s] = 0; // distance from s -> s = 0
  visited[s] = true;
  while (!Q.isEmpty()) { // iterate until queue empty
    int x = Q.poll(); // next v is polled
    for (int i = 0; i < degree[x]; i++) { // for all neighbors to x
      if (distance[edges[x][i]] == -1) { // if not visited
        distance[edges[x][i]] = distance[x] + 1; // update distances
        Q.add(edges[x][i]); // add neighbor to queue
      }
    }
  }
}

public void DFS(int s) {
  visited[s] = true; // visited array
  for (int i = 0; i < degree[s]; i++) { // for each neighbor
    if (!visited[edges[s][i]]) { // if not visited
    //set[edges[s][i]] = set[s]; // for computing sets in graph
    DFS(edges[s][i]); // recursive call
    }
  }
}

public void dijkstra(int s) {
  int[] distance = new int[n]; // distance to all other v in G
  Arrays.fill(distance, Integer.MAX_VALUE); // fill with "infinity"
  Queue<Integer> Q = new LinkedList<>(); // queue for BFS
  Q.add(s); // initialize queue with the source
  distance[s] = 0; // distance from s -> s = 0
  while (!Q.isEmpty()) { // iterate until queue empty
    int u = Q.poll(); // u is top node in Q
    for (int i = 0; i < Av.get(u).size(); i++) { // check each child of u
      int v = Av.get(u).get(i); // child v
      int w = Aw.get(u).get(i); // weight of (u, v)
      // update distance if shorter path found
      if (distance[u] + w < dp[v]) {
        distance[v] = dp[u] + w;
          Q.add(v);
        }
      }
	}
}
```