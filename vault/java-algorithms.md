
```java

public int[] BFS() {
	Queue<Integer> Q = new LinkedList<Integer>();
	Q.add(0);
    distance[0] = 0;
    visited[0] = true;
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
	boolean[] visited = new boolean[n];
    visited[s] = true;
    for (int i = 0; i < degree[s]; i++) {
      if (!visited[edges[s][i]]) {
        set[edges[s][i]] = set[s]; // to co
        DFS(edges[s][i]);
      }
    }
  }
```