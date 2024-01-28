
```java



public int[] BFS(int s) {
distance = new int[n];
    for (int i = 0; i < n; i++) distance[i] = -1;
	Queue<Integer> Q = new LinkedList<Integer>();
	Q.add(s);
    distance[s] = 0;
    visited[s] = true;
    while (!Q.isEmpty()) {
      int x = Q.poll();
      for (int i = 0; i < degree[x]; i++) {
        if (distance[edges[x][i]] == -1) {
          distance[edges[x][i]] = distance[x] + 1;
          Q.add(edges[x][i]);
        }
      }
    }
}



```



```java
public void DFS(int s) {
    visited[s] = true;
    for (int i = 0; i < degree[s]; i++) {
      if (!visited[edges[s][i]]) {
        //set[edges[s][i]] = set[s]; // for computing sets in graph
        DFS(edges[s][i]);
      }
    }
  }
```